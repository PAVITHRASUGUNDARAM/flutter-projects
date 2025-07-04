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

import 'package:googleapis/dialogflow/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudDialogflowCxV3AdvancedSettings = 0;
api.GoogleCloudDialogflowCxV3AdvancedSettings
    buildGoogleCloudDialogflowCxV3AdvancedSettings() {
  final o = api.GoogleCloudDialogflowCxV3AdvancedSettings();
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AdvancedSettings < 3) {
    o.audioExportGcsDestination =
        buildGoogleCloudDialogflowCxV3GcsDestination();
    o.dtmfSettings =
        buildGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings();
    o.loggingSettings =
        buildGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings();
  }
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AdvancedSettings(
    api.GoogleCloudDialogflowCxV3AdvancedSettings o) {
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AdvancedSettings < 3) {
    checkGoogleCloudDialogflowCxV3GcsDestination(o.audioExportGcsDestination!);
    checkGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings(o.dtmfSettings!);
    checkGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings(
        o.loggingSettings!);
  }
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings = 0;
api.GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings
    buildGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings() {
  final o = api.GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings();
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings < 3) {
    o.enabled = true;
    o.finishDigit = 'foo';
    o.maxDigits = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings(
    api.GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings o) {
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.finishDigit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDigits!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings =
    0;
api.GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings
    buildGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings() {
  final o = api.GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings();
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings <
      3) {
    o.enableInteractionLogging = true;
    o.enableStackdriverLogging = true;
  }
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings(
    api.GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings o) {
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings <
      3) {
    unittest.expect(o.enableInteractionLogging!, unittest.isTrue);
    unittest.expect(o.enableStackdriverLogging!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings--;
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

core.int buildCounterGoogleCloudDialogflowCxV3Agent = 0;
api.GoogleCloudDialogflowCxV3Agent buildGoogleCloudDialogflowCxV3Agent() {
  final o = api.GoogleCloudDialogflowCxV3Agent();
  buildCounterGoogleCloudDialogflowCxV3Agent++;
  if (buildCounterGoogleCloudDialogflowCxV3Agent < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3AdvancedSettings();
    o.answerFeedbackSettings =
        buildGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings();
    o.avatarUri = 'foo';
    o.defaultLanguageCode = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.enableSpellCorrection = true;
    o.enableStackdriverLogging = true;
    o.genAppBuilderSettings =
        buildGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings();
    o.gitIntegrationSettings =
        buildGoogleCloudDialogflowCxV3AgentGitIntegrationSettings();
    o.locked = true;
    o.name = 'foo';
    o.securitySettings = 'foo';
    o.speechToTextSettings =
        buildGoogleCloudDialogflowCxV3SpeechToTextSettings();
    o.startFlow = 'foo';
    o.supportedLanguageCodes = buildUnnamed0();
    o.textToSpeechSettings =
        buildGoogleCloudDialogflowCxV3TextToSpeechSettings();
    o.timeZone = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Agent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Agent(api.GoogleCloudDialogflowCxV3Agent o) {
  buildCounterGoogleCloudDialogflowCxV3Agent++;
  if (buildCounterGoogleCloudDialogflowCxV3Agent < 3) {
    checkGoogleCloudDialogflowCxV3AdvancedSettings(o.advancedSettings!);
    checkGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings(
        o.answerFeedbackSettings!);
    unittest.expect(
      o.avatarUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableSpellCorrection!, unittest.isTrue);
    unittest.expect(o.enableStackdriverLogging!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings(
        o.genAppBuilderSettings!);
    checkGoogleCloudDialogflowCxV3AgentGitIntegrationSettings(
        o.gitIntegrationSettings!);
    unittest.expect(o.locked!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.securitySettings!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3SpeechToTextSettings(o.speechToTextSettings!);
    unittest.expect(
      o.startFlow!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.supportedLanguageCodes!);
    checkGoogleCloudDialogflowCxV3TextToSpeechSettings(o.textToSpeechSettings!);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3Agent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings = 0;
api.GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings
    buildGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings() {
  final o = api.GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings();
  buildCounterGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings < 3) {
    o.enableAnswerFeedback = true;
  }
  buildCounterGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings(
    api.GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings o) {
  buildCounterGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings < 3) {
    unittest.expect(o.enableAnswerFeedback!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings = 0;
api.GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings
    buildGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings() {
  final o = api.GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings();
  buildCounterGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings < 3) {
    o.engine = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings(
    api.GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings o) {
  buildCounterGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings < 3) {
    unittest.expect(
      o.engine!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettings = 0;
api.GoogleCloudDialogflowCxV3AgentGitIntegrationSettings
    buildGoogleCloudDialogflowCxV3AgentGitIntegrationSettings() {
  final o = api.GoogleCloudDialogflowCxV3AgentGitIntegrationSettings();
  buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettings < 3) {
    o.githubSettings =
        buildGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings();
  }
  buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AgentGitIntegrationSettings(
    api.GoogleCloudDialogflowCxV3AgentGitIntegrationSettings o) {
  buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettings < 3) {
    checkGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings(
        o.githubSettings!);
  }
  buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettings--;
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

core.int
    buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings =
    0;
api.GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings
    buildGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings() {
  final o =
      api.GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings();
  buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings <
      3) {
    o.accessToken = 'foo';
    o.branches = buildUnnamed1();
    o.displayName = 'foo';
    o.repositoryUri = 'foo';
    o.trackingBranch = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings(
    api.GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings o) {
  buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings <
      3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.branches!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.repositoryUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingBranch!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings--;
}

core.List<api.GoogleCloudDialogflowCxV3FlowValidationResult> buildUnnamed2() =>
    [
      buildGoogleCloudDialogflowCxV3FlowValidationResult(),
      buildGoogleCloudDialogflowCxV3FlowValidationResult(),
    ];

void checkUnnamed2(
    core.List<api.GoogleCloudDialogflowCxV3FlowValidationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FlowValidationResult(o[0]);
  checkGoogleCloudDialogflowCxV3FlowValidationResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3AgentValidationResult = 0;
api.GoogleCloudDialogflowCxV3AgentValidationResult
    buildGoogleCloudDialogflowCxV3AgentValidationResult() {
  final o = api.GoogleCloudDialogflowCxV3AgentValidationResult();
  buildCounterGoogleCloudDialogflowCxV3AgentValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentValidationResult < 3) {
    o.flowValidationResults = buildUnnamed2();
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3AgentValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AgentValidationResult(
    api.GoogleCloudDialogflowCxV3AgentValidationResult o) {
  buildCounterGoogleCloudDialogflowCxV3AgentValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3AgentValidationResult < 3) {
    checkUnnamed2(o.flowValidationResults!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3AgentValidationResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3AnswerFeedback = 0;
api.GoogleCloudDialogflowCxV3AnswerFeedback
    buildGoogleCloudDialogflowCxV3AnswerFeedback() {
  final o = api.GoogleCloudDialogflowCxV3AnswerFeedback();
  buildCounterGoogleCloudDialogflowCxV3AnswerFeedback++;
  if (buildCounterGoogleCloudDialogflowCxV3AnswerFeedback < 3) {
    o.customRating = 'foo';
    o.rating = 'foo';
    o.ratingReason = buildGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason();
  }
  buildCounterGoogleCloudDialogflowCxV3AnswerFeedback--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AnswerFeedback(
    api.GoogleCloudDialogflowCxV3AnswerFeedback o) {
  buildCounterGoogleCloudDialogflowCxV3AnswerFeedback++;
  if (buildCounterGoogleCloudDialogflowCxV3AnswerFeedback < 3) {
    unittest.expect(
      o.customRating!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rating!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason(o.ratingReason!);
  }
  buildCounterGoogleCloudDialogflowCxV3AnswerFeedback--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason = 0;
api.GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason
    buildGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason() {
  final o = api.GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason();
  buildCounterGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason++;
  if (buildCounterGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason < 3) {
    o.feedback = 'foo';
    o.reasonLabels = buildUnnamed3();
  }
  buildCounterGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason(
    api.GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason o) {
  buildCounterGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason++;
  if (buildCounterGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason < 3) {
    unittest.expect(
      o.feedback!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.reasonLabels!);
  }
  buildCounterGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason--;
}

core.int buildCounterGoogleCloudDialogflowCxV3AudioInput = 0;
api.GoogleCloudDialogflowCxV3AudioInput
    buildGoogleCloudDialogflowCxV3AudioInput() {
  final o = api.GoogleCloudDialogflowCxV3AudioInput();
  buildCounterGoogleCloudDialogflowCxV3AudioInput++;
  if (buildCounterGoogleCloudDialogflowCxV3AudioInput < 3) {
    o.audio = 'foo';
    o.config = buildGoogleCloudDialogflowCxV3InputAudioConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3AudioInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3AudioInput(
    api.GoogleCloudDialogflowCxV3AudioInput o) {
  buildCounterGoogleCloudDialogflowCxV3AudioInput++;
  if (buildCounterGoogleCloudDialogflowCxV3AudioInput < 3) {
    unittest.expect(
      o.audio!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3InputAudioConfig(o.config!);
  }
  buildCounterGoogleCloudDialogflowCxV3AudioInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3BargeInConfig = 0;
api.GoogleCloudDialogflowCxV3BargeInConfig
    buildGoogleCloudDialogflowCxV3BargeInConfig() {
  final o = api.GoogleCloudDialogflowCxV3BargeInConfig();
  buildCounterGoogleCloudDialogflowCxV3BargeInConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3BargeInConfig < 3) {
    o.noBargeInDuration = 'foo';
    o.totalDuration = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3BargeInConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BargeInConfig(
    api.GoogleCloudDialogflowCxV3BargeInConfig o) {
  buildCounterGoogleCloudDialogflowCxV3BargeInConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3BargeInConfig < 3) {
    unittest.expect(
      o.noBargeInDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3BargeInConfig--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest
    buildGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest() {
  final o = api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest < 3) {
    o.names = buildUnnamed4();
  }
  buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest(
    api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest o) {
  buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest < 3) {
    checkUnnamed4(o.names!);
  }
  buildCounterGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest
    buildGoogleCloudDialogflowCxV3BatchRunTestCasesRequest() {
  final o = api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest < 3) {
    o.environment = 'foo';
    o.testCases = buildUnnamed5();
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BatchRunTestCasesRequest(
    api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest o) {
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest < 3) {
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.testCases!);
  }
  buildCounterGoogleCloudDialogflowCxV3BatchRunTestCasesRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec>
    buildUnnamed6() => [
          buildGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec(),
          buildGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec(),
        ];

void checkUnnamed6(
    core.List<api.GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec(o[0]);
  checkGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3BoostSpec = 0;
api.GoogleCloudDialogflowCxV3BoostSpec
    buildGoogleCloudDialogflowCxV3BoostSpec() {
  final o = api.GoogleCloudDialogflowCxV3BoostSpec();
  buildCounterGoogleCloudDialogflowCxV3BoostSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3BoostSpec < 3) {
    o.conditionBoostSpecs = buildUnnamed6();
  }
  buildCounterGoogleCloudDialogflowCxV3BoostSpec--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BoostSpec(
    api.GoogleCloudDialogflowCxV3BoostSpec o) {
  buildCounterGoogleCloudDialogflowCxV3BoostSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3BoostSpec < 3) {
    checkUnnamed6(o.conditionBoostSpecs!);
  }
  buildCounterGoogleCloudDialogflowCxV3BoostSpec--;
}

core.int buildCounterGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec = 0;
api.GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec
    buildGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec() {
  final o = api.GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec();
  buildCounterGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec < 3) {
    o.boost = 42.0;
    o.condition = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec(
    api.GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec o) {
  buildCounterGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec++;
  if (buildCounterGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec < 3) {
    unittest.expect(
      o.boost!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.List<api.GoogleCloudDialogflowCxV3BoostSpec> buildUnnamed8() => [
      buildGoogleCloudDialogflowCxV3BoostSpec(),
      buildGoogleCloudDialogflowCxV3BoostSpec(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudDialogflowCxV3BoostSpec> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3BoostSpec(o[0]);
  checkGoogleCloudDialogflowCxV3BoostSpec(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3BoostSpecs = 0;
api.GoogleCloudDialogflowCxV3BoostSpecs
    buildGoogleCloudDialogflowCxV3BoostSpecs() {
  final o = api.GoogleCloudDialogflowCxV3BoostSpecs();
  buildCounterGoogleCloudDialogflowCxV3BoostSpecs++;
  if (buildCounterGoogleCloudDialogflowCxV3BoostSpecs < 3) {
    o.dataStores = buildUnnamed7();
    o.spec = buildUnnamed8();
  }
  buildCounterGoogleCloudDialogflowCxV3BoostSpecs--;
  return o;
}

void checkGoogleCloudDialogflowCxV3BoostSpecs(
    api.GoogleCloudDialogflowCxV3BoostSpecs o) {
  buildCounterGoogleCloudDialogflowCxV3BoostSpecs++;
  if (buildCounterGoogleCloudDialogflowCxV3BoostSpecs < 3) {
    checkUnnamed7(o.dataStores!);
    checkUnnamed8(o.spec!);
  }
  buildCounterGoogleCloudDialogflowCxV3BoostSpecs--;
}

core.int buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse = 0;
api.GoogleCloudDialogflowCxV3CalculateCoverageResponse
    buildGoogleCloudDialogflowCxV3CalculateCoverageResponse() {
  final o = api.GoogleCloudDialogflowCxV3CalculateCoverageResponse();
  buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse < 3) {
    o.agent = 'foo';
    o.intentCoverage = buildGoogleCloudDialogflowCxV3IntentCoverage();
    o.routeGroupCoverage =
        buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage();
    o.transitionCoverage = buildGoogleCloudDialogflowCxV3TransitionCoverage();
  }
  buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3CalculateCoverageResponse(
    api.GoogleCloudDialogflowCxV3CalculateCoverageResponse o) {
  buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse < 3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3IntentCoverage(o.intentCoverage!);
    checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage(
        o.routeGroupCoverage!);
    checkGoogleCloudDialogflowCxV3TransitionCoverage(o.transitionCoverage!);
  }
  buildCounterGoogleCloudDialogflowCxV3CalculateCoverageResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3Changelog = 0;
api.GoogleCloudDialogflowCxV3Changelog
    buildGoogleCloudDialogflowCxV3Changelog() {
  final o = api.GoogleCloudDialogflowCxV3Changelog();
  buildCounterGoogleCloudDialogflowCxV3Changelog++;
  if (buildCounterGoogleCloudDialogflowCxV3Changelog < 3) {
    o.action = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.resource = 'foo';
    o.type = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Changelog--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Changelog(
    api.GoogleCloudDialogflowCxV3Changelog o) {
  buildCounterGoogleCloudDialogflowCxV3Changelog++;
  if (buildCounterGoogleCloudDialogflowCxV3Changelog < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3Changelog--;
}

core.int buildCounterGoogleCloudDialogflowCxV3CompareVersionsRequest = 0;
api.GoogleCloudDialogflowCxV3CompareVersionsRequest
    buildGoogleCloudDialogflowCxV3CompareVersionsRequest() {
  final o = api.GoogleCloudDialogflowCxV3CompareVersionsRequest();
  buildCounterGoogleCloudDialogflowCxV3CompareVersionsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3CompareVersionsRequest < 3) {
    o.languageCode = 'foo';
    o.targetVersion = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3CompareVersionsRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3CompareVersionsRequest(
    api.GoogleCloudDialogflowCxV3CompareVersionsRequest o) {
  buildCounterGoogleCloudDialogflowCxV3CompareVersionsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3CompareVersionsRequest < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3CompareVersionsRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3CompareVersionsResponse = 0;
api.GoogleCloudDialogflowCxV3CompareVersionsResponse
    buildGoogleCloudDialogflowCxV3CompareVersionsResponse() {
  final o = api.GoogleCloudDialogflowCxV3CompareVersionsResponse();
  buildCounterGoogleCloudDialogflowCxV3CompareVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3CompareVersionsResponse < 3) {
    o.baseVersionContentJson = 'foo';
    o.compareTime = 'foo';
    o.targetVersionContentJson = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3CompareVersionsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3CompareVersionsResponse(
    api.GoogleCloudDialogflowCxV3CompareVersionsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3CompareVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3CompareVersionsResponse < 3) {
    unittest.expect(
      o.baseVersionContentJson!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.compareTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetVersionContentJson!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3CompareVersionsResponse--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3ContinuousTestResult = 0;
api.GoogleCloudDialogflowCxV3ContinuousTestResult
    buildGoogleCloudDialogflowCxV3ContinuousTestResult() {
  final o = api.GoogleCloudDialogflowCxV3ContinuousTestResult();
  buildCounterGoogleCloudDialogflowCxV3ContinuousTestResult++;
  if (buildCounterGoogleCloudDialogflowCxV3ContinuousTestResult < 3) {
    o.name = 'foo';
    o.result = 'foo';
    o.runTime = 'foo';
    o.testCaseResults = buildUnnamed9();
  }
  buildCounterGoogleCloudDialogflowCxV3ContinuousTestResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ContinuousTestResult(
    api.GoogleCloudDialogflowCxV3ContinuousTestResult o) {
  buildCounterGoogleCloudDialogflowCxV3ContinuousTestResult++;
  if (buildCounterGoogleCloudDialogflowCxV3ContinuousTestResult < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.runTime!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.testCaseResults!);
  }
  buildCounterGoogleCloudDialogflowCxV3ContinuousTestResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ConversationTurn = 0;
api.GoogleCloudDialogflowCxV3ConversationTurn
    buildGoogleCloudDialogflowCxV3ConversationTurn() {
  final o = api.GoogleCloudDialogflowCxV3ConversationTurn();
  buildCounterGoogleCloudDialogflowCxV3ConversationTurn++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurn < 3) {
    o.userInput = buildGoogleCloudDialogflowCxV3ConversationTurnUserInput();
    o.virtualAgentOutput =
        buildGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput();
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurn--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ConversationTurn(
    api.GoogleCloudDialogflowCxV3ConversationTurn o) {
  buildCounterGoogleCloudDialogflowCxV3ConversationTurn++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurn < 3) {
    checkGoogleCloudDialogflowCxV3ConversationTurnUserInput(o.userInput!);
    checkGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput(
        o.virtualAgentOutput!);
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurn--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput = 0;
api.GoogleCloudDialogflowCxV3ConversationTurnUserInput
    buildGoogleCloudDialogflowCxV3ConversationTurnUserInput() {
  final o = api.GoogleCloudDialogflowCxV3ConversationTurnUserInput();
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput < 3) {
    o.enableSentimentAnalysis = true;
    o.injectedParameters = buildUnnamed10();
    o.input = buildGoogleCloudDialogflowCxV3QueryInput();
    o.isWebhookEnabled = true;
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ConversationTurnUserInput(
    api.GoogleCloudDialogflowCxV3ConversationTurnUserInput o) {
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput < 3) {
    unittest.expect(o.enableSentimentAnalysis!, unittest.isTrue);
    checkUnnamed10(o.injectedParameters!);
    checkGoogleCloudDialogflowCxV3QueryInput(o.input!);
    unittest.expect(o.isWebhookEnabled!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnUserInput--;
}

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
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

core.List<api.GoogleCloudDialogflowCxV3TestRunDifference> buildUnnamed12() => [
      buildGoogleCloudDialogflowCxV3TestRunDifference(),
      buildGoogleCloudDialogflowCxV3TestRunDifference(),
    ];

void checkUnnamed12(
    core.List<api.GoogleCloudDialogflowCxV3TestRunDifference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestRunDifference(o[0]);
  checkGoogleCloudDialogflowCxV3TestRunDifference(o[1]);
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

core.List<api.GoogleCloudDialogflowCxV3ResponseMessageText> buildUnnamed14() =>
    [
      buildGoogleCloudDialogflowCxV3ResponseMessageText(),
      buildGoogleCloudDialogflowCxV3ResponseMessageText(),
    ];

void checkUnnamed14(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessageText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessageText(o[0]);
  checkGoogleCloudDialogflowCxV3ResponseMessageText(o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput = 0;
api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
    buildGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput() {
  final o = api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput();
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput <
      3) {
    o.currentPage = buildGoogleCloudDialogflowCxV3Page();
    o.diagnosticInfo = buildUnnamed11();
    o.differences = buildUnnamed12();
    o.sessionParameters = buildUnnamed13();
    o.status = buildGoogleRpcStatus();
    o.textResponses = buildUnnamed14();
    o.triggeredIntent = buildGoogleCloudDialogflowCxV3Intent();
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput(
    api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput o) {
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput++;
  if (buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput <
      3) {
    checkGoogleCloudDialogflowCxV3Page(o.currentPage!);
    checkUnnamed11(o.diagnosticInfo!);
    checkUnnamed12(o.differences!);
    checkUnnamed13(o.sessionParameters!);
    checkGoogleRpcStatus(o.status!);
    checkUnnamed14(o.textResponses!);
    checkGoogleCloudDialogflowCxV3Intent(o.triggeredIntent!);
  }
  buildCounterGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DataStoreConnection = 0;
api.GoogleCloudDialogflowCxV3DataStoreConnection
    buildGoogleCloudDialogflowCxV3DataStoreConnection() {
  final o = api.GoogleCloudDialogflowCxV3DataStoreConnection();
  buildCounterGoogleCloudDialogflowCxV3DataStoreConnection++;
  if (buildCounterGoogleCloudDialogflowCxV3DataStoreConnection < 3) {
    o.dataStore = 'foo';
    o.dataStoreType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3DataStoreConnection--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DataStoreConnection(
    api.GoogleCloudDialogflowCxV3DataStoreConnection o) {
  buildCounterGoogleCloudDialogflowCxV3DataStoreConnection++;
  if (buildCounterGoogleCloudDialogflowCxV3DataStoreConnection < 3) {
    unittest.expect(
      o.dataStore!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataStoreType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3DataStoreConnection--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DeployFlowRequest = 0;
api.GoogleCloudDialogflowCxV3DeployFlowRequest
    buildGoogleCloudDialogflowCxV3DeployFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3DeployFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3DeployFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3DeployFlowRequest < 3) {
    o.flowVersion = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3DeployFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DeployFlowRequest(
    api.GoogleCloudDialogflowCxV3DeployFlowRequest o) {
  buildCounterGoogleCloudDialogflowCxV3DeployFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3DeployFlowRequest < 3) {
    unittest.expect(
      o.flowVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3DeployFlowRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3Deployment = 0;
api.GoogleCloudDialogflowCxV3Deployment
    buildGoogleCloudDialogflowCxV3Deployment() {
  final o = api.GoogleCloudDialogflowCxV3Deployment();
  buildCounterGoogleCloudDialogflowCxV3Deployment++;
  if (buildCounterGoogleCloudDialogflowCxV3Deployment < 3) {
    o.endTime = 'foo';
    o.flowVersion = 'foo';
    o.name = 'foo';
    o.result = buildGoogleCloudDialogflowCxV3DeploymentResult();
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Deployment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Deployment(
    api.GoogleCloudDialogflowCxV3Deployment o) {
  buildCounterGoogleCloudDialogflowCxV3Deployment++;
  if (buildCounterGoogleCloudDialogflowCxV3Deployment < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.flowVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3DeploymentResult(o.result!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3Deployment--;
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3DeploymentResult = 0;
api.GoogleCloudDialogflowCxV3DeploymentResult
    buildGoogleCloudDialogflowCxV3DeploymentResult() {
  final o = api.GoogleCloudDialogflowCxV3DeploymentResult();
  buildCounterGoogleCloudDialogflowCxV3DeploymentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3DeploymentResult < 3) {
    o.deploymentTestResults = buildUnnamed15();
    o.experiment = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3DeploymentResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DeploymentResult(
    api.GoogleCloudDialogflowCxV3DeploymentResult o) {
  buildCounterGoogleCloudDialogflowCxV3DeploymentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3DeploymentResult < 3) {
    checkUnnamed15(o.deploymentTestResults!);
    unittest.expect(
      o.experiment!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3DeploymentResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest = 0;
api.GoogleCloudDialogflowCxV3DetectIntentRequest
    buildGoogleCloudDialogflowCxV3DetectIntentRequest() {
  final o = api.GoogleCloudDialogflowCxV3DetectIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest < 3) {
    o.outputAudioConfig = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
    o.queryInput = buildGoogleCloudDialogflowCxV3QueryInput();
    o.queryParams = buildGoogleCloudDialogflowCxV3QueryParameters();
  }
  buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DetectIntentRequest(
    api.GoogleCloudDialogflowCxV3DetectIntentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest < 3) {
    checkGoogleCloudDialogflowCxV3OutputAudioConfig(o.outputAudioConfig!);
    checkGoogleCloudDialogflowCxV3QueryInput(o.queryInput!);
    checkGoogleCloudDialogflowCxV3QueryParameters(o.queryParams!);
  }
  buildCounterGoogleCloudDialogflowCxV3DetectIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse = 0;
api.GoogleCloudDialogflowCxV3DetectIntentResponse
    buildGoogleCloudDialogflowCxV3DetectIntentResponse() {
  final o = api.GoogleCloudDialogflowCxV3DetectIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse < 3) {
    o.allowCancellation = true;
    o.outputAudio = 'foo';
    o.outputAudioConfig = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowCxV3QueryResult();
    o.responseId = 'foo';
    o.responseType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DetectIntentResponse(
    api.GoogleCloudDialogflowCxV3DetectIntentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse < 3) {
    unittest.expect(o.allowCancellation!, unittest.isTrue);
    unittest.expect(
      o.outputAudio!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3OutputAudioConfig(o.outputAudioConfig!);
    checkGoogleCloudDialogflowCxV3QueryResult(o.queryResult!);
    unittest.expect(
      o.responseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3DetectIntentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3DtmfInput = 0;
api.GoogleCloudDialogflowCxV3DtmfInput
    buildGoogleCloudDialogflowCxV3DtmfInput() {
  final o = api.GoogleCloudDialogflowCxV3DtmfInput();
  buildCounterGoogleCloudDialogflowCxV3DtmfInput++;
  if (buildCounterGoogleCloudDialogflowCxV3DtmfInput < 3) {
    o.digits = 'foo';
    o.finishDigit = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3DtmfInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3DtmfInput(
    api.GoogleCloudDialogflowCxV3DtmfInput o) {
  buildCounterGoogleCloudDialogflowCxV3DtmfInput++;
  if (buildCounterGoogleCloudDialogflowCxV3DtmfInput < 3) {
    unittest.expect(
      o.digits!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.finishDigit!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3DtmfInput--;
}

core.List<api.GoogleCloudDialogflowCxV3EntityTypeEntity> buildUnnamed16() => [
      buildGoogleCloudDialogflowCxV3EntityTypeEntity(),
      buildGoogleCloudDialogflowCxV3EntityTypeEntity(),
    ];

void checkUnnamed16(
    core.List<api.GoogleCloudDialogflowCxV3EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowCxV3EntityTypeEntity(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase>
    buildUnnamed17() => [
          buildGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(),
          buildGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(),
        ];

void checkUnnamed17(
    core.List<api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(o[0]);
  checkGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3EntityType = 0;
api.GoogleCloudDialogflowCxV3EntityType
    buildGoogleCloudDialogflowCxV3EntityType() {
  final o = api.GoogleCloudDialogflowCxV3EntityType();
  buildCounterGoogleCloudDialogflowCxV3EntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityType < 3) {
    o.autoExpansionMode = 'foo';
    o.displayName = 'foo';
    o.enableFuzzyExtraction = true;
    o.entities = buildUnnamed16();
    o.excludedPhrases = buildUnnamed17();
    o.kind = 'foo';
    o.name = 'foo';
    o.redact = true;
  }
  buildCounterGoogleCloudDialogflowCxV3EntityType--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EntityType(
    api.GoogleCloudDialogflowCxV3EntityType o) {
  buildCounterGoogleCloudDialogflowCxV3EntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityType < 3) {
    unittest.expect(
      o.autoExpansionMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableFuzzyExtraction!, unittest.isTrue);
    checkUnnamed16(o.entities!);
    checkUnnamed17(o.excludedPhrases!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.redact!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3EntityType--;
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

core.int buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity = 0;
api.GoogleCloudDialogflowCxV3EntityTypeEntity
    buildGoogleCloudDialogflowCxV3EntityTypeEntity() {
  final o = api.GoogleCloudDialogflowCxV3EntityTypeEntity();
  buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity < 3) {
    o.synonyms = buildUnnamed18();
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EntityTypeEntity(
    api.GoogleCloudDialogflowCxV3EntityTypeEntity o) {
  buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity < 3) {
    checkUnnamed18(o.synonyms!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3EntityTypeEntity--;
}

core.int buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase = 0;
api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase
    buildGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase() {
  final o = api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase();
  buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(
    api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase o) {
  buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase--;
}

core.List<api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig>
    buildUnnamed19() => [
          buildGoogleCloudDialogflowCxV3EnvironmentVersionConfig(),
          buildGoogleCloudDialogflowCxV3EnvironmentVersionConfig(),
        ];

void checkUnnamed19(
    core.List<api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EnvironmentVersionConfig(o[0]);
  checkGoogleCloudDialogflowCxV3EnvironmentVersionConfig(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3Environment = 0;
api.GoogleCloudDialogflowCxV3Environment
    buildGoogleCloudDialogflowCxV3Environment() {
  final o = api.GoogleCloudDialogflowCxV3Environment();
  buildCounterGoogleCloudDialogflowCxV3Environment++;
  if (buildCounterGoogleCloudDialogflowCxV3Environment < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.testCasesConfig =
        buildGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig();
    o.updateTime = 'foo';
    o.versionConfigs = buildUnnamed19();
    o.webhookConfig = buildGoogleCloudDialogflowCxV3EnvironmentWebhookConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3Environment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Environment(
    api.GoogleCloudDialogflowCxV3Environment o) {
  buildCounterGoogleCloudDialogflowCxV3Environment++;
  if (buildCounterGoogleCloudDialogflowCxV3Environment < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig(
        o.testCasesConfig!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.versionConfigs!);
    checkGoogleCloudDialogflowCxV3EnvironmentWebhookConfig(o.webhookConfig!);
  }
  buildCounterGoogleCloudDialogflowCxV3Environment--;
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

core.int buildCounterGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig = 0;
api.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig
    buildGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig() {
  final o = api.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig();
  buildCounterGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig < 3) {
    o.enableContinuousRun = true;
    o.enablePredeploymentRun = true;
    o.testCases = buildUnnamed20();
  }
  buildCounterGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig(
    api.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig o) {
  buildCounterGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig < 3) {
    unittest.expect(o.enableContinuousRun!, unittest.isTrue);
    unittest.expect(o.enablePredeploymentRun!, unittest.isTrue);
    checkUnnamed20(o.testCases!);
  }
  buildCounterGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig = 0;
api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig
    buildGoogleCloudDialogflowCxV3EnvironmentVersionConfig() {
  final o = api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig();
  buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig < 3) {
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EnvironmentVersionConfig(
    api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig o) {
  buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig < 3) {
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3EnvironmentVersionConfig--;
}

core.List<api.GoogleCloudDialogflowCxV3Webhook> buildUnnamed21() => [
      buildGoogleCloudDialogflowCxV3Webhook(),
      buildGoogleCloudDialogflowCxV3Webhook(),
    ];

void checkUnnamed21(core.List<api.GoogleCloudDialogflowCxV3Webhook> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Webhook(o[0]);
  checkGoogleCloudDialogflowCxV3Webhook(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3EnvironmentWebhookConfig = 0;
api.GoogleCloudDialogflowCxV3EnvironmentWebhookConfig
    buildGoogleCloudDialogflowCxV3EnvironmentWebhookConfig() {
  final o = api.GoogleCloudDialogflowCxV3EnvironmentWebhookConfig();
  buildCounterGoogleCloudDialogflowCxV3EnvironmentWebhookConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3EnvironmentWebhookConfig < 3) {
    o.webhookOverrides = buildUnnamed21();
  }
  buildCounterGoogleCloudDialogflowCxV3EnvironmentWebhookConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EnvironmentWebhookConfig(
    api.GoogleCloudDialogflowCxV3EnvironmentWebhookConfig o) {
  buildCounterGoogleCloudDialogflowCxV3EnvironmentWebhookConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3EnvironmentWebhookConfig < 3) {
    checkUnnamed21(o.webhookOverrides!);
  }
  buildCounterGoogleCloudDialogflowCxV3EnvironmentWebhookConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3EventHandler = 0;
api.GoogleCloudDialogflowCxV3EventHandler
    buildGoogleCloudDialogflowCxV3EventHandler() {
  final o = api.GoogleCloudDialogflowCxV3EventHandler();
  buildCounterGoogleCloudDialogflowCxV3EventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3EventHandler < 3) {
    o.event = 'foo';
    o.name = 'foo';
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3EventHandler--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EventHandler(
    api.GoogleCloudDialogflowCxV3EventHandler o) {
  buildCounterGoogleCloudDialogflowCxV3EventHandler++;
  if (buildCounterGoogleCloudDialogflowCxV3EventHandler < 3) {
    unittest.expect(
      o.event!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetFlow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetPage!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3Fulfillment(o.triggerFulfillment!);
  }
  buildCounterGoogleCloudDialogflowCxV3EventHandler--;
}

core.int buildCounterGoogleCloudDialogflowCxV3EventInput = 0;
api.GoogleCloudDialogflowCxV3EventInput
    buildGoogleCloudDialogflowCxV3EventInput() {
  final o = api.GoogleCloudDialogflowCxV3EventInput();
  buildCounterGoogleCloudDialogflowCxV3EventInput++;
  if (buildCounterGoogleCloudDialogflowCxV3EventInput < 3) {
    o.event = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3EventInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3EventInput(
    api.GoogleCloudDialogflowCxV3EventInput o) {
  buildCounterGoogleCloudDialogflowCxV3EventInput++;
  if (buildCounterGoogleCloudDialogflowCxV3EventInput < 3) {
    unittest.expect(
      o.event!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3EventInput--;
}

core.List<api.GoogleCloudDialogflowCxV3VariantsHistory> buildUnnamed22() => [
      buildGoogleCloudDialogflowCxV3VariantsHistory(),
      buildGoogleCloudDialogflowCxV3VariantsHistory(),
    ];

void checkUnnamed22(core.List<api.GoogleCloudDialogflowCxV3VariantsHistory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3VariantsHistory(o[0]);
  checkGoogleCloudDialogflowCxV3VariantsHistory(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3Experiment = 0;
api.GoogleCloudDialogflowCxV3Experiment
    buildGoogleCloudDialogflowCxV3Experiment() {
  final o = api.GoogleCloudDialogflowCxV3Experiment();
  buildCounterGoogleCloudDialogflowCxV3Experiment++;
  if (buildCounterGoogleCloudDialogflowCxV3Experiment < 3) {
    o.createTime = 'foo';
    o.definition = buildGoogleCloudDialogflowCxV3ExperimentDefinition();
    o.description = 'foo';
    o.displayName = 'foo';
    o.endTime = 'foo';
    o.experimentLength = 'foo';
    o.lastUpdateTime = 'foo';
    o.name = 'foo';
    o.result = buildGoogleCloudDialogflowCxV3ExperimentResult();
    o.rolloutConfig = buildGoogleCloudDialogflowCxV3RolloutConfig();
    o.rolloutFailureReason = 'foo';
    o.rolloutState = buildGoogleCloudDialogflowCxV3RolloutState();
    o.startTime = 'foo';
    o.state = 'foo';
    o.variantsHistory = buildUnnamed22();
  }
  buildCounterGoogleCloudDialogflowCxV3Experiment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Experiment(
    api.GoogleCloudDialogflowCxV3Experiment o) {
  buildCounterGoogleCloudDialogflowCxV3Experiment++;
  if (buildCounterGoogleCloudDialogflowCxV3Experiment < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3ExperimentDefinition(o.definition!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.experimentLength!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3ExperimentResult(o.result!);
    checkGoogleCloudDialogflowCxV3RolloutConfig(o.rolloutConfig!);
    unittest.expect(
      o.rolloutFailureReason!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3RolloutState(o.rolloutState!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.variantsHistory!);
  }
  buildCounterGoogleCloudDialogflowCxV3Experiment--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition = 0;
api.GoogleCloudDialogflowCxV3ExperimentDefinition
    buildGoogleCloudDialogflowCxV3ExperimentDefinition() {
  final o = api.GoogleCloudDialogflowCxV3ExperimentDefinition();
  buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition < 3) {
    o.condition = 'foo';
    o.versionVariants = buildGoogleCloudDialogflowCxV3VersionVariants();
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentDefinition(
    api.GoogleCloudDialogflowCxV3ExperimentDefinition o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition < 3) {
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3VersionVariants(o.versionVariants!);
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentDefinition--;
}

core.List<api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics>
    buildUnnamed23() => [
          buildGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(),
          buildGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(),
        ];

void checkUnnamed23(
    core.List<api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(o[0]);
  checkGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ExperimentResult = 0;
api.GoogleCloudDialogflowCxV3ExperimentResult
    buildGoogleCloudDialogflowCxV3ExperimentResult() {
  final o = api.GoogleCloudDialogflowCxV3ExperimentResult();
  buildCounterGoogleCloudDialogflowCxV3ExperimentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResult < 3) {
    o.lastUpdateTime = 'foo';
    o.versionMetrics = buildUnnamed23();
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentResult(
    api.GoogleCloudDialogflowCxV3ExperimentResult o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentResult++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResult < 3) {
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.versionMetrics!);
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResult--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval = 0;
api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval
    buildGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval() {
  final o = api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval();
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval <
      3) {
    o.confidenceLevel = 42.0;
    o.lowerBound = 42.0;
    o.ratio = 42.0;
    o.upperBound = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval(
    api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval <
      3) {
    unittest.expect(
      o.confidenceLevel!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.lowerBound!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.ratio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.upperBound!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric = 0;
api.GoogleCloudDialogflowCxV3ExperimentResultMetric
    buildGoogleCloudDialogflowCxV3ExperimentResultMetric() {
  final o = api.GoogleCloudDialogflowCxV3ExperimentResultMetric();
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric < 3) {
    o.confidenceInterval =
        buildGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval();
    o.count = 42.0;
    o.countType = 'foo';
    o.ratio = 42.0;
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentResultMetric(
    api.GoogleCloudDialogflowCxV3ExperimentResultMetric o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric < 3) {
    checkGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval(
        o.confidenceInterval!);
    unittest.expect(
      o.count!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.countType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ratio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultMetric--;
}

core.List<api.GoogleCloudDialogflowCxV3ExperimentResultMetric>
    buildUnnamed24() => [
          buildGoogleCloudDialogflowCxV3ExperimentResultMetric(),
          buildGoogleCloudDialogflowCxV3ExperimentResultMetric(),
        ];

void checkUnnamed24(
    core.List<api.GoogleCloudDialogflowCxV3ExperimentResultMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ExperimentResultMetric(o[0]);
  checkGoogleCloudDialogflowCxV3ExperimentResultMetric(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics =
    0;
api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics
    buildGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics() {
  final o = api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics();
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics < 3) {
    o.metrics = buildUnnamed24();
    o.sessionCount = 42;
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(
    api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics o) {
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics++;
  if (buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics < 3) {
    checkUnnamed24(o.metrics!);
    unittest.expect(
      o.sessionCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest = 0;
api.GoogleCloudDialogflowCxV3ExportAgentRequest
    buildGoogleCloudDialogflowCxV3ExportAgentRequest() {
  final o = api.GoogleCloudDialogflowCxV3ExportAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest < 3) {
    o.agentUri = 'foo';
    o.dataFormat = 'foo';
    o.environment = 'foo';
    o.gitDestination =
        buildGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination();
    o.includeBigqueryExportSettings = true;
  }
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportAgentRequest(
    api.GoogleCloudDialogflowCxV3ExportAgentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest < 3) {
    unittest.expect(
      o.agentUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination(
        o.gitDestination!);
    unittest.expect(o.includeBigqueryExportSettings!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination =
    0;
api.GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination
    buildGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination() {
  final o = api.GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination();
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination <
      3) {
    o.commitMessage = 'foo';
    o.trackingBranch = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination(
    api.GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination o) {
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination <
      3) {
    unittest.expect(
      o.commitMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingBranch!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportFlowRequest = 0;
api.GoogleCloudDialogflowCxV3ExportFlowRequest
    buildGoogleCloudDialogflowCxV3ExportFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3ExportFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3ExportFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportFlowRequest < 3) {
    o.flowUri = 'foo';
    o.includeReferencedFlows = true;
  }
  buildCounterGoogleCloudDialogflowCxV3ExportFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportFlowRequest(
    api.GoogleCloudDialogflowCxV3ExportFlowRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ExportFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportFlowRequest < 3) {
    unittest.expect(
      o.flowUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.includeReferencedFlows!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3ExportFlowRequest--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3ExportIntentsRequest = 0;
api.GoogleCloudDialogflowCxV3ExportIntentsRequest
    buildGoogleCloudDialogflowCxV3ExportIntentsRequest() {
  final o = api.GoogleCloudDialogflowCxV3ExportIntentsRequest();
  buildCounterGoogleCloudDialogflowCxV3ExportIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportIntentsRequest < 3) {
    o.dataFormat = 'foo';
    o.intents = buildUnnamed25();
    o.intentsContentInline = true;
    o.intentsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExportIntentsRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportIntentsRequest(
    api.GoogleCloudDialogflowCxV3ExportIntentsRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ExportIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportIntentsRequest < 3) {
    unittest.expect(
      o.dataFormat!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.intents!);
    unittest.expect(o.intentsContentInline!, unittest.isTrue);
    unittest.expect(
      o.intentsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ExportIntentsRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3ExportTestCasesRequest
    buildGoogleCloudDialogflowCxV3ExportTestCasesRequest() {
  final o = api.GoogleCloudDialogflowCxV3ExportTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest < 3) {
    o.dataFormat = 'foo';
    o.filter = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ExportTestCasesRequest(
    api.GoogleCloudDialogflowCxV3ExportTestCasesRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest < 3) {
    unittest.expect(
      o.dataFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ExportTestCasesRequest--;
}

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3FilterSpecs = 0;
api.GoogleCloudDialogflowCxV3FilterSpecs
    buildGoogleCloudDialogflowCxV3FilterSpecs() {
  final o = api.GoogleCloudDialogflowCxV3FilterSpecs();
  buildCounterGoogleCloudDialogflowCxV3FilterSpecs++;
  if (buildCounterGoogleCloudDialogflowCxV3FilterSpecs < 3) {
    o.dataStores = buildUnnamed26();
    o.filter = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3FilterSpecs--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FilterSpecs(
    api.GoogleCloudDialogflowCxV3FilterSpecs o) {
  buildCounterGoogleCloudDialogflowCxV3FilterSpecs++;
  if (buildCounterGoogleCloudDialogflowCxV3FilterSpecs < 3) {
    checkUnnamed26(o.dataStores!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3FilterSpecs--;
}

core.List<api.GoogleCloudDialogflowCxV3EventHandler> buildUnnamed27() => [
      buildGoogleCloudDialogflowCxV3EventHandler(),
      buildGoogleCloudDialogflowCxV3EventHandler(),
    ];

void checkUnnamed27(core.List<api.GoogleCloudDialogflowCxV3EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EventHandler(o[0]);
  checkGoogleCloudDialogflowCxV3EventHandler(o[1]);
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

core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> buildUnnamed29() => [
      buildGoogleCloudDialogflowCxV3TransitionRoute(),
      buildGoogleCloudDialogflowCxV3TransitionRoute(),
    ];

void checkUnnamed29(core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRoute(o[0]);
  checkGoogleCloudDialogflowCxV3TransitionRoute(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3Flow = 0;
api.GoogleCloudDialogflowCxV3Flow buildGoogleCloudDialogflowCxV3Flow() {
  final o = api.GoogleCloudDialogflowCxV3Flow();
  buildCounterGoogleCloudDialogflowCxV3Flow++;
  if (buildCounterGoogleCloudDialogflowCxV3Flow < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3AdvancedSettings();
    o.description = 'foo';
    o.displayName = 'foo';
    o.eventHandlers = buildUnnamed27();
    o.knowledgeConnectorSettings =
        buildGoogleCloudDialogflowCxV3KnowledgeConnectorSettings();
    o.name = 'foo';
    o.nluSettings = buildGoogleCloudDialogflowCxV3NluSettings();
    o.transitionRouteGroups = buildUnnamed28();
    o.transitionRoutes = buildUnnamed29();
  }
  buildCounterGoogleCloudDialogflowCxV3Flow--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Flow(api.GoogleCloudDialogflowCxV3Flow o) {
  buildCounterGoogleCloudDialogflowCxV3Flow++;
  if (buildCounterGoogleCloudDialogflowCxV3Flow < 3) {
    checkGoogleCloudDialogflowCxV3AdvancedSettings(o.advancedSettings!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.eventHandlers!);
    checkGoogleCloudDialogflowCxV3KnowledgeConnectorSettings(
        o.knowledgeConnectorSettings!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3NluSettings(o.nluSettings!);
    checkUnnamed28(o.transitionRouteGroups!);
    checkUnnamed29(o.transitionRoutes!);
  }
  buildCounterGoogleCloudDialogflowCxV3Flow--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FlowImportStrategy = 0;
api.GoogleCloudDialogflowCxV3FlowImportStrategy
    buildGoogleCloudDialogflowCxV3FlowImportStrategy() {
  final o = api.GoogleCloudDialogflowCxV3FlowImportStrategy();
  buildCounterGoogleCloudDialogflowCxV3FlowImportStrategy++;
  if (buildCounterGoogleCloudDialogflowCxV3FlowImportStrategy < 3) {
    o.globalImportStrategy = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3FlowImportStrategy--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FlowImportStrategy(
    api.GoogleCloudDialogflowCxV3FlowImportStrategy o) {
  buildCounterGoogleCloudDialogflowCxV3FlowImportStrategy++;
  if (buildCounterGoogleCloudDialogflowCxV3FlowImportStrategy < 3) {
    unittest.expect(
      o.globalImportStrategy!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3FlowImportStrategy--;
}

core.List<api.GoogleCloudDialogflowCxV3ValidationMessage> buildUnnamed30() => [
      buildGoogleCloudDialogflowCxV3ValidationMessage(),
      buildGoogleCloudDialogflowCxV3ValidationMessage(),
    ];

void checkUnnamed30(
    core.List<api.GoogleCloudDialogflowCxV3ValidationMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ValidationMessage(o[0]);
  checkGoogleCloudDialogflowCxV3ValidationMessage(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3FlowValidationResult = 0;
api.GoogleCloudDialogflowCxV3FlowValidationResult
    buildGoogleCloudDialogflowCxV3FlowValidationResult() {
  final o = api.GoogleCloudDialogflowCxV3FlowValidationResult();
  buildCounterGoogleCloudDialogflowCxV3FlowValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3FlowValidationResult < 3) {
    o.name = 'foo';
    o.updateTime = 'foo';
    o.validationMessages = buildUnnamed30();
  }
  buildCounterGoogleCloudDialogflowCxV3FlowValidationResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FlowValidationResult(
    api.GoogleCloudDialogflowCxV3FlowValidationResult o) {
  buildCounterGoogleCloudDialogflowCxV3FlowValidationResult++;
  if (buildCounterGoogleCloudDialogflowCxV3FlowValidationResult < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed30(o.validationMessages!);
  }
  buildCounterGoogleCloudDialogflowCxV3FlowValidationResult--;
}

core.List<api.GoogleCloudDialogflowCxV3FormParameter> buildUnnamed31() => [
      buildGoogleCloudDialogflowCxV3FormParameter(),
      buildGoogleCloudDialogflowCxV3FormParameter(),
    ];

void checkUnnamed31(core.List<api.GoogleCloudDialogflowCxV3FormParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FormParameter(o[0]);
  checkGoogleCloudDialogflowCxV3FormParameter(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3Form = 0;
api.GoogleCloudDialogflowCxV3Form buildGoogleCloudDialogflowCxV3Form() {
  final o = api.GoogleCloudDialogflowCxV3Form();
  buildCounterGoogleCloudDialogflowCxV3Form++;
  if (buildCounterGoogleCloudDialogflowCxV3Form < 3) {
    o.parameters = buildUnnamed31();
  }
  buildCounterGoogleCloudDialogflowCxV3Form--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Form(api.GoogleCloudDialogflowCxV3Form o) {
  buildCounterGoogleCloudDialogflowCxV3Form++;
  if (buildCounterGoogleCloudDialogflowCxV3Form < 3) {
    checkUnnamed31(o.parameters!);
  }
  buildCounterGoogleCloudDialogflowCxV3Form--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FormParameter = 0;
api.GoogleCloudDialogflowCxV3FormParameter
    buildGoogleCloudDialogflowCxV3FormParameter() {
  final o = api.GoogleCloudDialogflowCxV3FormParameter();
  buildCounterGoogleCloudDialogflowCxV3FormParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3FormParameter < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3AdvancedSettings();
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.displayName = 'foo';
    o.entityType = 'foo';
    o.fillBehavior = buildGoogleCloudDialogflowCxV3FormParameterFillBehavior();
    o.isList = true;
    o.redact = true;
    o.required = true;
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameter--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FormParameter(
    api.GoogleCloudDialogflowCxV3FormParameter o) {
  buildCounterGoogleCloudDialogflowCxV3FormParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3FormParameter < 3) {
    checkGoogleCloudDialogflowCxV3AdvancedSettings(o.advancedSettings!);
    var casted7 = (o.defaultValue!) as core.Map;
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
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3FormParameterFillBehavior(o.fillBehavior!);
    unittest.expect(o.isList!, unittest.isTrue);
    unittest.expect(o.redact!, unittest.isTrue);
    unittest.expect(o.required!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameter--;
}

core.List<api.GoogleCloudDialogflowCxV3EventHandler> buildUnnamed32() => [
      buildGoogleCloudDialogflowCxV3EventHandler(),
      buildGoogleCloudDialogflowCxV3EventHandler(),
    ];

void checkUnnamed32(core.List<api.GoogleCloudDialogflowCxV3EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EventHandler(o[0]);
  checkGoogleCloudDialogflowCxV3EventHandler(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior = 0;
api.GoogleCloudDialogflowCxV3FormParameterFillBehavior
    buildGoogleCloudDialogflowCxV3FormParameterFillBehavior() {
  final o = api.GoogleCloudDialogflowCxV3FormParameterFillBehavior();
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior++;
  if (buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior < 3) {
    o.initialPromptFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
    o.repromptEventHandlers = buildUnnamed32();
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FormParameterFillBehavior(
    api.GoogleCloudDialogflowCxV3FormParameterFillBehavior o) {
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior++;
  if (buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior < 3) {
    checkGoogleCloudDialogflowCxV3Fulfillment(o.initialPromptFulfillment!);
    checkUnnamed32(o.repromptEventHandlers!);
  }
  buildCounterGoogleCloudDialogflowCxV3FormParameterFillBehavior--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest = 0;
api.GoogleCloudDialogflowCxV3FulfillIntentRequest
    buildGoogleCloudDialogflowCxV3FulfillIntentRequest() {
  final o = api.GoogleCloudDialogflowCxV3FulfillIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest < 3) {
    o.match = buildGoogleCloudDialogflowCxV3Match();
    o.matchIntentRequest = buildGoogleCloudDialogflowCxV3MatchIntentRequest();
    o.outputAudioConfig = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillIntentRequest(
    api.GoogleCloudDialogflowCxV3FulfillIntentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest < 3) {
    checkGoogleCloudDialogflowCxV3Match(o.match!);
    checkGoogleCloudDialogflowCxV3MatchIntentRequest(o.matchIntentRequest!);
    checkGoogleCloudDialogflowCxV3OutputAudioConfig(o.outputAudioConfig!);
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse = 0;
api.GoogleCloudDialogflowCxV3FulfillIntentResponse
    buildGoogleCloudDialogflowCxV3FulfillIntentResponse() {
  final o = api.GoogleCloudDialogflowCxV3FulfillIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse < 3) {
    o.outputAudio = 'foo';
    o.outputAudioConfig = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
    o.queryResult = buildGoogleCloudDialogflowCxV3QueryResult();
    o.responseId = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillIntentResponse(
    api.GoogleCloudDialogflowCxV3FulfillIntentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse < 3) {
    unittest.expect(
      o.outputAudio!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3OutputAudioConfig(o.outputAudioConfig!);
    checkGoogleCloudDialogflowCxV3QueryResult(o.queryResult!);
    unittest.expect(
      o.responseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillIntentResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases>
    buildUnnamed33() => [
          buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases(),
          buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases(),
        ];

void checkUnnamed33(
    core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(o[0]);
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed34() => [
      buildGoogleCloudDialogflowCxV3ResponseMessage(),
      buildGoogleCloudDialogflowCxV3ResponseMessage(),
    ];

void checkUnnamed34(core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessage(o[0]);
  checkGoogleCloudDialogflowCxV3ResponseMessage(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>
    buildUnnamed35() => [
          buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(),
          buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(),
        ];

void checkUnnamed35(
    core.List<api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(o[0]);
  checkGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3Fulfillment = 0;
api.GoogleCloudDialogflowCxV3Fulfillment
    buildGoogleCloudDialogflowCxV3Fulfillment() {
  final o = api.GoogleCloudDialogflowCxV3Fulfillment();
  buildCounterGoogleCloudDialogflowCxV3Fulfillment++;
  if (buildCounterGoogleCloudDialogflowCxV3Fulfillment < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3AdvancedSettings();
    o.conditionalCases = buildUnnamed33();
    o.enableGenerativeFallback = true;
    o.messages = buildUnnamed34();
    o.returnPartialResponses = true;
    o.setParameterActions = buildUnnamed35();
    o.tag = 'foo';
    o.webhook = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Fulfillment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Fulfillment(
    api.GoogleCloudDialogflowCxV3Fulfillment o) {
  buildCounterGoogleCloudDialogflowCxV3Fulfillment++;
  if (buildCounterGoogleCloudDialogflowCxV3Fulfillment < 3) {
    checkGoogleCloudDialogflowCxV3AdvancedSettings(o.advancedSettings!);
    checkUnnamed33(o.conditionalCases!);
    unittest.expect(o.enableGenerativeFallback!, unittest.isTrue);
    checkUnnamed34(o.messages!);
    unittest.expect(o.returnPartialResponses!, unittest.isTrue);
    checkUnnamed35(o.setParameterActions!);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhook!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3Fulfillment--;
}

core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>
    buildUnnamed36() => [
          buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(),
          buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(),
        ];

void checkUnnamed36(
    core.List<api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(o[0]);
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases = 0;
api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases
    buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases() {
  final o = api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases();
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases < 3) {
    o.cases = buildUnnamed36();
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
    api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases < 3) {
    checkUnnamed36(o.cases!);
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCases--;
}

core.List<
        api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>
    buildUnnamed37() => [
          buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(),
          buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(),
        ];

void checkUnnamed37(
    core.List<
            api
            .GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(
      o[0]);
  checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(
      o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase =
    0;
api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
    buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase() {
  final o = api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase();
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase <
      3) {
    o.caseContent = buildUnnamed37();
    o.condition = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(
    api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase <
      3) {
    checkUnnamed37(o.caseContent!);
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent =
    0;
api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
    buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent() {
  final o =
      api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent();
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent <
      3) {
    o.additionalCases =
        buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases();
    o.message = buildGoogleCloudDialogflowCxV3ResponseMessage();
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(
    api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent <
      3) {
    checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(
        o.additionalCases!);
    checkGoogleCloudDialogflowCxV3ResponseMessage(o.message!);
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction = 0;
api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
    buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction() {
  final o = api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction();
  buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction < 3) {
    o.parameter = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(
    api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction o) {
  buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction++;
  if (buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction < 3) {
    unittest.expect(
      o.parameter!,
      unittest.equals('foo'),
    );
    var casted8 = (o.value!) as core.Map;
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
  buildCounterGoogleCloudDialogflowCxV3FulfillmentSetParameterAction--;
}

core.int buildCounterGoogleCloudDialogflowCxV3GcsDestination = 0;
api.GoogleCloudDialogflowCxV3GcsDestination
    buildGoogleCloudDialogflowCxV3GcsDestination() {
  final o = api.GoogleCloudDialogflowCxV3GcsDestination();
  buildCounterGoogleCloudDialogflowCxV3GcsDestination++;
  if (buildCounterGoogleCloudDialogflowCxV3GcsDestination < 3) {
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3GcsDestination--;
  return o;
}

void checkGoogleCloudDialogflowCxV3GcsDestination(
    api.GoogleCloudDialogflowCxV3GcsDestination o) {
  buildCounterGoogleCloudDialogflowCxV3GcsDestination++;
  if (buildCounterGoogleCloudDialogflowCxV3GcsDestination < 3) {
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3GcsDestination--;
}

core.int buildCounterGoogleCloudDialogflowCxV3GenerativeSettings = 0;
api.GoogleCloudDialogflowCxV3GenerativeSettings
    buildGoogleCloudDialogflowCxV3GenerativeSettings() {
  final o = api.GoogleCloudDialogflowCxV3GenerativeSettings();
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3GenerativeSettings < 3) {
    o.fallbackSettings =
        buildGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings();
    o.generativeSafetySettings = buildGoogleCloudDialogflowCxV3SafetySettings();
    o.knowledgeConnectorSettings =
        buildGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings();
    o.languageCode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3GenerativeSettings(
    api.GoogleCloudDialogflowCxV3GenerativeSettings o) {
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3GenerativeSettings < 3) {
    checkGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings(
        o.fallbackSettings!);
    checkGoogleCloudDialogflowCxV3SafetySettings(o.generativeSafetySettings!);
    checkGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings(
        o.knowledgeConnectorSettings!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettings--;
}

core.List<
        api
        .GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate>
    buildUnnamed38() => [
          buildGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate(),
          buildGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate(),
        ];

void checkUnnamed38(
    core.List<
            api
            .GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate(
      o[0]);
  checkGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate(
      o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings = 0;
api.GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings
    buildGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings() {
  final o = api.GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings();
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings <
      3) {
    o.promptTemplates = buildUnnamed38();
    o.selectedPrompt = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings(
    api.GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings o) {
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings <
      3) {
    checkUnnamed38(o.promptTemplates!);
    unittest.expect(
      o.selectedPrompt!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate =
    0;
api.GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate
    buildGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate() {
  final o = api
      .GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate();
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate++;
  if (buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate <
      3) {
    o.displayName = 'foo';
    o.frozen = true;
    o.promptText = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate--;
  return o;
}

void checkGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate(
    api.GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate
        o) {
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate++;
  if (buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate <
      3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.frozen!, unittest.isTrue);
    unittest.expect(
      o.promptText!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings =
    0;
api.GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings
    buildGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings() {
  final o = api
      .GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings();
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings <
      3) {
    o.agent = 'foo';
    o.agentIdentity = 'foo';
    o.agentScope = 'foo';
    o.business = 'foo';
    o.businessDescription = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings(
    api.GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings
        o) {
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings <
      3) {
    unittest.expect(
      o.agent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agentIdentity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agentScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.business!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.businessDescription!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ImportFlowRequest = 0;
api.GoogleCloudDialogflowCxV3ImportFlowRequest
    buildGoogleCloudDialogflowCxV3ImportFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3ImportFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3ImportFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportFlowRequest < 3) {
    o.flowContent = 'foo';
    o.flowImportStrategy = buildGoogleCloudDialogflowCxV3FlowImportStrategy();
    o.flowUri = 'foo';
    o.importOption = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ImportFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportFlowRequest(
    api.GoogleCloudDialogflowCxV3ImportFlowRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ImportFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportFlowRequest < 3) {
    unittest.expect(
      o.flowContent!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3FlowImportStrategy(o.flowImportStrategy!);
    unittest.expect(
      o.flowUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.importOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ImportFlowRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ImportIntentsRequest = 0;
api.GoogleCloudDialogflowCxV3ImportIntentsRequest
    buildGoogleCloudDialogflowCxV3ImportIntentsRequest() {
  final o = api.GoogleCloudDialogflowCxV3ImportIntentsRequest();
  buildCounterGoogleCloudDialogflowCxV3ImportIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportIntentsRequest < 3) {
    o.intentsContent = buildGoogleCloudDialogflowCxV3InlineSource();
    o.intentsUri = 'foo';
    o.mergeOption = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ImportIntentsRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportIntentsRequest(
    api.GoogleCloudDialogflowCxV3ImportIntentsRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ImportIntentsRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportIntentsRequest < 3) {
    checkGoogleCloudDialogflowCxV3InlineSource(o.intentsContent!);
    unittest.expect(
      o.intentsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mergeOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ImportIntentsRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest = 0;
api.GoogleCloudDialogflowCxV3ImportTestCasesRequest
    buildGoogleCloudDialogflowCxV3ImportTestCasesRequest() {
  final o = api.GoogleCloudDialogflowCxV3ImportTestCasesRequest();
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest < 3) {
    o.content = 'foo';
    o.gcsUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ImportTestCasesRequest(
    api.GoogleCloudDialogflowCxV3ImportTestCasesRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gcsUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ImportTestCasesRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3InlineSource = 0;
api.GoogleCloudDialogflowCxV3InlineSource
    buildGoogleCloudDialogflowCxV3InlineSource() {
  final o = api.GoogleCloudDialogflowCxV3InlineSource();
  buildCounterGoogleCloudDialogflowCxV3InlineSource++;
  if (buildCounterGoogleCloudDialogflowCxV3InlineSource < 3) {
    o.content = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3InlineSource--;
  return o;
}

void checkGoogleCloudDialogflowCxV3InlineSource(
    api.GoogleCloudDialogflowCxV3InlineSource o) {
  buildCounterGoogleCloudDialogflowCxV3InlineSource++;
  if (buildCounterGoogleCloudDialogflowCxV3InlineSource < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3InlineSource--;
}

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3InputAudioConfig = 0;
api.GoogleCloudDialogflowCxV3InputAudioConfig
    buildGoogleCloudDialogflowCxV3InputAudioConfig() {
  final o = api.GoogleCloudDialogflowCxV3InputAudioConfig();
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3InputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.bargeInConfig = buildGoogleCloudDialogflowCxV3BargeInConfig();
    o.enableWordInfo = true;
    o.model = 'foo';
    o.modelVariant = 'foo';
    o.phraseHints = buildUnnamed39();
    o.sampleRateHertz = 42;
    o.singleUtterance = true;
  }
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3InputAudioConfig(
    api.GoogleCloudDialogflowCxV3InputAudioConfig o) {
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3InputAudioConfig < 3) {
    unittest.expect(
      o.audioEncoding!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3BargeInConfig(o.bargeInConfig!);
    unittest.expect(o.enableWordInfo!, unittest.isTrue);
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelVariant!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.phraseHints!);
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
    unittest.expect(o.singleUtterance!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3InputAudioConfig--;
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

core.List<api.GoogleCloudDialogflowCxV3IntentParameter> buildUnnamed41() => [
      buildGoogleCloudDialogflowCxV3IntentParameter(),
      buildGoogleCloudDialogflowCxV3IntentParameter(),
    ];

void checkUnnamed41(core.List<api.GoogleCloudDialogflowCxV3IntentParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentParameter(o[0]);
  checkGoogleCloudDialogflowCxV3IntentParameter(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrase> buildUnnamed42() =>
    [
      buildGoogleCloudDialogflowCxV3IntentTrainingPhrase(),
      buildGoogleCloudDialogflowCxV3IntentTrainingPhrase(),
    ];

void checkUnnamed42(
    core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentTrainingPhrase(o[0]);
  checkGoogleCloudDialogflowCxV3IntentTrainingPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3Intent = 0;
api.GoogleCloudDialogflowCxV3Intent buildGoogleCloudDialogflowCxV3Intent() {
  final o = api.GoogleCloudDialogflowCxV3Intent();
  buildCounterGoogleCloudDialogflowCxV3Intent++;
  if (buildCounterGoogleCloudDialogflowCxV3Intent < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.isFallback = true;
    o.labels = buildUnnamed40();
    o.name = 'foo';
    o.parameters = buildUnnamed41();
    o.priority = 42;
    o.trainingPhrases = buildUnnamed42();
  }
  buildCounterGoogleCloudDialogflowCxV3Intent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Intent(
    api.GoogleCloudDialogflowCxV3Intent o) {
  buildCounterGoogleCloudDialogflowCxV3Intent++;
  if (buildCounterGoogleCloudDialogflowCxV3Intent < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isFallback!, unittest.isTrue);
    checkUnnamed40(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.parameters!);
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    checkUnnamed42(o.trainingPhrases!);
  }
  buildCounterGoogleCloudDialogflowCxV3Intent--;
}

core.List<api.GoogleCloudDialogflowCxV3IntentCoverageIntent> buildUnnamed43() =>
    [
      buildGoogleCloudDialogflowCxV3IntentCoverageIntent(),
      buildGoogleCloudDialogflowCxV3IntentCoverageIntent(),
    ];

void checkUnnamed43(
    core.List<api.GoogleCloudDialogflowCxV3IntentCoverageIntent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentCoverageIntent(o[0]);
  checkGoogleCloudDialogflowCxV3IntentCoverageIntent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentCoverage = 0;
api.GoogleCloudDialogflowCxV3IntentCoverage
    buildGoogleCloudDialogflowCxV3IntentCoverage() {
  final o = api.GoogleCloudDialogflowCxV3IntentCoverage();
  buildCounterGoogleCloudDialogflowCxV3IntentCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentCoverage < 3) {
    o.coverageScore = 42.0;
    o.intents = buildUnnamed43();
  }
  buildCounterGoogleCloudDialogflowCxV3IntentCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentCoverage(
    api.GoogleCloudDialogflowCxV3IntentCoverage o) {
  buildCounterGoogleCloudDialogflowCxV3IntentCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentCoverage < 3) {
    unittest.expect(
      o.coverageScore!,
      unittest.equals(42.0),
    );
    checkUnnamed43(o.intents!);
  }
  buildCounterGoogleCloudDialogflowCxV3IntentCoverage--;
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent = 0;
api.GoogleCloudDialogflowCxV3IntentCoverageIntent
    buildGoogleCloudDialogflowCxV3IntentCoverageIntent() {
  final o = api.GoogleCloudDialogflowCxV3IntentCoverageIntent();
  buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent < 3) {
    o.covered = true;
    o.intent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentCoverageIntent(
    api.GoogleCloudDialogflowCxV3IntentCoverageIntent o) {
  buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent < 3) {
    unittest.expect(o.covered!, unittest.isTrue);
    unittest.expect(
      o.intent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3IntentCoverageIntent--;
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentInput = 0;
api.GoogleCloudDialogflowCxV3IntentInput
    buildGoogleCloudDialogflowCxV3IntentInput() {
  final o = api.GoogleCloudDialogflowCxV3IntentInput();
  buildCounterGoogleCloudDialogflowCxV3IntentInput++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentInput < 3) {
    o.intent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3IntentInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentInput(
    api.GoogleCloudDialogflowCxV3IntentInput o) {
  buildCounterGoogleCloudDialogflowCxV3IntentInput++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentInput < 3) {
    unittest.expect(
      o.intent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3IntentInput--;
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentParameter = 0;
api.GoogleCloudDialogflowCxV3IntentParameter
    buildGoogleCloudDialogflowCxV3IntentParameter() {
  final o = api.GoogleCloudDialogflowCxV3IntentParameter();
  buildCounterGoogleCloudDialogflowCxV3IntentParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentParameter < 3) {
    o.entityType = 'foo';
    o.id = 'foo';
    o.isList = true;
    o.redact = true;
  }
  buildCounterGoogleCloudDialogflowCxV3IntentParameter--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentParameter(
    api.GoogleCloudDialogflowCxV3IntentParameter o) {
  buildCounterGoogleCloudDialogflowCxV3IntentParameter++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentParameter < 3) {
    unittest.expect(
      o.entityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isList!, unittest.isTrue);
    unittest.expect(o.redact!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3IntentParameter--;
}

core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>
    buildUnnamed44() => [
          buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(),
          buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(),
        ];

void checkUnnamed44(
    core.List<api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(o[0]);
  checkGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase = 0;
api.GoogleCloudDialogflowCxV3IntentTrainingPhrase
    buildGoogleCloudDialogflowCxV3IntentTrainingPhrase() {
  final o = api.GoogleCloudDialogflowCxV3IntentTrainingPhrase();
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase < 3) {
    o.id = 'foo';
    o.parts = buildUnnamed44();
    o.repeatCount = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentTrainingPhrase(
    api.GoogleCloudDialogflowCxV3IntentTrainingPhrase o) {
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.parts!);
    unittest.expect(
      o.repeatCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrase--;
}

core.int buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart = 0;
api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
    buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart() {
  final o = api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart();
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart < 3) {
    o.parameterId = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart--;
  return o;
}

void checkGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(
    api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart o) {
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart++;
  if (buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart < 3) {
    unittest.expect(
      o.parameterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3IntentTrainingPhrasePart--;
}

core.List<api.GoogleCloudDialogflowCxV3DataStoreConnection> buildUnnamed45() =>
    [
      buildGoogleCloudDialogflowCxV3DataStoreConnection(),
      buildGoogleCloudDialogflowCxV3DataStoreConnection(),
    ];

void checkUnnamed45(
    core.List<api.GoogleCloudDialogflowCxV3DataStoreConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3DataStoreConnection(o[0]);
  checkGoogleCloudDialogflowCxV3DataStoreConnection(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3KnowledgeConnectorSettings = 0;
api.GoogleCloudDialogflowCxV3KnowledgeConnectorSettings
    buildGoogleCloudDialogflowCxV3KnowledgeConnectorSettings() {
  final o = api.GoogleCloudDialogflowCxV3KnowledgeConnectorSettings();
  buildCounterGoogleCloudDialogflowCxV3KnowledgeConnectorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3KnowledgeConnectorSettings < 3) {
    o.dataStoreConnections = buildUnnamed45();
    o.enabled = true;
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3KnowledgeConnectorSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3KnowledgeConnectorSettings(
    api.GoogleCloudDialogflowCxV3KnowledgeConnectorSettings o) {
  buildCounterGoogleCloudDialogflowCxV3KnowledgeConnectorSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3KnowledgeConnectorSettings < 3) {
    checkUnnamed45(o.dataStoreConnections!);
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.targetFlow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetPage!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3Fulfillment(o.triggerFulfillment!);
  }
  buildCounterGoogleCloudDialogflowCxV3KnowledgeConnectorSettings--;
}

core.List<api.GoogleCloudDialogflowCxV3Agent> buildUnnamed46() => [
      buildGoogleCloudDialogflowCxV3Agent(),
      buildGoogleCloudDialogflowCxV3Agent(),
    ];

void checkUnnamed46(core.List<api.GoogleCloudDialogflowCxV3Agent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Agent(o[0]);
  checkGoogleCloudDialogflowCxV3Agent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListAgentsResponse
    buildGoogleCloudDialogflowCxV3ListAgentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListAgentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse < 3) {
    o.agents = buildUnnamed46();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListAgentsResponse(
    api.GoogleCloudDialogflowCxV3ListAgentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse < 3) {
    checkUnnamed46(o.agents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListAgentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Changelog> buildUnnamed47() => [
      buildGoogleCloudDialogflowCxV3Changelog(),
      buildGoogleCloudDialogflowCxV3Changelog(),
    ];

void checkUnnamed47(core.List<api.GoogleCloudDialogflowCxV3Changelog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Changelog(o[0]);
  checkGoogleCloudDialogflowCxV3Changelog(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListChangelogsResponse = 0;
api.GoogleCloudDialogflowCxV3ListChangelogsResponse
    buildGoogleCloudDialogflowCxV3ListChangelogsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListChangelogsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListChangelogsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListChangelogsResponse < 3) {
    o.changelogs = buildUnnamed47();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListChangelogsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListChangelogsResponse(
    api.GoogleCloudDialogflowCxV3ListChangelogsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListChangelogsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListChangelogsResponse < 3) {
    checkUnnamed47(o.changelogs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListChangelogsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3ContinuousTestResult> buildUnnamed48() =>
    [
      buildGoogleCloudDialogflowCxV3ContinuousTestResult(),
      buildGoogleCloudDialogflowCxV3ContinuousTestResult(),
    ];

void checkUnnamed48(
    core.List<api.GoogleCloudDialogflowCxV3ContinuousTestResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ContinuousTestResult(o[0]);
  checkGoogleCloudDialogflowCxV3ContinuousTestResult(o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse = 0;
api.GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse
    buildGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse <
      3) {
    o.continuousTestResults = buildUnnamed48();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse(
    api.GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse <
      3) {
    checkUnnamed48(o.continuousTestResults!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Deployment> buildUnnamed49() => [
      buildGoogleCloudDialogflowCxV3Deployment(),
      buildGoogleCloudDialogflowCxV3Deployment(),
    ];

void checkUnnamed49(core.List<api.GoogleCloudDialogflowCxV3Deployment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Deployment(o[0]);
  checkGoogleCloudDialogflowCxV3Deployment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListDeploymentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListDeploymentsResponse
    buildGoogleCloudDialogflowCxV3ListDeploymentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListDeploymentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListDeploymentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListDeploymentsResponse < 3) {
    o.deployments = buildUnnamed49();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListDeploymentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListDeploymentsResponse(
    api.GoogleCloudDialogflowCxV3ListDeploymentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListDeploymentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListDeploymentsResponse < 3) {
    checkUnnamed49(o.deployments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListDeploymentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3EntityType> buildUnnamed50() => [
      buildGoogleCloudDialogflowCxV3EntityType(),
      buildGoogleCloudDialogflowCxV3EntityType(),
    ];

void checkUnnamed50(core.List<api.GoogleCloudDialogflowCxV3EntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EntityType(o[0]);
  checkGoogleCloudDialogflowCxV3EntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse = 0;
api.GoogleCloudDialogflowCxV3ListEntityTypesResponse
    buildGoogleCloudDialogflowCxV3ListEntityTypesResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListEntityTypesResponse();
  buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse < 3) {
    o.entityTypes = buildUnnamed50();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListEntityTypesResponse(
    api.GoogleCloudDialogflowCxV3ListEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse < 3) {
    checkUnnamed50(o.entityTypes!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Environment> buildUnnamed51() => [
      buildGoogleCloudDialogflowCxV3Environment(),
      buildGoogleCloudDialogflowCxV3Environment(),
    ];

void checkUnnamed51(core.List<api.GoogleCloudDialogflowCxV3Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Environment(o[0]);
  checkGoogleCloudDialogflowCxV3Environment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse
    buildGoogleCloudDialogflowCxV3ListEnvironmentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed51();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListEnvironmentsResponse(
    api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse < 3) {
    checkUnnamed51(o.environments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListEnvironmentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Experiment> buildUnnamed52() => [
      buildGoogleCloudDialogflowCxV3Experiment(),
      buildGoogleCloudDialogflowCxV3Experiment(),
    ];

void checkUnnamed52(core.List<api.GoogleCloudDialogflowCxV3Experiment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Experiment(o[0]);
  checkGoogleCloudDialogflowCxV3Experiment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListExperimentsResponse
    buildGoogleCloudDialogflowCxV3ListExperimentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListExperimentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse < 3) {
    o.experiments = buildUnnamed52();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListExperimentsResponse(
    api.GoogleCloudDialogflowCxV3ListExperimentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse < 3) {
    checkUnnamed52(o.experiments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListExperimentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Flow> buildUnnamed53() => [
      buildGoogleCloudDialogflowCxV3Flow(),
      buildGoogleCloudDialogflowCxV3Flow(),
    ];

void checkUnnamed53(core.List<api.GoogleCloudDialogflowCxV3Flow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Flow(o[0]);
  checkGoogleCloudDialogflowCxV3Flow(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse = 0;
api.GoogleCloudDialogflowCxV3ListFlowsResponse
    buildGoogleCloudDialogflowCxV3ListFlowsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListFlowsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse < 3) {
    o.flows = buildUnnamed53();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListFlowsResponse(
    api.GoogleCloudDialogflowCxV3ListFlowsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse < 3) {
    checkUnnamed53(o.flows!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListFlowsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Intent> buildUnnamed54() => [
      buildGoogleCloudDialogflowCxV3Intent(),
      buildGoogleCloudDialogflowCxV3Intent(),
    ];

void checkUnnamed54(core.List<api.GoogleCloudDialogflowCxV3Intent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Intent(o[0]);
  checkGoogleCloudDialogflowCxV3Intent(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse = 0;
api.GoogleCloudDialogflowCxV3ListIntentsResponse
    buildGoogleCloudDialogflowCxV3ListIntentsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListIntentsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse < 3) {
    o.intents = buildUnnamed54();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListIntentsResponse(
    api.GoogleCloudDialogflowCxV3ListIntentsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse < 3) {
    checkUnnamed54(o.intents!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ListIntentsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Page> buildUnnamed55() => [
      buildGoogleCloudDialogflowCxV3Page(),
      buildGoogleCloudDialogflowCxV3Page(),
    ];

void checkUnnamed55(core.List<api.GoogleCloudDialogflowCxV3Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Page(o[0]);
  checkGoogleCloudDialogflowCxV3Page(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListPagesResponse = 0;
api.GoogleCloudDialogflowCxV3ListPagesResponse
    buildGoogleCloudDialogflowCxV3ListPagesResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListPagesResponse();
  buildCounterGoogleCloudDialogflowCxV3ListPagesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListPagesResponse < 3) {
    o.nextPageToken = 'foo';
    o.pages = buildUnnamed55();
  }
  buildCounterGoogleCloudDialogflowCxV3ListPagesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListPagesResponse(
    api.GoogleCloudDialogflowCxV3ListPagesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListPagesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListPagesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.pages!);
  }
  buildCounterGoogleCloudDialogflowCxV3ListPagesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3SecuritySettings> buildUnnamed56() => [
      buildGoogleCloudDialogflowCxV3SecuritySettings(),
      buildGoogleCloudDialogflowCxV3SecuritySettings(),
    ];

void checkUnnamed56(
    core.List<api.GoogleCloudDialogflowCxV3SecuritySettings> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3SecuritySettings(o[0]);
  checkGoogleCloudDialogflowCxV3SecuritySettings(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse = 0;
api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse
    buildGoogleCloudDialogflowCxV3ListSecuritySettingsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse < 3) {
    o.nextPageToken = 'foo';
    o.securitySettings = buildUnnamed56();
  }
  buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListSecuritySettingsResponse(
    api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.securitySettings!);
  }
  buildCounterGoogleCloudDialogflowCxV3ListSecuritySettingsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3SessionEntityType> buildUnnamed57() => [
      buildGoogleCloudDialogflowCxV3SessionEntityType(),
      buildGoogleCloudDialogflowCxV3SessionEntityType(),
    ];

void checkUnnamed57(
    core.List<api.GoogleCloudDialogflowCxV3SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3SessionEntityType(o[0]);
  checkGoogleCloudDialogflowCxV3SessionEntityType(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse =
    0;
api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse
    buildGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse();
  buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessionEntityTypes = buildUnnamed57();
  }
  buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse(
    api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed57(o.sessionEntityTypes!);
  }
  buildCounterGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3TestCaseResult> buildUnnamed58() => [
      buildGoogleCloudDialogflowCxV3TestCaseResult(),
      buildGoogleCloudDialogflowCxV3TestCaseResult(),
    ];

void checkUnnamed58(core.List<api.GoogleCloudDialogflowCxV3TestCaseResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestCaseResult(o[0]);
  checkGoogleCloudDialogflowCxV3TestCaseResult(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse = 0;
api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse
    buildGoogleCloudDialogflowCxV3ListTestCaseResultsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCaseResults = buildUnnamed58();
  }
  buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListTestCaseResultsResponse(
    api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.testCaseResults!);
  }
  buildCounterGoogleCloudDialogflowCxV3ListTestCaseResultsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3TestCase> buildUnnamed59() => [
      buildGoogleCloudDialogflowCxV3TestCase(),
      buildGoogleCloudDialogflowCxV3TestCase(),
    ];

void checkUnnamed59(core.List<api.GoogleCloudDialogflowCxV3TestCase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TestCase(o[0]);
  checkGoogleCloudDialogflowCxV3TestCase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse = 0;
api.GoogleCloudDialogflowCxV3ListTestCasesResponse
    buildGoogleCloudDialogflowCxV3ListTestCasesResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListTestCasesResponse();
  buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.testCases = buildUnnamed59();
  }
  buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListTestCasesResponse(
    api.GoogleCloudDialogflowCxV3ListTestCasesResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.testCases!);
  }
  buildCounterGoogleCloudDialogflowCxV3ListTestCasesResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRouteGroup> buildUnnamed60() =>
    [
      buildGoogleCloudDialogflowCxV3TransitionRouteGroup(),
      buildGoogleCloudDialogflowCxV3TransitionRouteGroup(),
    ];

void checkUnnamed60(
    core.List<api.GoogleCloudDialogflowCxV3TransitionRouteGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRouteGroup(o[0]);
  checkGoogleCloudDialogflowCxV3TransitionRouteGroup(o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse = 0;
api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
    buildGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse <
      3) {
    o.nextPageToken = 'foo';
    o.transitionRouteGroups = buildUnnamed60();
  }
  buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse(
    api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.transitionRouteGroups!);
  }
  buildCounterGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Version> buildUnnamed61() => [
      buildGoogleCloudDialogflowCxV3Version(),
      buildGoogleCloudDialogflowCxV3Version(),
    ];

void checkUnnamed61(core.List<api.GoogleCloudDialogflowCxV3Version> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Version(o[0]);
  checkGoogleCloudDialogflowCxV3Version(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse = 0;
api.GoogleCloudDialogflowCxV3ListVersionsResponse
    buildGoogleCloudDialogflowCxV3ListVersionsResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListVersionsResponse();
  buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.versions = buildUnnamed61();
  }
  buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListVersionsResponse(
    api.GoogleCloudDialogflowCxV3ListVersionsResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.versions!);
  }
  buildCounterGoogleCloudDialogflowCxV3ListVersionsResponse--;
}

core.List<api.GoogleCloudDialogflowCxV3Webhook> buildUnnamed62() => [
      buildGoogleCloudDialogflowCxV3Webhook(),
      buildGoogleCloudDialogflowCxV3Webhook(),
    ];

void checkUnnamed62(core.List<api.GoogleCloudDialogflowCxV3Webhook> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Webhook(o[0]);
  checkGoogleCloudDialogflowCxV3Webhook(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse = 0;
api.GoogleCloudDialogflowCxV3ListWebhooksResponse
    buildGoogleCloudDialogflowCxV3ListWebhooksResponse() {
  final o = api.GoogleCloudDialogflowCxV3ListWebhooksResponse();
  buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse < 3) {
    o.nextPageToken = 'foo';
    o.webhooks = buildUnnamed62();
  }
  buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ListWebhooksResponse(
    api.GoogleCloudDialogflowCxV3ListWebhooksResponse o) {
  buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.webhooks!);
  }
  buildCounterGoogleCloudDialogflowCxV3ListWebhooksResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest = 0;
api.GoogleCloudDialogflowCxV3LoadVersionRequest
    buildGoogleCloudDialogflowCxV3LoadVersionRequest() {
  final o = api.GoogleCloudDialogflowCxV3LoadVersionRequest();
  buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest < 3) {
    o.allowOverrideAgentResources = true;
  }
  buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3LoadVersionRequest(
    api.GoogleCloudDialogflowCxV3LoadVersionRequest o) {
  buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest < 3) {
    unittest.expect(o.allowOverrideAgentResources!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3LoadVersionRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3Environment> buildUnnamed63() => [
      buildGoogleCloudDialogflowCxV3Environment(),
      buildGoogleCloudDialogflowCxV3Environment(),
    ];

void checkUnnamed63(core.List<api.GoogleCloudDialogflowCxV3Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Environment(o[0]);
  checkGoogleCloudDialogflowCxV3Environment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse =
    0;
api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
    buildGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse() {
  final o = api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse();
  buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse <
      3) {
    o.environments = buildUnnamed63();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse(
    api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse o) {
  buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse <
      3) {
    checkUnnamed63(o.environments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse--;
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

core.int buildCounterGoogleCloudDialogflowCxV3Match = 0;
api.GoogleCloudDialogflowCxV3Match buildGoogleCloudDialogflowCxV3Match() {
  final o = api.GoogleCloudDialogflowCxV3Match();
  buildCounterGoogleCloudDialogflowCxV3Match++;
  if (buildCounterGoogleCloudDialogflowCxV3Match < 3) {
    o.confidence = 42.0;
    o.event = 'foo';
    o.intent = buildGoogleCloudDialogflowCxV3Intent();
    o.matchType = 'foo';
    o.parameters = buildUnnamed64();
    o.resolvedInput = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Match--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Match(api.GoogleCloudDialogflowCxV3Match o) {
  buildCounterGoogleCloudDialogflowCxV3Match++;
  if (buildCounterGoogleCloudDialogflowCxV3Match < 3) {
    unittest.expect(
      o.confidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.event!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3Intent(o.intent!);
    unittest.expect(
      o.matchType!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.parameters!);
    unittest.expect(
      o.resolvedInput!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3Match--;
}

core.int buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest = 0;
api.GoogleCloudDialogflowCxV3MatchIntentRequest
    buildGoogleCloudDialogflowCxV3MatchIntentRequest() {
  final o = api.GoogleCloudDialogflowCxV3MatchIntentRequest();
  buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest < 3) {
    o.persistParameterChanges = true;
    o.queryInput = buildGoogleCloudDialogflowCxV3QueryInput();
    o.queryParams = buildGoogleCloudDialogflowCxV3QueryParameters();
  }
  buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3MatchIntentRequest(
    api.GoogleCloudDialogflowCxV3MatchIntentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest < 3) {
    unittest.expect(o.persistParameterChanges!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3QueryInput(o.queryInput!);
    checkGoogleCloudDialogflowCxV3QueryParameters(o.queryParams!);
  }
  buildCounterGoogleCloudDialogflowCxV3MatchIntentRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3Match> buildUnnamed65() => [
      buildGoogleCloudDialogflowCxV3Match(),
      buildGoogleCloudDialogflowCxV3Match(),
    ];

void checkUnnamed65(core.List<api.GoogleCloudDialogflowCxV3Match> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3Match(o[0]);
  checkGoogleCloudDialogflowCxV3Match(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse = 0;
api.GoogleCloudDialogflowCxV3MatchIntentResponse
    buildGoogleCloudDialogflowCxV3MatchIntentResponse() {
  final o = api.GoogleCloudDialogflowCxV3MatchIntentResponse();
  buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse < 3) {
    o.currentPage = buildGoogleCloudDialogflowCxV3Page();
    o.matches = buildUnnamed65();
    o.text = 'foo';
    o.transcript = 'foo';
    o.triggerEvent = 'foo';
    o.triggerIntent = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse--;
  return o;
}

void checkGoogleCloudDialogflowCxV3MatchIntentResponse(
    api.GoogleCloudDialogflowCxV3MatchIntentResponse o) {
  buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse++;
  if (buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse < 3) {
    checkGoogleCloudDialogflowCxV3Page(o.currentPage!);
    checkUnnamed65(o.matches!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transcript!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerEvent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerIntent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3MatchIntentResponse--;
}

core.int buildCounterGoogleCloudDialogflowCxV3NluSettings = 0;
api.GoogleCloudDialogflowCxV3NluSettings
    buildGoogleCloudDialogflowCxV3NluSettings() {
  final o = api.GoogleCloudDialogflowCxV3NluSettings();
  buildCounterGoogleCloudDialogflowCxV3NluSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3NluSettings < 3) {
    o.classificationThreshold = 42.0;
    o.modelTrainingMode = 'foo';
    o.modelType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3NluSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3NluSettings(
    api.GoogleCloudDialogflowCxV3NluSettings o) {
  buildCounterGoogleCloudDialogflowCxV3NluSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3NluSettings < 3) {
    unittest.expect(
      o.classificationThreshold!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.modelTrainingMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modelType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3NluSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig = 0;
api.GoogleCloudDialogflowCxV3OutputAudioConfig
    buildGoogleCloudDialogflowCxV3OutputAudioConfig() {
  final o = api.GoogleCloudDialogflowCxV3OutputAudioConfig();
  buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig < 3) {
    o.audioEncoding = 'foo';
    o.sampleRateHertz = 42;
    o.synthesizeSpeechConfig =
        buildGoogleCloudDialogflowCxV3SynthesizeSpeechConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3OutputAudioConfig(
    api.GoogleCloudDialogflowCxV3OutputAudioConfig o) {
  buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig < 3) {
    unittest.expect(
      o.audioEncoding!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sampleRateHertz!,
      unittest.equals(42),
    );
    checkGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(
        o.synthesizeSpeechConfig!);
  }
  buildCounterGoogleCloudDialogflowCxV3OutputAudioConfig--;
}

core.List<api.GoogleCloudDialogflowCxV3EventHandler> buildUnnamed66() => [
      buildGoogleCloudDialogflowCxV3EventHandler(),
      buildGoogleCloudDialogflowCxV3EventHandler(),
    ];

void checkUnnamed66(core.List<api.GoogleCloudDialogflowCxV3EventHandler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EventHandler(o[0]);
  checkGoogleCloudDialogflowCxV3EventHandler(o[1]);
}

core.List<core.String> buildUnnamed67() => [
      'foo',
      'foo',
    ];

void checkUnnamed67(core.List<core.String> o) {
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

core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> buildUnnamed68() => [
      buildGoogleCloudDialogflowCxV3TransitionRoute(),
      buildGoogleCloudDialogflowCxV3TransitionRoute(),
    ];

void checkUnnamed68(core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRoute(o[0]);
  checkGoogleCloudDialogflowCxV3TransitionRoute(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3Page = 0;
api.GoogleCloudDialogflowCxV3Page buildGoogleCloudDialogflowCxV3Page() {
  final o = api.GoogleCloudDialogflowCxV3Page();
  buildCounterGoogleCloudDialogflowCxV3Page++;
  if (buildCounterGoogleCloudDialogflowCxV3Page < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3AdvancedSettings();
    o.displayName = 'foo';
    o.entryFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
    o.eventHandlers = buildUnnamed66();
    o.form = buildGoogleCloudDialogflowCxV3Form();
    o.knowledgeConnectorSettings =
        buildGoogleCloudDialogflowCxV3KnowledgeConnectorSettings();
    o.name = 'foo';
    o.transitionRouteGroups = buildUnnamed67();
    o.transitionRoutes = buildUnnamed68();
  }
  buildCounterGoogleCloudDialogflowCxV3Page--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Page(api.GoogleCloudDialogflowCxV3Page o) {
  buildCounterGoogleCloudDialogflowCxV3Page++;
  if (buildCounterGoogleCloudDialogflowCxV3Page < 3) {
    checkGoogleCloudDialogflowCxV3AdvancedSettings(o.advancedSettings!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3Fulfillment(o.entryFulfillment!);
    checkUnnamed66(o.eventHandlers!);
    checkGoogleCloudDialogflowCxV3Form(o.form!);
    checkGoogleCloudDialogflowCxV3KnowledgeConnectorSettings(
        o.knowledgeConnectorSettings!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed67(o.transitionRouteGroups!);
    checkUnnamed68(o.transitionRoutes!);
  }
  buildCounterGoogleCloudDialogflowCxV3Page--;
}

core.int buildCounterGoogleCloudDialogflowCxV3QueryInput = 0;
api.GoogleCloudDialogflowCxV3QueryInput
    buildGoogleCloudDialogflowCxV3QueryInput() {
  final o = api.GoogleCloudDialogflowCxV3QueryInput();
  buildCounterGoogleCloudDialogflowCxV3QueryInput++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryInput < 3) {
    o.audio = buildGoogleCloudDialogflowCxV3AudioInput();
    o.dtmf = buildGoogleCloudDialogflowCxV3DtmfInput();
    o.event = buildGoogleCloudDialogflowCxV3EventInput();
    o.intent = buildGoogleCloudDialogflowCxV3IntentInput();
    o.languageCode = 'foo';
    o.text = buildGoogleCloudDialogflowCxV3TextInput();
  }
  buildCounterGoogleCloudDialogflowCxV3QueryInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3QueryInput(
    api.GoogleCloudDialogflowCxV3QueryInput o) {
  buildCounterGoogleCloudDialogflowCxV3QueryInput++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryInput < 3) {
    checkGoogleCloudDialogflowCxV3AudioInput(o.audio!);
    checkGoogleCloudDialogflowCxV3DtmfInput(o.dtmf!);
    checkGoogleCloudDialogflowCxV3EventInput(o.event!);
    checkGoogleCloudDialogflowCxV3IntentInput(o.intent!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3TextInput(o.text!);
  }
  buildCounterGoogleCloudDialogflowCxV3QueryInput--;
}

core.Map<core.String, core.Object?> buildUnnamed69() => {
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

void checkUnnamed69(core.Map<core.String, core.Object?> o) {
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

core.List<core.String> buildUnnamed70() => [
      'foo',
      'foo',
    ];

void checkUnnamed70(core.List<core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed71() => {
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

void checkUnnamed71(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed72() => {
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

void checkUnnamed72(core.Map<core.String, core.Object?> o) {
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

core.List<api.GoogleCloudDialogflowCxV3SessionEntityType> buildUnnamed73() => [
      buildGoogleCloudDialogflowCxV3SessionEntityType(),
      buildGoogleCloudDialogflowCxV3SessionEntityType(),
    ];

void checkUnnamed73(
    core.List<api.GoogleCloudDialogflowCxV3SessionEntityType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3SessionEntityType(o[0]);
  checkGoogleCloudDialogflowCxV3SessionEntityType(o[1]);
}

core.Map<core.String, core.String> buildUnnamed74() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed74(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3QueryParameters = 0;
api.GoogleCloudDialogflowCxV3QueryParameters
    buildGoogleCloudDialogflowCxV3QueryParameters() {
  final o = api.GoogleCloudDialogflowCxV3QueryParameters();
  buildCounterGoogleCloudDialogflowCxV3QueryParameters++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryParameters < 3) {
    o.analyzeQueryTextSentiment = true;
    o.channel = 'foo';
    o.currentPage = 'foo';
    o.disableWebhook = true;
    o.endUserMetadata = buildUnnamed69();
    o.flowVersions = buildUnnamed70();
    o.geoLocation = buildGoogleTypeLatLng();
    o.parameters = buildUnnamed71();
    o.payload = buildUnnamed72();
    o.searchConfig = buildGoogleCloudDialogflowCxV3SearchConfig();
    o.sessionEntityTypes = buildUnnamed73();
    o.sessionTtl = 'foo';
    o.timeZone = 'foo';
    o.webhookHeaders = buildUnnamed74();
  }
  buildCounterGoogleCloudDialogflowCxV3QueryParameters--;
  return o;
}

void checkGoogleCloudDialogflowCxV3QueryParameters(
    api.GoogleCloudDialogflowCxV3QueryParameters o) {
  buildCounterGoogleCloudDialogflowCxV3QueryParameters++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryParameters < 3) {
    unittest.expect(o.analyzeQueryTextSentiment!, unittest.isTrue);
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentPage!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableWebhook!, unittest.isTrue);
    checkUnnamed69(o.endUserMetadata!);
    checkUnnamed70(o.flowVersions!);
    checkGoogleTypeLatLng(o.geoLocation!);
    checkUnnamed71(o.parameters!);
    checkUnnamed72(o.payload!);
    checkGoogleCloudDialogflowCxV3SearchConfig(o.searchConfig!);
    checkUnnamed73(o.sessionEntityTypes!);
    unittest.expect(
      o.sessionTtl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    checkUnnamed74(o.webhookHeaders!);
  }
  buildCounterGoogleCloudDialogflowCxV3QueryParameters--;
}

core.Map<core.String, core.Object?> buildUnnamed75() => {
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

void checkUnnamed75(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed76() => {
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

void checkUnnamed76(core.Map<core.String, core.Object?> o) {
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

core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> buildUnnamed77() => [
      buildGoogleCloudDialogflowCxV3ResponseMessage(),
      buildGoogleCloudDialogflowCxV3ResponseMessage(),
    ];

void checkUnnamed77(core.List<api.GoogleCloudDialogflowCxV3ResponseMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessage(o[0]);
  checkGoogleCloudDialogflowCxV3ResponseMessage(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed78() => {
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

void checkUnnamed78(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed79() => [
      buildUnnamed78(),
      buildUnnamed78(),
    ];

void checkUnnamed79(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed78(o[0]);
  checkUnnamed78(o[1]);
}

core.List<api.GoogleRpcStatus> buildUnnamed80() => [
      buildGoogleRpcStatus(),
      buildGoogleRpcStatus(),
    ];

void checkUnnamed80(core.List<api.GoogleRpcStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleRpcStatus(o[0]);
  checkGoogleRpcStatus(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3QueryResult = 0;
api.GoogleCloudDialogflowCxV3QueryResult
    buildGoogleCloudDialogflowCxV3QueryResult() {
  final o = api.GoogleCloudDialogflowCxV3QueryResult();
  buildCounterGoogleCloudDialogflowCxV3QueryResult++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryResult < 3) {
    o.advancedSettings = buildGoogleCloudDialogflowCxV3AdvancedSettings();
    o.allowAnswerFeedback = true;
    o.currentPage = buildGoogleCloudDialogflowCxV3Page();
    o.diagnosticInfo = buildUnnamed75();
    o.dtmf = buildGoogleCloudDialogflowCxV3DtmfInput();
    o.intent = buildGoogleCloudDialogflowCxV3Intent();
    o.intentDetectionConfidence = 42.0;
    o.languageCode = 'foo';
    o.match = buildGoogleCloudDialogflowCxV3Match();
    o.parameters = buildUnnamed76();
    o.responseMessages = buildUnnamed77();
    o.sentimentAnalysisResult =
        buildGoogleCloudDialogflowCxV3SentimentAnalysisResult();
    o.text = 'foo';
    o.transcript = 'foo';
    o.triggerEvent = 'foo';
    o.triggerIntent = 'foo';
    o.webhookPayloads = buildUnnamed79();
    o.webhookStatuses = buildUnnamed80();
  }
  buildCounterGoogleCloudDialogflowCxV3QueryResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3QueryResult(
    api.GoogleCloudDialogflowCxV3QueryResult o) {
  buildCounterGoogleCloudDialogflowCxV3QueryResult++;
  if (buildCounterGoogleCloudDialogflowCxV3QueryResult < 3) {
    checkGoogleCloudDialogflowCxV3AdvancedSettings(o.advancedSettings!);
    unittest.expect(o.allowAnswerFeedback!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3Page(o.currentPage!);
    checkUnnamed75(o.diagnosticInfo!);
    checkGoogleCloudDialogflowCxV3DtmfInput(o.dtmf!);
    checkGoogleCloudDialogflowCxV3Intent(o.intent!);
    unittest.expect(
      o.intentDetectionConfidence!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3Match(o.match!);
    checkUnnamed76(o.parameters!);
    checkUnnamed77(o.responseMessages!);
    checkGoogleCloudDialogflowCxV3SentimentAnalysisResult(
        o.sentimentAnalysisResult!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transcript!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerEvent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerIntent!,
      unittest.equals('foo'),
    );
    checkUnnamed79(o.webhookPayloads!);
    checkUnnamed80(o.webhookStatuses!);
  }
  buildCounterGoogleCloudDialogflowCxV3QueryResult--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResourceName = 0;
api.GoogleCloudDialogflowCxV3ResourceName
    buildGoogleCloudDialogflowCxV3ResourceName() {
  final o = api.GoogleCloudDialogflowCxV3ResourceName();
  buildCounterGoogleCloudDialogflowCxV3ResourceName++;
  if (buildCounterGoogleCloudDialogflowCxV3ResourceName < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResourceName--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResourceName(
    api.GoogleCloudDialogflowCxV3ResourceName o) {
  buildCounterGoogleCloudDialogflowCxV3ResourceName++;
  if (buildCounterGoogleCloudDialogflowCxV3ResourceName < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ResourceName--;
}

core.Map<core.String, core.Object?> buildUnnamed81() => {
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

void checkUnnamed81(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']!) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(
    casted23['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted23['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted23['string'],
    unittest.equals('foo'),
  );
  var casted24 = (o['y']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(
    casted24['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted24['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted24['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessage = 0;
api.GoogleCloudDialogflowCxV3ResponseMessage
    buildGoogleCloudDialogflowCxV3ResponseMessage() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessage();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessage < 3) {
    o.channel = 'foo';
    o.conversationSuccess =
        buildGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess();
    o.endInteraction =
        buildGoogleCloudDialogflowCxV3ResponseMessageEndInteraction();
    o.knowledgeInfoCard =
        buildGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard();
    o.liveAgentHandoff =
        buildGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff();
    o.mixedAudio = buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudio();
    o.outputAudioText =
        buildGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText();
    o.payload = buildUnnamed81();
    o.playAudio = buildGoogleCloudDialogflowCxV3ResponseMessagePlayAudio();
    o.responseType = 'foo';
    o.telephonyTransferCall =
        buildGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall();
    o.text = buildGoogleCloudDialogflowCxV3ResponseMessageText();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessage(
    api.GoogleCloudDialogflowCxV3ResponseMessage o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessage < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess(
        o.conversationSuccess!);
    checkGoogleCloudDialogflowCxV3ResponseMessageEndInteraction(
        o.endInteraction!);
    checkGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard(
        o.knowledgeInfoCard!);
    checkGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff(
        o.liveAgentHandoff!);
    checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudio(o.mixedAudio!);
    checkGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText(
        o.outputAudioText!);
    checkUnnamed81(o.payload!);
    checkGoogleCloudDialogflowCxV3ResponseMessagePlayAudio(o.playAudio!);
    unittest.expect(
      o.responseType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall(
        o.telephonyTransferCall!);
    checkGoogleCloudDialogflowCxV3ResponseMessageText(o.text!);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessage--;
}

core.Map<core.String, core.Object?> buildUnnamed82() => {
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

void checkUnnamed82(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted25 = (o['x']!) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(
    casted25['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted25['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted25['string'],
    unittest.equals('foo'),
  );
  var casted26 = (o['y']!) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(
    casted26['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted26['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted26['string'],
    unittest.equals('foo'),
  );
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
    buildGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess <
      3) {
    o.metadata = buildUnnamed82();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess(
    api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess <
      3) {
    checkUnnamed82(o.metadata!);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
    buildGoogleCloudDialogflowCxV3ResponseMessageEndInteraction() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction < 3) {}
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageEndInteraction(
    api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction < 3) {}
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageEndInteraction--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard
    buildGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard(
    api.GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard <
      3) {}
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard--;
}

core.Map<core.String, core.Object?> buildUnnamed83() => {
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

void checkUnnamed83(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o['x']!) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(
    casted27['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted27['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted27['string'],
    unittest.equals('foo'),
  );
  var casted28 = (o['y']!) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(
    casted28['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted28['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted28['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
    buildGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff <
      3) {
    o.metadata = buildUnnamed83();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff(
    api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff <
      3) {
    checkUnnamed83(o.metadata!);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff--;
}

core.List<api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>
    buildUnnamed84() => [
          buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(),
          buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(),
        ];

void checkUnnamed84(
    core.List<api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(o[0]);
  checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio
    buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudio() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio < 3) {
    o.segments = buildUnnamed84();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudio(
    api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio < 3) {
    checkUnnamed84(o.segments!);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudio--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
    buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment <
      3) {
    o.allowPlaybackInterruption = true;
    o.audio = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(
    api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment <
      3) {
    unittest.expect(o.allowPlaybackInterruption!, unittest.isTrue);
    unittest.expect(
      o.audio!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
    buildGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText < 3) {
    o.allowPlaybackInterruption = true;
    o.ssml = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText(
    api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText < 3) {
    unittest.expect(o.allowPlaybackInterruption!, unittest.isTrue);
    unittest.expect(
      o.ssml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio = 0;
api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio
    buildGoogleCloudDialogflowCxV3ResponseMessagePlayAudio() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio < 3) {
    o.allowPlaybackInterruption = true;
    o.audioUri = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessagePlayAudio(
    api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio < 3) {
    unittest.expect(o.allowPlaybackInterruption!, unittest.isTrue);
    unittest.expect(
      o.audioUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessagePlayAudio--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall =
    0;
api.GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall
    buildGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall <
      3) {
    o.phoneNumber = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall(
    api.GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall <
      3) {
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall--;
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

core.int buildCounterGoogleCloudDialogflowCxV3ResponseMessageText = 0;
api.GoogleCloudDialogflowCxV3ResponseMessageText
    buildGoogleCloudDialogflowCxV3ResponseMessageText() {
  final o = api.GoogleCloudDialogflowCxV3ResponseMessageText();
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageText < 3) {
    o.allowPlaybackInterruption = true;
    o.text = buildUnnamed85();
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ResponseMessageText(
    api.GoogleCloudDialogflowCxV3ResponseMessageText o) {
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText++;
  if (buildCounterGoogleCloudDialogflowCxV3ResponseMessageText < 3) {
    unittest.expect(o.allowPlaybackInterruption!, unittest.isTrue);
    checkUnnamed85(o.text!);
  }
  buildCounterGoogleCloudDialogflowCxV3ResponseMessageText--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest = 0;
api.GoogleCloudDialogflowCxV3RestoreAgentRequest
    buildGoogleCloudDialogflowCxV3RestoreAgentRequest() {
  final o = api.GoogleCloudDialogflowCxV3RestoreAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest < 3) {
    o.agentContent = 'foo';
    o.agentUri = 'foo';
    o.gitSource = buildGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource();
    o.restoreOption = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RestoreAgentRequest(
    api.GoogleCloudDialogflowCxV3RestoreAgentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest < 3) {
    unittest.expect(
      o.agentContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.agentUri!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource(o.gitSource!);
    unittest.expect(
      o.restoreOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource = 0;
api.GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource
    buildGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource() {
  final o = api.GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource();
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource++;
  if (buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource < 3) {
    o.trackingBranch = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource(
    api.GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource o) {
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource++;
  if (buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource < 3) {
    unittest.expect(
      o.trackingBranch!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource--;
}

core.List<api.GoogleCloudDialogflowCxV3RolloutConfigRolloutStep>
    buildUnnamed86() => [
          buildGoogleCloudDialogflowCxV3RolloutConfigRolloutStep(),
          buildGoogleCloudDialogflowCxV3RolloutConfigRolloutStep(),
        ];

void checkUnnamed86(
    core.List<api.GoogleCloudDialogflowCxV3RolloutConfigRolloutStep> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3RolloutConfigRolloutStep(o[0]);
  checkGoogleCloudDialogflowCxV3RolloutConfigRolloutStep(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3RolloutConfig = 0;
api.GoogleCloudDialogflowCxV3RolloutConfig
    buildGoogleCloudDialogflowCxV3RolloutConfig() {
  final o = api.GoogleCloudDialogflowCxV3RolloutConfig();
  buildCounterGoogleCloudDialogflowCxV3RolloutConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3RolloutConfig < 3) {
    o.failureCondition = 'foo';
    o.rolloutCondition = 'foo';
    o.rolloutSteps = buildUnnamed86();
  }
  buildCounterGoogleCloudDialogflowCxV3RolloutConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RolloutConfig(
    api.GoogleCloudDialogflowCxV3RolloutConfig o) {
  buildCounterGoogleCloudDialogflowCxV3RolloutConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3RolloutConfig < 3) {
    unittest.expect(
      o.failureCondition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rolloutCondition!,
      unittest.equals('foo'),
    );
    checkUnnamed86(o.rolloutSteps!);
  }
  buildCounterGoogleCloudDialogflowCxV3RolloutConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RolloutConfigRolloutStep = 0;
api.GoogleCloudDialogflowCxV3RolloutConfigRolloutStep
    buildGoogleCloudDialogflowCxV3RolloutConfigRolloutStep() {
  final o = api.GoogleCloudDialogflowCxV3RolloutConfigRolloutStep();
  buildCounterGoogleCloudDialogflowCxV3RolloutConfigRolloutStep++;
  if (buildCounterGoogleCloudDialogflowCxV3RolloutConfigRolloutStep < 3) {
    o.displayName = 'foo';
    o.minDuration = 'foo';
    o.trafficPercent = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3RolloutConfigRolloutStep--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RolloutConfigRolloutStep(
    api.GoogleCloudDialogflowCxV3RolloutConfigRolloutStep o) {
  buildCounterGoogleCloudDialogflowCxV3RolloutConfigRolloutStep++;
  if (buildCounterGoogleCloudDialogflowCxV3RolloutConfigRolloutStep < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trafficPercent!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3RolloutConfigRolloutStep--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RolloutState = 0;
api.GoogleCloudDialogflowCxV3RolloutState
    buildGoogleCloudDialogflowCxV3RolloutState() {
  final o = api.GoogleCloudDialogflowCxV3RolloutState();
  buildCounterGoogleCloudDialogflowCxV3RolloutState++;
  if (buildCounterGoogleCloudDialogflowCxV3RolloutState < 3) {
    o.startTime = 'foo';
    o.step = 'foo';
    o.stepIndex = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3RolloutState--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RolloutState(
    api.GoogleCloudDialogflowCxV3RolloutState o) {
  buildCounterGoogleCloudDialogflowCxV3RolloutState++;
  if (buildCounterGoogleCloudDialogflowCxV3RolloutState < 3) {
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.step!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stepIndex!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3RolloutState--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RunContinuousTestRequest = 0;
api.GoogleCloudDialogflowCxV3RunContinuousTestRequest
    buildGoogleCloudDialogflowCxV3RunContinuousTestRequest() {
  final o = api.GoogleCloudDialogflowCxV3RunContinuousTestRequest();
  buildCounterGoogleCloudDialogflowCxV3RunContinuousTestRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RunContinuousTestRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3RunContinuousTestRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RunContinuousTestRequest(
    api.GoogleCloudDialogflowCxV3RunContinuousTestRequest o) {
  buildCounterGoogleCloudDialogflowCxV3RunContinuousTestRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RunContinuousTestRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3RunContinuousTestRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest = 0;
api.GoogleCloudDialogflowCxV3RunTestCaseRequest
    buildGoogleCloudDialogflowCxV3RunTestCaseRequest() {
  final o = api.GoogleCloudDialogflowCxV3RunTestCaseRequest();
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest < 3) {
    o.environment = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3RunTestCaseRequest(
    api.GoogleCloudDialogflowCxV3RunTestCaseRequest o) {
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest < 3) {
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3RunTestCaseRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3SafetySettingsPhrase> buildUnnamed87() =>
    [
      buildGoogleCloudDialogflowCxV3SafetySettingsPhrase(),
      buildGoogleCloudDialogflowCxV3SafetySettingsPhrase(),
    ];

void checkUnnamed87(
    core.List<api.GoogleCloudDialogflowCxV3SafetySettingsPhrase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3SafetySettingsPhrase(o[0]);
  checkGoogleCloudDialogflowCxV3SafetySettingsPhrase(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3SafetySettings = 0;
api.GoogleCloudDialogflowCxV3SafetySettings
    buildGoogleCloudDialogflowCxV3SafetySettings() {
  final o = api.GoogleCloudDialogflowCxV3SafetySettings();
  buildCounterGoogleCloudDialogflowCxV3SafetySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SafetySettings < 3) {
    o.bannedPhrases = buildUnnamed87();
  }
  buildCounterGoogleCloudDialogflowCxV3SafetySettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SafetySettings(
    api.GoogleCloudDialogflowCxV3SafetySettings o) {
  buildCounterGoogleCloudDialogflowCxV3SafetySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SafetySettings < 3) {
    checkUnnamed87(o.bannedPhrases!);
  }
  buildCounterGoogleCloudDialogflowCxV3SafetySettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3SafetySettingsPhrase = 0;
api.GoogleCloudDialogflowCxV3SafetySettingsPhrase
    buildGoogleCloudDialogflowCxV3SafetySettingsPhrase() {
  final o = api.GoogleCloudDialogflowCxV3SafetySettingsPhrase();
  buildCounterGoogleCloudDialogflowCxV3SafetySettingsPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3SafetySettingsPhrase < 3) {
    o.languageCode = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3SafetySettingsPhrase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SafetySettingsPhrase(
    api.GoogleCloudDialogflowCxV3SafetySettingsPhrase o) {
  buildCounterGoogleCloudDialogflowCxV3SafetySettingsPhrase++;
  if (buildCounterGoogleCloudDialogflowCxV3SafetySettingsPhrase < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3SafetySettingsPhrase--;
}

core.List<api.GoogleCloudDialogflowCxV3BoostSpecs> buildUnnamed88() => [
      buildGoogleCloudDialogflowCxV3BoostSpecs(),
      buildGoogleCloudDialogflowCxV3BoostSpecs(),
    ];

void checkUnnamed88(core.List<api.GoogleCloudDialogflowCxV3BoostSpecs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3BoostSpecs(o[0]);
  checkGoogleCloudDialogflowCxV3BoostSpecs(o[1]);
}

core.List<api.GoogleCloudDialogflowCxV3FilterSpecs> buildUnnamed89() => [
      buildGoogleCloudDialogflowCxV3FilterSpecs(),
      buildGoogleCloudDialogflowCxV3FilterSpecs(),
    ];

void checkUnnamed89(core.List<api.GoogleCloudDialogflowCxV3FilterSpecs> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3FilterSpecs(o[0]);
  checkGoogleCloudDialogflowCxV3FilterSpecs(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3SearchConfig = 0;
api.GoogleCloudDialogflowCxV3SearchConfig
    buildGoogleCloudDialogflowCxV3SearchConfig() {
  final o = api.GoogleCloudDialogflowCxV3SearchConfig();
  buildCounterGoogleCloudDialogflowCxV3SearchConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3SearchConfig < 3) {
    o.boostSpecs = buildUnnamed88();
    o.filterSpecs = buildUnnamed89();
  }
  buildCounterGoogleCloudDialogflowCxV3SearchConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SearchConfig(
    api.GoogleCloudDialogflowCxV3SearchConfig o) {
  buildCounterGoogleCloudDialogflowCxV3SearchConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3SearchConfig < 3) {
    checkUnnamed88(o.boostSpecs!);
    checkUnnamed89(o.filterSpecs!);
  }
  buildCounterGoogleCloudDialogflowCxV3SearchConfig--;
}

core.List<core.String> buildUnnamed90() => [
      'foo',
      'foo',
    ];

void checkUnnamed90(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3SecuritySettings = 0;
api.GoogleCloudDialogflowCxV3SecuritySettings
    buildGoogleCloudDialogflowCxV3SecuritySettings() {
  final o = api.GoogleCloudDialogflowCxV3SecuritySettings();
  buildCounterGoogleCloudDialogflowCxV3SecuritySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SecuritySettings < 3) {
    o.audioExportSettings =
        buildGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings();
    o.deidentifyTemplate = 'foo';
    o.displayName = 'foo';
    o.insightsExportSettings =
        buildGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings();
    o.inspectTemplate = 'foo';
    o.name = 'foo';
    o.purgeDataTypes = buildUnnamed90();
    o.redactionScope = 'foo';
    o.redactionStrategy = 'foo';
    o.retentionStrategy = 'foo';
    o.retentionWindowDays = 42;
  }
  buildCounterGoogleCloudDialogflowCxV3SecuritySettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SecuritySettings(
    api.GoogleCloudDialogflowCxV3SecuritySettings o) {
  buildCounterGoogleCloudDialogflowCxV3SecuritySettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SecuritySettings < 3) {
    checkGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings(
        o.audioExportSettings!);
    unittest.expect(
      o.deidentifyTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings(
        o.insightsExportSettings!);
    unittest.expect(
      o.inspectTemplate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed90(o.purgeDataTypes!);
    unittest.expect(
      o.redactionScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.redactionStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retentionStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.retentionWindowDays!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3SecuritySettings--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings =
    0;
api.GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings
    buildGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings() {
  final o = api.GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings();
  buildCounterGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings <
      3) {
    o.audioExportPattern = 'foo';
    o.audioFormat = 'foo';
    o.enableAudioRedaction = true;
    o.gcsBucket = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings(
    api.GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings o) {
  buildCounterGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings <
      3) {
    unittest.expect(
      o.audioExportPattern!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.audioFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableAudioRedaction!, unittest.isTrue);
    unittest.expect(
      o.gcsBucket!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings =
    0;
api.GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings
    buildGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings() {
  final o =
      api.GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings();
  buildCounterGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings <
      3) {
    o.enableInsightsExport = true;
  }
  buildCounterGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings(
    api.GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings o) {
  buildCounterGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings <
      3) {
    unittest.expect(o.enableInsightsExport!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult = 0;
api.GoogleCloudDialogflowCxV3SentimentAnalysisResult
    buildGoogleCloudDialogflowCxV3SentimentAnalysisResult() {
  final o = api.GoogleCloudDialogflowCxV3SentimentAnalysisResult();
  buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult < 3) {
    o.magnitude = 42.0;
    o.score = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SentimentAnalysisResult(
    api.GoogleCloudDialogflowCxV3SentimentAnalysisResult o) {
  buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult++;
  if (buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult < 3) {
    unittest.expect(
      o.magnitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.score!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3SentimentAnalysisResult--;
}

core.List<api.GoogleCloudDialogflowCxV3EntityTypeEntity> buildUnnamed91() => [
      buildGoogleCloudDialogflowCxV3EntityTypeEntity(),
      buildGoogleCloudDialogflowCxV3EntityTypeEntity(),
    ];

void checkUnnamed91(
    core.List<api.GoogleCloudDialogflowCxV3EntityTypeEntity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3EntityTypeEntity(o[0]);
  checkGoogleCloudDialogflowCxV3EntityTypeEntity(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3SessionEntityType = 0;
api.GoogleCloudDialogflowCxV3SessionEntityType
    buildGoogleCloudDialogflowCxV3SessionEntityType() {
  final o = api.GoogleCloudDialogflowCxV3SessionEntityType();
  buildCounterGoogleCloudDialogflowCxV3SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3SessionEntityType < 3) {
    o.entities = buildUnnamed91();
    o.entityOverrideMode = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3SessionEntityType--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SessionEntityType(
    api.GoogleCloudDialogflowCxV3SessionEntityType o) {
  buildCounterGoogleCloudDialogflowCxV3SessionEntityType++;
  if (buildCounterGoogleCloudDialogflowCxV3SessionEntityType < 3) {
    checkUnnamed91(o.entities!);
    unittest.expect(
      o.entityOverrideMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3SessionEntityType--;
}

core.int buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings = 0;
api.GoogleCloudDialogflowCxV3SpeechToTextSettings
    buildGoogleCloudDialogflowCxV3SpeechToTextSettings() {
  final o = api.GoogleCloudDialogflowCxV3SpeechToTextSettings();
  buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings < 3) {
    o.enableSpeechAdaptation = true;
  }
  buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SpeechToTextSettings(
    api.GoogleCloudDialogflowCxV3SpeechToTextSettings o) {
  buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings < 3) {
    unittest.expect(o.enableSpeechAdaptation!, unittest.isTrue);
  }
  buildCounterGoogleCloudDialogflowCxV3SpeechToTextSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest = 0;
api.GoogleCloudDialogflowCxV3StartExperimentRequest
    buildGoogleCloudDialogflowCxV3StartExperimentRequest() {
  final o = api.GoogleCloudDialogflowCxV3StartExperimentRequest();
  buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3StartExperimentRequest(
    api.GoogleCloudDialogflowCxV3StartExperimentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3StartExperimentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest = 0;
api.GoogleCloudDialogflowCxV3StopExperimentRequest
    buildGoogleCloudDialogflowCxV3StopExperimentRequest() {
  final o = api.GoogleCloudDialogflowCxV3StopExperimentRequest();
  buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3StopExperimentRequest(
    api.GoogleCloudDialogflowCxV3StopExperimentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3StopExperimentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest = 0;
api.GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest
    buildGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest() {
  final o = api.GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest();
  buildCounterGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest < 3) {
    o.answerFeedback = buildGoogleCloudDialogflowCxV3AnswerFeedback();
    o.responseId = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest(
    api.GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest o) {
  buildCounterGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest < 3) {
    checkGoogleCloudDialogflowCxV3AnswerFeedback(o.answerFeedback!);
    unittest.expect(
      o.responseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest--;
}

core.List<core.String> buildUnnamed92() => [
      'foo',
      'foo',
    ];

void checkUnnamed92(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig = 0;
api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig
    buildGoogleCloudDialogflowCxV3SynthesizeSpeechConfig() {
  final o = api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig();
  buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig < 3) {
    o.effectsProfileId = buildUnnamed92();
    o.pitch = 42.0;
    o.speakingRate = 42.0;
    o.voice = buildGoogleCloudDialogflowCxV3VoiceSelectionParams();
    o.volumeGainDb = 42.0;
  }
  buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(
    api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig o) {
  buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig < 3) {
    checkUnnamed92(o.effectsProfileId!);
    unittest.expect(
      o.pitch!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.speakingRate!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDialogflowCxV3VoiceSelectionParams(o.voice!);
    unittest.expect(
      o.volumeGainDb!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3SynthesizeSpeechConfig--;
}

core.List<core.String> buildUnnamed93() => [
      'foo',
      'foo',
    ];

void checkUnnamed93(core.List<core.String> o) {
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

core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> buildUnnamed94() => [
      buildGoogleCloudDialogflowCxV3ConversationTurn(),
      buildGoogleCloudDialogflowCxV3ConversationTurn(),
    ];

void checkUnnamed94(
    core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ConversationTurn(o[0]);
  checkGoogleCloudDialogflowCxV3ConversationTurn(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3TestCase = 0;
api.GoogleCloudDialogflowCxV3TestCase buildGoogleCloudDialogflowCxV3TestCase() {
  final o = api.GoogleCloudDialogflowCxV3TestCase();
  buildCounterGoogleCloudDialogflowCxV3TestCase++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCase < 3) {
    o.creationTime = 'foo';
    o.displayName = 'foo';
    o.lastTestResult = buildGoogleCloudDialogflowCxV3TestCaseResult();
    o.name = 'foo';
    o.notes = 'foo';
    o.tags = buildUnnamed93();
    o.testCaseConversationTurns = buildUnnamed94();
    o.testConfig = buildGoogleCloudDialogflowCxV3TestConfig();
  }
  buildCounterGoogleCloudDialogflowCxV3TestCase--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestCase(
    api.GoogleCloudDialogflowCxV3TestCase o) {
  buildCounterGoogleCloudDialogflowCxV3TestCase++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCase < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3TestCaseResult(o.lastTestResult!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    checkUnnamed93(o.tags!);
    checkUnnamed94(o.testCaseConversationTurns!);
    checkGoogleCloudDialogflowCxV3TestConfig(o.testConfig!);
  }
  buildCounterGoogleCloudDialogflowCxV3TestCase--;
}

core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> buildUnnamed95() => [
      buildGoogleCloudDialogflowCxV3ConversationTurn(),
      buildGoogleCloudDialogflowCxV3ConversationTurn(),
    ];

void checkUnnamed95(
    core.List<api.GoogleCloudDialogflowCxV3ConversationTurn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ConversationTurn(o[0]);
  checkGoogleCloudDialogflowCxV3ConversationTurn(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3TestCaseResult = 0;
api.GoogleCloudDialogflowCxV3TestCaseResult
    buildGoogleCloudDialogflowCxV3TestCaseResult() {
  final o = api.GoogleCloudDialogflowCxV3TestCaseResult();
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCaseResult < 3) {
    o.conversationTurns = buildUnnamed95();
    o.environment = 'foo';
    o.name = 'foo';
    o.testResult = 'foo';
    o.testTime = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestCaseResult(
    api.GoogleCloudDialogflowCxV3TestCaseResult o) {
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult++;
  if (buildCounterGoogleCloudDialogflowCxV3TestCaseResult < 3) {
    checkUnnamed95(o.conversationTurns!);
    unittest.expect(
      o.environment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testResult!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3TestCaseResult--;
}

core.List<core.String> buildUnnamed96() => [
      'foo',
      'foo',
    ];

void checkUnnamed96(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3TestConfig = 0;
api.GoogleCloudDialogflowCxV3TestConfig
    buildGoogleCloudDialogflowCxV3TestConfig() {
  final o = api.GoogleCloudDialogflowCxV3TestConfig();
  buildCounterGoogleCloudDialogflowCxV3TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3TestConfig < 3) {
    o.flow = 'foo';
    o.page = 'foo';
    o.trackingParameters = buildUnnamed96();
  }
  buildCounterGoogleCloudDialogflowCxV3TestConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestConfig(
    api.GoogleCloudDialogflowCxV3TestConfig o) {
  buildCounterGoogleCloudDialogflowCxV3TestConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3TestConfig < 3) {
    unittest.expect(
      o.flow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.page!,
      unittest.equals('foo'),
    );
    checkUnnamed96(o.trackingParameters!);
  }
  buildCounterGoogleCloudDialogflowCxV3TestConfig--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TestRunDifference = 0;
api.GoogleCloudDialogflowCxV3TestRunDifference
    buildGoogleCloudDialogflowCxV3TestRunDifference() {
  final o = api.GoogleCloudDialogflowCxV3TestRunDifference();
  buildCounterGoogleCloudDialogflowCxV3TestRunDifference++;
  if (buildCounterGoogleCloudDialogflowCxV3TestRunDifference < 3) {
    o.description = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3TestRunDifference--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TestRunDifference(
    api.GoogleCloudDialogflowCxV3TestRunDifference o) {
  buildCounterGoogleCloudDialogflowCxV3TestRunDifference++;
  if (buildCounterGoogleCloudDialogflowCxV3TestRunDifference < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3TestRunDifference--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TextInput = 0;
api.GoogleCloudDialogflowCxV3TextInput
    buildGoogleCloudDialogflowCxV3TextInput() {
  final o = api.GoogleCloudDialogflowCxV3TextInput();
  buildCounterGoogleCloudDialogflowCxV3TextInput++;
  if (buildCounterGoogleCloudDialogflowCxV3TextInput < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3TextInput--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TextInput(
    api.GoogleCloudDialogflowCxV3TextInput o) {
  buildCounterGoogleCloudDialogflowCxV3TextInput++;
  if (buildCounterGoogleCloudDialogflowCxV3TextInput < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3TextInput--;
}

core.Map<core.String, api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig>
    buildUnnamed97() => {
          'x': buildGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(),
          'y': buildGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(),
        };

void checkUnnamed97(
    core.Map<core.String, api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(o['x']!);
  checkGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(o['y']!);
}

core.int buildCounterGoogleCloudDialogflowCxV3TextToSpeechSettings = 0;
api.GoogleCloudDialogflowCxV3TextToSpeechSettings
    buildGoogleCloudDialogflowCxV3TextToSpeechSettings() {
  final o = api.GoogleCloudDialogflowCxV3TextToSpeechSettings();
  buildCounterGoogleCloudDialogflowCxV3TextToSpeechSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3TextToSpeechSettings < 3) {
    o.synthesizeSpeechConfigs = buildUnnamed97();
  }
  buildCounterGoogleCloudDialogflowCxV3TextToSpeechSettings--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TextToSpeechSettings(
    api.GoogleCloudDialogflowCxV3TextToSpeechSettings o) {
  buildCounterGoogleCloudDialogflowCxV3TextToSpeechSettings++;
  if (buildCounterGoogleCloudDialogflowCxV3TextToSpeechSettings < 3) {
    checkUnnamed97(o.synthesizeSpeechConfigs!);
  }
  buildCounterGoogleCloudDialogflowCxV3TextToSpeechSettings--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest = 0;
api.GoogleCloudDialogflowCxV3TrainFlowRequest
    buildGoogleCloudDialogflowCxV3TrainFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3TrainFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TrainFlowRequest(
    api.GoogleCloudDialogflowCxV3TrainFlowRequest o) {
  buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest < 3) {}
  buildCounterGoogleCloudDialogflowCxV3TrainFlowRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3TransitionCoverageTransition>
    buildUnnamed98() => [
          buildGoogleCloudDialogflowCxV3TransitionCoverageTransition(),
          buildGoogleCloudDialogflowCxV3TransitionCoverageTransition(),
        ];

void checkUnnamed98(
    core.List<api.GoogleCloudDialogflowCxV3TransitionCoverageTransition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionCoverageTransition(o[0]);
  checkGoogleCloudDialogflowCxV3TransitionCoverageTransition(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionCoverage = 0;
api.GoogleCloudDialogflowCxV3TransitionCoverage
    buildGoogleCloudDialogflowCxV3TransitionCoverage() {
  final o = api.GoogleCloudDialogflowCxV3TransitionCoverage();
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverage < 3) {
    o.coverageScore = 42.0;
    o.transitions = buildUnnamed98();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionCoverage(
    api.GoogleCloudDialogflowCxV3TransitionCoverage o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverage < 3) {
    unittest.expect(
      o.coverageScore!,
      unittest.equals(42.0),
    );
    checkUnnamed98(o.transitions!);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverage--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition = 0;
api.GoogleCloudDialogflowCxV3TransitionCoverageTransition
    buildGoogleCloudDialogflowCxV3TransitionCoverageTransition() {
  final o = api.GoogleCloudDialogflowCxV3TransitionCoverageTransition();
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition < 3) {
    o.covered = true;
    o.eventHandler = buildGoogleCloudDialogflowCxV3EventHandler();
    o.index = 42;
    o.source = buildGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode();
    o.target = buildGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode();
    o.transitionRoute = buildGoogleCloudDialogflowCxV3TransitionRoute();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionCoverageTransition(
    api.GoogleCloudDialogflowCxV3TransitionCoverageTransition o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition < 3) {
    unittest.expect(o.covered!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3EventHandler(o.eventHandler!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    checkGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode(o.source!);
    checkGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode(o.target!);
    checkGoogleCloudDialogflowCxV3TransitionRoute(o.transitionRoute!);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransition--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode =
    0;
api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
    buildGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode() {
  final o = api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode();
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode <
      3) {
    o.flow = buildGoogleCloudDialogflowCxV3Flow();
    o.page = buildGoogleCloudDialogflowCxV3Page();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode(
    api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode <
      3) {
    checkGoogleCloudDialogflowCxV3Flow(o.flow!);
    checkGoogleCloudDialogflowCxV3Page(o.page!);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode--;
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionRoute = 0;
api.GoogleCloudDialogflowCxV3TransitionRoute
    buildGoogleCloudDialogflowCxV3TransitionRoute() {
  final o = api.GoogleCloudDialogflowCxV3TransitionRoute();
  buildCounterGoogleCloudDialogflowCxV3TransitionRoute++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRoute < 3) {
    o.condition = 'foo';
    o.description = 'foo';
    o.intent = 'foo';
    o.name = 'foo';
    o.targetFlow = 'foo';
    o.targetPage = 'foo';
    o.triggerFulfillment = buildGoogleCloudDialogflowCxV3Fulfillment();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRoute--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRoute(
    api.GoogleCloudDialogflowCxV3TransitionRoute o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRoute++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRoute < 3) {
    unittest.expect(
      o.condition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.intent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetFlow!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetPage!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3Fulfillment(o.triggerFulfillment!);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRoute--;
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> buildUnnamed99() => [
      buildGoogleCloudDialogflowCxV3TransitionRoute(),
      buildGoogleCloudDialogflowCxV3TransitionRoute(),
    ];

void checkUnnamed99(core.List<api.GoogleCloudDialogflowCxV3TransitionRoute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRoute(o[0]);
  checkGoogleCloudDialogflowCxV3TransitionRoute(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup = 0;
api.GoogleCloudDialogflowCxV3TransitionRouteGroup
    buildGoogleCloudDialogflowCxV3TransitionRouteGroup() {
  final o = api.GoogleCloudDialogflowCxV3TransitionRouteGroup();
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.transitionRoutes = buildUnnamed99();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
    api.GoogleCloudDialogflowCxV3TransitionRouteGroup o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed99(o.transitionRoutes!);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroup--;
}

core.List<api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>
    buildUnnamed100() => [
          buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(),
          buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(),
        ];

void checkUnnamed100(
    core.List<api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(o[0]);
  checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage = 0;
api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage
    buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage() {
  final o = api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage();
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage < 3) {
    o.coverageScore = 42.0;
    o.coverages = buildUnnamed100();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage(
    api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage < 3) {
    unittest.expect(
      o.coverageScore!,
      unittest.equals(42.0),
    );
    checkUnnamed100(o.coverages!);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage--;
}

core.List<
        api
        .GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition>
    buildUnnamed101() => [
          buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(),
          buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(),
        ];

void checkUnnamed101(
    core.List<
            api
            .GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(
      o[0]);
  checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(
      o[1]);
}

core.int
    buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage =
    0;
api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage
    buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage() {
  final o = api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage();
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage <
      3) {
    o.coverageScore = 42.0;
    o.routeGroup = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
    o.transitions = buildUnnamed101();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(
    api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage <
      3) {
    unittest.expect(
      o.coverageScore!,
      unittest.equals(42.0),
    );
    checkGoogleCloudDialogflowCxV3TransitionRouteGroup(o.routeGroup!);
    checkUnnamed101(o.transitions!);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage--;
}

core.int
    buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition =
    0;
api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
    buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition() {
  final o = api
      .GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition();
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition <
      3) {
    o.covered = true;
    o.transitionRoute = buildGoogleCloudDialogflowCxV3TransitionRoute();
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition--;
  return o;
}

void checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(
    api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
        o) {
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition++;
  if (buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition <
      3) {
    unittest.expect(o.covered!, unittest.isTrue);
    checkGoogleCloudDialogflowCxV3TransitionRoute(o.transitionRoute!);
  }
  buildCounterGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest = 0;
api.GoogleCloudDialogflowCxV3ValidateAgentRequest
    buildGoogleCloudDialogflowCxV3ValidateAgentRequest() {
  final o = api.GoogleCloudDialogflowCxV3ValidateAgentRequest();
  buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest < 3) {
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ValidateAgentRequest(
    api.GoogleCloudDialogflowCxV3ValidateAgentRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ValidateAgentRequest--;
}

core.int buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest = 0;
api.GoogleCloudDialogflowCxV3ValidateFlowRequest
    buildGoogleCloudDialogflowCxV3ValidateFlowRequest() {
  final o = api.GoogleCloudDialogflowCxV3ValidateFlowRequest();
  buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest < 3) {
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ValidateFlowRequest(
    api.GoogleCloudDialogflowCxV3ValidateFlowRequest o) {
  buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ValidateFlowRequest--;
}

core.List<api.GoogleCloudDialogflowCxV3ResourceName> buildUnnamed102() => [
      buildGoogleCloudDialogflowCxV3ResourceName(),
      buildGoogleCloudDialogflowCxV3ResourceName(),
    ];

void checkUnnamed102(core.List<api.GoogleCloudDialogflowCxV3ResourceName> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3ResourceName(o[0]);
  checkGoogleCloudDialogflowCxV3ResourceName(o[1]);
}

core.List<core.String> buildUnnamed103() => [
      'foo',
      'foo',
    ];

void checkUnnamed103(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3ValidationMessage = 0;
api.GoogleCloudDialogflowCxV3ValidationMessage
    buildGoogleCloudDialogflowCxV3ValidationMessage() {
  final o = api.GoogleCloudDialogflowCxV3ValidationMessage();
  buildCounterGoogleCloudDialogflowCxV3ValidationMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidationMessage < 3) {
    o.detail = 'foo';
    o.resourceNames = buildUnnamed102();
    o.resourceType = 'foo';
    o.resources = buildUnnamed103();
    o.severity = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3ValidationMessage--;
  return o;
}

void checkGoogleCloudDialogflowCxV3ValidationMessage(
    api.GoogleCloudDialogflowCxV3ValidationMessage o) {
  buildCounterGoogleCloudDialogflowCxV3ValidationMessage++;
  if (buildCounterGoogleCloudDialogflowCxV3ValidationMessage < 3) {
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    checkUnnamed102(o.resourceNames!);
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
    checkUnnamed103(o.resources!);
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3ValidationMessage--;
}

core.int buildCounterGoogleCloudDialogflowCxV3VariantsHistory = 0;
api.GoogleCloudDialogflowCxV3VariantsHistory
    buildGoogleCloudDialogflowCxV3VariantsHistory() {
  final o = api.GoogleCloudDialogflowCxV3VariantsHistory();
  buildCounterGoogleCloudDialogflowCxV3VariantsHistory++;
  if (buildCounterGoogleCloudDialogflowCxV3VariantsHistory < 3) {
    o.updateTime = 'foo';
    o.versionVariants = buildGoogleCloudDialogflowCxV3VersionVariants();
  }
  buildCounterGoogleCloudDialogflowCxV3VariantsHistory--;
  return o;
}

void checkGoogleCloudDialogflowCxV3VariantsHistory(
    api.GoogleCloudDialogflowCxV3VariantsHistory o) {
  buildCounterGoogleCloudDialogflowCxV3VariantsHistory++;
  if (buildCounterGoogleCloudDialogflowCxV3VariantsHistory < 3) {
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3VersionVariants(o.versionVariants!);
  }
  buildCounterGoogleCloudDialogflowCxV3VariantsHistory--;
}

core.int buildCounterGoogleCloudDialogflowCxV3Version = 0;
api.GoogleCloudDialogflowCxV3Version buildGoogleCloudDialogflowCxV3Version() {
  final o = api.GoogleCloudDialogflowCxV3Version();
  buildCounterGoogleCloudDialogflowCxV3Version++;
  if (buildCounterGoogleCloudDialogflowCxV3Version < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.nluSettings = buildGoogleCloudDialogflowCxV3NluSettings();
    o.state = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Version--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Version(
    api.GoogleCloudDialogflowCxV3Version o) {
  buildCounterGoogleCloudDialogflowCxV3Version++;
  if (buildCounterGoogleCloudDialogflowCxV3Version < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3NluSettings(o.nluSettings!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3Version--;
}

core.List<api.GoogleCloudDialogflowCxV3VersionVariantsVariant>
    buildUnnamed104() => [
          buildGoogleCloudDialogflowCxV3VersionVariantsVariant(),
          buildGoogleCloudDialogflowCxV3VersionVariantsVariant(),
        ];

void checkUnnamed104(
    core.List<api.GoogleCloudDialogflowCxV3VersionVariantsVariant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudDialogflowCxV3VersionVariantsVariant(o[0]);
  checkGoogleCloudDialogflowCxV3VersionVariantsVariant(o[1]);
}

core.int buildCounterGoogleCloudDialogflowCxV3VersionVariants = 0;
api.GoogleCloudDialogflowCxV3VersionVariants
    buildGoogleCloudDialogflowCxV3VersionVariants() {
  final o = api.GoogleCloudDialogflowCxV3VersionVariants();
  buildCounterGoogleCloudDialogflowCxV3VersionVariants++;
  if (buildCounterGoogleCloudDialogflowCxV3VersionVariants < 3) {
    o.variants = buildUnnamed104();
  }
  buildCounterGoogleCloudDialogflowCxV3VersionVariants--;
  return o;
}

void checkGoogleCloudDialogflowCxV3VersionVariants(
    api.GoogleCloudDialogflowCxV3VersionVariants o) {
  buildCounterGoogleCloudDialogflowCxV3VersionVariants++;
  if (buildCounterGoogleCloudDialogflowCxV3VersionVariants < 3) {
    checkUnnamed104(o.variants!);
  }
  buildCounterGoogleCloudDialogflowCxV3VersionVariants--;
}

core.int buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant = 0;
api.GoogleCloudDialogflowCxV3VersionVariantsVariant
    buildGoogleCloudDialogflowCxV3VersionVariantsVariant() {
  final o = api.GoogleCloudDialogflowCxV3VersionVariantsVariant();
  buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant++;
  if (buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant < 3) {
    o.isControlGroup = true;
    o.trafficAllocation = 42.0;
    o.version = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant--;
  return o;
}

void checkGoogleCloudDialogflowCxV3VersionVariantsVariant(
    api.GoogleCloudDialogflowCxV3VersionVariantsVariant o) {
  buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant++;
  if (buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant < 3) {
    unittest.expect(o.isControlGroup!, unittest.isTrue);
    unittest.expect(
      o.trafficAllocation!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3VersionVariantsVariant--;
}

core.int buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams = 0;
api.GoogleCloudDialogflowCxV3VoiceSelectionParams
    buildGoogleCloudDialogflowCxV3VoiceSelectionParams() {
  final o = api.GoogleCloudDialogflowCxV3VoiceSelectionParams();
  buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams < 3) {
    o.name = 'foo';
    o.ssmlGender = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams--;
  return o;
}

void checkGoogleCloudDialogflowCxV3VoiceSelectionParams(
    api.GoogleCloudDialogflowCxV3VoiceSelectionParams o) {
  buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams++;
  if (buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ssmlGender!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3VoiceSelectionParams--;
}

core.int buildCounterGoogleCloudDialogflowCxV3Webhook = 0;
api.GoogleCloudDialogflowCxV3Webhook buildGoogleCloudDialogflowCxV3Webhook() {
  final o = api.GoogleCloudDialogflowCxV3Webhook();
  buildCounterGoogleCloudDialogflowCxV3Webhook++;
  if (buildCounterGoogleCloudDialogflowCxV3Webhook < 3) {
    o.disabled = true;
    o.displayName = 'foo';
    o.genericWebService =
        buildGoogleCloudDialogflowCxV3WebhookGenericWebService();
    o.name = 'foo';
    o.serviceDirectory =
        buildGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig();
    o.timeout = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3Webhook--;
  return o;
}

void checkGoogleCloudDialogflowCxV3Webhook(
    api.GoogleCloudDialogflowCxV3Webhook o) {
  buildCounterGoogleCloudDialogflowCxV3Webhook++;
  if (buildCounterGoogleCloudDialogflowCxV3Webhook < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3WebhookGenericWebService(
        o.genericWebService!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig(
        o.serviceDirectory!);
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3Webhook--;
}

core.List<core.String> buildUnnamed105() => [
      'foo',
      'foo',
    ];

void checkUnnamed105(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed106() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed106(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed107() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed107(core.Map<core.String, core.String> o) {
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

core.int buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService = 0;
api.GoogleCloudDialogflowCxV3WebhookGenericWebService
    buildGoogleCloudDialogflowCxV3WebhookGenericWebService() {
  final o = api.GoogleCloudDialogflowCxV3WebhookGenericWebService();
  buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService < 3) {
    o.allowedCaCerts = buildUnnamed105();
    o.httpMethod = 'foo';
    o.parameterMapping = buildUnnamed106();
    o.password = 'foo';
    o.requestBody = 'foo';
    o.requestHeaders = buildUnnamed107();
    o.uri = 'foo';
    o.username = 'foo';
    o.webhookType = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookGenericWebService(
    api.GoogleCloudDialogflowCxV3WebhookGenericWebService o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService < 3) {
    checkUnnamed105(o.allowedCaCerts!);
    unittest.expect(
      o.httpMethod!,
      unittest.equals('foo'),
    );
    checkUnnamed106(o.parameterMapping!);
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestBody!,
      unittest.equals('foo'),
    );
    checkUnnamed107(o.requestHeaders!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.webhookType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookGenericWebService--;
}

core.int buildCounterGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig = 0;
api.GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig
    buildGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig() {
  final o = api.GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig();
  buildCounterGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig < 3) {
    o.genericWebService =
        buildGoogleCloudDialogflowCxV3WebhookGenericWebService();
    o.service = 'foo';
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig--;
  return o;
}

void checkGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig(
    api.GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig o) {
  buildCounterGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig++;
  if (buildCounterGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig < 3) {
    checkGoogleCloudDialogflowCxV3WebhookGenericWebService(
        o.genericWebService!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig--;
}

core.List<api.GoogleCloudLocationLocation> buildUnnamed108() => [
      buildGoogleCloudLocationLocation(),
      buildGoogleCloudLocationLocation(),
    ];

void checkUnnamed108(core.List<api.GoogleCloudLocationLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudLocationLocation(o[0]);
  checkGoogleCloudLocationLocation(o[1]);
}

core.int buildCounterGoogleCloudLocationListLocationsResponse = 0;
api.GoogleCloudLocationListLocationsResponse
    buildGoogleCloudLocationListLocationsResponse() {
  final o = api.GoogleCloudLocationListLocationsResponse();
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    o.locations = buildUnnamed108();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
  return o;
}

void checkGoogleCloudLocationListLocationsResponse(
    api.GoogleCloudLocationListLocationsResponse o) {
  buildCounterGoogleCloudLocationListLocationsResponse++;
  if (buildCounterGoogleCloudLocationListLocationsResponse < 3) {
    checkUnnamed108(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationListLocationsResponse--;
}

core.Map<core.String, core.String> buildUnnamed109() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed109(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed110() => {
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

void checkUnnamed110(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o['x']!) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(
    casted29['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted29['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted29['string'],
    unittest.equals('foo'),
  );
  var casted30 = (o['y']!) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(
    casted30['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted30['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted30['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleCloudLocationLocation = 0;
api.GoogleCloudLocationLocation buildGoogleCloudLocationLocation() {
  final o = api.GoogleCloudLocationLocation();
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed109();
    o.locationId = 'foo';
    o.metadata = buildUnnamed110();
    o.name = 'foo';
  }
  buildCounterGoogleCloudLocationLocation--;
  return o;
}

void checkGoogleCloudLocationLocation(api.GoogleCloudLocationLocation o) {
  buildCounterGoogleCloudLocationLocation++;
  if (buildCounterGoogleCloudLocationLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed109(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed110(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudLocationLocation--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed111() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed111(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed111();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed111(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed112() => {
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

void checkUnnamed112(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted31 = (o['x']!) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(
    casted31['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted31['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted31['string'],
    unittest.equals('foo'),
  );
  var casted32 = (o['y']!) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(
    casted32['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted32['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted32['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed113() => {
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

void checkUnnamed113(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted33 = (o['x']!) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(
    casted33['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted33['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted33['string'],
    unittest.equals('foo'),
  );
  var casted34 = (o['y']!) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(
    casted34['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted34['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted34['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed112();
    o.name = 'foo';
    o.response = buildUnnamed113();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed112(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed113(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object?> buildUnnamed114() => {
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

void checkUnnamed114(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted35 = (o['x']!) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(
    casted35['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted35['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted35['string'],
    unittest.equals('foo'),
  );
  var casted36 = (o['y']!) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(
    casted36['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted36['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted36['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed115() => [
      buildUnnamed114(),
      buildUnnamed114(),
    ];

void checkUnnamed115(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed114(o[0]);
  checkUnnamed114(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed115();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed115(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeLatLng = 0;
api.GoogleTypeLatLng buildGoogleTypeLatLng() {
  final o = api.GoogleTypeLatLng();
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGoogleTypeLatLng--;
  return o;
}

void checkGoogleTypeLatLng(api.GoogleTypeLatLng o) {
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleTypeLatLng--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudDialogflowCxV3AdvancedSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AdvancedSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3AdvancedSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AdvancedSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AdvancedSettingsDtmfSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AdvancedSettingsLoggingSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Agent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Agent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Agent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Agent(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AgentAnswerFeedbackSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3AgentGenAppBuilderSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AgentGenAppBuilderSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3AgentGitIntegrationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AgentGitIntegrationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3AgentGitIntegrationSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AgentGitIntegrationSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AgentGitIntegrationSettingsGithubSettings(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3AgentValidationResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AgentValidationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3AgentValidationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AgentValidationResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3AnswerFeedback', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AnswerFeedback();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3AnswerFeedback.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AnswerFeedback(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3AnswerFeedbackRatingReason.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AnswerFeedbackRatingReason(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3AudioInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3AudioInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3AudioInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3AudioInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3BargeInConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3BargeInConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3BargeInConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3BargeInConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3BatchRunTestCasesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3BatchRunTestCasesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3BatchRunTestCasesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3BoostSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3BoostSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3BoostSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3BoostSpec(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3BoostSpecConditionBoostSpec(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3BoostSpecs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3BoostSpecs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3BoostSpecs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3BoostSpecs(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3CalculateCoverageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3CalculateCoverageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3CalculateCoverageResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3CalculateCoverageResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Changelog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Changelog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Changelog.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Changelog(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3CompareVersionsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3CompareVersionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3CompareVersionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3CompareVersionsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3CompareVersionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3CompareVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3CompareVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3CompareVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ContinuousTestResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ContinuousTestResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ContinuousTestResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ContinuousTestResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ConversationTurn', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ConversationTurn();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ConversationTurn.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ConversationTurn(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ConversationTurnUserInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ConversationTurnUserInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ConversationTurnUserInput.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ConversationTurnUserInput(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DataStoreConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3DataStoreConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3DataStoreConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3DataStoreConnection(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DeployFlowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3DeployFlowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3DeployFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3DeployFlowRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Deployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Deployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Deployment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Deployment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DeploymentResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3DeploymentResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3DeploymentResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3DeploymentResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DetectIntentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3DetectIntentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3DetectIntentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3DetectIntentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DetectIntentResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3DetectIntentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3DetectIntentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3DetectIntentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3DtmfInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3DtmfInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3DtmfInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3DtmfInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EntityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3EntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3EntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3EntityType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EntityTypeEntity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3EntityTypeEntity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3EntityTypeEntity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3EntityTypeEntity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3EntityTypeExcludedPhrase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3EntityTypeExcludedPhrase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Environment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Environment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3EnvironmentTestCasesConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EnvironmentVersionConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3EnvironmentVersionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3EnvironmentVersionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3EnvironmentVersionConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EnvironmentWebhookConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3EnvironmentWebhookConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3EnvironmentWebhookConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3EnvironmentWebhookConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EventHandler', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3EventHandler();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3EventHandler.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3EventHandler(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3EventInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3EventInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3EventInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3EventInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Experiment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Experiment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Experiment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Experiment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExperimentDefinition',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ExperimentDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExperimentDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExperimentDefinition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExperimentResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ExperimentResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExperimentResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExperimentResult(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExperimentResultConfidenceInterval(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExperimentResultMetric',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ExperimentResultMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExperimentResultMetric.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExperimentResultMetric(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ExperimentResultVersionMetrics.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExperimentResultVersionMetrics(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportAgentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ExportAgentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExportAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExportAgentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExportAgentRequestGitDestination
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExportAgentRequestGitDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportFlowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ExportFlowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExportFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExportFlowRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportIntentsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ExportIntentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExportIntentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExportIntentsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ExportTestCasesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ExportTestCasesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ExportTestCasesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ExportTestCasesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FilterSpecs', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FilterSpecs();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3FilterSpecs.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FilterSpecs(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Flow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Flow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Flow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Flow(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FlowImportStrategy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FlowImportStrategy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3FlowImportStrategy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FlowImportStrategy(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FlowValidationResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FlowValidationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3FlowValidationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FlowValidationResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Form', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Form();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Form.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Form(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FormParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FormParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3FormParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FormParameter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FormParameterFillBehavior', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FormParameterFillBehavior();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3FormParameterFillBehavior.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FormParameterFillBehavior(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FulfillIntentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FulfillIntentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3FulfillIntentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FulfillIntentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3FulfillIntentResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FulfillIntentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3FulfillIntentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FulfillIntentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Fulfillment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Fulfillment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Fulfillment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Fulfillment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FulfillmentConditionalCases', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FulfillmentConditionalCases();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FulfillmentConditionalCases(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3FulfillmentSetParameterAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3FulfillmentSetParameterAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3FulfillmentSetParameterAction.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3FulfillmentSetParameterAction(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3GcsDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3GcsDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3GcsDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3GcsDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3GenerativeSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3GenerativeSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3GenerativeSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3GenerativeSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3GenerativeSettingsFallbackSettingsPromptTemplate(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3GenerativeSettingsKnowledgeConnectorSettings(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ImportFlowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ImportFlowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ImportFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ImportFlowRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ImportIntentsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ImportIntentsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ImportIntentsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ImportIntentsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ImportTestCasesRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ImportTestCasesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ImportTestCasesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ImportTestCasesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3InlineSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3InlineSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3InlineSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3InlineSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3InputAudioConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3InputAudioConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3InputAudioConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3InputAudioConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Intent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Intent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Intent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Intent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentCoverage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3IntentCoverage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3IntentCoverage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3IntentCoverage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentCoverageIntent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3IntentCoverageIntent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3IntentCoverageIntent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3IntentCoverageIntent(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3IntentInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3IntentInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3IntentInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3IntentParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3IntentParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3IntentParameter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentTrainingPhrase',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3IntentTrainingPhrase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3IntentTrainingPhrase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3IntentTrainingPhrase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3IntentTrainingPhrasePart',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3IntentTrainingPhrasePart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3IntentTrainingPhrasePart.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3IntentTrainingPhrasePart(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3KnowledgeConnectorSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3KnowledgeConnectorSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3KnowledgeConnectorSettings.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3KnowledgeConnectorSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListAgentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListAgentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListAgentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListAgentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListChangelogsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListChangelogsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListChangelogsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListChangelogsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListDeploymentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListDeploymentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListDeploymentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListDeploymentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListEntityTypesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListEntityTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListEntityTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListEntityTypesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListEnvironmentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListEnvironmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListEnvironmentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListExperimentsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListExperimentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListExperimentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListExperimentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListFlowsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListFlowsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListFlowsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListFlowsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListIntentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListIntentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListIntentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListIntentsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListPagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListPagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListPagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListPagesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListSecuritySettingsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListSecuritySettingsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListSecuritySettingsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListTestCaseResultsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListTestCaseResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListTestCaseResultsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListTestCasesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListTestCasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListTestCasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListTestCasesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListVersionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListVersionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ListWebhooksResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ListWebhooksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ListWebhooksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ListWebhooksResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3LoadVersionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3LoadVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3LoadVersionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3LoadVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Match', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Match();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Match.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Match(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3MatchIntentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3MatchIntentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3MatchIntentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3MatchIntentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3MatchIntentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3MatchIntentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3MatchIntentResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3NluSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3NluSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3NluSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3NluSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3OutputAudioConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3OutputAudioConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3OutputAudioConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3OutputAudioConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Page();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Page.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Page(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3QueryInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3QueryInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3QueryInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3QueryInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3QueryParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3QueryParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3QueryParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3QueryParameters(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3QueryResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3QueryResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3QueryResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3QueryResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ResourceName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ResourceName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ResourceName.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResourceName(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ResponseMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ResponseMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ResponseMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageConversationSuccess(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageEndInteraction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ResponseMessageEndInteraction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ResponseMessageEndInteraction.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageEndInteraction(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageKnowledgeInfoCard(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageMixedAudio', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudio.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudio(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageOutputAudioText(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ResponseMessagePlayAudio',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ResponseMessagePlayAudio();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ResponseMessagePlayAudio.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessagePlayAudio(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ResponseMessageText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ResponseMessageText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ResponseMessageText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ResponseMessageText(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RestoreAgentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3RestoreAgentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3RestoreAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3RestoreAgentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3RestoreAgentRequestGitSource.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3RestoreAgentRequestGitSource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RolloutConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3RolloutConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3RolloutConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3RolloutConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RolloutConfigRolloutStep',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3RolloutConfigRolloutStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3RolloutConfigRolloutStep.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3RolloutConfigRolloutStep(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RolloutState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3RolloutState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3RolloutState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3RolloutState(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RunContinuousTestRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3RunContinuousTestRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3RunContinuousTestRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3RunContinuousTestRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3RunTestCaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3RunTestCaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3RunTestCaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3RunTestCaseRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SafetySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SafetySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3SafetySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SafetySettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SafetySettingsPhrase',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SafetySettingsPhrase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3SafetySettingsPhrase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SafetySettingsPhrase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SearchConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SearchConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3SearchConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SearchConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SecuritySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SecuritySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SecuritySettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SecuritySettingsAudioExportSettings(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SecuritySettingsInsightsExportSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SentimentAnalysisResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SentimentAnalysisResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3SentimentAnalysisResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SentimentAnalysisResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SessionEntityType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SessionEntityType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SessionEntityType(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SpeechToTextSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SpeechToTextSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3SpeechToTextSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SpeechToTextSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3StartExperimentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3StartExperimentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3StartExperimentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3StartExperimentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3StopExperimentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3StopExperimentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3StopExperimentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3StopExperimentRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3SynthesizeSpeechConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3SynthesizeSpeechConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3SynthesizeSpeechConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3SynthesizeSpeechConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestCase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TestCase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TestCase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TestCase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestCaseResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TestCaseResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TestCaseResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TestCaseResult(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TestConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TestConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TestConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TestRunDifference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TestRunDifference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TestRunDifference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TestRunDifference(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TextInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TextInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TextInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TextInput(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TextToSpeechSettings',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TextToSpeechSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TextToSpeechSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TextToSpeechSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TrainFlowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TrainFlowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TrainFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TrainFlowRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TransitionCoverage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TransitionCoverage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TransitionCoverage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TransitionCoverage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionCoverageTransition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TransitionCoverageTransition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3TransitionCoverageTransition.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TransitionCoverageTransition(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TransitionCoverageTransitionNode
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TransitionCoverageTransitionNode(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TransitionRoute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TransitionRoute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TransitionRoute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TransitionRoute(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3TransitionRouteGroup',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroup(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverage.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverage(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroupCoverageCoverageTransition(
          od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ValidateAgentRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ValidateAgentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ValidateAgentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ValidateAgentRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ValidateFlowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ValidateFlowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ValidateFlowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ValidateFlowRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3ValidationMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3ValidationMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3ValidationMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3ValidationMessage(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3VariantsHistory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3VariantsHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3VariantsHistory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3VariantsHistory(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Version', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Version();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Version.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Version(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3VersionVariants', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3VersionVariants();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3VersionVariants.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3VersionVariants(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3VersionVariantsVariant',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3VersionVariantsVariant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3VersionVariantsVariant.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3VersionVariantsVariant(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3VoiceSelectionParams',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3VoiceSelectionParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3VoiceSelectionParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3VoiceSelectionParams(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3Webhook', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3Webhook();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3Webhook.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3Webhook(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudDialogflowCxV3WebhookGenericWebService',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3WebhookGenericWebService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudDialogflowCxV3WebhookGenericWebService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3WebhookGenericWebService(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudLocationLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudLocationLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudLocationLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudLocationLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeLatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLatLng.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeLatLng(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleCloudLocationLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudLocationLocation(
          response as api.GoogleCloudLocationLocation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations;
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudLocationListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudLocationListLocationsResponse(
          response as api.GoogleCloudLocationListLocationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request = buildGoogleCloudDialogflowCxV3Agent();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Agent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Agent(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Agent(
          response as api.GoogleCloudDialogflowCxV3Agent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request = buildGoogleCloudDialogflowCxV3ExportAgentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3ExportAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ExportAgentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Agent(
          response as api.GoogleCloudDialogflowCxV3Agent);
    });

    unittest.test('method--getGenerativeSettings', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3GenerativeSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getGenerativeSettings(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3GenerativeSettings(
          response as api.GoogleCloudDialogflowCxV3GenerativeSettings);
    });

    unittest.test('method--getValidationResult', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3AgentValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getValidationResult(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3AgentValidationResult(
          response as api.GoogleCloudDialogflowCxV3AgentValidationResult);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListAgentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListAgentsResponse(
          response as api.GoogleCloudDialogflowCxV3ListAgentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request = buildGoogleCloudDialogflowCxV3Agent();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Agent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Agent(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Agent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Agent(
          response as api.GoogleCloudDialogflowCxV3Agent);
    });

    unittest.test('method--restore', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request = buildGoogleCloudDialogflowCxV3RestoreAgentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3RestoreAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3RestoreAgentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.restore(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--updateGenerativeSettings', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request = buildGoogleCloudDialogflowCxV3GenerativeSettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3GenerativeSettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3GenerativeSettings(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3GenerativeSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateGenerativeSettings(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3GenerativeSettings(
          response as api.GoogleCloudDialogflowCxV3GenerativeSettings);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents;
      final arg_request = buildGoogleCloudDialogflowCxV3ValidateAgentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3ValidateAgentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ValidateAgentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3AgentValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validate(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3AgentValidationResult(
          response as api.GoogleCloudDialogflowCxV3AgentValidationResult);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsChangelogsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.changelogs;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Changelog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Changelog(
          response as api.GoogleCloudDialogflowCxV3Changelog);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.changelogs;
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListChangelogsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListChangelogsResponse(
          response as api.GoogleCloudDialogflowCxV3ListChangelogsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEntityTypesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_request = buildGoogleCloudDialogflowCxV3EntityType();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3EntityType(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3EntityType(
          response as api.GoogleCloudDialogflowCxV3EntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v3/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3EntityType(
          response as api.GoogleCloudDialogflowCxV3EntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListEntityTypesResponse(
          response as api.GoogleCloudDialogflowCxV3ListEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.entityTypes;
      final arg_request = buildGoogleCloudDialogflowCxV3EntityType();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3EntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3EntityType(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3EntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3EntityType(
          response as api.GoogleCloudDialogflowCxV3EntityType);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_request = buildGoogleCloudDialogflowCxV3Environment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Environment(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--deployFlow', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_request = buildGoogleCloudDialogflowCxV3DeployFlowRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3DeployFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3DeployFlowRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deployFlow(arg_request, arg_environment,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Environment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Environment(
          response as api.GoogleCloudDialogflowCxV3Environment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListEnvironmentsResponse(
          response as api.GoogleCloudDialogflowCxV3ListEnvironmentsResponse);
    });

    unittest.test('method--lookupEnvironmentHistory', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_name = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookupEnvironmentHistory(arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse(response
          as api.GoogleCloudDialogflowCxV3LookupEnvironmentHistoryResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_request = buildGoogleCloudDialogflowCxV3Environment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Environment(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--runContinuousTest', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.environments;
      final arg_request =
          buildGoogleCloudDialogflowCxV3RunContinuousTestRequest();
      final arg_environment = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowCxV3RunContinuousTestRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3RunContinuousTestRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.runContinuousTest(arg_request, arg_environment,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsEnvironmentsContinuousTestResultsResource',
      () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .continuousTestResults;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListContinuousTestResultsResponse(response
          as api.GoogleCloudDialogflowCxV3ListContinuousTestResultsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsEnvironmentsDeploymentsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .deployments;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Deployment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Deployment(
          response as api.GoogleCloudDialogflowCxV3Deployment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .deployments;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListDeploymentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListDeploymentsResponse(
          response as api.GoogleCloudDialogflowCxV3ListDeploymentsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsEnvironmentsExperimentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      final arg_request = buildGoogleCloudDialogflowCxV3Experiment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Experiment(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Experiment(
          response as api.GoogleCloudDialogflowCxV3Experiment);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Experiment(
          response as api.GoogleCloudDialogflowCxV3Experiment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListExperimentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListExperimentsResponse(
          response as api.GoogleCloudDialogflowCxV3ListExperimentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      final arg_request = buildGoogleCloudDialogflowCxV3Experiment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Experiment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Experiment(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Experiment(
          response as api.GoogleCloudDialogflowCxV3Experiment);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      final arg_request =
          buildGoogleCloudDialogflowCxV3StartExperimentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowCxV3StartExperimentRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3StartExperimentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Experiment(
          response as api.GoogleCloudDialogflowCxV3Experiment);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .experiments;
      final arg_request = buildGoogleCloudDialogflowCxV3StopExperimentRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3StopExperimentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3StopExperimentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Experiment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Experiment(
          response as api.GoogleCloudDialogflowCxV3Experiment);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsEnvironmentsSessionsResource',
      () {
    unittest.test('method--detectIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions;
      final arg_request = buildGoogleCloudDialogflowCxV3DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3DetectIntentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.detectIntent(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3DetectIntentResponse(
          response as api.GoogleCloudDialogflowCxV3DetectIntentResponse);
    });

    unittest.test('method--fulfillIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions;
      final arg_request = buildGoogleCloudDialogflowCxV3FulfillIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3FulfillIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3FulfillIntentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3FulfillIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fulfillIntent(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3FulfillIntentResponse(
          response as api.GoogleCloudDialogflowCxV3FulfillIntentResponse);
    });

    unittest.test('method--matchIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions;
      final arg_request = buildGoogleCloudDialogflowCxV3MatchIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3MatchIntentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3MatchIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.matchIntent(arg_request, arg_session, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3MatchIntentResponse(
          response as api.GoogleCloudDialogflowCxV3MatchIntentResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsEnvironmentsSessionsEntityTypesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
      final arg_request = buildGoogleCloudDialogflowCxV3SessionEntityType();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SessionEntityType(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3SessionEntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3SessionEntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse(response
          as api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .environments
          .sessions
          .entityTypes;
      final arg_request = buildGoogleCloudDialogflowCxV3SessionEntityType();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SessionEntityType(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3SessionEntityType);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3Flow();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Flow.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Flow(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Flow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Flow(
          response as api.GoogleCloudDialogflowCxV3Flow);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v3/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3ExportFlowRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3ExportFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ExportFlowRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Flow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Flow(
          response as api.GoogleCloudDialogflowCxV3Flow);
    });

    unittest.test('method--getValidationResult', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3FlowValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getValidationResult(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3FlowValidationResult(
          response as api.GoogleCloudDialogflowCxV3FlowValidationResult);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3ImportFlowRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3ImportFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ImportFlowRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListFlowsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListFlowsResponse(
          response as api.GoogleCloudDialogflowCxV3ListFlowsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3Flow();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Flow.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Flow(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Flow());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Flow(
          response as api.GoogleCloudDialogflowCxV3Flow);
    });

    unittest.test('method--train', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3TrainFlowRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3TrainFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TrainFlowRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.train(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows;
      final arg_request = buildGoogleCloudDialogflowCxV3ValidateFlowRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3ValidateFlowRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ValidateFlowRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3FlowValidationResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validate(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3FlowValidationResult(
          response as api.GoogleCloudDialogflowCxV3FlowValidationResult);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsPagesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_request = buildGoogleCloudDialogflowCxV3Page();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Page.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Page(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Page());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Page(
          response as api.GoogleCloudDialogflowCxV3Page);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v3/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Page());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Page(
          response as api.GoogleCloudDialogflowCxV3Page);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListPagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListPagesResponse(
          response as api.GoogleCloudDialogflowCxV3ListPagesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.flows.pages;
      final arg_request = buildGoogleCloudDialogflowCxV3Page();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Page.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Page(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
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
        final resp = convert.json.encode(buildGoogleCloudDialogflowCxV3Page());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Page(
          response as api.GoogleCloudDialogflowCxV3Page);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsFlowsTransitionRouteGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      final arg_request = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
          response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v3/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
          response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse(response
          as api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .flows
          .transitionRouteGroups;
      final arg_request = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
          response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsFlowsVersionsResource', () {
    unittest.test('method--compareVersions', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3CompareVersionsRequest();
      final arg_baseVersion = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowCxV3CompareVersionsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3CompareVersionsRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3CompareVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.compareVersions(arg_request, arg_baseVersion,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3CompareVersionsResponse(
          response as api.GoogleCloudDialogflowCxV3CompareVersionsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_request = buildGoogleCloudDialogflowCxV3Version();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Version.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Version(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Version(
          response as api.GoogleCloudDialogflowCxV3Version);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListVersionsResponse(
          response as api.GoogleCloudDialogflowCxV3ListVersionsResponse);
    });

    unittest.test('method--load', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_request = buildGoogleCloudDialogflowCxV3LoadVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3LoadVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3LoadVersionRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.load(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.flows.versions;
      final arg_request = buildGoogleCloudDialogflowCxV3Version();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Version.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Version(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Version());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Version(
          response as api.GoogleCloudDialogflowCxV3Version);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsIntentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_request = buildGoogleCloudDialogflowCxV3Intent();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Intent(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Intent(
          response as api.GoogleCloudDialogflowCxV3Intent);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_request = buildGoogleCloudDialogflowCxV3ExportIntentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3ExportIntentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ExportIntentsRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Intent(
          response as api.GoogleCloudDialogflowCxV3Intent);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_request = buildGoogleCloudDialogflowCxV3ImportIntentsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3ImportIntentsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ImportIntentsRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_parent = 'foo';
      final arg_intentView = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['intentView']!.first,
          unittest.equals(arg_intentView),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListIntentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          intentView: arg_intentView,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListIntentsResponse(
          response as api.GoogleCloudDialogflowCxV3ListIntentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.intents;
      final arg_request = buildGoogleCloudDialogflowCxV3Intent();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Intent.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Intent(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Intent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Intent(
          response as api.GoogleCloudDialogflowCxV3Intent);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsSessionsResource', () {
    unittest.test('method--detectIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request = buildGoogleCloudDialogflowCxV3DetectIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3DetectIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3DetectIntentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3DetectIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.detectIntent(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3DetectIntentResponse(
          response as api.GoogleCloudDialogflowCxV3DetectIntentResponse);
    });

    unittest.test('method--fulfillIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request = buildGoogleCloudDialogflowCxV3FulfillIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3FulfillIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3FulfillIntentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3FulfillIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fulfillIntent(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3FulfillIntentResponse(
          response as api.GoogleCloudDialogflowCxV3FulfillIntentResponse);
    });

    unittest.test('method--matchIntent', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request = buildGoogleCloudDialogflowCxV3MatchIntentRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3MatchIntentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3MatchIntentRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3MatchIntentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.matchIntent(arg_request, arg_session, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3MatchIntentResponse(
          response as api.GoogleCloudDialogflowCxV3MatchIntentResponse);
    });

    unittest.test('method--submitAnswerFeedback', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.sessions;
      final arg_request =
          buildGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest();
      final arg_session = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SubmitAnswerFeedbackRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3AnswerFeedback());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.submitAnswerFeedback(arg_request, arg_session,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3AnswerFeedback(
          response as api.GoogleCloudDialogflowCxV3AnswerFeedback);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsSessionsEntityTypesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
      final arg_request = buildGoogleCloudDialogflowCxV3SessionEntityType();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SessionEntityType(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3SessionEntityType);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3SessionEntityType);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListSessionEntityTypesResponse(response
          as api.GoogleCloudDialogflowCxV3ListSessionEntityTypesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .sessions
          .entityTypes;
      final arg_request = buildGoogleCloudDialogflowCxV3SessionEntityType();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3SessionEntityType.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SessionEntityType(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SessionEntityType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SessionEntityType(
          response as api.GoogleCloudDialogflowCxV3SessionEntityType);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsTestCasesResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3BatchDeleteTestCasesRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchRun', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3BatchRunTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowCxV3BatchRunTestCasesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3BatchRunTestCasesRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchRun(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--calculateCoverage', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_agent = 'foo';
      final arg_type = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['type']!.first,
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3CalculateCoverageResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.calculateCoverage(arg_agent,
          type: arg_type, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3CalculateCoverageResponse(
          response as api.GoogleCloudDialogflowCxV3CalculateCoverageResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request = buildGoogleCloudDialogflowCxV3TestCase();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3TestCase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TestCase(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3TestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TestCase(
          response as api.GoogleCloudDialogflowCxV3TestCase);
    });

    unittest.test('method--export', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3ExportTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowCxV3ExportTestCasesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ExportTestCasesRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.export(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3TestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TestCase(
          response as api.GoogleCloudDialogflowCxV3TestCase);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request =
          buildGoogleCloudDialogflowCxV3ImportTestCasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudDialogflowCxV3ImportTestCasesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3ImportTestCasesRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v3/'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListTestCasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListTestCasesResponse(
          response as api.GoogleCloudDialogflowCxV3ListTestCasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request = buildGoogleCloudDialogflowCxV3TestCase();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3TestCase.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TestCase(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3TestCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TestCase(
          response as api.GoogleCloudDialogflowCxV3TestCase);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.testCases;
      final arg_request = buildGoogleCloudDialogflowCxV3RunTestCaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3RunTestCaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3RunTestCaseRequest(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsTestCasesResultsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.testCases.results;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3TestCaseResult());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TestCaseResult(
          response as api.GoogleCloudDialogflowCxV3TestCaseResult);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.DialogflowApi(mock).projects.locations.agents.testCases.results;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListTestCaseResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListTestCaseResultsResponse(
          response as api.GoogleCloudDialogflowCxV3ListTestCaseResultsResponse);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsAgentsTransitionRouteGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .transitionRouteGroups;
      final arg_request = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
          response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .transitionRouteGroups;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v3/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .transitionRouteGroups;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
          response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .transitionRouteGroups;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse(response
          as api.GoogleCloudDialogflowCxV3ListTransitionRouteGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock)
          .projects
          .locations
          .agents
          .transitionRouteGroups;
      final arg_request = buildGoogleCloudDialogflowCxV3TransitionRouteGroup();
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3TransitionRouteGroup.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3TransitionRouteGroup(obj);

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
          unittest.equals('v3/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3TransitionRouteGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          languageCode: arg_languageCode,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3TransitionRouteGroup(
          response as api.GoogleCloudDialogflowCxV3TransitionRouteGroup);
    });
  });

  unittest.group('resource-ProjectsLocationsAgentsWebhooksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      final arg_request = buildGoogleCloudDialogflowCxV3Webhook();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Webhook.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Webhook(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Webhook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Webhook(
          response as api.GoogleCloudDialogflowCxV3Webhook);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      final arg_name = 'foo';
      final arg_force = true;
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
          unittest.equals('v3/'),
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
          queryMap['force']!.first,
          unittest.equals('$arg_force'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, force: arg_force, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Webhook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Webhook(
          response as api.GoogleCloudDialogflowCxV3Webhook);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3ListWebhooksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListWebhooksResponse(
          response as api.GoogleCloudDialogflowCxV3ListWebhooksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.agents.webhooks;
      final arg_request = buildGoogleCloudDialogflowCxV3Webhook();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3Webhook.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3Webhook(obj);

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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleCloudDialogflowCxV3Webhook());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3Webhook(
          response as api.GoogleCloudDialogflowCxV3Webhook);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.operations;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsSecuritySettingsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
      final arg_request = buildGoogleCloudDialogflowCxV3SecuritySettings();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SecuritySettings(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SecuritySettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SecuritySettings(
          response as api.GoogleCloudDialogflowCxV3SecuritySettings);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SecuritySettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SecuritySettings(
          response as api.GoogleCloudDialogflowCxV3SecuritySettings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
      final arg_parent = 'foo';
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(
            buildGoogleCloudDialogflowCxV3ListSecuritySettingsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3ListSecuritySettingsResponse(response
          as api.GoogleCloudDialogflowCxV3ListSecuritySettingsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.locations.securitySettings;
      final arg_request = buildGoogleCloudDialogflowCxV3SecuritySettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudDialogflowCxV3SecuritySettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudDialogflowCxV3SecuritySettings(obj);

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
          unittest.equals('v3/'),
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
        final resp = convert.json
            .encode(buildGoogleCloudDialogflowCxV3SecuritySettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudDialogflowCxV3SecuritySettings(
          response as api.GoogleCloudDialogflowCxV3SecuritySettings);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
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
          unittest.equals('v3/'),
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DialogflowApi(mock).projects.operations;
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
          unittest.equals('v3/'),
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });
}
