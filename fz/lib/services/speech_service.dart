import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpeechService {
  final FlutterTts flutterTts = FlutterTts();
  final stt.SpeechToText speech = stt.SpeechToText();
  
  bool isInitialized = false;
  
  Future<void> initializeTTS() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setVolume(1.0);
    await flutterTts.setPitch(1.0);
  }
  
  Future<void> initializeSTT() async {
    isInitialized = await speech.initialize();
  }
  
  Future<void> speak(String text) async {
    await flutterTts.speak(text);
  }
  
  Future<void> stopSpeaking() async {
    await flutterTts.stop();
  }
  
  Future<void> startListening(Function(String) onResult) async {
    if (!isInitialized) {
      await initializeSTT();
    }
    
    if (isInitialized) {
      await speech.listen(
        onResult: (result) {
          if (result.finalResult) {
            onResult(result.recognizedWords);
          }
        },
      );
    }
  }
  
  Future<void> stopListening() async {
    await speech.stop();
  }
}