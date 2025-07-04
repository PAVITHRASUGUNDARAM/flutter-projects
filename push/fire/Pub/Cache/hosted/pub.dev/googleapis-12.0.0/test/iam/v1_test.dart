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

import 'package:googleapis/iam/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.ServiceConfig> buildUnnamed0() => [
      buildServiceConfig(),
      buildServiceConfig(),
    ];

void checkUnnamed0(core.List<api.ServiceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceConfig(o[0]);
  checkServiceConfig(o[1]);
}

core.int buildCounterAccessRestrictions = 0;
api.AccessRestrictions buildAccessRestrictions() {
  final o = api.AccessRestrictions();
  buildCounterAccessRestrictions++;
  if (buildCounterAccessRestrictions < 3) {
    o.allowedServices = buildUnnamed0();
    o.disableProgrammaticSignin = true;
  }
  buildCounterAccessRestrictions--;
  return o;
}

void checkAccessRestrictions(api.AccessRestrictions o) {
  buildCounterAccessRestrictions++;
  if (buildCounterAccessRestrictions < 3) {
    checkUnnamed0(o.allowedServices!);
    unittest.expect(o.disableProgrammaticSignin!, unittest.isTrue);
  }
  buildCounterAccessRestrictions--;
}

core.List<api.AuditLogConfig> buildUnnamed1() => [
      buildAuditLogConfig(),
      buildAuditLogConfig(),
    ];

void checkUnnamed1(core.List<api.AuditLogConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditLogConfig(o[0]);
  checkAuditLogConfig(o[1]);
}

core.int buildCounterAuditConfig = 0;
api.AuditConfig buildAuditConfig() {
  final o = api.AuditConfig();
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    o.auditLogConfigs = buildUnnamed1();
    o.service = 'foo';
  }
  buildCounterAuditConfig--;
  return o;
}

void checkAuditConfig(api.AuditConfig o) {
  buildCounterAuditConfig++;
  if (buildCounterAuditConfig < 3) {
    checkUnnamed1(o.auditLogConfigs!);
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditConfig--;
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

core.int buildCounterAuditLogConfig = 0;
api.AuditLogConfig buildAuditLogConfig() {
  final o = api.AuditLogConfig();
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    o.exemptedMembers = buildUnnamed2();
    o.logType = 'foo';
  }
  buildCounterAuditLogConfig--;
  return o;
}

void checkAuditLogConfig(api.AuditLogConfig o) {
  buildCounterAuditLogConfig++;
  if (buildCounterAuditLogConfig < 3) {
    checkUnnamed2(o.exemptedMembers!);
    unittest.expect(
      o.logType!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditLogConfig--;
}

core.int buildCounterAuditableService = 0;
api.AuditableService buildAuditableService() {
  final o = api.AuditableService();
  buildCounterAuditableService++;
  if (buildCounterAuditableService < 3) {
    o.name = 'foo';
  }
  buildCounterAuditableService--;
  return o;
}

void checkAuditableService(api.AuditableService o) {
  buildCounterAuditableService++;
  if (buildCounterAuditableService < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuditableService--;
}

core.int buildCounterAws = 0;
api.Aws buildAws() {
  final o = api.Aws();
  buildCounterAws++;
  if (buildCounterAws < 3) {
    o.accountId = 'foo';
  }
  buildCounterAws--;
  return o;
}

void checkAws(api.Aws o) {
  buildCounterAws++;
  if (buildCounterAws < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAws--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed3();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed3(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterCreateRoleRequest = 0;
api.CreateRoleRequest buildCreateRoleRequest() {
  final o = api.CreateRoleRequest();
  buildCounterCreateRoleRequest++;
  if (buildCounterCreateRoleRequest < 3) {
    o.role = buildRole();
    o.roleId = 'foo';
  }
  buildCounterCreateRoleRequest--;
  return o;
}

void checkCreateRoleRequest(api.CreateRoleRequest o) {
  buildCounterCreateRoleRequest++;
  if (buildCounterCreateRoleRequest < 3) {
    checkRole(o.role!);
    unittest.expect(
      o.roleId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateRoleRequest--;
}

core.int buildCounterCreateServiceAccountKeyRequest = 0;
api.CreateServiceAccountKeyRequest buildCreateServiceAccountKeyRequest() {
  final o = api.CreateServiceAccountKeyRequest();
  buildCounterCreateServiceAccountKeyRequest++;
  if (buildCounterCreateServiceAccountKeyRequest < 3) {
    o.keyAlgorithm = 'foo';
    o.privateKeyType = 'foo';
  }
  buildCounterCreateServiceAccountKeyRequest--;
  return o;
}

void checkCreateServiceAccountKeyRequest(api.CreateServiceAccountKeyRequest o) {
  buildCounterCreateServiceAccountKeyRequest++;
  if (buildCounterCreateServiceAccountKeyRequest < 3) {
    unittest.expect(
      o.keyAlgorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateKeyType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateServiceAccountKeyRequest--;
}

core.int buildCounterCreateServiceAccountRequest = 0;
api.CreateServiceAccountRequest buildCreateServiceAccountRequest() {
  final o = api.CreateServiceAccountRequest();
  buildCounterCreateServiceAccountRequest++;
  if (buildCounterCreateServiceAccountRequest < 3) {
    o.accountId = 'foo';
    o.serviceAccount = buildServiceAccount();
  }
  buildCounterCreateServiceAccountRequest--;
  return o;
}

void checkCreateServiceAccountRequest(api.CreateServiceAccountRequest o) {
  buildCounterCreateServiceAccountRequest++;
  if (buildCounterCreateServiceAccountRequest < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    checkServiceAccount(o.serviceAccount!);
  }
  buildCounterCreateServiceAccountRequest--;
}

core.int buildCounterDisableServiceAccountKeyRequest = 0;
api.DisableServiceAccountKeyRequest buildDisableServiceAccountKeyRequest() {
  final o = api.DisableServiceAccountKeyRequest();
  buildCounterDisableServiceAccountKeyRequest++;
  if (buildCounterDisableServiceAccountKeyRequest < 3) {}
  buildCounterDisableServiceAccountKeyRequest--;
  return o;
}

void checkDisableServiceAccountKeyRequest(
    api.DisableServiceAccountKeyRequest o) {
  buildCounterDisableServiceAccountKeyRequest++;
  if (buildCounterDisableServiceAccountKeyRequest < 3) {}
  buildCounterDisableServiceAccountKeyRequest--;
}

core.int buildCounterDisableServiceAccountRequest = 0;
api.DisableServiceAccountRequest buildDisableServiceAccountRequest() {
  final o = api.DisableServiceAccountRequest();
  buildCounterDisableServiceAccountRequest++;
  if (buildCounterDisableServiceAccountRequest < 3) {}
  buildCounterDisableServiceAccountRequest--;
  return o;
}

void checkDisableServiceAccountRequest(api.DisableServiceAccountRequest o) {
  buildCounterDisableServiceAccountRequest++;
  if (buildCounterDisableServiceAccountRequest < 3) {}
  buildCounterDisableServiceAccountRequest--;
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

core.int buildCounterEnableServiceAccountKeyRequest = 0;
api.EnableServiceAccountKeyRequest buildEnableServiceAccountKeyRequest() {
  final o = api.EnableServiceAccountKeyRequest();
  buildCounterEnableServiceAccountKeyRequest++;
  if (buildCounterEnableServiceAccountKeyRequest < 3) {}
  buildCounterEnableServiceAccountKeyRequest--;
  return o;
}

void checkEnableServiceAccountKeyRequest(api.EnableServiceAccountKeyRequest o) {
  buildCounterEnableServiceAccountKeyRequest++;
  if (buildCounterEnableServiceAccountKeyRequest < 3) {}
  buildCounterEnableServiceAccountKeyRequest--;
}

core.int buildCounterEnableServiceAccountRequest = 0;
api.EnableServiceAccountRequest buildEnableServiceAccountRequest() {
  final o = api.EnableServiceAccountRequest();
  buildCounterEnableServiceAccountRequest++;
  if (buildCounterEnableServiceAccountRequest < 3) {}
  buildCounterEnableServiceAccountRequest--;
  return o;
}

void checkEnableServiceAccountRequest(api.EnableServiceAccountRequest o) {
  buildCounterEnableServiceAccountRequest++;
  if (buildCounterEnableServiceAccountRequest < 3) {}
  buildCounterEnableServiceAccountRequest--;
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

core.int buildCounterGoogleIamAdminV1WorkforcePoolProviderOidc = 0;
api.GoogleIamAdminV1WorkforcePoolProviderOidc
    buildGoogleIamAdminV1WorkforcePoolProviderOidc() {
  final o = api.GoogleIamAdminV1WorkforcePoolProviderOidc();
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidc++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderOidc < 3) {
    o.clientId = 'foo';
    o.clientSecret =
        buildGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret();
    o.issuerUri = 'foo';
    o.jwksJson = 'foo';
    o.webSsoConfig =
        buildGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig();
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidc--;
  return o;
}

void checkGoogleIamAdminV1WorkforcePoolProviderOidc(
    api.GoogleIamAdminV1WorkforcePoolProviderOidc o) {
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidc++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderOidc < 3) {
    unittest.expect(
      o.clientId!,
      unittest.equals('foo'),
    );
    checkGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret(o.clientSecret!);
    unittest.expect(
      o.issuerUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jwksJson!,
      unittest.equals('foo'),
    );
    checkGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig(o.webSsoConfig!);
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidc--;
}

core.int buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret = 0;
api.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret
    buildGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret() {
  final o = api.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret();
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret < 3) {
    o.value = buildGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue();
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret--;
  return o;
}

void checkGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret(
    api.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret o) {
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret < 3) {
    checkGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue(o.value!);
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret--;
}

core.int
    buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue = 0;
api.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue
    buildGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue() {
  final o = api.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue();
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue <
      3) {
    o.plainText = 'foo';
    o.thumbprint = 'foo';
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue--;
  return o;
}

void checkGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue(
    api.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue o) {
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue <
      3) {
    unittest.expect(
      o.plainText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbprint!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue--;
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

core.int buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig = 0;
api.GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig
    buildGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig() {
  final o = api.GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig();
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig < 3) {
    o.additionalScopes = buildUnnamed4();
    o.assertionClaimsBehavior = 'foo';
    o.responseType = 'foo';
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig--;
  return o;
}

void checkGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig(
    api.GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig o) {
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig < 3) {
    checkUnnamed4(o.additionalScopes!);
    unittest.expect(
      o.assertionClaimsBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig--;
}

core.int buildCounterGoogleIamAdminV1WorkforcePoolProviderSaml = 0;
api.GoogleIamAdminV1WorkforcePoolProviderSaml
    buildGoogleIamAdminV1WorkforcePoolProviderSaml() {
  final o = api.GoogleIamAdminV1WorkforcePoolProviderSaml();
  buildCounterGoogleIamAdminV1WorkforcePoolProviderSaml++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderSaml < 3) {
    o.idpMetadataXml = 'foo';
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderSaml--;
  return o;
}

void checkGoogleIamAdminV1WorkforcePoolProviderSaml(
    api.GoogleIamAdminV1WorkforcePoolProviderSaml o) {
  buildCounterGoogleIamAdminV1WorkforcePoolProviderSaml++;
  if (buildCounterGoogleIamAdminV1WorkforcePoolProviderSaml < 3) {
    unittest.expect(
      o.idpMetadataXml!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleIamAdminV1WorkforcePoolProviderSaml--;
}

core.int buildCounterKeyData = 0;
api.KeyData buildKeyData() {
  final o = api.KeyData();
  buildCounterKeyData++;
  if (buildCounterKeyData < 3) {
    o.format = 'foo';
    o.key = 'foo';
    o.keySpec = 'foo';
    o.notAfterTime = 'foo';
    o.notBeforeTime = 'foo';
  }
  buildCounterKeyData--;
  return o;
}

void checkKeyData(api.KeyData o) {
  buildCounterKeyData++;
  if (buildCounterKeyData < 3) {
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keySpec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notAfterTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.notBeforeTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyData--;
}

core.int buildCounterLintPolicyRequest = 0;
api.LintPolicyRequest buildLintPolicyRequest() {
  final o = api.LintPolicyRequest();
  buildCounterLintPolicyRequest++;
  if (buildCounterLintPolicyRequest < 3) {
    o.condition = buildExpr();
    o.fullResourceName = 'foo';
  }
  buildCounterLintPolicyRequest--;
  return o;
}

void checkLintPolicyRequest(api.LintPolicyRequest o) {
  buildCounterLintPolicyRequest++;
  if (buildCounterLintPolicyRequest < 3) {
    checkExpr(o.condition!);
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterLintPolicyRequest--;
}

core.List<api.LintResult> buildUnnamed5() => [
      buildLintResult(),
      buildLintResult(),
    ];

void checkUnnamed5(core.List<api.LintResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLintResult(o[0]);
  checkLintResult(o[1]);
}

core.int buildCounterLintPolicyResponse = 0;
api.LintPolicyResponse buildLintPolicyResponse() {
  final o = api.LintPolicyResponse();
  buildCounterLintPolicyResponse++;
  if (buildCounterLintPolicyResponse < 3) {
    o.lintResults = buildUnnamed5();
  }
  buildCounterLintPolicyResponse--;
  return o;
}

void checkLintPolicyResponse(api.LintPolicyResponse o) {
  buildCounterLintPolicyResponse++;
  if (buildCounterLintPolicyResponse < 3) {
    checkUnnamed5(o.lintResults!);
  }
  buildCounterLintPolicyResponse--;
}

core.int buildCounterLintResult = 0;
api.LintResult buildLintResult() {
  final o = api.LintResult();
  buildCounterLintResult++;
  if (buildCounterLintResult < 3) {
    o.debugMessage = 'foo';
    o.fieldName = 'foo';
    o.level = 'foo';
    o.locationOffset = 42;
    o.severity = 'foo';
    o.validationUnitName = 'foo';
  }
  buildCounterLintResult--;
  return o;
}

void checkLintResult(api.LintResult o) {
  buildCounterLintResult++;
  if (buildCounterLintResult < 3) {
    unittest.expect(
      o.debugMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.level!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationUnitName!,
      unittest.equals('foo'),
    );
  }
  buildCounterLintResult--;
}

core.List<api.Role> buildUnnamed6() => [
      buildRole(),
      buildRole(),
    ];

void checkUnnamed6(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0]);
  checkRole(o[1]);
}

core.int buildCounterListRolesResponse = 0;
api.ListRolesResponse buildListRolesResponse() {
  final o = api.ListRolesResponse();
  buildCounterListRolesResponse++;
  if (buildCounterListRolesResponse < 3) {
    o.nextPageToken = 'foo';
    o.roles = buildUnnamed6();
  }
  buildCounterListRolesResponse--;
  return o;
}

void checkListRolesResponse(api.ListRolesResponse o) {
  buildCounterListRolesResponse++;
  if (buildCounterListRolesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.roles!);
  }
  buildCounterListRolesResponse--;
}

core.List<api.ServiceAccountKey> buildUnnamed7() => [
      buildServiceAccountKey(),
      buildServiceAccountKey(),
    ];

void checkUnnamed7(core.List<api.ServiceAccountKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccountKey(o[0]);
  checkServiceAccountKey(o[1]);
}

core.int buildCounterListServiceAccountKeysResponse = 0;
api.ListServiceAccountKeysResponse buildListServiceAccountKeysResponse() {
  final o = api.ListServiceAccountKeysResponse();
  buildCounterListServiceAccountKeysResponse++;
  if (buildCounterListServiceAccountKeysResponse < 3) {
    o.keys = buildUnnamed7();
  }
  buildCounterListServiceAccountKeysResponse--;
  return o;
}

void checkListServiceAccountKeysResponse(api.ListServiceAccountKeysResponse o) {
  buildCounterListServiceAccountKeysResponse++;
  if (buildCounterListServiceAccountKeysResponse < 3) {
    checkUnnamed7(o.keys!);
  }
  buildCounterListServiceAccountKeysResponse--;
}

core.List<api.ServiceAccount> buildUnnamed8() => [
      buildServiceAccount(),
      buildServiceAccount(),
    ];

void checkUnnamed8(core.List<api.ServiceAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceAccount(o[0]);
  checkServiceAccount(o[1]);
}

core.int buildCounterListServiceAccountsResponse = 0;
api.ListServiceAccountsResponse buildListServiceAccountsResponse() {
  final o = api.ListServiceAccountsResponse();
  buildCounterListServiceAccountsResponse++;
  if (buildCounterListServiceAccountsResponse < 3) {
    o.accounts = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterListServiceAccountsResponse--;
  return o;
}

void checkListServiceAccountsResponse(api.ListServiceAccountsResponse o) {
  buildCounterListServiceAccountsResponse++;
  if (buildCounterListServiceAccountsResponse < 3) {
    checkUnnamed8(o.accounts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListServiceAccountsResponse--;
}

core.List<api.WorkforcePoolProviderKey> buildUnnamed9() => [
      buildWorkforcePoolProviderKey(),
      buildWorkforcePoolProviderKey(),
    ];

void checkUnnamed9(core.List<api.WorkforcePoolProviderKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkforcePoolProviderKey(o[0]);
  checkWorkforcePoolProviderKey(o[1]);
}

core.int buildCounterListWorkforcePoolProviderKeysResponse = 0;
api.ListWorkforcePoolProviderKeysResponse
    buildListWorkforcePoolProviderKeysResponse() {
  final o = api.ListWorkforcePoolProviderKeysResponse();
  buildCounterListWorkforcePoolProviderKeysResponse++;
  if (buildCounterListWorkforcePoolProviderKeysResponse < 3) {
    o.nextPageToken = 'foo';
    o.workforcePoolProviderKeys = buildUnnamed9();
  }
  buildCounterListWorkforcePoolProviderKeysResponse--;
  return o;
}

void checkListWorkforcePoolProviderKeysResponse(
    api.ListWorkforcePoolProviderKeysResponse o) {
  buildCounterListWorkforcePoolProviderKeysResponse++;
  if (buildCounterListWorkforcePoolProviderKeysResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.workforcePoolProviderKeys!);
  }
  buildCounterListWorkforcePoolProviderKeysResponse--;
}

core.List<api.WorkforcePoolProvider> buildUnnamed10() => [
      buildWorkforcePoolProvider(),
      buildWorkforcePoolProvider(),
    ];

void checkUnnamed10(core.List<api.WorkforcePoolProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkforcePoolProvider(o[0]);
  checkWorkforcePoolProvider(o[1]);
}

core.int buildCounterListWorkforcePoolProvidersResponse = 0;
api.ListWorkforcePoolProvidersResponse
    buildListWorkforcePoolProvidersResponse() {
  final o = api.ListWorkforcePoolProvidersResponse();
  buildCounterListWorkforcePoolProvidersResponse++;
  if (buildCounterListWorkforcePoolProvidersResponse < 3) {
    o.nextPageToken = 'foo';
    o.workforcePoolProviders = buildUnnamed10();
  }
  buildCounterListWorkforcePoolProvidersResponse--;
  return o;
}

void checkListWorkforcePoolProvidersResponse(
    api.ListWorkforcePoolProvidersResponse o) {
  buildCounterListWorkforcePoolProvidersResponse++;
  if (buildCounterListWorkforcePoolProvidersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.workforcePoolProviders!);
  }
  buildCounterListWorkforcePoolProvidersResponse--;
}

core.List<api.WorkforcePool> buildUnnamed11() => [
      buildWorkforcePool(),
      buildWorkforcePool(),
    ];

void checkUnnamed11(core.List<api.WorkforcePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkforcePool(o[0]);
  checkWorkforcePool(o[1]);
}

core.int buildCounterListWorkforcePoolsResponse = 0;
api.ListWorkforcePoolsResponse buildListWorkforcePoolsResponse() {
  final o = api.ListWorkforcePoolsResponse();
  buildCounterListWorkforcePoolsResponse++;
  if (buildCounterListWorkforcePoolsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workforcePools = buildUnnamed11();
  }
  buildCounterListWorkforcePoolsResponse--;
  return o;
}

void checkListWorkforcePoolsResponse(api.ListWorkforcePoolsResponse o) {
  buildCounterListWorkforcePoolsResponse++;
  if (buildCounterListWorkforcePoolsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.workforcePools!);
  }
  buildCounterListWorkforcePoolsResponse--;
}

core.List<api.WorkloadIdentityPoolProviderKey> buildUnnamed12() => [
      buildWorkloadIdentityPoolProviderKey(),
      buildWorkloadIdentityPoolProviderKey(),
    ];

void checkUnnamed12(core.List<api.WorkloadIdentityPoolProviderKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkloadIdentityPoolProviderKey(o[0]);
  checkWorkloadIdentityPoolProviderKey(o[1]);
}

core.int buildCounterListWorkloadIdentityPoolProviderKeysResponse = 0;
api.ListWorkloadIdentityPoolProviderKeysResponse
    buildListWorkloadIdentityPoolProviderKeysResponse() {
  final o = api.ListWorkloadIdentityPoolProviderKeysResponse();
  buildCounterListWorkloadIdentityPoolProviderKeysResponse++;
  if (buildCounterListWorkloadIdentityPoolProviderKeysResponse < 3) {
    o.nextPageToken = 'foo';
    o.workloadIdentityPoolProviderKeys = buildUnnamed12();
  }
  buildCounterListWorkloadIdentityPoolProviderKeysResponse--;
  return o;
}

void checkListWorkloadIdentityPoolProviderKeysResponse(
    api.ListWorkloadIdentityPoolProviderKeysResponse o) {
  buildCounterListWorkloadIdentityPoolProviderKeysResponse++;
  if (buildCounterListWorkloadIdentityPoolProviderKeysResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.workloadIdentityPoolProviderKeys!);
  }
  buildCounterListWorkloadIdentityPoolProviderKeysResponse--;
}

core.List<api.WorkloadIdentityPoolProvider> buildUnnamed13() => [
      buildWorkloadIdentityPoolProvider(),
      buildWorkloadIdentityPoolProvider(),
    ];

void checkUnnamed13(core.List<api.WorkloadIdentityPoolProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkloadIdentityPoolProvider(o[0]);
  checkWorkloadIdentityPoolProvider(o[1]);
}

core.int buildCounterListWorkloadIdentityPoolProvidersResponse = 0;
api.ListWorkloadIdentityPoolProvidersResponse
    buildListWorkloadIdentityPoolProvidersResponse() {
  final o = api.ListWorkloadIdentityPoolProvidersResponse();
  buildCounterListWorkloadIdentityPoolProvidersResponse++;
  if (buildCounterListWorkloadIdentityPoolProvidersResponse < 3) {
    o.nextPageToken = 'foo';
    o.workloadIdentityPoolProviders = buildUnnamed13();
  }
  buildCounterListWorkloadIdentityPoolProvidersResponse--;
  return o;
}

void checkListWorkloadIdentityPoolProvidersResponse(
    api.ListWorkloadIdentityPoolProvidersResponse o) {
  buildCounterListWorkloadIdentityPoolProvidersResponse++;
  if (buildCounterListWorkloadIdentityPoolProvidersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.workloadIdentityPoolProviders!);
  }
  buildCounterListWorkloadIdentityPoolProvidersResponse--;
}

core.List<api.WorkloadIdentityPool> buildUnnamed14() => [
      buildWorkloadIdentityPool(),
      buildWorkloadIdentityPool(),
    ];

void checkUnnamed14(core.List<api.WorkloadIdentityPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkloadIdentityPool(o[0]);
  checkWorkloadIdentityPool(o[1]);
}

core.int buildCounterListWorkloadIdentityPoolsResponse = 0;
api.ListWorkloadIdentityPoolsResponse buildListWorkloadIdentityPoolsResponse() {
  final o = api.ListWorkloadIdentityPoolsResponse();
  buildCounterListWorkloadIdentityPoolsResponse++;
  if (buildCounterListWorkloadIdentityPoolsResponse < 3) {
    o.nextPageToken = 'foo';
    o.workloadIdentityPools = buildUnnamed14();
  }
  buildCounterListWorkloadIdentityPoolsResponse--;
  return o;
}

void checkListWorkloadIdentityPoolsResponse(
    api.ListWorkloadIdentityPoolsResponse o) {
  buildCounterListWorkloadIdentityPoolsResponse++;
  if (buildCounterListWorkloadIdentityPoolsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.workloadIdentityPools!);
  }
  buildCounterListWorkloadIdentityPoolsResponse--;
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

core.int buildCounterOidc = 0;
api.Oidc buildOidc() {
  final o = api.Oidc();
  buildCounterOidc++;
  if (buildCounterOidc < 3) {
    o.allowedAudiences = buildUnnamed15();
    o.issuerUri = 'foo';
    o.jwksJson = 'foo';
  }
  buildCounterOidc--;
  return o;
}

void checkOidc(api.Oidc o) {
  buildCounterOidc++;
  if (buildCounterOidc < 3) {
    checkUnnamed15(o.allowedAudiences!);
    unittest.expect(
      o.issuerUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jwksJson!,
      unittest.equals('foo'),
    );
  }
  buildCounterOidc--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed16();
    o.name = 'foo';
    o.response = buildUnnamed17();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed16(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPatchServiceAccountRequest = 0;
api.PatchServiceAccountRequest buildPatchServiceAccountRequest() {
  final o = api.PatchServiceAccountRequest();
  buildCounterPatchServiceAccountRequest++;
  if (buildCounterPatchServiceAccountRequest < 3) {
    o.serviceAccount = buildServiceAccount();
    o.updateMask = 'foo';
  }
  buildCounterPatchServiceAccountRequest--;
  return o;
}

void checkPatchServiceAccountRequest(api.PatchServiceAccountRequest o) {
  buildCounterPatchServiceAccountRequest++;
  if (buildCounterPatchServiceAccountRequest < 3) {
    checkServiceAccount(o.serviceAccount!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterPatchServiceAccountRequest--;
}

core.int buildCounterPermission = 0;
api.Permission buildPermission() {
  final o = api.Permission();
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    o.apiDisabled = true;
    o.customRolesSupportLevel = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.onlyInPredefinedRoles = true;
    o.primaryPermission = 'foo';
    o.stage = 'foo';
    o.title = 'foo';
  }
  buildCounterPermission--;
  return o;
}

void checkPermission(api.Permission o) {
  buildCounterPermission++;
  if (buildCounterPermission < 3) {
    unittest.expect(o.apiDisabled!, unittest.isTrue);
    unittest.expect(
      o.customRolesSupportLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.onlyInPredefinedRoles!, unittest.isTrue);
    unittest.expect(
      o.primaryPermission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermission--;
}

core.List<api.AuditConfig> buildUnnamed18() => [
      buildAuditConfig(),
      buildAuditConfig(),
    ];

void checkUnnamed18(core.List<api.AuditConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditConfig(o[0]);
  checkAuditConfig(o[1]);
}

core.List<api.Binding> buildUnnamed19() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed19(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.auditConfigs = buildUnnamed18();
    o.bindings = buildUnnamed19();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed18(o.auditConfigs!);
    checkUnnamed19(o.bindings!);
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

core.int buildCounterQueryAuditableServicesRequest = 0;
api.QueryAuditableServicesRequest buildQueryAuditableServicesRequest() {
  final o = api.QueryAuditableServicesRequest();
  buildCounterQueryAuditableServicesRequest++;
  if (buildCounterQueryAuditableServicesRequest < 3) {
    o.fullResourceName = 'foo';
  }
  buildCounterQueryAuditableServicesRequest--;
  return o;
}

void checkQueryAuditableServicesRequest(api.QueryAuditableServicesRequest o) {
  buildCounterQueryAuditableServicesRequest++;
  if (buildCounterQueryAuditableServicesRequest < 3) {
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryAuditableServicesRequest--;
}

core.List<api.AuditableService> buildUnnamed20() => [
      buildAuditableService(),
      buildAuditableService(),
    ];

void checkUnnamed20(core.List<api.AuditableService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuditableService(o[0]);
  checkAuditableService(o[1]);
}

core.int buildCounterQueryAuditableServicesResponse = 0;
api.QueryAuditableServicesResponse buildQueryAuditableServicesResponse() {
  final o = api.QueryAuditableServicesResponse();
  buildCounterQueryAuditableServicesResponse++;
  if (buildCounterQueryAuditableServicesResponse < 3) {
    o.services = buildUnnamed20();
  }
  buildCounterQueryAuditableServicesResponse--;
  return o;
}

void checkQueryAuditableServicesResponse(api.QueryAuditableServicesResponse o) {
  buildCounterQueryAuditableServicesResponse++;
  if (buildCounterQueryAuditableServicesResponse < 3) {
    checkUnnamed20(o.services!);
  }
  buildCounterQueryAuditableServicesResponse--;
}

core.int buildCounterQueryGrantableRolesRequest = 0;
api.QueryGrantableRolesRequest buildQueryGrantableRolesRequest() {
  final o = api.QueryGrantableRolesRequest();
  buildCounterQueryGrantableRolesRequest++;
  if (buildCounterQueryGrantableRolesRequest < 3) {
    o.fullResourceName = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.view = 'foo';
  }
  buildCounterQueryGrantableRolesRequest--;
  return o;
}

void checkQueryGrantableRolesRequest(api.QueryGrantableRolesRequest o) {
  buildCounterQueryGrantableRolesRequest++;
  if (buildCounterQueryGrantableRolesRequest < 3) {
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.view!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryGrantableRolesRequest--;
}

core.List<api.Role> buildUnnamed21() => [
      buildRole(),
      buildRole(),
    ];

void checkUnnamed21(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0]);
  checkRole(o[1]);
}

core.int buildCounterQueryGrantableRolesResponse = 0;
api.QueryGrantableRolesResponse buildQueryGrantableRolesResponse() {
  final o = api.QueryGrantableRolesResponse();
  buildCounterQueryGrantableRolesResponse++;
  if (buildCounterQueryGrantableRolesResponse < 3) {
    o.nextPageToken = 'foo';
    o.roles = buildUnnamed21();
  }
  buildCounterQueryGrantableRolesResponse--;
  return o;
}

void checkQueryGrantableRolesResponse(api.QueryGrantableRolesResponse o) {
  buildCounterQueryGrantableRolesResponse++;
  if (buildCounterQueryGrantableRolesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.roles!);
  }
  buildCounterQueryGrantableRolesResponse--;
}

core.int buildCounterQueryTestablePermissionsRequest = 0;
api.QueryTestablePermissionsRequest buildQueryTestablePermissionsRequest() {
  final o = api.QueryTestablePermissionsRequest();
  buildCounterQueryTestablePermissionsRequest++;
  if (buildCounterQueryTestablePermissionsRequest < 3) {
    o.fullResourceName = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterQueryTestablePermissionsRequest--;
  return o;
}

void checkQueryTestablePermissionsRequest(
    api.QueryTestablePermissionsRequest o) {
  buildCounterQueryTestablePermissionsRequest++;
  if (buildCounterQueryTestablePermissionsRequest < 3) {
    unittest.expect(
      o.fullResourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterQueryTestablePermissionsRequest--;
}

core.List<api.Permission> buildUnnamed22() => [
      buildPermission(),
      buildPermission(),
    ];

void checkUnnamed22(core.List<api.Permission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermission(o[0]);
  checkPermission(o[1]);
}

core.int buildCounterQueryTestablePermissionsResponse = 0;
api.QueryTestablePermissionsResponse buildQueryTestablePermissionsResponse() {
  final o = api.QueryTestablePermissionsResponse();
  buildCounterQueryTestablePermissionsResponse++;
  if (buildCounterQueryTestablePermissionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.permissions = buildUnnamed22();
  }
  buildCounterQueryTestablePermissionsResponse--;
  return o;
}

void checkQueryTestablePermissionsResponse(
    api.QueryTestablePermissionsResponse o) {
  buildCounterQueryTestablePermissionsResponse++;
  if (buildCounterQueryTestablePermissionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.permissions!);
  }
  buildCounterQueryTestablePermissionsResponse--;
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

core.int buildCounterRole = 0;
api.Role buildRole() {
  final o = api.Role();
  buildCounterRole++;
  if (buildCounterRole < 3) {
    o.deleted = true;
    o.description = 'foo';
    o.etag = 'foo';
    o.includedPermissions = buildUnnamed23();
    o.name = 'foo';
    o.stage = 'foo';
    o.title = 'foo';
  }
  buildCounterRole--;
  return o;
}

void checkRole(api.Role o) {
  buildCounterRole++;
  if (buildCounterRole < 3) {
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.includedPermissions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterRole--;
}

core.int buildCounterSaml = 0;
api.Saml buildSaml() {
  final o = api.Saml();
  buildCounterSaml++;
  if (buildCounterSaml < 3) {
    o.idpMetadataXml = 'foo';
  }
  buildCounterSaml--;
  return o;
}

void checkSaml(api.Saml o) {
  buildCounterSaml++;
  if (buildCounterSaml < 3) {
    unittest.expect(
      o.idpMetadataXml!,
      unittest.equals('foo'),
    );
  }
  buildCounterSaml--;
}

core.int buildCounterServiceAccount = 0;
api.ServiceAccount buildServiceAccount() {
  final o = api.ServiceAccount();
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    o.description = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.email = 'foo';
    o.etag = 'foo';
    o.name = 'foo';
    o.oauth2ClientId = 'foo';
    o.projectId = 'foo';
    o.uniqueId = 'foo';
  }
  buildCounterServiceAccount--;
  return o;
}

void checkServiceAccount(api.ServiceAccount o) {
  buildCounterServiceAccount++;
  if (buildCounterServiceAccount < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.oauth2ClientId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uniqueId!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceAccount--;
}

core.int buildCounterServiceAccountKey = 0;
api.ServiceAccountKey buildServiceAccountKey() {
  final o = api.ServiceAccountKey();
  buildCounterServiceAccountKey++;
  if (buildCounterServiceAccountKey < 3) {
    o.disabled = true;
    o.keyAlgorithm = 'foo';
    o.keyOrigin = 'foo';
    o.keyType = 'foo';
    o.name = 'foo';
    o.privateKeyData = 'foo';
    o.privateKeyType = 'foo';
    o.publicKeyData = 'foo';
    o.validAfterTime = 'foo';
    o.validBeforeTime = 'foo';
  }
  buildCounterServiceAccountKey--;
  return o;
}

void checkServiceAccountKey(api.ServiceAccountKey o) {
  buildCounterServiceAccountKey++;
  if (buildCounterServiceAccountKey < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.keyAlgorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyOrigin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.keyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateKeyData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateKeyType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicKeyData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validAfterTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validBeforeTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceAccountKey--;
}

core.int buildCounterServiceConfig = 0;
api.ServiceConfig buildServiceConfig() {
  final o = api.ServiceConfig();
  buildCounterServiceConfig++;
  if (buildCounterServiceConfig < 3) {
    o.domain = 'foo';
  }
  buildCounterServiceConfig--;
  return o;
}

void checkServiceConfig(api.ServiceConfig o) {
  buildCounterServiceConfig++;
  if (buildCounterServiceConfig < 3) {
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceConfig--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
    o.updateMask = 'foo';
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterSignBlobRequest = 0;
api.SignBlobRequest buildSignBlobRequest() {
  final o = api.SignBlobRequest();
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    o.bytesToSign = 'foo';
  }
  buildCounterSignBlobRequest--;
  return o;
}

void checkSignBlobRequest(api.SignBlobRequest o) {
  buildCounterSignBlobRequest++;
  if (buildCounterSignBlobRequest < 3) {
    unittest.expect(
      o.bytesToSign!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignBlobRequest--;
}

core.int buildCounterSignBlobResponse = 0;
api.SignBlobResponse buildSignBlobResponse() {
  final o = api.SignBlobResponse();
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    o.keyId = 'foo';
    o.signature = 'foo';
  }
  buildCounterSignBlobResponse--;
  return o;
}

void checkSignBlobResponse(api.SignBlobResponse o) {
  buildCounterSignBlobResponse++;
  if (buildCounterSignBlobResponse < 3) {
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signature!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignBlobResponse--;
}

core.int buildCounterSignJwtRequest = 0;
api.SignJwtRequest buildSignJwtRequest() {
  final o = api.SignJwtRequest();
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    o.payload = 'foo';
  }
  buildCounterSignJwtRequest--;
  return o;
}

void checkSignJwtRequest(api.SignJwtRequest o) {
  buildCounterSignJwtRequest++;
  if (buildCounterSignJwtRequest < 3) {
    unittest.expect(
      o.payload!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignJwtRequest--;
}

core.int buildCounterSignJwtResponse = 0;
api.SignJwtResponse buildSignJwtResponse() {
  final o = api.SignJwtResponse();
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    o.keyId = 'foo';
    o.signedJwt = 'foo';
  }
  buildCounterSignJwtResponse--;
  return o;
}

void checkSignJwtResponse(api.SignJwtResponse o) {
  buildCounterSignJwtResponse++;
  if (buildCounterSignJwtResponse < 3) {
    unittest.expect(
      o.keyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signedJwt!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignJwtResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed24() => {
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

void checkUnnamed24(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed25() => [
      buildUnnamed24(),
      buildUnnamed24(),
    ];

void checkUnnamed25(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed24(o[0]);
  checkUnnamed24(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed25();
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
    checkUnnamed25(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
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

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed26();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed26(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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
    o.permissions = buildUnnamed27();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed27(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterUndeleteRoleRequest = 0;
api.UndeleteRoleRequest buildUndeleteRoleRequest() {
  final o = api.UndeleteRoleRequest();
  buildCounterUndeleteRoleRequest++;
  if (buildCounterUndeleteRoleRequest < 3) {
    o.etag = 'foo';
  }
  buildCounterUndeleteRoleRequest--;
  return o;
}

void checkUndeleteRoleRequest(api.UndeleteRoleRequest o) {
  buildCounterUndeleteRoleRequest++;
  if (buildCounterUndeleteRoleRequest < 3) {
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
  }
  buildCounterUndeleteRoleRequest--;
}

core.int buildCounterUndeleteServiceAccountRequest = 0;
api.UndeleteServiceAccountRequest buildUndeleteServiceAccountRequest() {
  final o = api.UndeleteServiceAccountRequest();
  buildCounterUndeleteServiceAccountRequest++;
  if (buildCounterUndeleteServiceAccountRequest < 3) {}
  buildCounterUndeleteServiceAccountRequest--;
  return o;
}

void checkUndeleteServiceAccountRequest(api.UndeleteServiceAccountRequest o) {
  buildCounterUndeleteServiceAccountRequest++;
  if (buildCounterUndeleteServiceAccountRequest < 3) {}
  buildCounterUndeleteServiceAccountRequest--;
}

core.int buildCounterUndeleteServiceAccountResponse = 0;
api.UndeleteServiceAccountResponse buildUndeleteServiceAccountResponse() {
  final o = api.UndeleteServiceAccountResponse();
  buildCounterUndeleteServiceAccountResponse++;
  if (buildCounterUndeleteServiceAccountResponse < 3) {
    o.restoredAccount = buildServiceAccount();
  }
  buildCounterUndeleteServiceAccountResponse--;
  return o;
}

void checkUndeleteServiceAccountResponse(api.UndeleteServiceAccountResponse o) {
  buildCounterUndeleteServiceAccountResponse++;
  if (buildCounterUndeleteServiceAccountResponse < 3) {
    checkServiceAccount(o.restoredAccount!);
  }
  buildCounterUndeleteServiceAccountResponse--;
}

core.int buildCounterUndeleteWorkforcePoolProviderKeyRequest = 0;
api.UndeleteWorkforcePoolProviderKeyRequest
    buildUndeleteWorkforcePoolProviderKeyRequest() {
  final o = api.UndeleteWorkforcePoolProviderKeyRequest();
  buildCounterUndeleteWorkforcePoolProviderKeyRequest++;
  if (buildCounterUndeleteWorkforcePoolProviderKeyRequest < 3) {}
  buildCounterUndeleteWorkforcePoolProviderKeyRequest--;
  return o;
}

void checkUndeleteWorkforcePoolProviderKeyRequest(
    api.UndeleteWorkforcePoolProviderKeyRequest o) {
  buildCounterUndeleteWorkforcePoolProviderKeyRequest++;
  if (buildCounterUndeleteWorkforcePoolProviderKeyRequest < 3) {}
  buildCounterUndeleteWorkforcePoolProviderKeyRequest--;
}

core.int buildCounterUndeleteWorkforcePoolProviderRequest = 0;
api.UndeleteWorkforcePoolProviderRequest
    buildUndeleteWorkforcePoolProviderRequest() {
  final o = api.UndeleteWorkforcePoolProviderRequest();
  buildCounterUndeleteWorkforcePoolProviderRequest++;
  if (buildCounterUndeleteWorkforcePoolProviderRequest < 3) {}
  buildCounterUndeleteWorkforcePoolProviderRequest--;
  return o;
}

void checkUndeleteWorkforcePoolProviderRequest(
    api.UndeleteWorkforcePoolProviderRequest o) {
  buildCounterUndeleteWorkforcePoolProviderRequest++;
  if (buildCounterUndeleteWorkforcePoolProviderRequest < 3) {}
  buildCounterUndeleteWorkforcePoolProviderRequest--;
}

core.int buildCounterUndeleteWorkforcePoolRequest = 0;
api.UndeleteWorkforcePoolRequest buildUndeleteWorkforcePoolRequest() {
  final o = api.UndeleteWorkforcePoolRequest();
  buildCounterUndeleteWorkforcePoolRequest++;
  if (buildCounterUndeleteWorkforcePoolRequest < 3) {}
  buildCounterUndeleteWorkforcePoolRequest--;
  return o;
}

void checkUndeleteWorkforcePoolRequest(api.UndeleteWorkforcePoolRequest o) {
  buildCounterUndeleteWorkforcePoolRequest++;
  if (buildCounterUndeleteWorkforcePoolRequest < 3) {}
  buildCounterUndeleteWorkforcePoolRequest--;
}

core.int buildCounterUndeleteWorkforcePoolSubjectRequest = 0;
api.UndeleteWorkforcePoolSubjectRequest
    buildUndeleteWorkforcePoolSubjectRequest() {
  final o = api.UndeleteWorkforcePoolSubjectRequest();
  buildCounterUndeleteWorkforcePoolSubjectRequest++;
  if (buildCounterUndeleteWorkforcePoolSubjectRequest < 3) {}
  buildCounterUndeleteWorkforcePoolSubjectRequest--;
  return o;
}

void checkUndeleteWorkforcePoolSubjectRequest(
    api.UndeleteWorkforcePoolSubjectRequest o) {
  buildCounterUndeleteWorkforcePoolSubjectRequest++;
  if (buildCounterUndeleteWorkforcePoolSubjectRequest < 3) {}
  buildCounterUndeleteWorkforcePoolSubjectRequest--;
}

core.int buildCounterUndeleteWorkloadIdentityPoolProviderKeyRequest = 0;
api.UndeleteWorkloadIdentityPoolProviderKeyRequest
    buildUndeleteWorkloadIdentityPoolProviderKeyRequest() {
  final o = api.UndeleteWorkloadIdentityPoolProviderKeyRequest();
  buildCounterUndeleteWorkloadIdentityPoolProviderKeyRequest++;
  if (buildCounterUndeleteWorkloadIdentityPoolProviderKeyRequest < 3) {}
  buildCounterUndeleteWorkloadIdentityPoolProviderKeyRequest--;
  return o;
}

void checkUndeleteWorkloadIdentityPoolProviderKeyRequest(
    api.UndeleteWorkloadIdentityPoolProviderKeyRequest o) {
  buildCounterUndeleteWorkloadIdentityPoolProviderKeyRequest++;
  if (buildCounterUndeleteWorkloadIdentityPoolProviderKeyRequest < 3) {}
  buildCounterUndeleteWorkloadIdentityPoolProviderKeyRequest--;
}

core.int buildCounterUndeleteWorkloadIdentityPoolProviderRequest = 0;
api.UndeleteWorkloadIdentityPoolProviderRequest
    buildUndeleteWorkloadIdentityPoolProviderRequest() {
  final o = api.UndeleteWorkloadIdentityPoolProviderRequest();
  buildCounterUndeleteWorkloadIdentityPoolProviderRequest++;
  if (buildCounterUndeleteWorkloadIdentityPoolProviderRequest < 3) {}
  buildCounterUndeleteWorkloadIdentityPoolProviderRequest--;
  return o;
}

void checkUndeleteWorkloadIdentityPoolProviderRequest(
    api.UndeleteWorkloadIdentityPoolProviderRequest o) {
  buildCounterUndeleteWorkloadIdentityPoolProviderRequest++;
  if (buildCounterUndeleteWorkloadIdentityPoolProviderRequest < 3) {}
  buildCounterUndeleteWorkloadIdentityPoolProviderRequest--;
}

core.int buildCounterUndeleteWorkloadIdentityPoolRequest = 0;
api.UndeleteWorkloadIdentityPoolRequest
    buildUndeleteWorkloadIdentityPoolRequest() {
  final o = api.UndeleteWorkloadIdentityPoolRequest();
  buildCounterUndeleteWorkloadIdentityPoolRequest++;
  if (buildCounterUndeleteWorkloadIdentityPoolRequest < 3) {}
  buildCounterUndeleteWorkloadIdentityPoolRequest--;
  return o;
}

void checkUndeleteWorkloadIdentityPoolRequest(
    api.UndeleteWorkloadIdentityPoolRequest o) {
  buildCounterUndeleteWorkloadIdentityPoolRequest++;
  if (buildCounterUndeleteWorkloadIdentityPoolRequest < 3) {}
  buildCounterUndeleteWorkloadIdentityPoolRequest--;
}

core.int buildCounterUploadServiceAccountKeyRequest = 0;
api.UploadServiceAccountKeyRequest buildUploadServiceAccountKeyRequest() {
  final o = api.UploadServiceAccountKeyRequest();
  buildCounterUploadServiceAccountKeyRequest++;
  if (buildCounterUploadServiceAccountKeyRequest < 3) {
    o.publicKeyData = 'foo';
  }
  buildCounterUploadServiceAccountKeyRequest--;
  return o;
}

void checkUploadServiceAccountKeyRequest(api.UploadServiceAccountKeyRequest o) {
  buildCounterUploadServiceAccountKeyRequest++;
  if (buildCounterUploadServiceAccountKeyRequest < 3) {
    unittest.expect(
      o.publicKeyData!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadServiceAccountKeyRequest--;
}

core.int buildCounterWorkforcePool = 0;
api.WorkforcePool buildWorkforcePool() {
  final o = api.WorkforcePool();
  buildCounterWorkforcePool++;
  if (buildCounterWorkforcePool < 3) {
    o.accessRestrictions = buildAccessRestrictions();
    o.description = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.parent = 'foo';
    o.sessionDuration = 'foo';
    o.state = 'foo';
  }
  buildCounterWorkforcePool--;
  return o;
}

void checkWorkforcePool(api.WorkforcePool o) {
  buildCounterWorkforcePool++;
  if (buildCounterWorkforcePool < 3) {
    checkAccessRestrictions(o.accessRestrictions!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkforcePool--;
}

core.Map<core.String, core.String> buildUnnamed28() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed28(core.Map<core.String, core.String> o) {
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

core.int buildCounterWorkforcePoolProvider = 0;
api.WorkforcePoolProvider buildWorkforcePoolProvider() {
  final o = api.WorkforcePoolProvider();
  buildCounterWorkforcePoolProvider++;
  if (buildCounterWorkforcePoolProvider < 3) {
    o.attributeCondition = 'foo';
    o.attributeMapping = buildUnnamed28();
    o.description = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.oidc = buildGoogleIamAdminV1WorkforcePoolProviderOidc();
    o.saml = buildGoogleIamAdminV1WorkforcePoolProviderSaml();
    o.state = 'foo';
  }
  buildCounterWorkforcePoolProvider--;
  return o;
}

void checkWorkforcePoolProvider(api.WorkforcePoolProvider o) {
  buildCounterWorkforcePoolProvider++;
  if (buildCounterWorkforcePoolProvider < 3) {
    unittest.expect(
      o.attributeCondition!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.attributeMapping!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleIamAdminV1WorkforcePoolProviderOidc(o.oidc!);
    checkGoogleIamAdminV1WorkforcePoolProviderSaml(o.saml!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkforcePoolProvider--;
}

core.int buildCounterWorkforcePoolProviderKey = 0;
api.WorkforcePoolProviderKey buildWorkforcePoolProviderKey() {
  final o = api.WorkforcePoolProviderKey();
  buildCounterWorkforcePoolProviderKey++;
  if (buildCounterWorkforcePoolProviderKey < 3) {
    o.expireTime = 'foo';
    o.keyData = buildKeyData();
    o.name = 'foo';
    o.state = 'foo';
    o.use = 'foo';
  }
  buildCounterWorkforcePoolProviderKey--;
  return o;
}

void checkWorkforcePoolProviderKey(api.WorkforcePoolProviderKey o) {
  buildCounterWorkforcePoolProviderKey++;
  if (buildCounterWorkforcePoolProviderKey < 3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkKeyData(o.keyData!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.use!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkforcePoolProviderKey--;
}

core.int buildCounterWorkloadIdentityPool = 0;
api.WorkloadIdentityPool buildWorkloadIdentityPool() {
  final o = api.WorkloadIdentityPool();
  buildCounterWorkloadIdentityPool++;
  if (buildCounterWorkloadIdentityPool < 3) {
    o.description = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.state = 'foo';
  }
  buildCounterWorkloadIdentityPool--;
  return o;
}

void checkWorkloadIdentityPool(api.WorkloadIdentityPool o) {
  buildCounterWorkloadIdentityPool++;
  if (buildCounterWorkloadIdentityPool < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadIdentityPool--;
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

core.int buildCounterWorkloadIdentityPoolProvider = 0;
api.WorkloadIdentityPoolProvider buildWorkloadIdentityPoolProvider() {
  final o = api.WorkloadIdentityPoolProvider();
  buildCounterWorkloadIdentityPoolProvider++;
  if (buildCounterWorkloadIdentityPoolProvider < 3) {
    o.attributeCondition = 'foo';
    o.attributeMapping = buildUnnamed29();
    o.aws = buildAws();
    o.description = 'foo';
    o.disabled = true;
    o.displayName = 'foo';
    o.expireTime = 'foo';
    o.name = 'foo';
    o.oidc = buildOidc();
    o.saml = buildSaml();
    o.state = 'foo';
  }
  buildCounterWorkloadIdentityPoolProvider--;
  return o;
}

void checkWorkloadIdentityPoolProvider(api.WorkloadIdentityPoolProvider o) {
  buildCounterWorkloadIdentityPoolProvider++;
  if (buildCounterWorkloadIdentityPoolProvider < 3) {
    unittest.expect(
      o.attributeCondition!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.attributeMapping!);
    checkAws(o.aws!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkOidc(o.oidc!);
    checkSaml(o.saml!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadIdentityPoolProvider--;
}

core.int buildCounterWorkloadIdentityPoolProviderKey = 0;
api.WorkloadIdentityPoolProviderKey buildWorkloadIdentityPoolProviderKey() {
  final o = api.WorkloadIdentityPoolProviderKey();
  buildCounterWorkloadIdentityPoolProviderKey++;
  if (buildCounterWorkloadIdentityPoolProviderKey < 3) {
    o.expireTime = 'foo';
    o.keyData = buildKeyData();
    o.name = 'foo';
    o.state = 'foo';
    o.use = 'foo';
  }
  buildCounterWorkloadIdentityPoolProviderKey--;
  return o;
}

void checkWorkloadIdentityPoolProviderKey(
    api.WorkloadIdentityPoolProviderKey o) {
  buildCounterWorkloadIdentityPoolProviderKey++;
  if (buildCounterWorkloadIdentityPoolProviderKey < 3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkKeyData(o.keyData!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.use!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadIdentityPoolProviderKey--;
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-AccessRestrictions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessRestrictions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessRestrictions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccessRestrictions(od);
    });
  });

  unittest.group('obj-schema-AuditConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditConfig(od);
    });
  });

  unittest.group('obj-schema-AuditLogConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditLogConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditLogConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditLogConfig(od);
    });
  });

  unittest.group('obj-schema-AuditableService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuditableService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuditableService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuditableService(od);
    });
  });

  unittest.group('obj-schema-Aws', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAws();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aws.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAws(od);
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

  unittest.group('obj-schema-CreateRoleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateRoleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateRoleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateRoleRequest(od);
    });
  });

  unittest.group('obj-schema-CreateServiceAccountKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateServiceAccountKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateServiceAccountKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateServiceAccountKeyRequest(od);
    });
  });

  unittest.group('obj-schema-CreateServiceAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateServiceAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateServiceAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateServiceAccountRequest(od);
    });
  });

  unittest.group('obj-schema-DisableServiceAccountKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableServiceAccountKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableServiceAccountKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableServiceAccountKeyRequest(od);
    });
  });

  unittest.group('obj-schema-DisableServiceAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisableServiceAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisableServiceAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisableServiceAccountRequest(od);
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

  unittest.group('obj-schema-EnableServiceAccountKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableServiceAccountKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableServiceAccountKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableServiceAccountKeyRequest(od);
    });
  });

  unittest.group('obj-schema-EnableServiceAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnableServiceAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnableServiceAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnableServiceAccountRequest(od);
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

  unittest.group('obj-schema-GoogleIamAdminV1WorkforcePoolProviderOidc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamAdminV1WorkforcePoolProviderOidc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamAdminV1WorkforcePoolProviderOidc.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamAdminV1WorkforcePoolProviderOidc(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamAdminV1WorkforcePoolProviderOidcClientSecret(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleIamAdminV1WorkforcePoolProviderSaml', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleIamAdminV1WorkforcePoolProviderSaml();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleIamAdminV1WorkforcePoolProviderSaml.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleIamAdminV1WorkforcePoolProviderSaml(od);
    });
  });

  unittest.group('obj-schema-KeyData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.KeyData.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkKeyData(od);
    });
  });

  unittest.group('obj-schema-LintPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLintPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LintPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLintPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-LintPolicyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLintPolicyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LintPolicyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLintPolicyResponse(od);
    });
  });

  unittest.group('obj-schema-LintResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLintResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LintResult.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLintResult(od);
    });
  });

  unittest.group('obj-schema-ListRolesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRolesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRolesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRolesResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceAccountKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceAccountKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceAccountKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServiceAccountKeysResponse(od);
    });
  });

  unittest.group('obj-schema-ListServiceAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListServiceAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListServiceAccountsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListServiceAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkforcePoolProviderKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkforcePoolProviderKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkforcePoolProviderKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkforcePoolProviderKeysResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkforcePoolProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkforcePoolProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkforcePoolProvidersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkforcePoolProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkforcePoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkforcePoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkforcePoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkforcePoolsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkloadIdentityPoolProviderKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkloadIdentityPoolProviderKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkloadIdentityPoolProviderKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkloadIdentityPoolProviderKeysResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkloadIdentityPoolProvidersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkloadIdentityPoolProvidersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkloadIdentityPoolProvidersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkloadIdentityPoolProvidersResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkloadIdentityPoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkloadIdentityPoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkloadIdentityPoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWorkloadIdentityPoolsResponse(od);
    });
  });

  unittest.group('obj-schema-Oidc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOidc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Oidc.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOidc(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PatchServiceAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPatchServiceAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PatchServiceAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPatchServiceAccountRequest(od);
    });
  });

  unittest.group('obj-schema-Permission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Permission.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPermission(od);
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

  unittest.group('obj-schema-QueryAuditableServicesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAuditableServicesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAuditableServicesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryAuditableServicesRequest(od);
    });
  });

  unittest.group('obj-schema-QueryAuditableServicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryAuditableServicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryAuditableServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryAuditableServicesResponse(od);
    });
  });

  unittest.group('obj-schema-QueryGrantableRolesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryGrantableRolesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryGrantableRolesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryGrantableRolesRequest(od);
    });
  });

  unittest.group('obj-schema-QueryGrantableRolesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryGrantableRolesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryGrantableRolesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryGrantableRolesResponse(od);
    });
  });

  unittest.group('obj-schema-QueryTestablePermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryTestablePermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryTestablePermissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryTestablePermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-QueryTestablePermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryTestablePermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryTestablePermissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueryTestablePermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-Role', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Role.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRole(od);
    });
  });

  unittest.group('obj-schema-Saml', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSaml();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Saml.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSaml(od);
    });
  });

  unittest.group('obj-schema-ServiceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccount(od);
    });
  });

  unittest.group('obj-schema-ServiceAccountKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceAccountKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceAccountKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAccountKey(od);
    });
  });

  unittest.group('obj-schema-ServiceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceConfig(od);
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

  unittest.group('obj-schema-SignBlobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignBlobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignBlobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSignBlobRequest(od);
    });
  });

  unittest.group('obj-schema-SignBlobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignBlobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignBlobResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSignBlobResponse(od);
    });
  });

  unittest.group('obj-schema-SignJwtRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignJwtRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignJwtRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSignJwtRequest(od);
    });
  });

  unittest.group('obj-schema-SignJwtResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignJwtResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignJwtResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSignJwtResponse(od);
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

  unittest.group('obj-schema-UndeleteRoleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteRoleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteRoleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteRoleRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteServiceAccountRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteServiceAccountRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteServiceAccountRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteServiceAccountRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteServiceAccountResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteServiceAccountResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteServiceAccountResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteServiceAccountResponse(od);
    });
  });

  unittest.group('obj-schema-UndeleteWorkforcePoolProviderKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteWorkforcePoolProviderKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteWorkforcePoolProviderKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteWorkforcePoolProviderKeyRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteWorkforcePoolProviderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteWorkforcePoolProviderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteWorkforcePoolProviderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteWorkforcePoolProviderRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteWorkforcePoolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteWorkforcePoolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteWorkforcePoolRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteWorkforcePoolRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteWorkforcePoolSubjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteWorkforcePoolSubjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteWorkforcePoolSubjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteWorkforcePoolSubjectRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteWorkloadIdentityPoolProviderKeyRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteWorkloadIdentityPoolProviderKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteWorkloadIdentityPoolProviderKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteWorkloadIdentityPoolProviderKeyRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteWorkloadIdentityPoolProviderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteWorkloadIdentityPoolProviderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteWorkloadIdentityPoolProviderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteWorkloadIdentityPoolProviderRequest(od);
    });
  });

  unittest.group('obj-schema-UndeleteWorkloadIdentityPoolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUndeleteWorkloadIdentityPoolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UndeleteWorkloadIdentityPoolRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUndeleteWorkloadIdentityPoolRequest(od);
    });
  });

  unittest.group('obj-schema-UploadServiceAccountKeyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadServiceAccountKeyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadServiceAccountKeyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadServiceAccountKeyRequest(od);
    });
  });

  unittest.group('obj-schema-WorkforcePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkforcePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkforcePool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkforcePool(od);
    });
  });

  unittest.group('obj-schema-WorkforcePoolProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkforcePoolProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkforcePoolProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkforcePoolProvider(od);
    });
  });

  unittest.group('obj-schema-WorkforcePoolProviderKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkforcePoolProviderKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkforcePoolProviderKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkforcePoolProviderKey(od);
    });
  });

  unittest.group('obj-schema-WorkloadIdentityPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadIdentityPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadIdentityPool.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadIdentityPool(od);
    });
  });

  unittest.group('obj-schema-WorkloadIdentityPoolProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadIdentityPoolProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadIdentityPoolProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadIdentityPoolProvider(od);
    });
  });

  unittest.group('obj-schema-WorkloadIdentityPoolProviderKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadIdentityPoolProviderKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadIdentityPoolProviderKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadIdentityPoolProviderKey(od);
    });
  });

  unittest.group('resource-IamPoliciesResource', () {
    unittest.test('method--lintPolicy', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).iamPolicies;
      final arg_request = buildLintPolicyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LintPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLintPolicyRequest(obj);

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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/iamPolicies:lintPolicy'),
        );
        pathOffset += 25;

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
        final resp = convert.json.encode(buildLintPolicyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lintPolicy(arg_request, $fields: arg_$fields);
      checkLintPolicyResponse(response as api.LintPolicyResponse);
    });

    unittest.test('method--queryAuditableServices', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).iamPolicies;
      final arg_request = buildQueryAuditableServicesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryAuditableServicesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryAuditableServicesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 37),
          unittest.equals('v1/iamPolicies:queryAuditableServices'),
        );
        pathOffset += 37;

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
        final resp = convert.json.encode(buildQueryAuditableServicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.queryAuditableServices(arg_request, $fields: arg_$fields);
      checkQueryAuditableServicesResponse(
          response as api.QueryAuditableServicesResponse);
    });
  });

  unittest.group('resource-LocationsWorkforcePoolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools;
      final arg_request = buildWorkforcePool();
      final arg_location = 'foo';
      final arg_workforcePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkforcePool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkforcePool(obj);

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
          queryMap['workforcePoolId']!.first,
          unittest.equals(arg_workforcePoolId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_location,
          workforcePoolId: arg_workforcePoolId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools;
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
        final resp = convert.json.encode(buildWorkforcePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkforcePool(response as api.WorkforcePool);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools;
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
      final res = api.IamApi(mock).locations.workforcePools;
      final arg_location = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_showDeleted = true;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListWorkforcePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_location,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          parent: arg_parent,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListWorkforcePoolsResponse(
          response as api.ListWorkforcePoolsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools;
      final arg_request = buildWorkforcePool();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkforcePool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkforcePool(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools;
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
      final res = api.IamApi(mock).locations.workforcePools;
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

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools;
      final arg_request = buildUndeleteWorkforcePoolRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteWorkforcePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteWorkforcePoolRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-LocationsWorkforcePoolsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-LocationsWorkforcePoolsProvidersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers;
      final arg_request = buildWorkforcePoolProvider();
      final arg_parent = 'foo';
      final arg_workforcePoolProviderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkforcePoolProvider.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkforcePoolProvider(obj);

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
          queryMap['workforcePoolProviderId']!.first,
          unittest.equals(arg_workforcePoolProviderId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          workforcePoolProviderId: arg_workforcePoolProviderId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers;
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
        final resp = convert.json.encode(buildWorkforcePoolProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkforcePoolProvider(response as api.WorkforcePoolProvider);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListWorkforcePoolProvidersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListWorkforcePoolProvidersResponse(
          response as api.ListWorkforcePoolProvidersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers;
      final arg_request = buildWorkforcePoolProvider();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkforcePoolProvider.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkforcePoolProvider(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers;
      final arg_request = buildUndeleteWorkforcePoolProviderRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteWorkforcePoolProviderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteWorkforcePoolProviderRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-LocationsWorkforcePoolsProvidersKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers.keys;
      final arg_request = buildWorkforcePoolProviderKey();
      final arg_parent = 'foo';
      final arg_workforcePoolProviderKeyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkforcePoolProviderKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkforcePoolProviderKey(obj);

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
          queryMap['workforcePoolProviderKeyId']!.first,
          unittest.equals(arg_workforcePoolProviderKeyId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          workforcePoolProviderKeyId: arg_workforcePoolProviderKeyId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers.keys;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers.keys;
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
        final resp = convert.json.encode(buildWorkforcePoolProviderKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkforcePoolProviderKey(response as api.WorkforcePoolProviderKey);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers.keys;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListWorkforcePoolProviderKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListWorkforcePoolProviderKeysResponse(
          response as api.ListWorkforcePoolProviderKeysResponse);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.providers.keys;
      final arg_request = buildUndeleteWorkforcePoolProviderKeyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteWorkforcePoolProviderKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteWorkforcePoolProviderKeyRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-LocationsWorkforcePoolsProvidersKeysOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).locations.workforcePools.providers.keys.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-LocationsWorkforcePoolsProvidersOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).locations.workforcePools.providers.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-LocationsWorkforcePoolsSubjectsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.subjects;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.subjects;
      final arg_request = buildUndeleteWorkforcePoolSubjectRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteWorkforcePoolSubjectRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteWorkforcePoolSubjectRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-LocationsWorkforcePoolsSubjectsOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).locations.workforcePools.subjects.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrganizationsRolesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).organizations.roles;
      final arg_request = buildCreateRoleRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateRoleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateRoleRequest(obj);

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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).organizations.roles;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).organizations.roles;
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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).organizations.roles;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
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
        final resp = convert.json.encode(buildListRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          view: arg_view,
          $fields: arg_$fields);
      checkListRolesResponse(response as api.ListRolesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).organizations.roles;
      final arg_request = buildRole();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Role.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRole(obj);

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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).organizations.roles;
      final arg_request = buildUndeleteRoleRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteRoleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteRoleRequest(obj);

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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkRole(response as api.Role);
    });
  });

  unittest.group('resource-PermissionsResource', () {
    unittest.test('method--queryTestablePermissions', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).permissions;
      final arg_request = buildQueryTestablePermissionsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryTestablePermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryTestablePermissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals('v1/permissions:queryTestablePermissions'),
        );
        pathOffset += 39;

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
            convert.json.encode(buildQueryTestablePermissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.queryTestablePermissions(arg_request, $fields: arg_$fields);
      checkQueryTestablePermissionsResponse(
          response as api.QueryTestablePermissionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsWorkloadIdentityPoolsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.locations.workloadIdentityPools;
      final arg_request = buildWorkloadIdentityPool();
      final arg_parent = 'foo';
      final arg_workloadIdentityPoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkloadIdentityPool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkloadIdentityPool(obj);

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
          queryMap['workloadIdentityPoolId']!.first,
          unittest.equals(arg_workloadIdentityPoolId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          workloadIdentityPoolId: arg_workloadIdentityPoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.locations.workloadIdentityPools;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.locations.workloadIdentityPools;
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
        final resp = convert.json.encode(buildWorkloadIdentityPool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkloadIdentityPool(response as api.WorkloadIdentityPool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.locations.workloadIdentityPools;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildListWorkloadIdentityPoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListWorkloadIdentityPoolsResponse(
          response as api.ListWorkloadIdentityPoolsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.locations.workloadIdentityPools;
      final arg_request = buildWorkloadIdentityPool();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkloadIdentityPool.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkloadIdentityPool(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.locations.workloadIdentityPools;
      final arg_request = buildUndeleteWorkloadIdentityPoolRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteWorkloadIdentityPoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteWorkloadIdentityPoolRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .namespaces
          .managedIdentities
          .operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .namespaces
          .managedIdentities
          .workloadSources
          .operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkloadIdentityPoolsNamespacesOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .namespaces
          .operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkloadIdentityPoolsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).projects.locations.workloadIdentityPools.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkloadIdentityPoolsProvidersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).projects.locations.workloadIdentityPools.providers;
      final arg_request = buildWorkloadIdentityPoolProvider();
      final arg_parent = 'foo';
      final arg_workloadIdentityPoolProviderId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkloadIdentityPoolProvider.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkloadIdentityPoolProvider(obj);

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
          queryMap['workloadIdentityPoolProviderId']!.first,
          unittest.equals(arg_workloadIdentityPoolProviderId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          workloadIdentityPoolProviderId: arg_workloadIdentityPoolProviderId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).projects.locations.workloadIdentityPools.providers;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).projects.locations.workloadIdentityPools.providers;
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
        final resp = convert.json.encode(buildWorkloadIdentityPoolProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkloadIdentityPoolProvider(
          response as api.WorkloadIdentityPoolProvider);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).projects.locations.workloadIdentityPools.providers;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildListWorkloadIdentityPoolProvidersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListWorkloadIdentityPoolProvidersResponse(
          response as api.ListWorkloadIdentityPoolProvidersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).projects.locations.workloadIdentityPools.providers;
      final arg_request = buildWorkloadIdentityPoolProvider();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkloadIdentityPoolProvider.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkloadIdentityPoolProvider(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res =
          api.IamApi(mock).projects.locations.workloadIdentityPools.providers;
      final arg_request = buildUndeleteWorkloadIdentityPoolProviderRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteWorkloadIdentityPoolProviderRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteWorkloadIdentityPoolProviderRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkloadIdentityPoolsProvidersKeysResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .providers
          .keys;
      final arg_request = buildWorkloadIdentityPoolProviderKey();
      final arg_parent = 'foo';
      final arg_workloadIdentityPoolProviderKeyId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.WorkloadIdentityPoolProviderKey.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkWorkloadIdentityPoolProviderKey(obj);

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
          queryMap['workloadIdentityPoolProviderKeyId']!.first,
          unittest.equals(arg_workloadIdentityPoolProviderKeyId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          workloadIdentityPoolProviderKeyId:
              arg_workloadIdentityPoolProviderKeyId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .providers
          .keys;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .providers
          .keys;
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
        final resp =
            convert.json.encode(buildWorkloadIdentityPoolProviderKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWorkloadIdentityPoolProviderKey(
          response as api.WorkloadIdentityPoolProviderKey);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .providers
          .keys;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildListWorkloadIdentityPoolProviderKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          $fields: arg_$fields);
      checkListWorkloadIdentityPoolProviderKeysResponse(
          response as api.ListWorkloadIdentityPoolProviderKeysResponse);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .providers
          .keys;
      final arg_request = buildUndeleteWorkloadIdentityPoolProviderKeyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteWorkloadIdentityPoolProviderKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteWorkloadIdentityPoolProviderKeyRequest(obj);

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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .providers
          .keys
          .operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group(
      'resource-ProjectsLocationsWorkloadIdentityPoolsProvidersOperationsResource',
      () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock)
          .projects
          .locations
          .workloadIdentityPools
          .providers
          .operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsRolesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.roles;
      final arg_request = buildCreateRoleRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateRoleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateRoleRequest(obj);

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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.roles;
      final arg_name = 'foo';
      final arg_etag = 'foo';
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
          queryMap['etag']!.first,
          unittest.equals(arg_etag),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.delete(arg_name, etag: arg_etag, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.roles;
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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.roles;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showDeleted = true;
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
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
        final resp = convert.json.encode(buildListRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showDeleted: arg_showDeleted,
          view: arg_view,
          $fields: arg_$fields);
      checkListRolesResponse(response as api.ListRolesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.roles;
      final arg_request = buildRole();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Role.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRole(obj);

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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.roles;
      final arg_request = buildUndeleteRoleRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteRoleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteRoleRequest(obj);

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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkRole(response as api.Role);
    });
  });

  unittest.group('resource-ProjectsServiceAccountsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_request = buildCreateServiceAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateServiceAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateServiceAccountRequest(obj);

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
        final resp = convert.json.encode(buildServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkServiceAccount(response as api.ServiceAccount);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
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

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_request = buildDisableServiceAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableServiceAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableServiceAccountRequest(obj);

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
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_request = buildEnableServiceAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableServiceAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableServiceAccountRequest(obj);

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
      final response =
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
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
        final resp = convert.json.encode(buildServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkServiceAccount(response as api.ServiceAccount);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_resource = 'foo';
      final arg_options_requestedPolicyVersion = 42;
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
          core.int.parse(queryMap['options.requestedPolicyVersion']!.first),
          unittest.equals(arg_options_requestedPolicyVersion),
        );
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
      final response = await res.getIamPolicy(arg_resource,
          options_requestedPolicyVersion: arg_options_requestedPolicyVersion,
          $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
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
        final resp = convert.json.encode(buildListServiceAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListServiceAccountsResponse(
          response as api.ListServiceAccountsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_request = buildPatchServiceAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PatchServiceAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPatchServiceAccountRequest(obj);

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
        final resp = convert.json.encode(buildServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkServiceAccount(response as api.ServiceAccount);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
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

    unittest.test('method--signBlob', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_request = buildSignBlobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SignBlobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSignBlobRequest(obj);

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
        final resp = convert.json.encode(buildSignBlobResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.signBlob(arg_request, arg_name, $fields: arg_$fields);
      checkSignBlobResponse(response as api.SignBlobResponse);
    });

    unittest.test('method--signJwt', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_request = buildSignJwtRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SignJwtRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSignJwtRequest(obj);

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
        final resp = convert.json.encode(buildSignJwtResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.signJwt(arg_request, arg_name, $fields: arg_$fields);
      checkSignJwtResponse(response as api.SignJwtResponse);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
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

    unittest.test('method--undelete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_request = buildUndeleteServiceAccountRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UndeleteServiceAccountRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUndeleteServiceAccountRequest(obj);

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
        final resp = convert.json.encode(buildUndeleteServiceAccountResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undelete(arg_request, arg_name, $fields: arg_$fields);
      checkUndeleteServiceAccountResponse(
          response as api.UndeleteServiceAccountResponse);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts;
      final arg_request = buildServiceAccount();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ServiceAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceAccount(obj);

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
        final resp = convert.json.encode(buildServiceAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkServiceAccount(response as api.ServiceAccount);
    });
  });

  unittest.group('resource-ProjectsServiceAccountsKeysResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts.keys;
      final arg_request = buildCreateServiceAccountKeyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateServiceAccountKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateServiceAccountKeyRequest(obj);

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
        final resp = convert.json.encode(buildServiceAccountKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_name, $fields: arg_$fields);
      checkServiceAccountKey(response as api.ServiceAccountKey);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts.keys;
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

    unittest.test('method--disable', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts.keys;
      final arg_request = buildDisableServiceAccountKeyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DisableServiceAccountKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDisableServiceAccountKeyRequest(obj);

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
      final response =
          await res.disable(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--enable', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts.keys;
      final arg_request = buildEnableServiceAccountKeyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnableServiceAccountKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnableServiceAccountKeyRequest(obj);

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
      final response =
          await res.enable(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts.keys;
      final arg_name = 'foo';
      final arg_publicKeyType = 'foo';
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
          queryMap['publicKeyType']!.first,
          unittest.equals(arg_publicKeyType),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServiceAccountKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          publicKeyType: arg_publicKeyType, $fields: arg_$fields);
      checkServiceAccountKey(response as api.ServiceAccountKey);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts.keys;
      final arg_name = 'foo';
      final arg_keyTypes = buildUnnamed30();
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
          queryMap['keyTypes']!,
          unittest.equals(arg_keyTypes),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListServiceAccountKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          keyTypes: arg_keyTypes, $fields: arg_$fields);
      checkListServiceAccountKeysResponse(
          response as api.ListServiceAccountKeysResponse);
    });

    unittest.test('method--upload', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).projects.serviceAccounts.keys;
      final arg_request = buildUploadServiceAccountKeyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UploadServiceAccountKeyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUploadServiceAccountKeyRequest(obj);

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
        final resp = convert.json.encode(buildServiceAccountKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_name, $fields: arg_$fields);
      checkServiceAccountKey(response as api.ServiceAccountKey);
    });
  });

  unittest.group('resource-RolesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).roles;
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
        final resp = convert.json.encode(buildRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRole(response as api.Role);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).roles;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_showDeleted = true;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/roles'),
        );
        pathOffset += 8;

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
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['showDeleted']!.first,
          unittest.equals('$arg_showDeleted'),
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
        final resp = convert.json.encode(buildListRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          parent: arg_parent,
          showDeleted: arg_showDeleted,
          view: arg_view,
          $fields: arg_$fields);
      checkListRolesResponse(response as api.ListRolesResponse);
    });

    unittest.test('method--queryGrantableRoles', () async {
      final mock = HttpServerMock();
      final res = api.IamApi(mock).roles;
      final arg_request = buildQueryGrantableRolesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.QueryGrantableRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkQueryGrantableRolesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('v1/roles:queryGrantableRoles'),
        );
        pathOffset += 28;

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
        final resp = convert.json.encode(buildQueryGrantableRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.queryGrantableRoles(arg_request, $fields: arg_$fields);
      checkQueryGrantableRolesResponse(
          response as api.QueryGrantableRolesResponse);
    });
  });
}
