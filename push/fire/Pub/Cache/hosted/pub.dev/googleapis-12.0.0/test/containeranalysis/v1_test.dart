// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/containeranalysis/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAliasContext = 0;
api.AliasContext buildAliasContext() {
  final o = api.AliasContext();
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterAliasContext--;
  return o;
}

void checkAliasContext(api.AliasContext o) {
  buildCounterAliasContext++;
  if (buildCounterAliasContext < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAliasContext--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterAnalysisCompleted = 0;
api.AnalysisCompleted buildAnalysisCompleted() {
  final o = api.AnalysisCompleted();
  buildCounterAnalysisCompleted++;
  if (buildCounterAnalysisCompleted < 3) {
    o.analysisType = buildUnnamed0();
  }
  buildCounterAnalysisCompleted--;
  return o;
}

void checkAnalysisCompleted(api.AnalysisCompleted o) {
  buildCounterAnalysisCompleted++;
  if (buildCounterAnalysisCompleted < 3) {
    checkUnnamed0(o.analysisType!);
  }
  buildCounterAnalysisCompleted--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterArtifact = 0;
api.Artifact buildArtifact() {
  final o = api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.checksum = 'foo';
    o.id = 'foo';
    o.names = buildUnnamed1();
  }
  buildCounterArtifact--;
  return o;
}

void checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    unittest.expect(
      o.checksum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.names!);
  }
  buildCounterArtifact--;
}

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.RelatedUrl> buildUnnamed3() => [
      buildRelatedUrl(),
      buildRelatedUrl(),
    ];

void checkUnnamed3(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.List<api.Remediation> buildUnnamed4() => [
      buildRemediation(),
      buildRemediation(),
    ];

void checkUnnamed4(core.List<api.Remediation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemediation(o[0]);
  checkRemediation(o[1]);
}

core.int buildCounterAssessment = 0;
api.Assessment buildAssessment() {
  final o = api.Assessment();
  buildCounterAssessment++;
  if (buildCounterAssessment < 3) {
    o.cve = 'foo';
    o.impacts = buildUnnamed2();
    o.justification = buildJustification();
    o.longDescription = 'foo';
    o.relatedUris = buildUnnamed3();
    o.remediations = buildUnnamed4();
    o.shortDescription = 'foo';
    o.state = 'foo';
    o.vulnerabilityId = 'foo';
  }
  buildCounterAssessment--;
  return o;
}

void checkAssessment(api.Assessment o) {
  buildCounterAssessment++;
  if (buildCounterAssessment < 3) {
    unittest.expect(
      o.cve!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.impacts!);
    checkJustification(o.justification!);
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.relatedUris!);
    checkUnnamed4(o.remediations!);
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vulnerabilityId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAssessment--;
}

core.int buildCounterAttestationNote = 0;
api.AttestationNote buildAttestationNote() {
  final o = api.AttestationNote();
  buildCounterAttestationNote++;
  if (buildCounterAttestationNote < 3) {
    o.hint = buildHint();
  }
  buildCounterAttestationNote--;
  return o;
}

void checkAttestationNote(api.AttestationNote o) {
  buildCounterAttestationNote++;
  if (buildCounterAttestationNote < 3) {
    checkHint(o.hint!);
  }
  buildCounterAttestationNote--;
}

core.List<api.Jwt> buildUnnamed5() => [
      buildJwt(),
      buildJwt(),
    ];

void checkUnnamed5(core.List<api.Jwt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwt(o[0]);
  checkJwt(o[1]);
}

core.List<api.Signature> buildUnnamed6() => [
      buildSignature(),
      buildSignature(),
    ];

void checkUnnamed6(core.List<api.Signature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSignature(o[0]);
  checkSignature(o[1]);
}

core.int buildCounterAttestationOccurrence = 0;
api.AttestationOccurrence buildAttestationOccurrence() {
  final o = api.AttestationOccurrence();
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    o.jwts = buildUnnamed5();
    o.serializedPayload = 'foo';
    o.signatures = buildUnnamed6();
  }
  buildCounterAttestationOccurrence--;
  return o;
}

void checkAttestationOccurrence(api.AttestationOccurrence o) {
  buildCounterAttestationOccurrence++;
  if (buildCounterAttestationOccurrence < 3) {
    checkUnnamed5(o.jwts!);
    unittest.expect(
      o.serializedPayload!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.signatures!);
  }
  buildCounterAttestationOccurrence--;
}

core.Map<core.String, api.Note> buildUnnamed7() => {
      'x': buildNote(),
      'y': buildNote(),
    };

void checkUnnamed7(core.Map<core.String, api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o['x']!);
  checkNote(o['y']!);
}

core.int buildCounterBatchCreateNotesRequest = 0;
api.BatchCreateNotesRequest buildBatchCreateNotesRequest() {
  final o = api.BatchCreateNotesRequest();
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    o.notes = buildUnnamed7();
  }
  buildCounterBatchCreateNotesRequest--;
  return o;
}

void checkBatchCreateNotesRequest(api.BatchCreateNotesRequest o) {
  buildCounterBatchCreateNotesRequest++;
  if (buildCounterBatchCreateNotesRequest < 3) {
    checkUnnamed7(o.notes!);
  }
  buildCounterBatchCreateNotesRequest--;
}

core.List<api.Note> buildUnnamed8() => [
      buildNote(),
      buildNote(),
    ];

void checkUnnamed8(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterBatchCreateNotesResponse = 0;
api.BatchCreateNotesResponse buildBatchCreateNotesResponse() {
  final o = api.BatchCreateNotesResponse();
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    o.notes = buildUnnamed8();
  }
  buildCounterBatchCreateNotesResponse--;
  return o;
}

void checkBatchCreateNotesResponse(api.BatchCreateNotesResponse o) {
  buildCounterBatchCreateNotesResponse++;
  if (buildCounterBatchCreateNotesResponse < 3) {
    checkUnnamed8(o.notes!);
  }
  buildCounterBatchCreateNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed9() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed9(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterBatchCreateOccurrencesRequest = 0;
api.BatchCreateOccurrencesRequest buildBatchCreateOccurrencesRequest() {
  final o = api.BatchCreateOccurrencesRequest();
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    o.occurrences = buildUnnamed9();
  }
  buildCounterBatchCreateOccurrencesRequest--;
  return o;
}

void checkBatchCreateOccurrencesRequest(api.BatchCreateOccurrencesRequest o) {
  buildCounterBatchCreateOccurrencesRequest++;
  if (buildCounterBatchCreateOccurrencesRequest < 3) {
    checkUnnamed9(o.occurrences!);
  }
  buildCounterBatchCreateOccurrencesRequest--;
}

core.List<api.Occurrence> buildUnnamed10() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed10(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterBatchCreateOccurrencesResponse = 0;
api.BatchCreateOccurrencesResponse buildBatchCreateOccurrencesResponse() {
  final o = api.BatchCreateOccurrencesResponse();
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    o.occurrences = buildUnnamed10();
  }
  buildCounterBatchCreateOccurrencesResponse--;
  return o;
}

void checkBatchCreateOccurrencesResponse(api.BatchCreateOccurrencesResponse o) {
  buildCounterBatchCreateOccurrencesResponse++;
  if (buildCounterBatchCreateOccurrencesResponse < 3) {
    checkUnnamed10(o.occurrences!);
  }
  buildCounterBatchCreateOccurrencesResponse--;
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed11();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed11(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed13() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed13(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.List<api.ResourceDescriptor> buildUnnamed14() => [
      buildResourceDescriptor(),
      buildResourceDescriptor(),
    ];

void checkUnnamed14(core.List<api.ResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDescriptor(o[0]);
  checkResourceDescriptor(o[1]);
}

core.int buildCounterBuildDefinition = 0;
api.BuildDefinition buildBuildDefinition() {
  final o = api.BuildDefinition();
  buildCounterBuildDefinition++;
  if (buildCounterBuildDefinition < 3) {
    o.buildType = 'foo';
    o.externalParameters = buildUnnamed12();
    o.internalParameters = buildUnnamed13();
    o.resolvedDependencies = buildUnnamed14();
  }
  buildCounterBuildDefinition--;
  return o;
}

void checkBuildDefinition(api.BuildDefinition o) {
  buildCounterBuildDefinition++;
  if (buildCounterBuildDefinition < 3) {
    unittest.expect(
      o.buildType!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.externalParameters!);
    checkUnnamed13(o.internalParameters!);
    checkUnnamed14(o.resolvedDependencies!);
  }
  buildCounterBuildDefinition--;
}

core.int buildCounterBuildMetadata = 0;
api.BuildMetadata buildBuildMetadata() {
  final o = api.BuildMetadata();
  buildCounterBuildMetadata++;
  if (buildCounterBuildMetadata < 3) {
    o.finishedOn = 'foo';
    o.invocationId = 'foo';
    o.startedOn = 'foo';
  }
  buildCounterBuildMetadata--;
  return o;
}

void checkBuildMetadata(api.BuildMetadata o) {
  buildCounterBuildMetadata++;
  if (buildCounterBuildMetadata < 3) {
    unittest.expect(
      o.finishedOn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invocationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startedOn!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildMetadata--;
}

core.int buildCounterBuildNote = 0;
api.BuildNote buildBuildNote() {
  final o = api.BuildNote();
  buildCounterBuildNote++;
  if (buildCounterBuildNote < 3) {
    o.builderVersion = 'foo';
  }
  buildCounterBuildNote--;
  return o;
}

void checkBuildNote(api.BuildNote o) {
  buildCounterBuildNote++;
  if (buildCounterBuildNote < 3) {
    unittest.expect(
      o.builderVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildNote--;
}

core.int buildCounterBuildOccurrence = 0;
api.BuildOccurrence buildBuildOccurrence() {
  final o = api.BuildOccurrence();
  buildCounterBuildOccurrence++;
  if (buildCounterBuildOccurrence < 3) {
    o.inTotoSlsaProvenanceV1 = buildInTotoSlsaProvenanceV1();
    o.intotoProvenance = buildInTotoProvenance();
    o.intotoStatement = buildInTotoStatement();
    o.provenance = buildBuildProvenance();
    o.provenanceBytes = 'foo';
  }
  buildCounterBuildOccurrence--;
  return o;
}

void checkBuildOccurrence(api.BuildOccurrence o) {
  buildCounterBuildOccurrence++;
  if (buildCounterBuildOccurrence < 3) {
    checkInTotoSlsaProvenanceV1(o.inTotoSlsaProvenanceV1!);
    checkInTotoProvenance(o.intotoProvenance!);
    checkInTotoStatement(o.intotoStatement!);
    checkBuildProvenance(o.provenance!);
    unittest.expect(
      o.provenanceBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildOccurrence--;
}

core.Map<core.String, core.String> buildUnnamed15() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed15(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.List<api.Artifact> buildUnnamed16() => [
      buildArtifact(),
      buildArtifact(),
    ];

void checkUnnamed16(core.List<api.Artifact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArtifact(o[0]);
  checkArtifact(o[1]);
}

core.List<api.Command> buildUnnamed17() => [
      buildCommand(),
      buildCommand(),
    ];

void checkUnnamed17(core.List<api.Command> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommand(o[0]);
  checkCommand(o[1]);
}

core.int buildCounterBuildProvenance = 0;
api.BuildProvenance buildBuildProvenance() {
  final o = api.BuildProvenance();
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    o.buildOptions = buildUnnamed15();
    o.builderVersion = 'foo';
    o.builtArtifacts = buildUnnamed16();
    o.commands = buildUnnamed17();
    o.createTime = 'foo';
    o.creator = 'foo';
    o.endTime = 'foo';
    o.id = 'foo';
    o.logsUri = 'foo';
    o.projectId = 'foo';
    o.sourceProvenance = buildSource();
    o.startTime = 'foo';
    o.triggerId = 'foo';
  }
  buildCounterBuildProvenance--;
  return o;
}

void checkBuildProvenance(api.BuildProvenance o) {
  buildCounterBuildProvenance++;
  if (buildCounterBuildProvenance < 3) {
    checkUnnamed15(o.buildOptions!);
    unittest.expect(
      o.builderVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.builtArtifacts!);
    checkUnnamed17(o.commands!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkSource(o.sourceProvenance!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildProvenance--;
}

core.int buildCounterBuilderConfig = 0;
api.BuilderConfig buildBuilderConfig() {
  final o = api.BuilderConfig();
  buildCounterBuilderConfig++;
  if (buildCounterBuilderConfig < 3) {
    o.id = 'foo';
  }
  buildCounterBuilderConfig--;
  return o;
}

void checkBuilderConfig(api.BuilderConfig o) {
  buildCounterBuilderConfig++;
  if (buildCounterBuilderConfig < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuilderConfig--;
}

core.int buildCounterCVSS = 0;
api.CVSS buildCVSS() {
  final o = api.CVSS();
  buildCounterCVSS++;
  if (buildCounterCVSS < 3) {
    o.attackComplexity = 'foo';
    o.attackVector = 'foo';
    o.authentication = 'foo';
    o.availabilityImpact = 'foo';
    o.baseScore = 42.0;
    o.confidentialityImpact = 'foo';
    o.exploitabilityScore = 42.0;
    o.impactScore = 42.0;
    o.integrityImpact = 'foo';
    o.privilegesRequired = 'foo';
    o.scope = 'foo';
    o.userInteraction = 'foo';
  }
  buildCounterCVSS--;
  return o;
}

void checkCVSS(api.CVSS o) {
  buildCounterCVSS++;
  if (buildCounterCVSS < 3) {
    unittest.expect(
      o.attackComplexity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attackVector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.authentication!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availabilityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.baseScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.confidentialityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exploitabilityScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.impactScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integrityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privilegesRequired!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userInteraction!,
      unittest.equals('foo'),
    );
  }
  buildCounterCVSS--;
}

core.int buildCounterCVSSv3 = 0;
api.CVSSv3 buildCVSSv3() {
  final o = api.CVSSv3();
  buildCounterCVSSv3++;
  if (buildCounterCVSSv3 < 3) {
    o.attackComplexity = 'foo';
    o.attackVector = 'foo';
    o.availabilityImpact = 'foo';
    o.baseScore = 42.0;
    o.confidentialityImpact = 'foo';
    o.exploitabilityScore = 42.0;
    o.impactScore = 42.0;
    o.integrityImpact = 'foo';
    o.privilegesRequired = 'foo';
    o.scope = 'foo';
    o.userInteraction = 'foo';
  }
  buildCounterCVSSv3--;
  return o;
}

void checkCVSSv3(api.CVSSv3 o) {
  buildCounterCVSSv3++;
  if (buildCounterCVSSv3 < 3) {
    unittest.expect(
      o.attackComplexity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attackVector!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availabilityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.baseScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.confidentialityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exploitabilityScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.impactScore!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.integrityImpact!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privilegesRequired!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userInteraction!,
      unittest.equals('foo'),
    );
  }
  buildCounterCVSSv3--;
}

core.int buildCounterCategory = 0;
api.Category buildCategory() {
  final o = api.Category();
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    o.categoryId = 'foo';
    o.name = 'foo';
  }
  buildCounterCategory--;
  return o;
}

void checkCategory(api.Category o) {
  buildCounterCategory++;
  if (buildCounterCategory < 3) {
    unittest.expect(
      o.categoryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCategory--;
}

core.int buildCounterCisBenchmark = 0;
api.CisBenchmark buildCisBenchmark() {
  final o = api.CisBenchmark();
  buildCounterCisBenchmark++;
  if (buildCounterCisBenchmark < 3) {
    o.profileLevel = 42;
    o.severity = 'foo';
  }
  buildCounterCisBenchmark--;
  return o;
}

void checkCisBenchmark(api.CisBenchmark o) {
  buildCounterCisBenchmark++;
  if (buildCounterCisBenchmark < 3) {
    unittest.expect(
      o.profileLevel!,
      unittest.equals(42),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterCisBenchmark--;
}

core.int buildCounterCloudRepoSourceContext = 0;
api.CloudRepoSourceContext buildCloudRepoSourceContext() {
  final o = api.CloudRepoSourceContext();
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.repoId = buildRepoId();
    o.revisionId = 'foo';
  }
  buildCounterCloudRepoSourceContext--;
  return o;
}

void checkCloudRepoSourceContext(api.CloudRepoSourceContext o) {
  buildCounterCloudRepoSourceContext++;
  if (buildCounterCloudRepoSourceContext < 3) {
    checkAliasContext(o.aliasContext!);
    checkRepoId(o.repoId!);
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRepoSourceContext--;
}

core.List<core.String> buildUnnamed18() => [
      'foo',
      'foo',
    ];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  final o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.args = buildUnnamed18();
    o.dir = 'foo';
    o.env = buildUnnamed19();
    o.id = 'foo';
    o.name = 'foo';
    o.waitFor = buildUnnamed20();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkUnnamed18(o.args!);
    unittest.expect(
      o.dir!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.env!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.waitFor!);
  }
  buildCounterCommand--;
}

core.int buildCounterCompleteness = 0;
api.Completeness buildCompleteness() {
  final o = api.Completeness();
  buildCounterCompleteness++;
  if (buildCounterCompleteness < 3) {
    o.arguments = true;
    o.environment = true;
    o.materials = true;
  }
  buildCounterCompleteness--;
  return o;
}

void checkCompleteness(api.Completeness o) {
  buildCounterCompleteness++;
  if (buildCounterCompleteness < 3) {
    unittest.expect(o.arguments!, unittest.isTrue);
    unittest.expect(o.environment!, unittest.isTrue);
    unittest.expect(o.materials!, unittest.isTrue);
  }
  buildCounterCompleteness--;
}

core.List<api.ComplianceVersion> buildUnnamed21() => [
      buildComplianceVersion(),
      buildComplianceVersion(),
    ];

void checkUnnamed21(core.List<api.ComplianceVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceVersion(o[0]);
  checkComplianceVersion(o[1]);
}

core.int buildCounterComplianceNote = 0;
api.ComplianceNote buildComplianceNote() {
  final o = api.ComplianceNote();
  buildCounterComplianceNote++;
  if (buildCounterComplianceNote < 3) {
    o.cisBenchmark = buildCisBenchmark();
    o.description = 'foo';
    o.rationale = 'foo';
    o.remediation = 'foo';
    o.scanInstructions = 'foo';
    o.title = 'foo';
    o.version = buildUnnamed21();
  }
  buildCounterComplianceNote--;
  return o;
}

void checkComplianceNote(api.ComplianceNote o) {
  buildCounterComplianceNote++;
  if (buildCounterComplianceNote < 3) {
    checkCisBenchmark(o.cisBenchmark!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rationale!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remediation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scanInstructions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.version!);
  }
  buildCounterComplianceNote--;
}

core.List<api.NonCompliantFile> buildUnnamed22() => [
      buildNonCompliantFile(),
      buildNonCompliantFile(),
    ];

void checkUnnamed22(core.List<api.NonCompliantFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonCompliantFile(o[0]);
  checkNonCompliantFile(o[1]);
}

core.int buildCounterComplianceOccurrence = 0;
api.ComplianceOccurrence buildComplianceOccurrence() {
  final o = api.ComplianceOccurrence();
  buildCounterComplianceOccurrence++;
  if (buildCounterComplianceOccurrence < 3) {
    o.nonComplianceReason = 'foo';
    o.nonCompliantFiles = buildUnnamed22();
  }
  buildCounterComplianceOccurrence--;
  return o;
}

void checkComplianceOccurrence(api.ComplianceOccurrence o) {
  buildCounterComplianceOccurrence++;
  if (buildCounterComplianceOccurrence < 3) {
    unittest.expect(
      o.nonComplianceReason!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.nonCompliantFiles!);
  }
  buildCounterComplianceOccurrence--;
}

core.int buildCounterComplianceVersion = 0;
api.ComplianceVersion buildComplianceVersion() {
  final o = api.ComplianceVersion();
  buildCounterComplianceVersion++;
  if (buildCounterComplianceVersion < 3) {
    o.benchmarkDocument = 'foo';
    o.cpeUri = 'foo';
    o.version = 'foo';
  }
  buildCounterComplianceVersion--;
  return o;
}

void checkComplianceVersion(api.ComplianceVersion o) {
  buildCounterComplianceVersion++;
  if (buildCounterComplianceVersion < 3) {
    unittest.expect(
      o.benchmarkDocument!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterComplianceVersion--;
}

core.int buildCounterDSSEAttestationNote = 0;
api.DSSEAttestationNote buildDSSEAttestationNote() {
  final o = api.DSSEAttestationNote();
  buildCounterDSSEAttestationNote++;
  if (buildCounterDSSEAttestationNote < 3) {
    o.hint = buildDSSEHint();
  }
  buildCounterDSSEAttestationNote--;
  return o;
}

void checkDSSEAttestationNote(api.DSSEAttestationNote o) {
  buildCounterDSSEAttestationNote++;
  if (buildCounterDSSEAttestationNote < 3) {
    checkDSSEHint(o.hint!);
  }
  buildCounterDSSEAttestationNote--;
}

core.int buildCounterDSSEAttestationOccurrence = 0;
api.DSSEAttestationOccurrence buildDSSEAttestationOccurrence() {
  final o = api.DSSEAttestationOccurrence();
  buildCounterDSSEAttestationOccurrence++;
  if (buildCounterDSSEAttestationOccurrence < 3) {
    o.envelope = buildEnvelope();
    o.statement = buildInTotoStatement();
  }
  buildCounterDSSEAttestationOccurrence--;
  return o;
}

void checkDSSEAttestationOccurrence(api.DSSEAttestationOccurrence o) {
  buildCounterDSSEAttestationOccurrence++;
  if (buildCounterDSSEAttestationOccurrence < 3) {
    checkEnvelope(o.envelope!);
    checkInTotoStatement(o.statement!);
  }
  buildCounterDSSEAttestationOccurrence--;
}

core.int buildCounterDSSEHint = 0;
api.DSSEHint buildDSSEHint() {
  final o = api.DSSEHint();
  buildCounterDSSEHint++;
  if (buildCounterDSSEHint < 3) {
    o.humanReadableName = 'foo';
  }
  buildCounterDSSEHint--;
  return o;
}

void checkDSSEHint(api.DSSEHint o) {
  buildCounterDSSEHint++;
  if (buildCounterDSSEHint < 3) {
    unittest.expect(
      o.humanReadableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDSSEHint--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterDeploymentNote = 0;
api.DeploymentNote buildDeploymentNote() {
  final o = api.DeploymentNote();
  buildCounterDeploymentNote++;
  if (buildCounterDeploymentNote < 3) {
    o.resourceUri = buildUnnamed23();
  }
  buildCounterDeploymentNote--;
  return o;
}

void checkDeploymentNote(api.DeploymentNote o) {
  buildCounterDeploymentNote++;
  if (buildCounterDeploymentNote < 3) {
    checkUnnamed23(o.resourceUri!);
  }
  buildCounterDeploymentNote--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterDeploymentOccurrence = 0;
api.DeploymentOccurrence buildDeploymentOccurrence() {
  final o = api.DeploymentOccurrence();
  buildCounterDeploymentOccurrence++;
  if (buildCounterDeploymentOccurrence < 3) {
    o.address = 'foo';
    o.config = 'foo';
    o.deployTime = 'foo';
    o.platform = 'foo';
    o.resourceUri = buildUnnamed24();
    o.undeployTime = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterDeploymentOccurrence--;
  return o;
}

void checkDeploymentOccurrence(api.DeploymentOccurrence o) {
  buildCounterDeploymentOccurrence++;
  if (buildCounterDeploymentOccurrence < 3) {
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.config!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deployTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
    checkUnnamed24(o.resourceUri!);
    unittest.expect(
      o.undeployTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeploymentOccurrence--;
}

core.int buildCounterDetail = 0;
api.Detail buildDetail() {
  final o = api.Detail();
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    o.affectedCpeUri = 'foo';
    o.affectedPackage = 'foo';
    o.affectedVersionEnd = buildVersion();
    o.affectedVersionStart = buildVersion();
    o.description = 'foo';
    o.fixedCpeUri = 'foo';
    o.fixedPackage = 'foo';
    o.fixedVersion = buildVersion();
    o.isObsolete = true;
    o.packageType = 'foo';
    o.severityName = 'foo';
    o.source = 'foo';
    o.sourceUpdateTime = 'foo';
    o.vendor = 'foo';
  }
  buildCounterDetail--;
  return o;
}

void checkDetail(api.Detail o) {
  buildCounterDetail++;
  if (buildCounterDetail < 3) {
    unittest.expect(
      o.affectedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.affectedPackage!,
      unittest.equals('foo'),
    );
    checkVersion(o.affectedVersionEnd!);
    checkVersion(o.affectedVersionStart!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fixedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fixedPackage!,
      unittest.equals('foo'),
    );
    checkVersion(o.fixedVersion!);
    unittest.expect(o.isObsolete!, unittest.isTrue);
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severityName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vendor!,
      unittest.equals('foo'),
    );
  }
  buildCounterDetail--;
}

core.int buildCounterDigest = 0;
api.Digest buildDigest() {
  final o = api.Digest();
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    o.algo = 'foo';
    o.digestBytes = 'foo';
  }
  buildCounterDigest--;
  return o;
}

void checkDigest(api.Digest o) {
  buildCounterDigest++;
  if (buildCounterDigest < 3) {
    unittest.expect(
      o.algo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.digestBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterDigest--;
}

core.int buildCounterDiscoveryNote = 0;
api.DiscoveryNote buildDiscoveryNote() {
  final o = api.DiscoveryNote();
  buildCounterDiscoveryNote++;
  if (buildCounterDiscoveryNote < 3) {
    o.analysisKind = 'foo';
  }
  buildCounterDiscoveryNote--;
  return o;
}

void checkDiscoveryNote(api.DiscoveryNote o) {
  buildCounterDiscoveryNote++;
  if (buildCounterDiscoveryNote < 3) {
    unittest.expect(
      o.analysisKind!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiscoveryNote--;
}

core.List<api.Status> buildUnnamed25() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed25(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterDiscoveryOccurrence = 0;
api.DiscoveryOccurrence buildDiscoveryOccurrence() {
  final o = api.DiscoveryOccurrence();
  buildCounterDiscoveryOccurrence++;
  if (buildCounterDiscoveryOccurrence < 3) {
    o.analysisCompleted = buildAnalysisCompleted();
    o.analysisError = buildUnnamed25();
    o.analysisStatus = 'foo';
    o.analysisStatusError = buildStatus();
    o.archiveTime = 'foo';
    o.continuousAnalysis = 'foo';
    o.cpe = 'foo';
    o.lastScanTime = 'foo';
    o.sbomStatus = buildSBOMStatus();
  }
  buildCounterDiscoveryOccurrence--;
  return o;
}

void checkDiscoveryOccurrence(api.DiscoveryOccurrence o) {
  buildCounterDiscoveryOccurrence++;
  if (buildCounterDiscoveryOccurrence < 3) {
    checkAnalysisCompleted(o.analysisCompleted!);
    checkUnnamed25(o.analysisError!);
    unittest.expect(
      o.analysisStatus!,
      unittest.equals('foo'),
    );
    checkStatus(o.analysisStatusError!);
    unittest.expect(
      o.archiveTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.continuousAnalysis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpe!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastScanTime!,
      unittest.equals('foo'),
    );
    checkSBOMStatus(o.sbomStatus!);
  }
  buildCounterDiscoveryOccurrence--;
}

core.int buildCounterDistribution = 0;
api.Distribution buildDistribution() {
  final o = api.Distribution();
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    o.architecture = 'foo';
    o.cpeUri = 'foo';
    o.description = 'foo';
    o.latestVersion = buildVersion();
    o.maintainer = 'foo';
    o.url = 'foo';
  }
  buildCounterDistribution--;
  return o;
}

void checkDistribution(api.Distribution o) {
  buildCounterDistribution++;
  if (buildCounterDistribution < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkVersion(o.latestVersion!);
    unittest.expect(
      o.maintainer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDistribution--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.List<api.EnvelopeSignature> buildUnnamed26() => [
      buildEnvelopeSignature(),
      buildEnvelopeSignature(),
    ];

void checkUnnamed26(core.List<api.EnvelopeSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvelopeSignature(o[0]);
  checkEnvelopeSignature(o[1]);
}

core.int buildCounterEnvelope = 0;
api.Envelope buildEnvelope() {
  final o = api.Envelope();
  buildCounterEnvelope++;
  if (buildCounterEnvelope < 3) {
    o.payload = 'foo';
    o.payloadType = 'foo';
    o.signatures = buildUnnamed26();
  }
  buildCounterEnvelope--;
  return o;
}

void checkEnvelope(api.Envelope o) {
  buildCounterEnvelope++;
  if (buildCounterEnvelope < 3) {
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.payloadType!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.signatures!);
  }
  buildCounterEnvelope--;
}

core.int buildCounterEnvelopeSignature = 0;
api.EnvelopeSignature buildEnvelopeSignature() {
  final o = api.EnvelopeSignature();
  buildCounterEnvelopeSignature++;
  if (buildCounterEnvelopeSignature < 3) {
    o.keyid = 'foo';
    o.sig = 'foo';
  }
  buildCounterEnvelopeSignature--;
  return o;
}

void checkEnvelopeSignature(api.EnvelopeSignature o) {
  buildCounterEnvelopeSignature++;
  if (buildCounterEnvelopeSignature < 3) {
    unittest.expect(
      o.keyid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sig!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnvelopeSignature--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpr--;
}

core.List<api.Hash> buildUnnamed27() => [
      buildHash(),
      buildHash(),
    ];

void checkUnnamed27(core.List<api.Hash> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHash(o[0]);
  checkHash(o[1]);
}

core.int buildCounterFileHashes = 0;
api.FileHashes buildFileHashes() {
  final o = api.FileHashes();
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    o.fileHash = buildUnnamed27();
  }
  buildCounterFileHashes--;
  return o;
}

void checkFileHashes(api.FileHashes o) {
  buildCounterFileHashes++;
  if (buildCounterFileHashes < 3) {
    checkUnnamed27(o.fileHash!);
  }
  buildCounterFileHashes--;
}

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterFingerprint = 0;
api.Fingerprint buildFingerprint() {
  final o = api.Fingerprint();
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    o.v1Name = 'foo';
    o.v2Blob = buildUnnamed28();
    o.v2Name = 'foo';
  }
  buildCounterFingerprint--;
  return o;
}

void checkFingerprint(api.Fingerprint o) {
  buildCounterFingerprint++;
  if (buildCounterFingerprint < 3) {
    unittest.expect(
      o.v1Name!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.v2Blob!);
    unittest.expect(
      o.v2Name!,
      unittest.equals('foo'),
    );
  }
  buildCounterFingerprint--;
}

core.int buildCounterFixableTotalByDigest = 0;
api.FixableTotalByDigest buildFixableTotalByDigest() {
  final o = api.FixableTotalByDigest();
  buildCounterFixableTotalByDigest++;
  if (buildCounterFixableTotalByDigest < 3) {
    o.fixableCount = 'foo';
    o.resourceUri = 'foo';
    o.severity = 'foo';
    o.totalCount = 'foo';
  }
  buildCounterFixableTotalByDigest--;
  return o;
}

void checkFixableTotalByDigest(api.FixableTotalByDigest o) {
  buildCounterFixableTotalByDigest++;
  if (buildCounterFixableTotalByDigest < 3) {
    unittest.expect(
      o.fixableCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterFixableTotalByDigest--;
}

core.int buildCounterGerritSourceContext = 0;
api.GerritSourceContext buildGerritSourceContext() {
  final o = api.GerritSourceContext();
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    o.aliasContext = buildAliasContext();
    o.gerritProject = 'foo';
    o.hostUri = 'foo';
    o.revisionId = 'foo';
  }
  buildCounterGerritSourceContext--;
  return o;
}

void checkGerritSourceContext(api.GerritSourceContext o) {
  buildCounterGerritSourceContext++;
  if (buildCounterGerritSourceContext < 3) {
    checkAliasContext(o.aliasContext!);
    unittest.expect(
      o.gerritProject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hostUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGerritSourceContext--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(
      o.requestedPolicyVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGetPolicyOptions--;
}

core.int buildCounterGitSourceContext = 0;
api.GitSourceContext buildGitSourceContext() {
  final o = api.GitSourceContext();
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    o.revisionId = 'foo';
    o.url = 'foo';
  }
  buildCounterGitSourceContext--;
  return o;
}

void checkGitSourceContext(api.GitSourceContext o) {
  buildCounterGitSourceContext++;
  if (buildCounterGitSourceContext < 3) {
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGitSourceContext--;
}

core.int buildCounterGrafeasV1FileLocation = 0;
api.GrafeasV1FileLocation buildGrafeasV1FileLocation() {
  final o = api.GrafeasV1FileLocation();
  buildCounterGrafeasV1FileLocation++;
  if (buildCounterGrafeasV1FileLocation < 3) {
    o.filePath = 'foo';
  }
  buildCounterGrafeasV1FileLocation--;
  return o;
}

void checkGrafeasV1FileLocation(api.GrafeasV1FileLocation o) {
  buildCounterGrafeasV1FileLocation++;
  if (buildCounterGrafeasV1FileLocation < 3) {
    unittest.expect(
      o.filePath!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrafeasV1FileLocation--;
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
    buildGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder < 3) {
    o.id = 'foo';
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder(
    api.GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder o) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder--;
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
    buildGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness < 3) {
    o.environment = true;
    o.materials = true;
    o.parameters = true;
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness(
    api.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness o) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness < 3) {
    unittest.expect(o.environment!, unittest.isTrue);
    unittest.expect(o.materials!, unittest.isTrue);
    unittest.expect(o.parameters!, unittest.isTrue);
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness--;
}

core.Map<core.String, core.String> buildUnnamed29() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed29(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
    buildGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource < 3) {
    o.digest = buildUnnamed29();
    o.entryPoint = 'foo';
    o.uri = 'foo';
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource(
    api.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource o) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource < 3) {
    checkUnnamed29(o.digest!);
    unittest.expect(
      o.entryPoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource--;
}

core.Map<core.String, core.Object?> buildUnnamed30() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
    buildGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation < 3) {
    o.configSource = buildGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource();
    o.environment = buildUnnamed30();
    o.parameters = buildUnnamed31();
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(
    api.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation o) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation < 3) {
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource(o.configSource!);
    checkUnnamed30(o.environment!);
    checkUnnamed31(o.parameters!);
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation--;
}

core.Map<core.String, core.String> buildUnnamed32() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed32(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
    buildGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial < 3) {
    o.digest = buildUnnamed32();
    o.uri = 'foo';
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(
    api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial o) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial < 3) {
    checkUnnamed32(o.digest!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial--;
}

core.int buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata = 0;
api.GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
    buildGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata() {
  final o = api.GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata();
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata < 3) {
    o.buildFinishedOn = 'foo';
    o.buildInvocationId = 'foo';
    o.buildStartedOn = 'foo';
    o.completeness = buildGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness();
    o.reproducible = true;
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata--;
  return o;
}

void checkGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(
    api.GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata o) {
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata++;
  if (buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata < 3) {
    unittest.expect(
      o.buildFinishedOn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildInvocationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildStartedOn!,
      unittest.equals('foo'),
    );
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness(o.completeness!);
    unittest.expect(o.reproducible!, unittest.isTrue);
  }
  buildCounterGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata--;
}

core.int buildCounterHash = 0;
api.Hash buildHash() {
  final o = api.Hash();
  buildCounterHash++;
  if (buildCounterHash < 3) {
    o.type = 'foo';
    o.value = 'foo';
  }
  buildCounterHash--;
  return o;
}

void checkHash(api.Hash o) {
  buildCounterHash++;
  if (buildCounterHash < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterHash--;
}

core.int buildCounterHint = 0;
api.Hint buildHint() {
  final o = api.Hint();
  buildCounterHint++;
  if (buildCounterHint < 3) {
    o.humanReadableName = 'foo';
  }
  buildCounterHint--;
  return o;
}

void checkHint(api.Hint o) {
  buildCounterHint++;
  if (buildCounterHint < 3) {
    unittest.expect(
      o.humanReadableName!,
      unittest.equals('foo'),
    );
  }
  buildCounterHint--;
}

core.int buildCounterIdentity = 0;
api.Identity buildIdentity() {
  final o = api.Identity();
  buildCounterIdentity++;
  if (buildCounterIdentity < 3) {
    o.revision = 42;
    o.updateId = 'foo';
  }
  buildCounterIdentity--;
  return o;
}

void checkIdentity(api.Identity o) {
  buildCounterIdentity++;
  if (buildCounterIdentity < 3) {
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.updateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterIdentity--;
}

core.int buildCounterImageNote = 0;
api.ImageNote buildImageNote() {
  final o = api.ImageNote();
  buildCounterImageNote++;
  if (buildCounterImageNote < 3) {
    o.fingerprint = buildFingerprint();
    o.resourceUrl = 'foo';
  }
  buildCounterImageNote--;
  return o;
}

void checkImageNote(api.ImageNote o) {
  buildCounterImageNote++;
  if (buildCounterImageNote < 3) {
    checkFingerprint(o.fingerprint!);
    unittest.expect(
      o.resourceUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageNote--;
}

core.List<api.Layer> buildUnnamed33() => [
      buildLayer(),
      buildLayer(),
    ];

void checkUnnamed33(core.List<api.Layer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayer(o[0]);
  checkLayer(o[1]);
}

core.int buildCounterImageOccurrence = 0;
api.ImageOccurrence buildImageOccurrence() {
  final o = api.ImageOccurrence();
  buildCounterImageOccurrence++;
  if (buildCounterImageOccurrence < 3) {
    o.baseResourceUrl = 'foo';
    o.distance = 42;
    o.fingerprint = buildFingerprint();
    o.layerInfo = buildUnnamed33();
  }
  buildCounterImageOccurrence--;
  return o;
}

void checkImageOccurrence(api.ImageOccurrence o) {
  buildCounterImageOccurrence++;
  if (buildCounterImageOccurrence < 3) {
    unittest.expect(
      o.baseResourceUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.distance!,
      unittest.equals(42),
    );
    checkFingerprint(o.fingerprint!);
    checkUnnamed33(o.layerInfo!);
  }
  buildCounterImageOccurrence--;
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterInTotoProvenance = 0;
api.InTotoProvenance buildInTotoProvenance() {
  final o = api.InTotoProvenance();
  buildCounterInTotoProvenance++;
  if (buildCounterInTotoProvenance < 3) {
    o.builderConfig = buildBuilderConfig();
    o.materials = buildUnnamed34();
    o.metadata = buildMetadata();
    o.recipe = buildRecipe();
  }
  buildCounterInTotoProvenance--;
  return o;
}

void checkInTotoProvenance(api.InTotoProvenance o) {
  buildCounterInTotoProvenance++;
  if (buildCounterInTotoProvenance < 3) {
    checkBuilderConfig(o.builderConfig!);
    checkUnnamed34(o.materials!);
    checkMetadata(o.metadata!);
    checkRecipe(o.recipe!);
  }
  buildCounterInTotoProvenance--;
}

core.List<api.Subject> buildUnnamed35() => [
      buildSubject(),
      buildSubject(),
    ];

void checkUnnamed35(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterInTotoSlsaProvenanceV1 = 0;
api.InTotoSlsaProvenanceV1 buildInTotoSlsaProvenanceV1() {
  final o = api.InTotoSlsaProvenanceV1();
  buildCounterInTotoSlsaProvenanceV1++;
  if (buildCounterInTotoSlsaProvenanceV1 < 3) {
    o.P_type = 'foo';
    o.predicate = buildSlsaProvenanceV1();
    o.predicateType = 'foo';
    o.subject = buildUnnamed35();
  }
  buildCounterInTotoSlsaProvenanceV1--;
  return o;
}

void checkInTotoSlsaProvenanceV1(api.InTotoSlsaProvenanceV1 o) {
  buildCounterInTotoSlsaProvenanceV1++;
  if (buildCounterInTotoSlsaProvenanceV1 < 3) {
    unittest.expect(
      o.P_type!,
      unittest.equals('foo'),
    );
    checkSlsaProvenanceV1(o.predicate!);
    unittest.expect(
      o.predicateType!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.subject!);
  }
  buildCounterInTotoSlsaProvenanceV1--;
}

core.List<api.Subject> buildUnnamed36() => [
      buildSubject(),
      buildSubject(),
    ];

void checkUnnamed36(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterInTotoStatement = 0;
api.InTotoStatement buildInTotoStatement() {
  final o = api.InTotoStatement();
  buildCounterInTotoStatement++;
  if (buildCounterInTotoStatement < 3) {
    o.P_type = 'foo';
    o.predicateType = 'foo';
    o.provenance = buildInTotoProvenance();
    o.slsaProvenance = buildSlsaProvenance();
    o.slsaProvenanceZeroTwo = buildSlsaProvenanceZeroTwo();
    o.subject = buildUnnamed36();
  }
  buildCounterInTotoStatement--;
  return o;
}

void checkInTotoStatement(api.InTotoStatement o) {
  buildCounterInTotoStatement++;
  if (buildCounterInTotoStatement < 3) {
    unittest.expect(
      o.P_type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predicateType!,
      unittest.equals('foo'),
    );
    checkInTotoProvenance(o.provenance!);
    checkSlsaProvenance(o.slsaProvenance!);
    checkSlsaProvenanceZeroTwo(o.slsaProvenanceZeroTwo!);
    checkUnnamed36(o.subject!);
  }
  buildCounterInTotoStatement--;
}

core.int buildCounterJustification = 0;
api.Justification buildJustification() {
  final o = api.Justification();
  buildCounterJustification++;
  if (buildCounterJustification < 3) {
    o.details = 'foo';
    o.justificationType = 'foo';
  }
  buildCounterJustification--;
  return o;
}

void checkJustification(api.Justification o) {
  buildCounterJustification++;
  if (buildCounterJustification < 3) {
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.justificationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterJustification--;
}

core.int buildCounterJwt = 0;
api.Jwt buildJwt() {
  final o = api.Jwt();
  buildCounterJwt++;
  if (buildCounterJwt < 3) {
    o.compactJwt = 'foo';
  }
  buildCounterJwt--;
  return o;
}

void checkJwt(api.Jwt o) {
  buildCounterJwt++;
  if (buildCounterJwt < 3) {
    unittest.expect(
      o.compactJwt!,
      unittest.equals('foo'),
    );
  }
  buildCounterJwt--;
}

core.int buildCounterKnowledgeBase = 0;
api.KnowledgeBase buildKnowledgeBase() {
  final o = api.KnowledgeBase();
  buildCounterKnowledgeBase++;
  if (buildCounterKnowledgeBase < 3) {
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterKnowledgeBase--;
  return o;
}

void checkKnowledgeBase(api.KnowledgeBase o) {
  buildCounterKnowledgeBase++;
  if (buildCounterKnowledgeBase < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterKnowledgeBase--;
}

core.int buildCounterLayer = 0;
api.Layer buildLayer() {
  final o = api.Layer();
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    o.arguments = 'foo';
    o.directive = 'foo';
  }
  buildCounterLayer--;
  return o;
}

void checkLayer(api.Layer o) {
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    unittest.expect(
      o.arguments!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.directive!,
      unittest.equals('foo'),
    );
  }
  buildCounterLayer--;
}

core.int buildCounterLicense = 0;
api.License buildLicense() {
  final o = api.License();
  buildCounterLicense++;
  if (buildCounterLicense < 3) {
    o.comments = 'foo';
    o.expression = 'foo';
  }
  buildCounterLicense--;
  return o;
}

void checkLicense(api.License o) {
  buildCounterLicense++;
  if (buildCounterLicense < 3) {
    unittest.expect(
      o.comments!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expression!,
      unittest.equals('foo'),
    );
  }
  buildCounterLicense--;
}

core.List<api.Occurrence> buildUnnamed37() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed37(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterListNoteOccurrencesResponse = 0;
api.ListNoteOccurrencesResponse buildListNoteOccurrencesResponse() {
  final o = api.ListNoteOccurrencesResponse();
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed37();
  }
  buildCounterListNoteOccurrencesResponse--;
  return o;
}

void checkListNoteOccurrencesResponse(api.ListNoteOccurrencesResponse o) {
  buildCounterListNoteOccurrencesResponse++;
  if (buildCounterListNoteOccurrencesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.occurrences!);
  }
  buildCounterListNoteOccurrencesResponse--;
}

core.List<api.Note> buildUnnamed38() => [
      buildNote(),
      buildNote(),
    ];

void checkUnnamed38(core.List<api.Note> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNote(o[0]);
  checkNote(o[1]);
}

core.int buildCounterListNotesResponse = 0;
api.ListNotesResponse buildListNotesResponse() {
  final o = api.ListNotesResponse();
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    o.nextPageToken = 'foo';
    o.notes = buildUnnamed38();
  }
  buildCounterListNotesResponse--;
  return o;
}

void checkListNotesResponse(api.ListNotesResponse o) {
  buildCounterListNotesResponse++;
  if (buildCounterListNotesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.notes!);
  }
  buildCounterListNotesResponse--;
}

core.List<api.Occurrence> buildUnnamed39() => [
      buildOccurrence(),
      buildOccurrence(),
    ];

void checkUnnamed39(core.List<api.Occurrence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOccurrence(o[0]);
  checkOccurrence(o[1]);
}

core.int buildCounterListOccurrencesResponse = 0;
api.ListOccurrencesResponse buildListOccurrencesResponse() {
  final o = api.ListOccurrencesResponse();
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    o.nextPageToken = 'foo';
    o.occurrences = buildUnnamed39();
  }
  buildCounterListOccurrencesResponse--;
  return o;
}

void checkListOccurrencesResponse(api.ListOccurrencesResponse o) {
  buildCounterListOccurrencesResponse++;
  if (buildCounterListOccurrencesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.occurrences!);
  }
  buildCounterListOccurrencesResponse--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.cpeUri = 'foo';
    o.path = 'foo';
    o.version = buildVersion();
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    checkVersion(o.version!);
  }
  buildCounterLocation--;
}

core.Map<core.String, core.String> buildUnnamed40() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed40(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterMaterial = 0;
api.Material buildMaterial() {
  final o = api.Material();
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    o.digest = buildUnnamed40();
    o.uri = 'foo';
  }
  buildCounterMaterial--;
  return o;
}

void checkMaterial(api.Material o) {
  buildCounterMaterial++;
  if (buildCounterMaterial < 3) {
    checkUnnamed40(o.digest!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaterial--;
}

core.int buildCounterMetadata = 0;
api.Metadata buildMetadata() {
  final o = api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.buildFinishedOn = 'foo';
    o.buildInvocationId = 'foo';
    o.buildStartedOn = 'foo';
    o.completeness = buildCompleteness();
    o.reproducible = true;
  }
  buildCounterMetadata--;
  return o;
}

void checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(
      o.buildFinishedOn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildInvocationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildStartedOn!,
      unittest.equals('foo'),
    );
    checkCompleteness(o.completeness!);
    unittest.expect(o.reproducible!, unittest.isTrue);
  }
  buildCounterMetadata--;
}

core.int buildCounterNonCompliantFile = 0;
api.NonCompliantFile buildNonCompliantFile() {
  final o = api.NonCompliantFile();
  buildCounterNonCompliantFile++;
  if (buildCounterNonCompliantFile < 3) {
    o.displayCommand = 'foo';
    o.path = 'foo';
    o.reason = 'foo';
  }
  buildCounterNonCompliantFile--;
  return o;
}

void checkNonCompliantFile(api.NonCompliantFile o) {
  buildCounterNonCompliantFile++;
  if (buildCounterNonCompliantFile < 3) {
    unittest.expect(
      o.displayCommand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterNonCompliantFile--;
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.RelatedUrl> buildUnnamed42() => [
      buildRelatedUrl(),
      buildRelatedUrl(),
    ];

void checkUnnamed42(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterNote = 0;
api.Note buildNote() {
  final o = api.Note();
  buildCounterNote++;
  if (buildCounterNote < 3) {
    o.attestation = buildAttestationNote();
    o.build = buildBuildNote();
    o.compliance = buildComplianceNote();
    o.createTime = 'foo';
    o.deployment = buildDeploymentNote();
    o.discovery = buildDiscoveryNote();
    o.dsseAttestation = buildDSSEAttestationNote();
    o.expirationTime = 'foo';
    o.image = buildImageNote();
    o.kind = 'foo';
    o.longDescription = 'foo';
    o.name = 'foo';
    o.package = buildPackageNote();
    o.relatedNoteNames = buildUnnamed41();
    o.relatedUrl = buildUnnamed42();
    o.sbomReference = buildSBOMReferenceNote();
    o.shortDescription = 'foo';
    o.updateTime = 'foo';
    o.upgrade = buildUpgradeNote();
    o.vulnerability = buildVulnerabilityNote();
    o.vulnerabilityAssessment = buildVulnerabilityAssessmentNote();
  }
  buildCounterNote--;
  return o;
}

void checkNote(api.Note o) {
  buildCounterNote++;
  if (buildCounterNote < 3) {
    checkAttestationNote(o.attestation!);
    checkBuildNote(o.build!);
    checkComplianceNote(o.compliance!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDeploymentNote(o.deployment!);
    checkDiscoveryNote(o.discovery!);
    checkDSSEAttestationNote(o.dsseAttestation!);
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    checkImageNote(o.image!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPackageNote(o.package!);
    checkUnnamed41(o.relatedNoteNames!);
    checkUnnamed42(o.relatedUrl!);
    checkSBOMReferenceNote(o.sbomReference!);
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUpgradeNote(o.upgrade!);
    checkVulnerabilityNote(o.vulnerability!);
    checkVulnerabilityAssessmentNote(o.vulnerabilityAssessment!);
  }
  buildCounterNote--;
}

core.int buildCounterOccurrence = 0;
api.Occurrence buildOccurrence() {
  final o = api.Occurrence();
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    o.attestation = buildAttestationOccurrence();
    o.build = buildBuildOccurrence();
    o.compliance = buildComplianceOccurrence();
    o.createTime = 'foo';
    o.deployment = buildDeploymentOccurrence();
    o.discovery = buildDiscoveryOccurrence();
    o.dsseAttestation = buildDSSEAttestationOccurrence();
    o.envelope = buildEnvelope();
    o.image = buildImageOccurrence();
    o.kind = 'foo';
    o.name = 'foo';
    o.noteName = 'foo';
    o.package = buildPackageOccurrence();
    o.remediation = 'foo';
    o.resourceUri = 'foo';
    o.sbomReference = buildSBOMReferenceOccurrence();
    o.updateTime = 'foo';
    o.upgrade = buildUpgradeOccurrence();
    o.vulnerability = buildVulnerabilityOccurrence();
  }
  buildCounterOccurrence--;
  return o;
}

void checkOccurrence(api.Occurrence o) {
  buildCounterOccurrence++;
  if (buildCounterOccurrence < 3) {
    checkAttestationOccurrence(o.attestation!);
    checkBuildOccurrence(o.build!);
    checkComplianceOccurrence(o.compliance!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkDeploymentOccurrence(o.deployment!);
    checkDiscoveryOccurrence(o.discovery!);
    checkDSSEAttestationOccurrence(o.dsseAttestation!);
    checkEnvelope(o.envelope!);
    checkImageOccurrence(o.image!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.noteName!,
      unittest.equals('foo'),
    );
    checkPackageOccurrence(o.package!);
    unittest.expect(
      o.remediation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceUri!,
      unittest.equals('foo'),
    );
    checkSBOMReferenceOccurrence(o.sbomReference!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUpgradeOccurrence(o.upgrade!);
    checkVulnerabilityOccurrence(o.vulnerability!);
  }
  buildCounterOccurrence--;
}

core.List<api.GrafeasV1FileLocation> buildUnnamed43() => [
      buildGrafeasV1FileLocation(),
      buildGrafeasV1FileLocation(),
    ];

void checkUnnamed43(core.List<api.GrafeasV1FileLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1FileLocation(o[0]);
  checkGrafeasV1FileLocation(o[1]);
}

core.int buildCounterPackageIssue = 0;
api.PackageIssue buildPackageIssue() {
  final o = api.PackageIssue();
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    o.affectedCpeUri = 'foo';
    o.affectedPackage = 'foo';
    o.affectedVersion = buildVersion();
    o.effectiveSeverity = 'foo';
    o.fileLocation = buildUnnamed43();
    o.fixAvailable = true;
    o.fixedCpeUri = 'foo';
    o.fixedPackage = 'foo';
    o.fixedVersion = buildVersion();
    o.packageType = 'foo';
  }
  buildCounterPackageIssue--;
  return o;
}

void checkPackageIssue(api.PackageIssue o) {
  buildCounterPackageIssue++;
  if (buildCounterPackageIssue < 3) {
    unittest.expect(
      o.affectedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.affectedPackage!,
      unittest.equals('foo'),
    );
    checkVersion(o.affectedVersion!);
    unittest.expect(
      o.effectiveSeverity!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.fileLocation!);
    unittest.expect(o.fixAvailable!, unittest.isTrue);
    unittest.expect(
      o.fixedCpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fixedPackage!,
      unittest.equals('foo'),
    );
    checkVersion(o.fixedVersion!);
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackageIssue--;
}

core.List<api.Digest> buildUnnamed44() => [
      buildDigest(),
      buildDigest(),
    ];

void checkUnnamed44(core.List<api.Digest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDigest(o[0]);
  checkDigest(o[1]);
}

core.List<api.Distribution> buildUnnamed45() => [
      buildDistribution(),
      buildDistribution(),
    ];

void checkUnnamed45(core.List<api.Distribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDistribution(o[0]);
  checkDistribution(o[1]);
}

core.int buildCounterPackageNote = 0;
api.PackageNote buildPackageNote() {
  final o = api.PackageNote();
  buildCounterPackageNote++;
  if (buildCounterPackageNote < 3) {
    o.architecture = 'foo';
    o.cpeUri = 'foo';
    o.description = 'foo';
    o.digest = buildUnnamed44();
    o.distribution = buildUnnamed45();
    o.license = buildLicense();
    o.maintainer = 'foo';
    o.name = 'foo';
    o.packageType = 'foo';
    o.url = 'foo';
    o.version = buildVersion();
  }
  buildCounterPackageNote--;
  return o;
}

void checkPackageNote(api.PackageNote o) {
  buildCounterPackageNote++;
  if (buildCounterPackageNote < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.digest!);
    checkUnnamed45(o.distribution!);
    checkLicense(o.license!);
    unittest.expect(
      o.maintainer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    checkVersion(o.version!);
  }
  buildCounterPackageNote--;
}

core.List<api.Location> buildUnnamed46() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed46(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterPackageOccurrence = 0;
api.PackageOccurrence buildPackageOccurrence() {
  final o = api.PackageOccurrence();
  buildCounterPackageOccurrence++;
  if (buildCounterPackageOccurrence < 3) {
    o.architecture = 'foo';
    o.cpeUri = 'foo';
    o.license = buildLicense();
    o.location = buildUnnamed46();
    o.name = 'foo';
    o.packageType = 'foo';
    o.version = buildVersion();
  }
  buildCounterPackageOccurrence--;
  return o;
}

void checkPackageOccurrence(api.PackageOccurrence o) {
  buildCounterPackageOccurrence++;
  if (buildCounterPackageOccurrence < 3) {
    unittest.expect(
      o.architecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    checkLicense(o.license!);
    checkUnnamed46(o.location!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageType!,
      unittest.equals('foo'),
    );
    checkVersion(o.version!);
  }
  buildCounterPackageOccurrence--;
}

core.List<api.Binding> buildUnnamed47() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed47(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed47();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed47(o.bindings!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals(42),
    );
  }
  buildCounterPolicy--;
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  final o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.genericUri = 'foo';
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(
      o.genericUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterProduct--;
}

core.int buildCounterProjectRepoId = 0;
api.ProjectRepoId buildProjectRepoId() {
  final o = api.ProjectRepoId();
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    o.projectId = 'foo';
    o.repoName = 'foo';
  }
  buildCounterProjectRepoId--;
  return o;
}

void checkProjectRepoId(api.ProjectRepoId o) {
  buildCounterProjectRepoId++;
  if (buildCounterProjectRepoId < 3) {
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repoName!,
      unittest.equals('foo'),
    );
  }
  buildCounterProjectRepoId--;
}

core.List<api.ResourceDescriptor> buildUnnamed48() => [
      buildResourceDescriptor(),
      buildResourceDescriptor(),
    ];

void checkUnnamed48(core.List<api.ResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDescriptor(o[0]);
  checkResourceDescriptor(o[1]);
}

core.Map<core.String, core.String> buildUnnamed49() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed49(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterProvenanceBuilder = 0;
api.ProvenanceBuilder buildProvenanceBuilder() {
  final o = api.ProvenanceBuilder();
  buildCounterProvenanceBuilder++;
  if (buildCounterProvenanceBuilder < 3) {
    o.builderDependencies = buildUnnamed48();
    o.id = 'foo';
    o.version = buildUnnamed49();
  }
  buildCounterProvenanceBuilder--;
  return o;
}

void checkProvenanceBuilder(api.ProvenanceBuilder o) {
  buildCounterProvenanceBuilder++;
  if (buildCounterProvenanceBuilder < 3) {
    checkUnnamed48(o.builderDependencies!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.version!);
  }
  buildCounterProvenanceBuilder--;
}

core.int buildCounterPublisher = 0;
api.Publisher buildPublisher() {
  final o = api.Publisher();
  buildCounterPublisher++;
  if (buildCounterPublisher < 3) {
    o.issuingAuthority = 'foo';
    o.name = 'foo';
    o.publisherNamespace = 'foo';
  }
  buildCounterPublisher--;
  return o;
}

void checkPublisher(api.Publisher o) {
  buildCounterPublisher++;
  if (buildCounterPublisher < 3) {
    unittest.expect(
      o.issuingAuthority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherNamespace!,
      unittest.equals('foo'),
    );
  }
  buildCounterPublisher--;
}

core.Map<core.String, core.Object?> buildUnnamed50() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed50(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed51() => [
      buildUnnamed50(),
      buildUnnamed50(),
    ];

void checkUnnamed51(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed50(o[0]);
  checkUnnamed50(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed52() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed53() => [
      buildUnnamed52(),
      buildUnnamed52(),
    ];

void checkUnnamed53(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed52(o[0]);
  checkUnnamed52(o[1]);
}

core.int buildCounterRecipe = 0;
api.Recipe buildRecipe() {
  final o = api.Recipe();
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    o.arguments = buildUnnamed51();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed53();
    o.type = 'foo';
  }
  buildCounterRecipe--;
  return o;
}

void checkRecipe(api.Recipe o) {
  buildCounterRecipe++;
  if (buildCounterRecipe < 3) {
    checkUnnamed51(o.arguments!);
    unittest.expect(
      o.definedInMaterial!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryPoint!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.environment!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecipe--;
}

core.int buildCounterRelatedUrl = 0;
api.RelatedUrl buildRelatedUrl() {
  final o = api.RelatedUrl();
  buildCounterRelatedUrl++;
  if (buildCounterRelatedUrl < 3) {
    o.label = 'foo';
    o.url = 'foo';
  }
  buildCounterRelatedUrl--;
  return o;
}

void checkRelatedUrl(api.RelatedUrl o) {
  buildCounterRelatedUrl++;
  if (buildCounterRelatedUrl < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelatedUrl--;
}

core.int buildCounterRemediation = 0;
api.Remediation buildRemediation() {
  final o = api.Remediation();
  buildCounterRemediation++;
  if (buildCounterRemediation < 3) {
    o.details = 'foo';
    o.remediationType = 'foo';
    o.remediationUri = buildRelatedUrl();
  }
  buildCounterRemediation--;
  return o;
}

void checkRemediation(api.Remediation o) {
  buildCounterRemediation++;
  if (buildCounterRemediation < 3) {
    unittest.expect(
      o.details!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remediationType!,
      unittest.equals('foo'),
    );
    checkRelatedUrl(o.remediationUri!);
  }
  buildCounterRemediation--;
}

core.int buildCounterRepoId = 0;
api.RepoId buildRepoId() {
  final o = api.RepoId();
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    o.projectRepoId = buildProjectRepoId();
    o.uid = 'foo';
  }
  buildCounterRepoId--;
  return o;
}

void checkRepoId(api.RepoId o) {
  buildCounterRepoId++;
  if (buildCounterRepoId < 3) {
    checkProjectRepoId(o.projectRepoId!);
    unittest.expect(
      o.uid!,
      unittest.equals('foo'),
    );
  }
  buildCounterRepoId--;
}

core.Map<core.String, core.Object?> buildUnnamed54() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed54(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted13 = (o['x']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
  var casted14 = (o['y']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed55() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed55(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterResourceDescriptor = 0;
api.ResourceDescriptor buildResourceDescriptor() {
  final o = api.ResourceDescriptor();
  buildCounterResourceDescriptor++;
  if (buildCounterResourceDescriptor < 3) {
    o.annotations = buildUnnamed54();
    o.content = 'foo';
    o.digest = buildUnnamed55();
    o.downloadLocation = 'foo';
    o.mediaType = 'foo';
    o.name = 'foo';
    o.uri = 'foo';
  }
  buildCounterResourceDescriptor--;
  return o;
}

void checkResourceDescriptor(api.ResourceDescriptor o) {
  buildCounterResourceDescriptor++;
  if (buildCounterResourceDescriptor < 3) {
    checkUnnamed54(o.annotations!);
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.digest!);
    unittest.expect(
      o.downloadLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceDescriptor--;
}

core.List<api.ResourceDescriptor> buildUnnamed56() => [
      buildResourceDescriptor(),
      buildResourceDescriptor(),
    ];

void checkUnnamed56(core.List<api.ResourceDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceDescriptor(o[0]);
  checkResourceDescriptor(o[1]);
}

core.int buildCounterRunDetails = 0;
api.RunDetails buildRunDetails() {
  final o = api.RunDetails();
  buildCounterRunDetails++;
  if (buildCounterRunDetails < 3) {
    o.builder = buildProvenanceBuilder();
    o.byproducts = buildUnnamed56();
    o.metadata = buildBuildMetadata();
  }
  buildCounterRunDetails--;
  return o;
}

void checkRunDetails(api.RunDetails o) {
  buildCounterRunDetails++;
  if (buildCounterRunDetails < 3) {
    checkProvenanceBuilder(o.builder!);
    checkUnnamed56(o.byproducts!);
    checkBuildMetadata(o.metadata!);
  }
  buildCounterRunDetails--;
}

core.int buildCounterSBOMReferenceNote = 0;
api.SBOMReferenceNote buildSBOMReferenceNote() {
  final o = api.SBOMReferenceNote();
  buildCounterSBOMReferenceNote++;
  if (buildCounterSBOMReferenceNote < 3) {
    o.format = 'foo';
    o.version = 'foo';
  }
  buildCounterSBOMReferenceNote--;
  return o;
}

void checkSBOMReferenceNote(api.SBOMReferenceNote o) {
  buildCounterSBOMReferenceNote++;
  if (buildCounterSBOMReferenceNote < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterSBOMReferenceNote--;
}

core.List<api.EnvelopeSignature> buildUnnamed57() => [
      buildEnvelopeSignature(),
      buildEnvelopeSignature(),
    ];

void checkUnnamed57(core.List<api.EnvelopeSignature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvelopeSignature(o[0]);
  checkEnvelopeSignature(o[1]);
}

core.int buildCounterSBOMReferenceOccurrence = 0;
api.SBOMReferenceOccurrence buildSBOMReferenceOccurrence() {
  final o = api.SBOMReferenceOccurrence();
  buildCounterSBOMReferenceOccurrence++;
  if (buildCounterSBOMReferenceOccurrence < 3) {
    o.payload = buildSbomReferenceIntotoPayload();
    o.payloadType = 'foo';
    o.signatures = buildUnnamed57();
  }
  buildCounterSBOMReferenceOccurrence--;
  return o;
}

void checkSBOMReferenceOccurrence(api.SBOMReferenceOccurrence o) {
  buildCounterSBOMReferenceOccurrence++;
  if (buildCounterSBOMReferenceOccurrence < 3) {
    checkSbomReferenceIntotoPayload(o.payload!);
    unittest.expect(
      o.payloadType!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.signatures!);
  }
  buildCounterSBOMReferenceOccurrence--;
}

core.int buildCounterSBOMStatus = 0;
api.SBOMStatus buildSBOMStatus() {
  final o = api.SBOMStatus();
  buildCounterSBOMStatus++;
  if (buildCounterSBOMStatus < 3) {
    o.error = 'foo';
    o.sbomState = 'foo';
  }
  buildCounterSBOMStatus--;
  return o;
}

void checkSBOMStatus(api.SBOMStatus o) {
  buildCounterSBOMStatus++;
  if (buildCounterSBOMStatus < 3) {
    unittest.expect(
      o.error!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sbomState!,
      unittest.equals('foo'),
    );
  }
  buildCounterSBOMStatus--;
}

core.List<api.Subject> buildUnnamed58() => [
      buildSubject(),
      buildSubject(),
    ];

void checkUnnamed58(core.List<api.Subject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubject(o[0]);
  checkSubject(o[1]);
}

core.int buildCounterSbomReferenceIntotoPayload = 0;
api.SbomReferenceIntotoPayload buildSbomReferenceIntotoPayload() {
  final o = api.SbomReferenceIntotoPayload();
  buildCounterSbomReferenceIntotoPayload++;
  if (buildCounterSbomReferenceIntotoPayload < 3) {
    o.P_type = 'foo';
    o.predicate = buildSbomReferenceIntotoPredicate();
    o.predicateType = 'foo';
    o.subject = buildUnnamed58();
  }
  buildCounterSbomReferenceIntotoPayload--;
  return o;
}

void checkSbomReferenceIntotoPayload(api.SbomReferenceIntotoPayload o) {
  buildCounterSbomReferenceIntotoPayload++;
  if (buildCounterSbomReferenceIntotoPayload < 3) {
    unittest.expect(
      o.P_type!,
      unittest.equals('foo'),
    );
    checkSbomReferenceIntotoPredicate(o.predicate!);
    unittest.expect(
      o.predicateType!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.subject!);
  }
  buildCounterSbomReferenceIntotoPayload--;
}

core.Map<core.String, core.String> buildUnnamed59() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed59(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterSbomReferenceIntotoPredicate = 0;
api.SbomReferenceIntotoPredicate buildSbomReferenceIntotoPredicate() {
  final o = api.SbomReferenceIntotoPredicate();
  buildCounterSbomReferenceIntotoPredicate++;
  if (buildCounterSbomReferenceIntotoPredicate < 3) {
    o.digest = buildUnnamed59();
    o.location = 'foo';
    o.mimeType = 'foo';
    o.referrerId = 'foo';
  }
  buildCounterSbomReferenceIntotoPredicate--;
  return o;
}

void checkSbomReferenceIntotoPredicate(api.SbomReferenceIntotoPredicate o) {
  buildCounterSbomReferenceIntotoPredicate++;
  if (buildCounterSbomReferenceIntotoPredicate < 3) {
    checkUnnamed59(o.digest!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referrerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSbomReferenceIntotoPredicate--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSignature = 0;
api.Signature buildSignature() {
  final o = api.Signature();
  buildCounterSignature++;
  if (buildCounterSignature < 3) {
    o.publicKeyId = 'foo';
    o.signature = 'foo';
  }
  buildCounterSignature--;
  return o;
}

void checkSignature(api.Signature o) {
  buildCounterSignature++;
  if (buildCounterSignature < 3) {
    unittest.expect(
      o.publicKeyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignature--;
}

core.int buildCounterSlsaBuilder = 0;
api.SlsaBuilder buildSlsaBuilder() {
  final o = api.SlsaBuilder();
  buildCounterSlsaBuilder++;
  if (buildCounterSlsaBuilder < 3) {
    o.id = 'foo';
  }
  buildCounterSlsaBuilder--;
  return o;
}

void checkSlsaBuilder(api.SlsaBuilder o) {
  buildCounterSlsaBuilder++;
  if (buildCounterSlsaBuilder < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterSlsaBuilder--;
}

core.int buildCounterSlsaCompleteness = 0;
api.SlsaCompleteness buildSlsaCompleteness() {
  final o = api.SlsaCompleteness();
  buildCounterSlsaCompleteness++;
  if (buildCounterSlsaCompleteness < 3) {
    o.arguments = true;
    o.environment = true;
    o.materials = true;
  }
  buildCounterSlsaCompleteness--;
  return o;
}

void checkSlsaCompleteness(api.SlsaCompleteness o) {
  buildCounterSlsaCompleteness++;
  if (buildCounterSlsaCompleteness < 3) {
    unittest.expect(o.arguments!, unittest.isTrue);
    unittest.expect(o.environment!, unittest.isTrue);
    unittest.expect(o.materials!, unittest.isTrue);
  }
  buildCounterSlsaCompleteness--;
}

core.int buildCounterSlsaMetadata = 0;
api.SlsaMetadata buildSlsaMetadata() {
  final o = api.SlsaMetadata();
  buildCounterSlsaMetadata++;
  if (buildCounterSlsaMetadata < 3) {
    o.buildFinishedOn = 'foo';
    o.buildInvocationId = 'foo';
    o.buildStartedOn = 'foo';
    o.completeness = buildSlsaCompleteness();
    o.reproducible = true;
  }
  buildCounterSlsaMetadata--;
  return o;
}

void checkSlsaMetadata(api.SlsaMetadata o) {
  buildCounterSlsaMetadata++;
  if (buildCounterSlsaMetadata < 3) {
    unittest.expect(
      o.buildFinishedOn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildInvocationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildStartedOn!,
      unittest.equals('foo'),
    );
    checkSlsaCompleteness(o.completeness!);
    unittest.expect(o.reproducible!, unittest.isTrue);
  }
  buildCounterSlsaMetadata--;
}

core.List<api.Material> buildUnnamed60() => [
      buildMaterial(),
      buildMaterial(),
    ];

void checkUnnamed60(core.List<api.Material> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMaterial(o[0]);
  checkMaterial(o[1]);
}

core.int buildCounterSlsaProvenance = 0;
api.SlsaProvenance buildSlsaProvenance() {
  final o = api.SlsaProvenance();
  buildCounterSlsaProvenance++;
  if (buildCounterSlsaProvenance < 3) {
    o.builder = buildSlsaBuilder();
    o.materials = buildUnnamed60();
    o.metadata = buildSlsaMetadata();
    o.recipe = buildSlsaRecipe();
  }
  buildCounterSlsaProvenance--;
  return o;
}

void checkSlsaProvenance(api.SlsaProvenance o) {
  buildCounterSlsaProvenance++;
  if (buildCounterSlsaProvenance < 3) {
    checkSlsaBuilder(o.builder!);
    checkUnnamed60(o.materials!);
    checkSlsaMetadata(o.metadata!);
    checkSlsaRecipe(o.recipe!);
  }
  buildCounterSlsaProvenance--;
}

core.int buildCounterSlsaProvenanceV1 = 0;
api.SlsaProvenanceV1 buildSlsaProvenanceV1() {
  final o = api.SlsaProvenanceV1();
  buildCounterSlsaProvenanceV1++;
  if (buildCounterSlsaProvenanceV1 < 3) {
    o.buildDefinition = buildBuildDefinition();
    o.runDetails = buildRunDetails();
  }
  buildCounterSlsaProvenanceV1--;
  return o;
}

void checkSlsaProvenanceV1(api.SlsaProvenanceV1 o) {
  buildCounterSlsaProvenanceV1++;
  if (buildCounterSlsaProvenanceV1 < 3) {
    checkBuildDefinition(o.buildDefinition!);
    checkRunDetails(o.runDetails!);
  }
  buildCounterSlsaProvenanceV1--;
}

core.Map<core.String, core.Object?> buildUnnamed61() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed61(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted15 = (o['x']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
  var casted16 = (o['y']!) as core.Map;
  unittest.expect(casted16, unittest.hasLength(3));
  unittest.expect(
    casted16['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted16['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted16['string'],
    unittest.equals('foo'),
  );
}

core.List<api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial> buildUnnamed62() => [
      buildGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(),
      buildGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(),
    ];

void checkUnnamed62(
    core.List<api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(o[0]);
  checkGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(o[1]);
}

core.int buildCounterSlsaProvenanceZeroTwo = 0;
api.SlsaProvenanceZeroTwo buildSlsaProvenanceZeroTwo() {
  final o = api.SlsaProvenanceZeroTwo();
  buildCounterSlsaProvenanceZeroTwo++;
  if (buildCounterSlsaProvenanceZeroTwo < 3) {
    o.buildConfig = buildUnnamed61();
    o.buildType = 'foo';
    o.builder = buildGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder();
    o.invocation = buildGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation();
    o.materials = buildUnnamed62();
    o.metadata = buildGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata();
  }
  buildCounterSlsaProvenanceZeroTwo--;
  return o;
}

void checkSlsaProvenanceZeroTwo(api.SlsaProvenanceZeroTwo o) {
  buildCounterSlsaProvenanceZeroTwo++;
  if (buildCounterSlsaProvenanceZeroTwo < 3) {
    checkUnnamed61(o.buildConfig!);
    unittest.expect(
      o.buildType!,
      unittest.equals('foo'),
    );
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder(o.builder!);
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(o.invocation!);
    checkUnnamed62(o.materials!);
    checkGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(o.metadata!);
  }
  buildCounterSlsaProvenanceZeroTwo--;
}

core.Map<core.String, core.Object?> buildUnnamed63() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed63(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted17 = (o['x']!) as core.Map;
  unittest.expect(casted17, unittest.hasLength(3));
  unittest.expect(
    casted17['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted17['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted17['string'],
    unittest.equals('foo'),
  );
  var casted18 = (o['y']!) as core.Map;
  unittest.expect(casted18, unittest.hasLength(3));
  unittest.expect(
    casted18['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted18['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted18['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed64() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed64(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted19 = (o['x']!) as core.Map;
  unittest.expect(casted19, unittest.hasLength(3));
  unittest.expect(
    casted19['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted19['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted19['string'],
    unittest.equals('foo'),
  );
  var casted20 = (o['y']!) as core.Map;
  unittest.expect(casted20, unittest.hasLength(3));
  unittest.expect(
    casted20['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted20['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted20['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterSlsaRecipe = 0;
api.SlsaRecipe buildSlsaRecipe() {
  final o = api.SlsaRecipe();
  buildCounterSlsaRecipe++;
  if (buildCounterSlsaRecipe < 3) {
    o.arguments = buildUnnamed63();
    o.definedInMaterial = 'foo';
    o.entryPoint = 'foo';
    o.environment = buildUnnamed64();
    o.type = 'foo';
  }
  buildCounterSlsaRecipe--;
  return o;
}

void checkSlsaRecipe(api.SlsaRecipe o) {
  buildCounterSlsaRecipe++;
  if (buildCounterSlsaRecipe < 3) {
    checkUnnamed63(o.arguments!);
    unittest.expect(
      o.definedInMaterial!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entryPoint!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.environment!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSlsaRecipe--;
}

core.List<api.SourceContext> buildUnnamed65() => [
      buildSourceContext(),
      buildSourceContext(),
    ];

void checkUnnamed65(core.List<api.SourceContext> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceContext(o[0]);
  checkSourceContext(o[1]);
}

core.Map<core.String, api.FileHashes> buildUnnamed66() => {
      'x': buildFileHashes(),
      'y': buildFileHashes(),
    };

void checkUnnamed66(core.Map<core.String, api.FileHashes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileHashes(o['x']!);
  checkFileHashes(o['y']!);
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.additionalContexts = buildUnnamed65();
    o.artifactStorageSourceUri = 'foo';
    o.context = buildSourceContext();
    o.fileHashes = buildUnnamed66();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed65(o.additionalContexts!);
    unittest.expect(
      o.artifactStorageSourceUri!,
      unittest.equals('foo'),
    );
    checkSourceContext(o.context!);
    checkUnnamed66(o.fileHashes!);
  }
  buildCounterSource--;
}

core.Map<core.String, core.String> buildUnnamed67() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed67(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterSourceContext = 0;
api.SourceContext buildSourceContext() {
  final o = api.SourceContext();
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    o.cloudRepo = buildCloudRepoSourceContext();
    o.gerrit = buildGerritSourceContext();
    o.git = buildGitSourceContext();
    o.labels = buildUnnamed67();
  }
  buildCounterSourceContext--;
  return o;
}

void checkSourceContext(api.SourceContext o) {
  buildCounterSourceContext++;
  if (buildCounterSourceContext < 3) {
    checkCloudRepoSourceContext(o.cloudRepo!);
    checkGerritSourceContext(o.gerrit!);
    checkGitSourceContext(o.git!);
    checkUnnamed67(o.labels!);
  }
  buildCounterSourceContext--;
}

core.Map<core.String, core.Object?> buildUnnamed68() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed68(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted21 = (o['x']!) as core.Map;
  unittest.expect(casted21, unittest.hasLength(3));
  unittest.expect(
    casted21['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted21['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted21['string'],
    unittest.equals('foo'),
  );
  var casted22 = (o['y']!) as core.Map;
  unittest.expect(casted22, unittest.hasLength(3));
  unittest.expect(
    casted22['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted22['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted22['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed69() => [
      buildUnnamed68(),
      buildUnnamed68(),
    ];

void checkUnnamed69(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed68(o[0]);
  checkUnnamed68(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed69();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed69(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.Map<core.String, core.String> buildUnnamed70() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed70(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterSubject = 0;
api.Subject buildSubject() {
  final o = api.Subject();
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    o.digest = buildUnnamed70();
    o.name = 'foo';
  }
  buildCounterSubject--;
  return o;
}

void checkSubject(api.Subject o) {
  buildCounterSubject++;
  if (buildCounterSubject < 3) {
    checkUnnamed70(o.digest!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubject--;
}

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed71();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed71(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed72() => [
      'foo',
      'foo',
    ];

void checkUnnamed72(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed72();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed72(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed73() => [
      'foo',
      'foo',
    ];

void checkUnnamed73(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterUpgradeDistribution = 0;
api.UpgradeDistribution buildUpgradeDistribution() {
  final o = api.UpgradeDistribution();
  buildCounterUpgradeDistribution++;
  if (buildCounterUpgradeDistribution < 3) {
    o.classification = 'foo';
    o.cpeUri = 'foo';
    o.cve = buildUnnamed73();
    o.severity = 'foo';
  }
  buildCounterUpgradeDistribution--;
  return o;
}

void checkUpgradeDistribution(api.UpgradeDistribution o) {
  buildCounterUpgradeDistribution++;
  if (buildCounterUpgradeDistribution < 3) {
    unittest.expect(
      o.classification!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.cve!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeDistribution--;
}

core.List<api.UpgradeDistribution> buildUnnamed74() => [
      buildUpgradeDistribution(),
      buildUpgradeDistribution(),
    ];

void checkUnnamed74(core.List<api.UpgradeDistribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpgradeDistribution(o[0]);
  checkUpgradeDistribution(o[1]);
}

core.int buildCounterUpgradeNote = 0;
api.UpgradeNote buildUpgradeNote() {
  final o = api.UpgradeNote();
  buildCounterUpgradeNote++;
  if (buildCounterUpgradeNote < 3) {
    o.distributions = buildUnnamed74();
    o.package = 'foo';
    o.version = buildVersion();
    o.windowsUpdate = buildWindowsUpdate();
  }
  buildCounterUpgradeNote--;
  return o;
}

void checkUpgradeNote(api.UpgradeNote o) {
  buildCounterUpgradeNote++;
  if (buildCounterUpgradeNote < 3) {
    checkUnnamed74(o.distributions!);
    unittest.expect(
      o.package!,
      unittest.equals('foo'),
    );
    checkVersion(o.version!);
    checkWindowsUpdate(o.windowsUpdate!);
  }
  buildCounterUpgradeNote--;
}

core.int buildCounterUpgradeOccurrence = 0;
api.UpgradeOccurrence buildUpgradeOccurrence() {
  final o = api.UpgradeOccurrence();
  buildCounterUpgradeOccurrence++;
  if (buildCounterUpgradeOccurrence < 3) {
    o.distribution = buildUpgradeDistribution();
    o.package = 'foo';
    o.parsedVersion = buildVersion();
    o.windowsUpdate = buildWindowsUpdate();
  }
  buildCounterUpgradeOccurrence--;
  return o;
}

void checkUpgradeOccurrence(api.UpgradeOccurrence o) {
  buildCounterUpgradeOccurrence++;
  if (buildCounterUpgradeOccurrence < 3) {
    checkUpgradeDistribution(o.distribution!);
    unittest.expect(
      o.package!,
      unittest.equals('foo'),
    );
    checkVersion(o.parsedVersion!);
    checkWindowsUpdate(o.windowsUpdate!);
  }
  buildCounterUpgradeOccurrence--;
}

core.int buildCounterVersion = 0;
api.Version buildVersion() {
  final o = api.Version();
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    o.epoch = 42;
    o.fullName = 'foo';
    o.inclusive = true;
    o.kind = 'foo';
    o.name = 'foo';
    o.revision = 'foo';
  }
  buildCounterVersion--;
  return o;
}

void checkVersion(api.Version o) {
  buildCounterVersion++;
  if (buildCounterVersion < 3) {
    unittest.expect(
      o.epoch!,
      unittest.equals(42),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.inclusive!, unittest.isTrue);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals('foo'),
    );
  }
  buildCounterVersion--;
}

core.List<core.String> buildUnnamed75() => [
      'foo',
      'foo',
    ];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.List<api.RelatedUrl> buildUnnamed76() => [
      buildRelatedUrl(),
      buildRelatedUrl(),
    ];

void checkUnnamed76(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.List<api.Remediation> buildUnnamed77() => [
      buildRemediation(),
      buildRemediation(),
    ];

void checkUnnamed77(core.List<api.Remediation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemediation(o[0]);
  checkRemediation(o[1]);
}

core.int buildCounterVexAssessment = 0;
api.VexAssessment buildVexAssessment() {
  final o = api.VexAssessment();
  buildCounterVexAssessment++;
  if (buildCounterVexAssessment < 3) {
    o.cve = 'foo';
    o.impacts = buildUnnamed75();
    o.justification = buildJustification();
    o.noteName = 'foo';
    o.relatedUris = buildUnnamed76();
    o.remediations = buildUnnamed77();
    o.state = 'foo';
    o.vulnerabilityId = 'foo';
  }
  buildCounterVexAssessment--;
  return o;
}

void checkVexAssessment(api.VexAssessment o) {
  buildCounterVexAssessment++;
  if (buildCounterVexAssessment < 3) {
    unittest.expect(
      o.cve!,
      unittest.equals('foo'),
    );
    checkUnnamed75(o.impacts!);
    checkJustification(o.justification!);
    unittest.expect(
      o.noteName!,
      unittest.equals('foo'),
    );
    checkUnnamed76(o.relatedUris!);
    checkUnnamed77(o.remediations!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vulnerabilityId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVexAssessment--;
}

core.int buildCounterVulnerabilityAssessmentNote = 0;
api.VulnerabilityAssessmentNote buildVulnerabilityAssessmentNote() {
  final o = api.VulnerabilityAssessmentNote();
  buildCounterVulnerabilityAssessmentNote++;
  if (buildCounterVulnerabilityAssessmentNote < 3) {
    o.assessment = buildAssessment();
    o.languageCode = 'foo';
    o.longDescription = 'foo';
    o.product = buildProduct();
    o.publisher = buildPublisher();
    o.shortDescription = 'foo';
    o.title = 'foo';
  }
  buildCounterVulnerabilityAssessmentNote--;
  return o;
}

void checkVulnerabilityAssessmentNote(api.VulnerabilityAssessmentNote o) {
  buildCounterVulnerabilityAssessmentNote++;
  if (buildCounterVulnerabilityAssessmentNote < 3) {
    checkAssessment(o.assessment!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    checkProduct(o.product!);
    checkPublisher(o.publisher!);
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterVulnerabilityAssessmentNote--;
}

core.List<api.Detail> buildUnnamed78() => [
      buildDetail(),
      buildDetail(),
    ];

void checkUnnamed78(core.List<api.Detail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDetail(o[0]);
  checkDetail(o[1]);
}

core.List<api.WindowsDetail> buildUnnamed79() => [
      buildWindowsDetail(),
      buildWindowsDetail(),
    ];

void checkUnnamed79(core.List<api.WindowsDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWindowsDetail(o[0]);
  checkWindowsDetail(o[1]);
}

core.int buildCounterVulnerabilityNote = 0;
api.VulnerabilityNote buildVulnerabilityNote() {
  final o = api.VulnerabilityNote();
  buildCounterVulnerabilityNote++;
  if (buildCounterVulnerabilityNote < 3) {
    o.cvssScore = 42.0;
    o.cvssV2 = buildCVSS();
    o.cvssV3 = buildCVSSv3();
    o.cvssVersion = 'foo';
    o.details = buildUnnamed78();
    o.severity = 'foo';
    o.sourceUpdateTime = 'foo';
    o.windowsDetails = buildUnnamed79();
  }
  buildCounterVulnerabilityNote--;
  return o;
}

void checkVulnerabilityNote(api.VulnerabilityNote o) {
  buildCounterVulnerabilityNote++;
  if (buildCounterVulnerabilityNote < 3) {
    unittest.expect(
      o.cvssScore!,
      unittest.equals(42.0),
    );
    checkCVSS(o.cvssV2!);
    checkCVSSv3(o.cvssV3!);
    unittest.expect(
      o.cvssVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed78(o.details!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceUpdateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed79(o.windowsDetails!);
  }
  buildCounterVulnerabilityNote--;
}

core.List<api.PackageIssue> buildUnnamed80() => [
      buildPackageIssue(),
      buildPackageIssue(),
    ];

void checkUnnamed80(core.List<api.PackageIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackageIssue(o[0]);
  checkPackageIssue(o[1]);
}

core.List<api.RelatedUrl> buildUnnamed81() => [
      buildRelatedUrl(),
      buildRelatedUrl(),
    ];

void checkUnnamed81(core.List<api.RelatedUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelatedUrl(o[0]);
  checkRelatedUrl(o[1]);
}

core.int buildCounterVulnerabilityOccurrence = 0;
api.VulnerabilityOccurrence buildVulnerabilityOccurrence() {
  final o = api.VulnerabilityOccurrence();
  buildCounterVulnerabilityOccurrence++;
  if (buildCounterVulnerabilityOccurrence < 3) {
    o.cvssScore = 42.0;
    o.cvssV2 = buildCVSS();
    o.cvssVersion = 'foo';
    o.cvssv3 = buildCVSS();
    o.effectiveSeverity = 'foo';
    o.extraDetails = 'foo';
    o.fixAvailable = true;
    o.longDescription = 'foo';
    o.packageIssue = buildUnnamed80();
    o.relatedUrls = buildUnnamed81();
    o.severity = 'foo';
    o.shortDescription = 'foo';
    o.type = 'foo';
    o.vexAssessment = buildVexAssessment();
  }
  buildCounterVulnerabilityOccurrence--;
  return o;
}

void checkVulnerabilityOccurrence(api.VulnerabilityOccurrence o) {
  buildCounterVulnerabilityOccurrence++;
  if (buildCounterVulnerabilityOccurrence < 3) {
    unittest.expect(
      o.cvssScore!,
      unittest.equals(42.0),
    );
    checkCVSS(o.cvssV2!);
    unittest.expect(
      o.cvssVersion!,
      unittest.equals('foo'),
    );
    checkCVSS(o.cvssv3!);
    unittest.expect(
      o.effectiveSeverity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.extraDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(o.fixAvailable!, unittest.isTrue);
    unittest.expect(
      o.longDescription!,
      unittest.equals('foo'),
    );
    checkUnnamed80(o.packageIssue!);
    checkUnnamed81(o.relatedUrls!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkVexAssessment(o.vexAssessment!);
  }
  buildCounterVulnerabilityOccurrence--;
}

core.List<api.FixableTotalByDigest> buildUnnamed82() => [
      buildFixableTotalByDigest(),
      buildFixableTotalByDigest(),
    ];

void checkUnnamed82(core.List<api.FixableTotalByDigest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFixableTotalByDigest(o[0]);
  checkFixableTotalByDigest(o[1]);
}

core.int buildCounterVulnerabilityOccurrencesSummary = 0;
api.VulnerabilityOccurrencesSummary buildVulnerabilityOccurrencesSummary() {
  final o = api.VulnerabilityOccurrencesSummary();
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    o.counts = buildUnnamed82();
  }
  buildCounterVulnerabilityOccurrencesSummary--;
  return o;
}

void checkVulnerabilityOccurrencesSummary(
    api.VulnerabilityOccurrencesSummary o) {
  buildCounterVulnerabilityOccurrencesSummary++;
  if (buildCounterVulnerabilityOccurrencesSummary < 3) {
    checkUnnamed82(o.counts!);
  }
  buildCounterVulnerabilityOccurrencesSummary--;
}

core.List<api.KnowledgeBase> buildUnnamed83() => [
      buildKnowledgeBase(),
      buildKnowledgeBase(),
    ];

void checkUnnamed83(core.List<api.KnowledgeBase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKnowledgeBase(o[0]);
  checkKnowledgeBase(o[1]);
}

core.int buildCounterWindowsDetail = 0;
api.WindowsDetail buildWindowsDetail() {
  final o = api.WindowsDetail();
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    o.cpeUri = 'foo';
    o.description = 'foo';
    o.fixingKbs = buildUnnamed83();
    o.name = 'foo';
  }
  buildCounterWindowsDetail--;
  return o;
}

void checkWindowsDetail(api.WindowsDetail o) {
  buildCounterWindowsDetail++;
  if (buildCounterWindowsDetail < 3) {
    unittest.expect(
      o.cpeUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed83(o.fixingKbs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsDetail--;
}

core.List<api.Category> buildUnnamed84() => [
      buildCategory(),
      buildCategory(),
    ];

void checkUnnamed84(core.List<api.Category> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCategory(o[0]);
  checkCategory(o[1]);
}

core.List<core.String> buildUnnamed85() => [
      'foo',
      'foo',
    ];

void checkUnnamed85(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterWindowsUpdate = 0;
api.WindowsUpdate buildWindowsUpdate() {
  final o = api.WindowsUpdate();
  buildCounterWindowsUpdate++;
  if (buildCounterWindowsUpdate < 3) {
    o.categories = buildUnnamed84();
    o.description = 'foo';
    o.identity = buildIdentity();
    o.kbArticleIds = buildUnnamed85();
    o.lastPublishedTimestamp = 'foo';
    o.supportUrl = 'foo';
    o.title = 'foo';
  }
  buildCounterWindowsUpdate--;
  return o;
}

void checkWindowsUpdate(api.WindowsUpdate o) {
  buildCounterWindowsUpdate++;
  if (buildCounterWindowsUpdate < 3) {
    checkUnnamed84(o.categories!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkIdentity(o.identity!);
    checkUnnamed85(o.kbArticleIds!);
    unittest.expect(
      o.lastPublishedTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.supportUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsUpdate--;
}

void main() {
  unittest.group('obj-schema-AliasContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAliasContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AliasContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAliasContext(od);
    });
  });

  unittest.group('obj-schema-AnalysisCompleted', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalysisCompleted();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalysisCompleted.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAnalysisCompleted(od);
    });
  });

  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Artifact.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArtifact(od);
    });
  });

  unittest.group('obj-schema-Assessment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Assessment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAssessment(od);
    });
  });

  unittest.group('obj-schema-AttestationNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestationNote(od);
    });
  });

  unittest.group('obj-schema-AttestationOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttestationOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AttestationOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAttestationOccurrence(od);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateNotesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateNotesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateNotesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateNotesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateOccurrencesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateOccurrencesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateOccurrencesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchCreateOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchCreateOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchCreateOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchCreateOccurrencesResponse(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Binding.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-BuildDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildDefinition(od);
    });
  });

  unittest.group('obj-schema-BuildMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildMetadata(od);
    });
  });

  unittest.group('obj-schema-BuildNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BuildNote.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBuildNote(od);
    });
  });

  unittest.group('obj-schema-BuildOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildOccurrence(od);
    });
  });

  unittest.group('obj-schema-BuildProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildProvenance(od);
    });
  });

  unittest.group('obj-schema-BuilderConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuilderConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuilderConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuilderConfig(od);
    });
  });

  unittest.group('obj-schema-CVSS', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCVSS();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CVSS.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCVSS(od);
    });
  });

  unittest.group('obj-schema-CVSSv3', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCVSSv3();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CVSSv3.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCVSSv3(od);
    });
  });

  unittest.group('obj-schema-Category', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCategory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Category.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCategory(od);
    });
  });

  unittest.group('obj-schema-CisBenchmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCisBenchmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CisBenchmark.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCisBenchmark(od);
    });
  });

  unittest.group('obj-schema-CloudRepoSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRepoSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRepoSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRepoSourceContext(od);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Command.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCommand(od);
    });
  });

  unittest.group('obj-schema-Completeness', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Completeness.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteness(od);
    });
  });

  unittest.group('obj-schema-ComplianceNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceNote(od);
    });
  });

  unittest.group('obj-schema-ComplianceOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceOccurrence(od);
    });
  });

  unittest.group('obj-schema-ComplianceVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceVersion(od);
    });
  });

  unittest.group('obj-schema-DSSEAttestationNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEAttestationNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DSSEAttestationNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDSSEAttestationNote(od);
    });
  });

  unittest.group('obj-schema-DSSEAttestationOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEAttestationOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DSSEAttestationOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDSSEAttestationOccurrence(od);
    });
  });

  unittest.group('obj-schema-DSSEHint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDSSEHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DSSEHint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDSSEHint(od);
    });
  });

  unittest.group('obj-schema-DeploymentNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentNote(od);
    });
  });

  unittest.group('obj-schema-DeploymentOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeploymentOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeploymentOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeploymentOccurrence(od);
    });
  });

  unittest.group('obj-schema-Detail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Detail.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDetail(od);
    });
  });

  unittest.group('obj-schema-Digest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDigest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Digest.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDigest(od);
    });
  });

  unittest.group('obj-schema-DiscoveryNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryNote(od);
    });
  });

  unittest.group('obj-schema-DiscoveryOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryOccurrence(od);
    });
  });

  unittest.group('obj-schema-Distribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Distribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDistribution(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Envelope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvelope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Envelope.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnvelope(od);
    });
  });

  unittest.group('obj-schema-EnvelopeSignature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvelopeSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvelopeSignature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvelopeSignature(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-FileHashes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileHashes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FileHashes.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFileHashes(od);
    });
  });

  unittest.group('obj-schema-Fingerprint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFingerprint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Fingerprint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFingerprint(od);
    });
  });

  unittest.group('obj-schema-FixableTotalByDigest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFixableTotalByDigest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FixableTotalByDigest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFixableTotalByDigest(od);
    });
  });

  unittest.group('obj-schema-GerritSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGerritSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GerritSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGerritSourceContext(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-GitSourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGitSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GitSourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGitSourceContext(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1FileLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1FileLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1FileLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1FileLocation(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaBuilder(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaInvocation(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaMaterial(od);
    });
  });

  unittest.group('obj-schema-GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGrafeasV1SlsaProvenanceZeroTwoSlsaMetadata(od);
    });
  });

  unittest.group('obj-schema-Hash', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHash();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Hash.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHash(od);
    });
  });

  unittest.group('obj-schema-Hint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Hint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHint(od);
    });
  });

  unittest.group('obj-schema-Identity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Identity.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkIdentity(od);
    });
  });

  unittest.group('obj-schema-ImageNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ImageNote.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImageNote(od);
    });
  });

  unittest.group('obj-schema-ImageOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageOccurrence(od);
    });
  });

  unittest.group('obj-schema-InTotoProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInTotoProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InTotoProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInTotoProvenance(od);
    });
  });

  unittest.group('obj-schema-InTotoSlsaProvenanceV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInTotoSlsaProvenanceV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InTotoSlsaProvenanceV1.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInTotoSlsaProvenanceV1(od);
    });
  });

  unittest.group('obj-schema-InTotoStatement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInTotoStatement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InTotoStatement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInTotoStatement(od);
    });
  });

  unittest.group('obj-schema-Justification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJustification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Justification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJustification(od);
    });
  });

  unittest.group('obj-schema-Jwt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Jwt.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJwt(od);
    });
  });

  unittest.group('obj-schema-KnowledgeBase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKnowledgeBase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KnowledgeBase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKnowledgeBase(od);
    });
  });

  unittest.group('obj-schema-Layer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Layer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLayer(od);
    });
  });

  unittest.group('obj-schema-License', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLicense();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.License.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLicense(od);
    });
  });

  unittest.group('obj-schema-ListNoteOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNoteOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNoteOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNoteOccurrencesResponse(od);
    });
  });

  unittest.group('obj-schema-ListNotesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNotesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNotesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOccurrencesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOccurrencesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOccurrencesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOccurrencesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-Material', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaterial();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Material.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMaterial(od);
    });
  });

  unittest.group('obj-schema-Metadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metadata.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetadata(od);
    });
  });

  unittest.group('obj-schema-NonCompliantFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonCompliantFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonCompliantFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonCompliantFile(od);
    });
  });

  unittest.group('obj-schema-Note', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Note.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNote(od);
    });
  });

  unittest.group('obj-schema-Occurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Occurrence.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOccurrence(od);
    });
  });

  unittest.group('obj-schema-PackageIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageIssue(od);
    });
  });

  unittest.group('obj-schema-PackageNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageNote(od);
    });
  });

  unittest.group('obj-schema-PackageOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageOccurrence(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Product.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProduct(od);
    });
  });

  unittest.group('obj-schema-ProjectRepoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProjectRepoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProjectRepoId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProjectRepoId(od);
    });
  });

  unittest.group('obj-schema-ProvenanceBuilder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvenanceBuilder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvenanceBuilder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProvenanceBuilder(od);
    });
  });

  unittest.group('obj-schema-Publisher', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPublisher();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Publisher.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPublisher(od);
    });
  });

  unittest.group('obj-schema-Recipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Recipe.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRecipe(od);
    });
  });

  unittest.group('obj-schema-RelatedUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelatedUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RelatedUrl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRelatedUrl(od);
    });
  });

  unittest.group('obj-schema-Remediation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemediation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Remediation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemediation(od);
    });
  });

  unittest.group('obj-schema-RepoId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepoId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RepoId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRepoId(od);
    });
  });

  unittest.group('obj-schema-ResourceDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceDescriptor(od);
    });
  });

  unittest.group('obj-schema-RunDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RunDetails.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRunDetails(od);
    });
  });

  unittest.group('obj-schema-SBOMReferenceNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSBOMReferenceNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SBOMReferenceNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSBOMReferenceNote(od);
    });
  });

  unittest.group('obj-schema-SBOMReferenceOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSBOMReferenceOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SBOMReferenceOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSBOMReferenceOccurrence(od);
    });
  });

  unittest.group('obj-schema-SBOMStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSBOMStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SBOMStatus.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSBOMStatus(od);
    });
  });

  unittest.group('obj-schema-SbomReferenceIntotoPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSbomReferenceIntotoPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SbomReferenceIntotoPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSbomReferenceIntotoPayload(od);
    });
  });

  unittest.group('obj-schema-SbomReferenceIntotoPredicate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSbomReferenceIntotoPredicate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SbomReferenceIntotoPredicate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSbomReferenceIntotoPredicate(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-Signature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Signature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSignature(od);
    });
  });

  unittest.group('obj-schema-SlsaBuilder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaBuilder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaBuilder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaBuilder(od);
    });
  });

  unittest.group('obj-schema-SlsaCompleteness', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaCompleteness();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaCompleteness.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaCompleteness(od);
    });
  });

  unittest.group('obj-schema-SlsaMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaMetadata(od);
    });
  });

  unittest.group('obj-schema-SlsaProvenance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaProvenance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaProvenance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaProvenance(od);
    });
  });

  unittest.group('obj-schema-SlsaProvenanceV1', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaProvenanceV1();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaProvenanceV1.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaProvenanceV1(od);
    });
  });

  unittest.group('obj-schema-SlsaProvenanceZeroTwo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaProvenanceZeroTwo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlsaProvenanceZeroTwo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlsaProvenanceZeroTwo(od);
    });
  });

  unittest.group('obj-schema-SlsaRecipe', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlsaRecipe();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SlsaRecipe.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSlsaRecipe(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SourceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceContext(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Subject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Subject.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSubject(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-UpgradeDistribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeDistribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeDistribution(od);
    });
  });

  unittest.group('obj-schema-UpgradeNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeNote(od);
    });
  });

  unittest.group('obj-schema-UpgradeOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeOccurrence(od);
    });
  });

  unittest.group('obj-schema-Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Version.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVersion(od);
    });
  });

  unittest.group('obj-schema-VexAssessment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVexAssessment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VexAssessment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVexAssessment(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityAssessmentNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityAssessmentNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityAssessmentNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityAssessmentNote(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityNote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityNote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityNote.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityNote(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityOccurrence', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityOccurrence();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityOccurrence.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityOccurrence(od);
    });
  });

  unittest.group('obj-schema-VulnerabilityOccurrencesSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVulnerabilityOccurrencesSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VulnerabilityOccurrencesSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVulnerabilityOccurrencesSummary(od);
    });
  });

  unittest.group('obj-schema-WindowsDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsDetail(od);
    });
  });

  unittest.group('obj-schema-WindowsUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsUpdate(od);
    });
  });

  unittest.group('resource-ProjectsNotesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildBatchCreateNotesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateNotesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateNotesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchCreateNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreateNotesResponse(response as api.BatchCreateNotesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildNote();
      final arg_parent = 'foo';
      final arg_noteId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Note.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNote(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['noteId']!.first,
          unittest.equals(arg_noteId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          noteId: arg_noteId, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNotesResponse(response as api.ListNotesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildNote();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Note.fromJson(json as core.Map<core.String, core.dynamic>);
        checkNote(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsNotesOccurrencesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.notes.occurrences;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNoteOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListNoteOccurrencesResponse(
          response as api.ListNoteOccurrencesResponse);
    });
  });

  unittest.group('resource-ProjectsOccurrencesResource', () {
    unittest.test('method--batchCreate', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildBatchCreateOccurrencesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchCreateOccurrencesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchCreateOccurrencesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchCreateOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchCreate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchCreateOccurrencesResponse(
          response as api.BatchCreateOccurrencesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildOccurrence();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOccurrence(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--getNotes', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNote());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getNotes(arg_name, $fields: arg_$fields);
      checkNote(response as api.Note);
    });

    unittest.test('method--getVulnerabilitySummary', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildVulnerabilityOccurrencesSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getVulnerabilitySummary(arg_parent,
          filter: arg_filter, $fields: arg_$fields);
      checkVulnerabilityOccurrencesSummary(
          response as api.VulnerabilityOccurrencesSummary);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOccurrencesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOccurrencesResponse(response as api.ListOccurrencesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildOccurrence();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Occurrence.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkOccurrence(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOccurrence());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOccurrence(response as api.Occurrence);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetIamPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setIamPolicy(arg_request, arg_resource,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.ContainerAnalysisApi(mock).projects.occurrences;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTestIamPermissionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTestIamPermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.testIamPermissions(arg_request, arg_resource,
          $fields: arg_$fields);
      checkTestIamPermissionsResponse(
          response as api.TestIamPermissionsResponse);
    });
  });
}
