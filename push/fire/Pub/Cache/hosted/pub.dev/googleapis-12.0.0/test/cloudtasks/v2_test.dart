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

import 'package:googleapis/cloudtasks/v2.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.String> buildUnnamed0() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed0(core.Map<core.String, core.String> o) {
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

core.int buildCounterAppEngineHttpRequest = 0;
api.AppEngineHttpRequest buildAppEngineHttpRequest() {
  final o = api.AppEngineHttpRequest();
  buildCounterAppEngineHttpRequest++;
  if (buildCounterAppEngineHttpRequest < 3) {
    o.appEngineRouting = buildAppEngineRouting();
    o.body = 'foo';
    o.headers = buildUnnamed0();
    o.httpMethod = 'foo';
    o.relativeUri = 'foo';
  }
  buildCounterAppEngineHttpRequest--;
  return o;
}

void checkAppEngineHttpRequest(api.AppEngineHttpRequest o) {
  buildCounterAppEngineHttpRequest++;
  if (buildCounterAppEngineHttpRequest < 3) {
    checkAppEngineRouting(o.appEngineRouting!);
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.headers!);
    unittest.expect(
      o.httpMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppEngineHttpRequest--;
}

core.int buildCounterAppEngineRouting = 0;
api.AppEngineRouting buildAppEngineRouting() {
  final o = api.AppEngineRouting();
  buildCounterAppEngineRouting++;
  if (buildCounterAppEngineRouting < 3) {
    o.host = 'foo';
    o.instance = 'foo';
    o.service = 'foo';
    o.version = 'foo';
  }
  buildCounterAppEngineRouting--;
  return o;
}

void checkAppEngineRouting(api.AppEngineRouting o) {
  buildCounterAppEngineRouting++;
  if (buildCounterAppEngineRouting < 3) {
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppEngineRouting--;
}

core.int buildCounterAttempt = 0;
api.Attempt buildAttempt() {
  final o = api.Attempt();
  buildCounterAttempt++;
  if (buildCounterAttempt < 3) {
    o.dispatchTime = 'foo';
    o.responseStatus = buildStatus();
    o.responseTime = 'foo';
    o.scheduleTime = 'foo';
  }
  buildCounterAttempt--;
  return o;
}

void checkAttempt(api.Attempt o) {
  buildCounterAttempt++;
  if (buildCounterAttempt < 3) {
    unittest.expect(
      o.dispatchTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.responseStatus!);
    unittest.expect(
      o.responseTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scheduleTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttempt--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed1();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed1(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterBufferTaskRequest = 0;
api.BufferTaskRequest buildBufferTaskRequest() {
  final o = api.BufferTaskRequest();
  buildCounterBufferTaskRequest++;
  if (buildCounterBufferTaskRequest < 3) {
    o.body = buildHttpBody();
  }
  buildCounterBufferTaskRequest--;
  return o;
}

void checkBufferTaskRequest(api.BufferTaskRequest o) {
  buildCounterBufferTaskRequest++;
  if (buildCounterBufferTaskRequest < 3) {
    checkHttpBody(o.body!);
  }
  buildCounterBufferTaskRequest--;
}

core.int buildCounterBufferTaskResponse = 0;
api.BufferTaskResponse buildBufferTaskResponse() {
  final o = api.BufferTaskResponse();
  buildCounterBufferTaskResponse++;
  if (buildCounterBufferTaskResponse < 3) {
    o.task = buildTask();
  }
  buildCounterBufferTaskResponse--;
  return o;
}

void checkBufferTaskResponse(api.BufferTaskResponse o) {
  buildCounterBufferTaskResponse++;
  if (buildCounterBufferTaskResponse < 3) {
    checkTask(o.task!);
  }
  buildCounterBufferTaskResponse--;
}

core.int buildCounterCmekConfig = 0;
api.CmekConfig buildCmekConfig() {
  final o = api.CmekConfig();
  buildCounterCmekConfig++;
  if (buildCounterCmekConfig < 3) {
    o.kmsKey = 'foo';
    o.name = 'foo';
  }
  buildCounterCmekConfig--;
  return o;
}

void checkCmekConfig(api.CmekConfig o) {
  buildCounterCmekConfig++;
  if (buildCounterCmekConfig < 3) {
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterCmekConfig--;
}

core.int buildCounterCreateTaskRequest = 0;
api.CreateTaskRequest buildCreateTaskRequest() {
  final o = api.CreateTaskRequest();
  buildCounterCreateTaskRequest++;
  if (buildCounterCreateTaskRequest < 3) {
    o.responseView = 'foo';
    o.task = buildTask();
  }
  buildCounterCreateTaskRequest--;
  return o;
}

void checkCreateTaskRequest(api.CreateTaskRequest o) {
  buildCounterCreateTaskRequest++;
  if (buildCounterCreateTaskRequest < 3) {
    unittest.expect(
      o.responseView!,
      unittest.equals('foo'),
    );
    checkTask(o.task!);
  }
  buildCounterCreateTaskRequest--;
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

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  final o = api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterHeader--;
  return o;
}

void checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeader--;
}

core.int buildCounterHeaderOverride = 0;
api.HeaderOverride buildHeaderOverride() {
  final o = api.HeaderOverride();
  buildCounterHeaderOverride++;
  if (buildCounterHeaderOverride < 3) {
    o.header = buildHeader();
  }
  buildCounterHeaderOverride--;
  return o;
}

void checkHeaderOverride(api.HeaderOverride o) {
  buildCounterHeaderOverride++;
  if (buildCounterHeaderOverride < 3) {
    checkHeader(o.header!);
  }
  buildCounterHeaderOverride--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
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

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed3() => [
      buildUnnamed2(),
      buildUnnamed2(),
    ];

void checkUnnamed3(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2(o[0]);
  checkUnnamed2(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed3();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.Map<core.String, core.String> buildUnnamed4() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed4(core.Map<core.String, core.String> o) {
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

core.int buildCounterHttpRequest = 0;
api.HttpRequest buildHttpRequest() {
  final o = api.HttpRequest();
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    o.body = 'foo';
    o.headers = buildUnnamed4();
    o.httpMethod = 'foo';
    o.oauthToken = buildOAuthToken();
    o.oidcToken = buildOidcToken();
    o.url = 'foo';
  }
  buildCounterHttpRequest--;
  return o;
}

void checkHttpRequest(api.HttpRequest o) {
  buildCounterHttpRequest++;
  if (buildCounterHttpRequest < 3) {
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.headers!);
    unittest.expect(
      o.httpMethod!,
      unittest.equals('foo'),
    );
    checkOAuthToken(o.oauthToken!);
    checkOidcToken(o.oidcToken!);
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpRequest--;
}

core.List<api.HeaderOverride> buildUnnamed5() => [
      buildHeaderOverride(),
      buildHeaderOverride(),
    ];

void checkUnnamed5(core.List<api.HeaderOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeaderOverride(o[0]);
  checkHeaderOverride(o[1]);
}

core.int buildCounterHttpTarget = 0;
api.HttpTarget buildHttpTarget() {
  final o = api.HttpTarget();
  buildCounterHttpTarget++;
  if (buildCounterHttpTarget < 3) {
    o.headerOverrides = buildUnnamed5();
    o.httpMethod = 'foo';
    o.oauthToken = buildOAuthToken();
    o.oidcToken = buildOidcToken();
    o.uriOverride = buildUriOverride();
  }
  buildCounterHttpTarget--;
  return o;
}

void checkHttpTarget(api.HttpTarget o) {
  buildCounterHttpTarget++;
  if (buildCounterHttpTarget < 3) {
    checkUnnamed5(o.headerOverrides!);
    unittest.expect(
      o.httpMethod!,
      unittest.equals('foo'),
    );
    checkOAuthToken(o.oauthToken!);
    checkOidcToken(o.oidcToken!);
    checkUriOverride(o.uriOverride!);
  }
  buildCounterHttpTarget--;
}

core.List<api.Location> buildUnnamed6() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed6(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed6(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Queue> buildUnnamed7() => [
      buildQueue(),
      buildQueue(),
    ];

void checkUnnamed7(core.List<api.Queue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkQueue(o[0]);
  checkQueue(o[1]);
}

core.int buildCounterListQueuesResponse = 0;
api.ListQueuesResponse buildListQueuesResponse() {
  final o = api.ListQueuesResponse();
  buildCounterListQueuesResponse++;
  if (buildCounterListQueuesResponse < 3) {
    o.nextPageToken = 'foo';
    o.queues = buildUnnamed7();
  }
  buildCounterListQueuesResponse--;
  return o;
}

void checkListQueuesResponse(api.ListQueuesResponse o) {
  buildCounterListQueuesResponse++;
  if (buildCounterListQueuesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.queues!);
  }
  buildCounterListQueuesResponse--;
}

core.List<api.Task> buildUnnamed8() => [
      buildTask(),
      buildTask(),
    ];

void checkUnnamed8(core.List<api.Task> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTask(o[0]);
  checkTask(o[1]);
}

core.int buildCounterListTasksResponse = 0;
api.ListTasksResponse buildListTasksResponse() {
  final o = api.ListTasksResponse();
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    o.nextPageToken = 'foo';
    o.tasks = buildUnnamed8();
  }
  buildCounterListTasksResponse--;
  return o;
}

void checkListTasksResponse(api.ListTasksResponse o) {
  buildCounterListTasksResponse++;
  if (buildCounterListTasksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.tasks!);
  }
  buildCounterListTasksResponse--;
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed9();
    o.locationId = 'foo';
    o.metadata = buildUnnamed10();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterOAuthToken = 0;
api.OAuthToken buildOAuthToken() {
  final o = api.OAuthToken();
  buildCounterOAuthToken++;
  if (buildCounterOAuthToken < 3) {
    o.scope = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterOAuthToken--;
  return o;
}

void checkOAuthToken(api.OAuthToken o) {
  buildCounterOAuthToken++;
  if (buildCounterOAuthToken < 3) {
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterOAuthToken--;
}

core.int buildCounterOidcToken = 0;
api.OidcToken buildOidcToken() {
  final o = api.OidcToken();
  buildCounterOidcToken++;
  if (buildCounterOidcToken < 3) {
    o.audience = 'foo';
    o.serviceAccountEmail = 'foo';
  }
  buildCounterOidcToken--;
  return o;
}

void checkOidcToken(api.OidcToken o) {
  buildCounterOidcToken++;
  if (buildCounterOidcToken < 3) {
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterOidcToken--;
}

core.int buildCounterPathOverride = 0;
api.PathOverride buildPathOverride() {
  final o = api.PathOverride();
  buildCounterPathOverride++;
  if (buildCounterPathOverride < 3) {
    o.path = 'foo';
  }
  buildCounterPathOverride--;
  return o;
}

void checkPathOverride(api.PathOverride o) {
  buildCounterPathOverride++;
  if (buildCounterPathOverride < 3) {
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
  }
  buildCounterPathOverride--;
}

core.int buildCounterPauseQueueRequest = 0;
api.PauseQueueRequest buildPauseQueueRequest() {
  final o = api.PauseQueueRequest();
  buildCounterPauseQueueRequest++;
  if (buildCounterPauseQueueRequest < 3) {}
  buildCounterPauseQueueRequest--;
  return o;
}

void checkPauseQueueRequest(api.PauseQueueRequest o) {
  buildCounterPauseQueueRequest++;
  if (buildCounterPauseQueueRequest < 3) {}
  buildCounterPauseQueueRequest--;
}

core.List<api.Binding> buildUnnamed11() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed11(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed11();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed11(o.bindings!);
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

core.int buildCounterPurgeQueueRequest = 0;
api.PurgeQueueRequest buildPurgeQueueRequest() {
  final o = api.PurgeQueueRequest();
  buildCounterPurgeQueueRequest++;
  if (buildCounterPurgeQueueRequest < 3) {}
  buildCounterPurgeQueueRequest--;
  return o;
}

void checkPurgeQueueRequest(api.PurgeQueueRequest o) {
  buildCounterPurgeQueueRequest++;
  if (buildCounterPurgeQueueRequest < 3) {}
  buildCounterPurgeQueueRequest--;
}

core.int buildCounterQueryOverride = 0;
api.QueryOverride buildQueryOverride() {
  final o = api.QueryOverride();
  buildCounterQueryOverride++;
  if (buildCounterQueryOverride < 3) {
    o.queryParams = 'foo';
  }
  buildCounterQueryOverride--;
  return o;
}

void checkQueryOverride(api.QueryOverride o) {
  buildCounterQueryOverride++;
  if (buildCounterQueryOverride < 3) {
    unittest.expect(
      o.queryParams!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryOverride--;
}

core.int buildCounterQueue = 0;
api.Queue buildQueue() {
  final o = api.Queue();
  buildCounterQueue++;
  if (buildCounterQueue < 3) {
    o.appEngineRoutingOverride = buildAppEngineRouting();
    o.httpTarget = buildHttpTarget();
    o.name = 'foo';
    o.purgeTime = 'foo';
    o.rateLimits = buildRateLimits();
    o.retryConfig = buildRetryConfig();
    o.stackdriverLoggingConfig = buildStackdriverLoggingConfig();
    o.state = 'foo';
  }
  buildCounterQueue--;
  return o;
}

void checkQueue(api.Queue o) {
  buildCounterQueue++;
  if (buildCounterQueue < 3) {
    checkAppEngineRouting(o.appEngineRoutingOverride!);
    checkHttpTarget(o.httpTarget!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purgeTime!,
      unittest.equals('foo'),
    );
    checkRateLimits(o.rateLimits!);
    checkRetryConfig(o.retryConfig!);
    checkStackdriverLoggingConfig(o.stackdriverLoggingConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueue--;
}

core.int buildCounterRateLimits = 0;
api.RateLimits buildRateLimits() {
  final o = api.RateLimits();
  buildCounterRateLimits++;
  if (buildCounterRateLimits < 3) {
    o.maxBurstSize = 42;
    o.maxConcurrentDispatches = 42;
    o.maxDispatchesPerSecond = 42.0;
  }
  buildCounterRateLimits--;
  return o;
}

void checkRateLimits(api.RateLimits o) {
  buildCounterRateLimits++;
  if (buildCounterRateLimits < 3) {
    unittest.expect(
      o.maxBurstSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxConcurrentDispatches!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxDispatchesPerSecond!,
      unittest.equals(42.0),
    );
  }
  buildCounterRateLimits--;
}

core.int buildCounterResumeQueueRequest = 0;
api.ResumeQueueRequest buildResumeQueueRequest() {
  final o = api.ResumeQueueRequest();
  buildCounterResumeQueueRequest++;
  if (buildCounterResumeQueueRequest < 3) {}
  buildCounterResumeQueueRequest--;
  return o;
}

void checkResumeQueueRequest(api.ResumeQueueRequest o) {
  buildCounterResumeQueueRequest++;
  if (buildCounterResumeQueueRequest < 3) {}
  buildCounterResumeQueueRequest--;
}

core.int buildCounterRetryConfig = 0;
api.RetryConfig buildRetryConfig() {
  final o = api.RetryConfig();
  buildCounterRetryConfig++;
  if (buildCounterRetryConfig < 3) {
    o.maxAttempts = 42;
    o.maxBackoff = 'foo';
    o.maxDoublings = 42;
    o.maxRetryDuration = 'foo';
    o.minBackoff = 'foo';
  }
  buildCounterRetryConfig--;
  return o;
}

void checkRetryConfig(api.RetryConfig o) {
  buildCounterRetryConfig++;
  if (buildCounterRetryConfig < 3) {
    unittest.expect(
      o.maxAttempts!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxBackoff!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxDoublings!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxRetryDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minBackoff!,
      unittest.equals('foo'),
    );
  }
  buildCounterRetryConfig--;
}

core.int buildCounterRunTaskRequest = 0;
api.RunTaskRequest buildRunTaskRequest() {
  final o = api.RunTaskRequest();
  buildCounterRunTaskRequest++;
  if (buildCounterRunTaskRequest < 3) {
    o.responseView = 'foo';
  }
  buildCounterRunTaskRequest--;
  return o;
}

void checkRunTaskRequest(api.RunTaskRequest o) {
  buildCounterRunTaskRequest++;
  if (buildCounterRunTaskRequest < 3) {
    unittest.expect(
      o.responseView!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunTaskRequest--;
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

core.int buildCounterStackdriverLoggingConfig = 0;
api.StackdriverLoggingConfig buildStackdriverLoggingConfig() {
  final o = api.StackdriverLoggingConfig();
  buildCounterStackdriverLoggingConfig++;
  if (buildCounterStackdriverLoggingConfig < 3) {
    o.samplingRatio = 42.0;
  }
  buildCounterStackdriverLoggingConfig--;
  return o;
}

void checkStackdriverLoggingConfig(api.StackdriverLoggingConfig o) {
  buildCounterStackdriverLoggingConfig++;
  if (buildCounterStackdriverLoggingConfig < 3) {
    unittest.expect(
      o.samplingRatio!,
      unittest.equals(42.0),
    );
  }
  buildCounterStackdriverLoggingConfig--;
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed13() => [
      buildUnnamed12(),
      buildUnnamed12(),
    ];

void checkUnnamed13(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed12(o[0]);
  checkUnnamed12(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed13();
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
    checkUnnamed13(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterTask = 0;
api.Task buildTask() {
  final o = api.Task();
  buildCounterTask++;
  if (buildCounterTask < 3) {
    o.appEngineHttpRequest = buildAppEngineHttpRequest();
    o.createTime = 'foo';
    o.dispatchCount = 42;
    o.dispatchDeadline = 'foo';
    o.firstAttempt = buildAttempt();
    o.httpRequest = buildHttpRequest();
    o.lastAttempt = buildAttempt();
    o.name = 'foo';
    o.responseCount = 42;
    o.scheduleTime = 'foo';
    o.view = 'foo';
  }
  buildCounterTask--;
  return o;
}

void checkTask(api.Task o) {
  buildCounterTask++;
  if (buildCounterTask < 3) {
    checkAppEngineHttpRequest(o.appEngineHttpRequest!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dispatchCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.dispatchDeadline!,
      unittest.equals('foo'),
    );
    checkAttempt(o.firstAttempt!);
    checkHttpRequest(o.httpRequest!);
    checkAttempt(o.lastAttempt!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.scheduleTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
  }
  buildCounterTask--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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
    o.permissions = buildUnnamed14();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed14(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
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

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed15();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed15(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUriOverride = 0;
api.UriOverride buildUriOverride() {
  final o = api.UriOverride();
  buildCounterUriOverride++;
  if (buildCounterUriOverride < 3) {
    o.host = 'foo';
    o.pathOverride = buildPathOverride();
    o.port = 'foo';
    o.queryOverride = buildQueryOverride();
    o.scheme = 'foo';
    o.uriOverrideEnforceMode = 'foo';
  }
  buildCounterUriOverride--;
  return o;
}

void checkUriOverride(api.UriOverride o) {
  buildCounterUriOverride++;
  if (buildCounterUriOverride < 3) {
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    checkPathOverride(o.pathOverride!);
    unittest.expect(
      o.port!,
      unittest.equals('foo'),
    );
    checkQueryOverride(o.queryOverride!);
    unittest.expect(
      o.scheme!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uriOverrideEnforceMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterUriOverride--;
}

void main() {
  unittest.group('obj-schema-AppEngineHttpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineHttpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineHttpRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppEngineHttpRequest(od);
    });
  });

  unittest.group('obj-schema-AppEngineRouting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEngineRouting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppEngineRouting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppEngineRouting(od);
    });
  });

  unittest.group('obj-schema-Attempt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttempt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attempt.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttempt(od);
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

  unittest.group('obj-schema-BufferTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBufferTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BufferTaskRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBufferTaskRequest(od);
    });
  });

  unittest.group('obj-schema-BufferTaskResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBufferTaskResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BufferTaskResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBufferTaskResponse(od);
    });
  });

  unittest.group('obj-schema-CmekConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCmekConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CmekConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCmekConfig(od);
    });
  });

  unittest.group('obj-schema-CreateTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTaskRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateTaskRequest(od);
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

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Expr.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExpr(od);
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

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Header.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-HeaderOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeaderOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeaderOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHeaderOverride(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpBody.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-HttpRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpRequest(od);
    });
  });

  unittest.group('obj-schema-HttpTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpTarget.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpTarget(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListQueuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListQueuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListQueuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListQueuesResponse(od);
    });
  });

  unittest.group('obj-schema-ListTasksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListTasksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListTasksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListTasksResponse(od);
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

  unittest.group('obj-schema-OAuthToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOAuthToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OAuthToken.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOAuthToken(od);
    });
  });

  unittest.group('obj-schema-OidcToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOidcToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OidcToken.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOidcToken(od);
    });
  });

  unittest.group('obj-schema-PathOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPathOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PathOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPathOverride(od);
    });
  });

  unittest.group('obj-schema-PauseQueueRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPauseQueueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PauseQueueRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPauseQueueRequest(od);
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

  unittest.group('obj-schema-PurgeQueueRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPurgeQueueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PurgeQueueRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPurgeQueueRequest(od);
    });
  });

  unittest.group('obj-schema-QueryOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryOverride(od);
    });
  });

  unittest.group('obj-schema-Queue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Queue.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQueue(od);
    });
  });

  unittest.group('obj-schema-RateLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRateLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RateLimits.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRateLimits(od);
    });
  });

  unittest.group('obj-schema-ResumeQueueRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResumeQueueRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResumeQueueRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResumeQueueRequest(od);
    });
  });

  unittest.group('obj-schema-RetryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetryConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRetryConfig(od);
    });
  });

  unittest.group('obj-schema-RunTaskRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunTaskRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunTaskRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunTaskRequest(od);
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

  unittest.group('obj-schema-StackdriverLoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStackdriverLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StackdriverLoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStackdriverLoggingConfig(od);
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

  unittest.group('obj-schema-Task', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Task.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTask(od);
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

  unittest.group('obj-schema-UriOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUriOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UriOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUriOverride(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--getCmekConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildCmekConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getCmekConfig(arg_name, $fields: arg_$fields);
      checkCmekConfig(response as api.CmekConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });

    unittest.test('method--updateCmekConfig', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations;
      final arg_request = buildCmekConfig();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CmekConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCmekConfig(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildCmekConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateCmekConfig(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCmekConfig(response as api.CmekConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsQueuesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildQueue();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Queue.fromJson(json as core.Map<core.String, core.dynamic>);
        checkQueue(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildQueue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkQueue(response as api.Queue);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
          unittest.equals('v2/'),
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
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildQueue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkQueue(response as api.Queue);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
          unittest.equals('v2/'),
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
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildListQueuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListQueuesResponse(response as api.ListQueuesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildQueue();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Queue.fromJson(json as core.Map<core.String, core.dynamic>);
        checkQueue(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildQueue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkQueue(response as api.Queue);
    });

    unittest.test('method--pause', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildPauseQueueRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PauseQueueRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPauseQueueRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildQueue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.pause(arg_request, arg_name, $fields: arg_$fields);
      checkQueue(response as api.Queue);
    });

    unittest.test('method--purge', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildPurgeQueueRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PurgeQueueRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPurgeQueueRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildQueue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.purge(arg_request, arg_name, $fields: arg_$fields);
      checkQueue(response as api.Queue);
    });

    unittest.test('method--resume', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
      final arg_request = buildResumeQueueRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResumeQueueRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResumeQueueRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildQueue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.resume(arg_request, arg_name, $fields: arg_$fields);
      checkQueue(response as api.Queue);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
          unittest.equals('v2/'),
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
      final res = api.CloudTasksApi(mock).projects.locations.queues;
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
          unittest.equals('v2/'),
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

  unittest.group('resource-ProjectsLocationsQueuesTasksResource', () {
    unittest.test('method--buffer', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildBufferTaskRequest();
      final arg_queue = 'foo';
      final arg_taskId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BufferTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBufferTaskRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildBufferTaskResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.buffer(arg_request, arg_queue, arg_taskId,
          $fields: arg_$fields);
      checkBufferTaskResponse(response as api.BufferTaskResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildCreateTaskRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTaskRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildTask());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkTask(response as api.Task);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
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
          unittest.equals('v2/'),
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
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_name = 'foo';
      final arg_responseView = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['responseView']!.first,
          unittest.equals(arg_responseView),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTask());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          responseView: arg_responseView, $fields: arg_$fields);
      checkTask(response as api.Task);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_responseView = 'foo';
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
          unittest.equals('v2/'),
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
          queryMap['responseView']!.first,
          unittest.equals(arg_responseView),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListTasksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          responseView: arg_responseView,
          $fields: arg_$fields);
      checkListTasksResponse(response as api.ListTasksResponse);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudTasksApi(mock).projects.locations.queues.tasks;
      final arg_request = buildRunTaskRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunTaskRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRunTaskRequest(obj);

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
          unittest.equals('v2/'),
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
        final resp = convert.json.encode(buildTask());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkTask(response as api.Task);
    });
  });
}
