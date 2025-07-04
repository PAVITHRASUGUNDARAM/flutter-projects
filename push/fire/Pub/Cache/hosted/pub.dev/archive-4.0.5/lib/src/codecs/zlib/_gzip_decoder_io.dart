import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import '../../util/input_stream.dart';
import '../../util/output_stream.dart';
import '_zlib_decoder_base.dart';

const platformGZipDecoder = _GZipDecoder();

/// Decompress data with the zlib format decoder.
class _GZipDecoder extends ZLibDecoderBase {
  const _GZipDecoder();

  @override
  Uint8List decodeBytes(List<int> data,
          {bool verify = false, bool raw = false}) =>
      GZipCodec().decode(data) as Uint8List;

  @override
  bool decodeStream(InputStream input, OutputStream output,
      {bool verify = false, bool raw = false}) {
    final outSink = ChunkedConversionSink<List<int>>.withCallback((chunks) {
      for (final chunk in chunks) {
        output.writeBytes(chunk);
      }
      output.flush();
    });

    final inSink = GZipCodec().decoder.startChunkedConversion(outSink);

    while (!input.isEOS) {
      final chunkSize = min(1024, input.length);
      final chunk = input.readBytes(chunkSize).toUint8List();
      inSink.add(chunk);
    }
    inSink.close();

    return true;
  }
}
