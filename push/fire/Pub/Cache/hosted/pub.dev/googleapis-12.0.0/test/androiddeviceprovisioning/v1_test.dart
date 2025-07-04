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

import 'package:googleapis/androiddeviceprovisioning/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterClaimDeviceRequest = 0;
api.ClaimDeviceRequest buildClaimDeviceRequest() {
  final o = api.ClaimDeviceRequest();
  buildCounterClaimDeviceRequest++;
  if (buildCounterClaimDeviceRequest < 3) {
    o.configurationId = 'foo';
    o.customerId = 'foo';
    o.deviceIdentifier = buildDeviceIdentifier();
    o.deviceMetadata = buildDeviceMetadata();
    o.googleWorkspaceCustomerId = 'foo';
    o.preProvisioningToken = 'foo';
    o.sectionType = 'foo';
    o.simlockProfileId = 'foo';
  }
  buildCounterClaimDeviceRequest--;
  return o;
}

void checkClaimDeviceRequest(api.ClaimDeviceRequest o) {
  buildCounterClaimDeviceRequest++;
  if (buildCounterClaimDeviceRequest < 3) {
    unittest.expect(
      o.configurationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    checkDeviceIdentifier(o.deviceIdentifier!);
    checkDeviceMetadata(o.deviceMetadata!);
    unittest.expect(
      o.googleWorkspaceCustomerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preProvisioningToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.simlockProfileId!,
      unittest.equals('foo'),
    );
  }
  buildCounterClaimDeviceRequest--;
}

core.int buildCounterClaimDeviceResponse = 0;
api.ClaimDeviceResponse buildClaimDeviceResponse() {
  final o = api.ClaimDeviceResponse();
  buildCounterClaimDeviceResponse++;
  if (buildCounterClaimDeviceResponse < 3) {
    o.deviceId = 'foo';
    o.deviceName = 'foo';
  }
  buildCounterClaimDeviceResponse--;
  return o;
}

void checkClaimDeviceResponse(api.ClaimDeviceResponse o) {
  buildCounterClaimDeviceResponse++;
  if (buildCounterClaimDeviceResponse < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceName!,
      unittest.equals('foo'),
    );
  }
  buildCounterClaimDeviceResponse--;
}

core.List<api.PartnerClaim> buildUnnamed0() => [
      buildPartnerClaim(),
      buildPartnerClaim(),
    ];

void checkUnnamed0(core.List<api.PartnerClaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerClaim(o[0]);
  checkPartnerClaim(o[1]);
}

core.int buildCounterClaimDevicesRequest = 0;
api.ClaimDevicesRequest buildClaimDevicesRequest() {
  final o = api.ClaimDevicesRequest();
  buildCounterClaimDevicesRequest++;
  if (buildCounterClaimDevicesRequest < 3) {
    o.claims = buildUnnamed0();
  }
  buildCounterClaimDevicesRequest--;
  return o;
}

void checkClaimDevicesRequest(api.ClaimDevicesRequest o) {
  buildCounterClaimDevicesRequest++;
  if (buildCounterClaimDevicesRequest < 3) {
    checkUnnamed0(o.claims!);
  }
  buildCounterClaimDevicesRequest--;
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

core.int buildCounterCompany = 0;
api.Company buildCompany() {
  final o = api.Company();
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    o.adminEmails = buildUnnamed1();
    o.companyId = 'foo';
    o.companyName = 'foo';
    o.googleWorkspaceAccount = buildGoogleWorkspaceAccount();
    o.languageCode = 'foo';
    o.name = 'foo';
    o.ownerEmails = buildUnnamed2();
    o.skipWelcomeEmail = true;
    o.termsStatus = 'foo';
  }
  buildCounterCompany--;
  return o;
}

void checkCompany(api.Company o) {
  buildCounterCompany++;
  if (buildCounterCompany < 3) {
    checkUnnamed1(o.adminEmails!);
    unittest.expect(
      o.companyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.companyName!,
      unittest.equals('foo'),
    );
    checkGoogleWorkspaceAccount(o.googleWorkspaceAccount!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.ownerEmails!);
    unittest.expect(o.skipWelcomeEmail!, unittest.isTrue);
    unittest.expect(
      o.termsStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompany--;
}

core.int buildCounterConfiguration = 0;
api.Configuration buildConfiguration() {
  final o = api.Configuration();
  buildCounterConfiguration++;
  if (buildCounterConfiguration < 3) {
    o.companyName = 'foo';
    o.configurationId = 'foo';
    o.configurationName = 'foo';
    o.contactEmail = 'foo';
    o.contactPhone = 'foo';
    o.customMessage = 'foo';
    o.dpcExtras = 'foo';
    o.dpcResourcePath = 'foo';
    o.forcedResetTime = 'foo';
    o.isDefault = true;
    o.name = 'foo';
  }
  buildCounterConfiguration--;
  return o;
}

void checkConfiguration(api.Configuration o) {
  buildCounterConfiguration++;
  if (buildCounterConfiguration < 3) {
    unittest.expect(
      o.companyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configurationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configurationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactPhone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpcExtras!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpcResourcePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.forcedResetTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isDefault!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterConfiguration--;
}

core.int buildCounterCreateCustomerRequest = 0;
api.CreateCustomerRequest buildCreateCustomerRequest() {
  final o = api.CreateCustomerRequest();
  buildCounterCreateCustomerRequest++;
  if (buildCounterCreateCustomerRequest < 3) {
    o.customer = buildCompany();
  }
  buildCounterCreateCustomerRequest--;
  return o;
}

void checkCreateCustomerRequest(api.CreateCustomerRequest o) {
  buildCounterCreateCustomerRequest++;
  if (buildCounterCreateCustomerRequest < 3) {
    checkCompany(o.customer!);
  }
  buildCounterCreateCustomerRequest--;
}

core.int buildCounterCustomerApplyConfigurationRequest = 0;
api.CustomerApplyConfigurationRequest buildCustomerApplyConfigurationRequest() {
  final o = api.CustomerApplyConfigurationRequest();
  buildCounterCustomerApplyConfigurationRequest++;
  if (buildCounterCustomerApplyConfigurationRequest < 3) {
    o.configuration = 'foo';
    o.device = buildDeviceReference();
  }
  buildCounterCustomerApplyConfigurationRequest--;
  return o;
}

void checkCustomerApplyConfigurationRequest(
    api.CustomerApplyConfigurationRequest o) {
  buildCounterCustomerApplyConfigurationRequest++;
  if (buildCounterCustomerApplyConfigurationRequest < 3) {
    unittest.expect(
      o.configuration!,
      unittest.equals('foo'),
    );
    checkDeviceReference(o.device!);
  }
  buildCounterCustomerApplyConfigurationRequest--;
}

core.List<api.Configuration> buildUnnamed3() => [
      buildConfiguration(),
      buildConfiguration(),
    ];

void checkUnnamed3(core.List<api.Configuration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConfiguration(o[0]);
  checkConfiguration(o[1]);
}

core.int buildCounterCustomerListConfigurationsResponse = 0;
api.CustomerListConfigurationsResponse
    buildCustomerListConfigurationsResponse() {
  final o = api.CustomerListConfigurationsResponse();
  buildCounterCustomerListConfigurationsResponse++;
  if (buildCounterCustomerListConfigurationsResponse < 3) {
    o.configurations = buildUnnamed3();
  }
  buildCounterCustomerListConfigurationsResponse--;
  return o;
}

void checkCustomerListConfigurationsResponse(
    api.CustomerListConfigurationsResponse o) {
  buildCounterCustomerListConfigurationsResponse++;
  if (buildCounterCustomerListConfigurationsResponse < 3) {
    checkUnnamed3(o.configurations!);
  }
  buildCounterCustomerListConfigurationsResponse--;
}

core.List<api.Company> buildUnnamed4() => [
      buildCompany(),
      buildCompany(),
    ];

void checkUnnamed4(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterCustomerListCustomersResponse = 0;
api.CustomerListCustomersResponse buildCustomerListCustomersResponse() {
  final o = api.CustomerListCustomersResponse();
  buildCounterCustomerListCustomersResponse++;
  if (buildCounterCustomerListCustomersResponse < 3) {
    o.customers = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterCustomerListCustomersResponse--;
  return o;
}

void checkCustomerListCustomersResponse(api.CustomerListCustomersResponse o) {
  buildCounterCustomerListCustomersResponse++;
  if (buildCounterCustomerListCustomersResponse < 3) {
    checkUnnamed4(o.customers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerListCustomersResponse--;
}

core.List<api.Device> buildUnnamed5() => [
      buildDevice(),
      buildDevice(),
    ];

void checkUnnamed5(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterCustomerListDevicesResponse = 0;
api.CustomerListDevicesResponse buildCustomerListDevicesResponse() {
  final o = api.CustomerListDevicesResponse();
  buildCounterCustomerListDevicesResponse++;
  if (buildCounterCustomerListDevicesResponse < 3) {
    o.devices = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterCustomerListDevicesResponse--;
  return o;
}

void checkCustomerListDevicesResponse(api.CustomerListDevicesResponse o) {
  buildCounterCustomerListDevicesResponse++;
  if (buildCounterCustomerListDevicesResponse < 3) {
    checkUnnamed5(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerListDevicesResponse--;
}

core.List<api.Dpc> buildUnnamed6() => [
      buildDpc(),
      buildDpc(),
    ];

void checkUnnamed6(core.List<api.Dpc> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDpc(o[0]);
  checkDpc(o[1]);
}

core.int buildCounterCustomerListDpcsResponse = 0;
api.CustomerListDpcsResponse buildCustomerListDpcsResponse() {
  final o = api.CustomerListDpcsResponse();
  buildCounterCustomerListDpcsResponse++;
  if (buildCounterCustomerListDpcsResponse < 3) {
    o.dpcs = buildUnnamed6();
  }
  buildCounterCustomerListDpcsResponse--;
  return o;
}

void checkCustomerListDpcsResponse(api.CustomerListDpcsResponse o) {
  buildCounterCustomerListDpcsResponse++;
  if (buildCounterCustomerListDpcsResponse < 3) {
    checkUnnamed6(o.dpcs!);
  }
  buildCounterCustomerListDpcsResponse--;
}

core.int buildCounterCustomerRemoveConfigurationRequest = 0;
api.CustomerRemoveConfigurationRequest
    buildCustomerRemoveConfigurationRequest() {
  final o = api.CustomerRemoveConfigurationRequest();
  buildCounterCustomerRemoveConfigurationRequest++;
  if (buildCounterCustomerRemoveConfigurationRequest < 3) {
    o.device = buildDeviceReference();
  }
  buildCounterCustomerRemoveConfigurationRequest--;
  return o;
}

void checkCustomerRemoveConfigurationRequest(
    api.CustomerRemoveConfigurationRequest o) {
  buildCounterCustomerRemoveConfigurationRequest++;
  if (buildCounterCustomerRemoveConfigurationRequest < 3) {
    checkDeviceReference(o.device!);
  }
  buildCounterCustomerRemoveConfigurationRequest--;
}

core.int buildCounterCustomerUnclaimDeviceRequest = 0;
api.CustomerUnclaimDeviceRequest buildCustomerUnclaimDeviceRequest() {
  final o = api.CustomerUnclaimDeviceRequest();
  buildCounterCustomerUnclaimDeviceRequest++;
  if (buildCounterCustomerUnclaimDeviceRequest < 3) {
    o.device = buildDeviceReference();
  }
  buildCounterCustomerUnclaimDeviceRequest--;
  return o;
}

void checkCustomerUnclaimDeviceRequest(api.CustomerUnclaimDeviceRequest o) {
  buildCounterCustomerUnclaimDeviceRequest++;
  if (buildCounterCustomerUnclaimDeviceRequest < 3) {
    checkDeviceReference(o.device!);
  }
  buildCounterCustomerUnclaimDeviceRequest--;
}

core.List<api.DeviceClaim> buildUnnamed7() => [
      buildDeviceClaim(),
      buildDeviceClaim(),
    ];

void checkUnnamed7(core.List<api.DeviceClaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceClaim(o[0]);
  checkDeviceClaim(o[1]);
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.claims = buildUnnamed7();
    o.configuration = 'foo';
    o.deviceId = 'foo';
    o.deviceIdentifier = buildDeviceIdentifier();
    o.deviceMetadata = buildDeviceMetadata();
    o.name = 'foo';
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    checkUnnamed7(o.claims!);
    unittest.expect(
      o.configuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    checkDeviceIdentifier(o.deviceIdentifier!);
    checkDeviceMetadata(o.deviceMetadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceClaim = 0;
api.DeviceClaim buildDeviceClaim() {
  final o = api.DeviceClaim();
  buildCounterDeviceClaim++;
  if (buildCounterDeviceClaim < 3) {
    o.additionalService = 'foo';
    o.googleWorkspaceCustomerId = 'foo';
    o.ownerCompanyId = 'foo';
    o.resellerId = 'foo';
    o.sectionType = 'foo';
    o.vacationModeExpireTime = 'foo';
    o.vacationModeStartTime = 'foo';
  }
  buildCounterDeviceClaim--;
  return o;
}

void checkDeviceClaim(api.DeviceClaim o) {
  buildCounterDeviceClaim++;
  if (buildCounterDeviceClaim < 3) {
    unittest.expect(
      o.additionalService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleWorkspaceCustomerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ownerCompanyId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resellerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vacationModeExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vacationModeStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceClaim--;
}

core.int buildCounterDeviceIdentifier = 0;
api.DeviceIdentifier buildDeviceIdentifier() {
  final o = api.DeviceIdentifier();
  buildCounterDeviceIdentifier++;
  if (buildCounterDeviceIdentifier < 3) {
    o.chromeOsAttestedDeviceId = 'foo';
    o.deviceType = 'foo';
    o.imei = 'foo';
    o.manufacturer = 'foo';
    o.meid = 'foo';
    o.model = 'foo';
    o.serialNumber = 'foo';
  }
  buildCounterDeviceIdentifier--;
  return o;
}

void checkDeviceIdentifier(api.DeviceIdentifier o) {
  buildCounterDeviceIdentifier++;
  if (buildCounterDeviceIdentifier < 3) {
    unittest.expect(
      o.chromeOsAttestedDeviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imei!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceIdentifier--;
}

core.Map<core.String, core.String> buildUnnamed8() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8(core.Map<core.String, core.String> o) {
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

core.int buildCounterDeviceMetadata = 0;
api.DeviceMetadata buildDeviceMetadata() {
  final o = api.DeviceMetadata();
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    o.entries = buildUnnamed8();
  }
  buildCounterDeviceMetadata--;
  return o;
}

void checkDeviceMetadata(api.DeviceMetadata o) {
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    checkUnnamed8(o.entries!);
  }
  buildCounterDeviceMetadata--;
}

core.int buildCounterDeviceReference = 0;
api.DeviceReference buildDeviceReference() {
  final o = api.DeviceReference();
  buildCounterDeviceReference++;
  if (buildCounterDeviceReference < 3) {
    o.deviceId = 'foo';
    o.deviceIdentifier = buildDeviceIdentifier();
  }
  buildCounterDeviceReference--;
  return o;
}

void checkDeviceReference(api.DeviceReference o) {
  buildCounterDeviceReference++;
  if (buildCounterDeviceReference < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    checkDeviceIdentifier(o.deviceIdentifier!);
  }
  buildCounterDeviceReference--;
}

core.int buildCounterDpc = 0;
api.Dpc buildDpc() {
  final o = api.Dpc();
  buildCounterDpc++;
  if (buildCounterDpc < 3) {
    o.dpcName = 'foo';
    o.name = 'foo';
    o.packageName = 'foo';
  }
  buildCounterDpc--;
  return o;
}

void checkDpc(api.Dpc o) {
  buildCounterDpc++;
  if (buildCounterDpc < 3) {
    unittest.expect(
      o.dpcName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDpc--;
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

core.int buildCounterFindDevicesByDeviceIdentifierRequest = 0;
api.FindDevicesByDeviceIdentifierRequest
    buildFindDevicesByDeviceIdentifierRequest() {
  final o = api.FindDevicesByDeviceIdentifierRequest();
  buildCounterFindDevicesByDeviceIdentifierRequest++;
  if (buildCounterFindDevicesByDeviceIdentifierRequest < 3) {
    o.deviceIdentifier = buildDeviceIdentifier();
    o.limit = 'foo';
    o.pageToken = 'foo';
  }
  buildCounterFindDevicesByDeviceIdentifierRequest--;
  return o;
}

void checkFindDevicesByDeviceIdentifierRequest(
    api.FindDevicesByDeviceIdentifierRequest o) {
  buildCounterFindDevicesByDeviceIdentifierRequest++;
  if (buildCounterFindDevicesByDeviceIdentifierRequest < 3) {
    checkDeviceIdentifier(o.deviceIdentifier!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterFindDevicesByDeviceIdentifierRequest--;
}

core.List<api.Device> buildUnnamed9() => [
      buildDevice(),
      buildDevice(),
    ];

void checkUnnamed9(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterFindDevicesByDeviceIdentifierResponse = 0;
api.FindDevicesByDeviceIdentifierResponse
    buildFindDevicesByDeviceIdentifierResponse() {
  final o = api.FindDevicesByDeviceIdentifierResponse();
  buildCounterFindDevicesByDeviceIdentifierResponse++;
  if (buildCounterFindDevicesByDeviceIdentifierResponse < 3) {
    o.devices = buildUnnamed9();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterFindDevicesByDeviceIdentifierResponse--;
  return o;
}

void checkFindDevicesByDeviceIdentifierResponse(
    api.FindDevicesByDeviceIdentifierResponse o) {
  buildCounterFindDevicesByDeviceIdentifierResponse++;
  if (buildCounterFindDevicesByDeviceIdentifierResponse < 3) {
    checkUnnamed9(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterFindDevicesByDeviceIdentifierResponse--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.int buildCounterFindDevicesByOwnerRequest = 0;
api.FindDevicesByOwnerRequest buildFindDevicesByOwnerRequest() {
  final o = api.FindDevicesByOwnerRequest();
  buildCounterFindDevicesByOwnerRequest++;
  if (buildCounterFindDevicesByOwnerRequest < 3) {
    o.customerId = buildUnnamed10();
    o.googleWorkspaceCustomerId = buildUnnamed11();
    o.limit = 'foo';
    o.pageToken = 'foo';
    o.sectionType = 'foo';
  }
  buildCounterFindDevicesByOwnerRequest--;
  return o;
}

void checkFindDevicesByOwnerRequest(api.FindDevicesByOwnerRequest o) {
  buildCounterFindDevicesByOwnerRequest++;
  if (buildCounterFindDevicesByOwnerRequest < 3) {
    checkUnnamed10(o.customerId!);
    checkUnnamed11(o.googleWorkspaceCustomerId!);
    unittest.expect(
      o.limit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sectionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterFindDevicesByOwnerRequest--;
}

core.List<api.Device> buildUnnamed12() => [
      buildDevice(),
      buildDevice(),
    ];

void checkUnnamed12(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterFindDevicesByOwnerResponse = 0;
api.FindDevicesByOwnerResponse buildFindDevicesByOwnerResponse() {
  final o = api.FindDevicesByOwnerResponse();
  buildCounterFindDevicesByOwnerResponse++;
  if (buildCounterFindDevicesByOwnerResponse < 3) {
    o.devices = buildUnnamed12();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterFindDevicesByOwnerResponse--;
  return o;
}

void checkFindDevicesByOwnerResponse(api.FindDevicesByOwnerResponse o) {
  buildCounterFindDevicesByOwnerResponse++;
  if (buildCounterFindDevicesByOwnerResponse < 3) {
    checkUnnamed12(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterFindDevicesByOwnerResponse--;
}

core.int buildCounterGetDeviceSimLockStateRequest = 0;
api.GetDeviceSimLockStateRequest buildGetDeviceSimLockStateRequest() {
  final o = api.GetDeviceSimLockStateRequest();
  buildCounterGetDeviceSimLockStateRequest++;
  if (buildCounterGetDeviceSimLockStateRequest < 3) {
    o.deviceIdentifier = buildDeviceIdentifier();
  }
  buildCounterGetDeviceSimLockStateRequest--;
  return o;
}

void checkGetDeviceSimLockStateRequest(api.GetDeviceSimLockStateRequest o) {
  buildCounterGetDeviceSimLockStateRequest++;
  if (buildCounterGetDeviceSimLockStateRequest < 3) {
    checkDeviceIdentifier(o.deviceIdentifier!);
  }
  buildCounterGetDeviceSimLockStateRequest--;
}

core.int buildCounterGetDeviceSimLockStateResponse = 0;
api.GetDeviceSimLockStateResponse buildGetDeviceSimLockStateResponse() {
  final o = api.GetDeviceSimLockStateResponse();
  buildCounterGetDeviceSimLockStateResponse++;
  if (buildCounterGetDeviceSimLockStateResponse < 3) {
    o.simLockState = 'foo';
  }
  buildCounterGetDeviceSimLockStateResponse--;
  return o;
}

void checkGetDeviceSimLockStateResponse(api.GetDeviceSimLockStateResponse o) {
  buildCounterGetDeviceSimLockStateResponse++;
  if (buildCounterGetDeviceSimLockStateResponse < 3) {
    unittest.expect(
      o.simLockState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetDeviceSimLockStateResponse--;
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.int buildCounterGoogleWorkspaceAccount = 0;
api.GoogleWorkspaceAccount buildGoogleWorkspaceAccount() {
  final o = api.GoogleWorkspaceAccount();
  buildCounterGoogleWorkspaceAccount++;
  if (buildCounterGoogleWorkspaceAccount < 3) {
    o.customerId = 'foo';
    o.preProvisioningTokens = buildUnnamed13();
  }
  buildCounterGoogleWorkspaceAccount--;
  return o;
}

void checkGoogleWorkspaceAccount(api.GoogleWorkspaceAccount o) {
  buildCounterGoogleWorkspaceAccount++;
  if (buildCounterGoogleWorkspaceAccount < 3) {
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.preProvisioningTokens!);
  }
  buildCounterGoogleWorkspaceAccount--;
}

core.List<api.Company> buildUnnamed14() => [
      buildCompany(),
      buildCompany(),
    ];

void checkUnnamed14(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListCustomersResponse = 0;
api.ListCustomersResponse buildListCustomersResponse() {
  final o = api.ListCustomersResponse();
  buildCounterListCustomersResponse++;
  if (buildCounterListCustomersResponse < 3) {
    o.customers = buildUnnamed14();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListCustomersResponse--;
  return o;
}

void checkListCustomersResponse(api.ListCustomersResponse o) {
  buildCounterListCustomersResponse++;
  if (buildCounterListCustomersResponse < 3) {
    checkUnnamed14(o.customers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListCustomersResponse--;
}

core.List<api.Company> buildUnnamed15() => [
      buildCompany(),
      buildCompany(),
    ];

void checkUnnamed15(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListVendorCustomersResponse = 0;
api.ListVendorCustomersResponse buildListVendorCustomersResponse() {
  final o = api.ListVendorCustomersResponse();
  buildCounterListVendorCustomersResponse++;
  if (buildCounterListVendorCustomersResponse < 3) {
    o.customers = buildUnnamed15();
    o.nextPageToken = 'foo';
    o.totalSize = 42;
  }
  buildCounterListVendorCustomersResponse--;
  return o;
}

void checkListVendorCustomersResponse(api.ListVendorCustomersResponse o) {
  buildCounterListVendorCustomersResponse++;
  if (buildCounterListVendorCustomersResponse < 3) {
    checkUnnamed15(o.customers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
  }
  buildCounterListVendorCustomersResponse--;
}

core.List<api.Company> buildUnnamed16() => [
      buildCompany(),
      buildCompany(),
    ];

void checkUnnamed16(core.List<api.Company> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompany(o[0]);
  checkCompany(o[1]);
}

core.int buildCounterListVendorsResponse = 0;
api.ListVendorsResponse buildListVendorsResponse() {
  final o = api.ListVendorsResponse();
  buildCounterListVendorsResponse++;
  if (buildCounterListVendorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.totalSize = 42;
    o.vendors = buildUnnamed16();
  }
  buildCounterListVendorsResponse--;
  return o;
}

void checkListVendorsResponse(api.ListVendorsResponse o) {
  buildCounterListVendorsResponse++;
  if (buildCounterListVendorsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalSize!,
      unittest.equals(42),
    );
    checkUnnamed16(o.vendors!);
  }
  buildCounterListVendorsResponse--;
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

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
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
    o.metadata = buildUnnamed17();
    o.name = 'foo';
    o.response = buildUnnamed18();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed17(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterPartnerClaim = 0;
api.PartnerClaim buildPartnerClaim() {
  final o = api.PartnerClaim();
  buildCounterPartnerClaim++;
  if (buildCounterPartnerClaim < 3) {
    o.configurationId = 'foo';
    o.customerId = 'foo';
    o.deviceIdentifier = buildDeviceIdentifier();
    o.deviceMetadata = buildDeviceMetadata();
    o.googleWorkspaceCustomerId = 'foo';
    o.preProvisioningToken = 'foo';
    o.sectionType = 'foo';
    o.simlockProfileId = 'foo';
  }
  buildCounterPartnerClaim--;
  return o;
}

void checkPartnerClaim(api.PartnerClaim o) {
  buildCounterPartnerClaim++;
  if (buildCounterPartnerClaim < 3) {
    unittest.expect(
      o.configurationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    checkDeviceIdentifier(o.deviceIdentifier!);
    checkDeviceMetadata(o.deviceMetadata!);
    unittest.expect(
      o.googleWorkspaceCustomerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preProvisioningToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.simlockProfileId!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartnerClaim--;
}

core.int buildCounterPartnerUnclaim = 0;
api.PartnerUnclaim buildPartnerUnclaim() {
  final o = api.PartnerUnclaim();
  buildCounterPartnerUnclaim++;
  if (buildCounterPartnerUnclaim < 3) {
    o.deviceId = 'foo';
    o.deviceIdentifier = buildDeviceIdentifier();
    o.sectionType = 'foo';
    o.vacationModeDays = 42;
    o.vacationModeExpireTime = 'foo';
  }
  buildCounterPartnerUnclaim--;
  return o;
}

void checkPartnerUnclaim(api.PartnerUnclaim o) {
  buildCounterPartnerUnclaim++;
  if (buildCounterPartnerUnclaim < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    checkDeviceIdentifier(o.deviceIdentifier!);
    unittest.expect(
      o.sectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vacationModeDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.vacationModeExpireTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPartnerUnclaim--;
}

core.Map<core.String, core.Object?> buildUnnamed19() => {
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

void checkUnnamed19(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed20() => [
      buildUnnamed19(),
      buildUnnamed19(),
    ];

void checkUnnamed20(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed19(o[0]);
  checkUnnamed19(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed20();
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
    checkUnnamed20(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterUnclaimDeviceRequest = 0;
api.UnclaimDeviceRequest buildUnclaimDeviceRequest() {
  final o = api.UnclaimDeviceRequest();
  buildCounterUnclaimDeviceRequest++;
  if (buildCounterUnclaimDeviceRequest < 3) {
    o.deviceId = 'foo';
    o.deviceIdentifier = buildDeviceIdentifier();
    o.sectionType = 'foo';
    o.vacationModeDays = 42;
    o.vacationModeExpireTime = 'foo';
  }
  buildCounterUnclaimDeviceRequest--;
  return o;
}

void checkUnclaimDeviceRequest(api.UnclaimDeviceRequest o) {
  buildCounterUnclaimDeviceRequest++;
  if (buildCounterUnclaimDeviceRequest < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    checkDeviceIdentifier(o.deviceIdentifier!);
    unittest.expect(
      o.sectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vacationModeDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.vacationModeExpireTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUnclaimDeviceRequest--;
}

core.List<api.PartnerUnclaim> buildUnnamed21() => [
      buildPartnerUnclaim(),
      buildPartnerUnclaim(),
    ];

void checkUnnamed21(core.List<api.PartnerUnclaim> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerUnclaim(o[0]);
  checkPartnerUnclaim(o[1]);
}

core.int buildCounterUnclaimDevicesRequest = 0;
api.UnclaimDevicesRequest buildUnclaimDevicesRequest() {
  final o = api.UnclaimDevicesRequest();
  buildCounterUnclaimDevicesRequest++;
  if (buildCounterUnclaimDevicesRequest < 3) {
    o.unclaims = buildUnnamed21();
  }
  buildCounterUnclaimDevicesRequest--;
  return o;
}

void checkUnclaimDevicesRequest(api.UnclaimDevicesRequest o) {
  buildCounterUnclaimDevicesRequest++;
  if (buildCounterUnclaimDevicesRequest < 3) {
    checkUnnamed21(o.unclaims!);
  }
  buildCounterUnclaimDevicesRequest--;
}

core.List<api.UpdateMetadataArguments> buildUnnamed22() => [
      buildUpdateMetadataArguments(),
      buildUpdateMetadataArguments(),
    ];

void checkUnnamed22(core.List<api.UpdateMetadataArguments> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateMetadataArguments(o[0]);
  checkUpdateMetadataArguments(o[1]);
}

core.int buildCounterUpdateDeviceMetadataInBatchRequest = 0;
api.UpdateDeviceMetadataInBatchRequest
    buildUpdateDeviceMetadataInBatchRequest() {
  final o = api.UpdateDeviceMetadataInBatchRequest();
  buildCounterUpdateDeviceMetadataInBatchRequest++;
  if (buildCounterUpdateDeviceMetadataInBatchRequest < 3) {
    o.updates = buildUnnamed22();
  }
  buildCounterUpdateDeviceMetadataInBatchRequest--;
  return o;
}

void checkUpdateDeviceMetadataInBatchRequest(
    api.UpdateDeviceMetadataInBatchRequest o) {
  buildCounterUpdateDeviceMetadataInBatchRequest++;
  if (buildCounterUpdateDeviceMetadataInBatchRequest < 3) {
    checkUnnamed22(o.updates!);
  }
  buildCounterUpdateDeviceMetadataInBatchRequest--;
}

core.int buildCounterUpdateDeviceMetadataRequest = 0;
api.UpdateDeviceMetadataRequest buildUpdateDeviceMetadataRequest() {
  final o = api.UpdateDeviceMetadataRequest();
  buildCounterUpdateDeviceMetadataRequest++;
  if (buildCounterUpdateDeviceMetadataRequest < 3) {
    o.deviceMetadata = buildDeviceMetadata();
  }
  buildCounterUpdateDeviceMetadataRequest--;
  return o;
}

void checkUpdateDeviceMetadataRequest(api.UpdateDeviceMetadataRequest o) {
  buildCounterUpdateDeviceMetadataRequest++;
  if (buildCounterUpdateDeviceMetadataRequest < 3) {
    checkDeviceMetadata(o.deviceMetadata!);
  }
  buildCounterUpdateDeviceMetadataRequest--;
}

core.int buildCounterUpdateMetadataArguments = 0;
api.UpdateMetadataArguments buildUpdateMetadataArguments() {
  final o = api.UpdateMetadataArguments();
  buildCounterUpdateMetadataArguments++;
  if (buildCounterUpdateMetadataArguments < 3) {
    o.deviceId = 'foo';
    o.deviceIdentifier = buildDeviceIdentifier();
    o.deviceMetadata = buildDeviceMetadata();
  }
  buildCounterUpdateMetadataArguments--;
  return o;
}

void checkUpdateMetadataArguments(api.UpdateMetadataArguments o) {
  buildCounterUpdateMetadataArguments++;
  if (buildCounterUpdateMetadataArguments < 3) {
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    checkDeviceIdentifier(o.deviceIdentifier!);
    checkDeviceMetadata(o.deviceMetadata!);
  }
  buildCounterUpdateMetadataArguments--;
}

void main() {
  unittest.group('obj-schema-ClaimDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClaimDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClaimDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClaimDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-ClaimDeviceResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClaimDeviceResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClaimDeviceResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClaimDeviceResponse(od);
    });
  });

  unittest.group('obj-schema-ClaimDevicesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClaimDevicesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClaimDevicesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClaimDevicesRequest(od);
    });
  });

  unittest.group('obj-schema-Company', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompany();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Company.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCompany(od);
    });
  });

  unittest.group('obj-schema-Configuration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfiguration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Configuration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfiguration(od);
    });
  });

  unittest.group('obj-schema-CreateCustomerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateCustomerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateCustomerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateCustomerRequest(od);
    });
  });

  unittest.group('obj-schema-CustomerApplyConfigurationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerApplyConfigurationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerApplyConfigurationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerApplyConfigurationRequest(od);
    });
  });

  unittest.group('obj-schema-CustomerListConfigurationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerListConfigurationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerListConfigurationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerListConfigurationsResponse(od);
    });
  });

  unittest.group('obj-schema-CustomerListCustomersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerListCustomersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerListCustomersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerListCustomersResponse(od);
    });
  });

  unittest.group('obj-schema-CustomerListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerListDevicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerListDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-CustomerListDpcsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerListDpcsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerListDpcsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerListDpcsResponse(od);
    });
  });

  unittest.group('obj-schema-CustomerRemoveConfigurationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerRemoveConfigurationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerRemoveConfigurationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerRemoveConfigurationRequest(od);
    });
  });

  unittest.group('obj-schema-CustomerUnclaimDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomerUnclaimDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomerUnclaimDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerUnclaimDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Device.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDevice(od);
    });
  });

  unittest.group('obj-schema-DeviceClaim', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceClaim();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceClaim.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceClaim(od);
    });
  });

  unittest.group('obj-schema-DeviceIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceIdentifier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceIdentifier(od);
    });
  });

  unittest.group('obj-schema-DeviceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceMetadata(od);
    });
  });

  unittest.group('obj-schema-DeviceReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceReference(od);
    });
  });

  unittest.group('obj-schema-Dpc', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDpc();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dpc.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDpc(od);
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

  unittest.group('obj-schema-FindDevicesByDeviceIdentifierRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindDevicesByDeviceIdentifierRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindDevicesByDeviceIdentifierRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindDevicesByDeviceIdentifierRequest(od);
    });
  });

  unittest.group('obj-schema-FindDevicesByDeviceIdentifierResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindDevicesByDeviceIdentifierResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindDevicesByDeviceIdentifierResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindDevicesByDeviceIdentifierResponse(od);
    });
  });

  unittest.group('obj-schema-FindDevicesByOwnerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindDevicesByOwnerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindDevicesByOwnerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindDevicesByOwnerRequest(od);
    });
  });

  unittest.group('obj-schema-FindDevicesByOwnerResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFindDevicesByOwnerResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FindDevicesByOwnerResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFindDevicesByOwnerResponse(od);
    });
  });

  unittest.group('obj-schema-GetDeviceSimLockStateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetDeviceSimLockStateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetDeviceSimLockStateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetDeviceSimLockStateRequest(od);
    });
  });

  unittest.group('obj-schema-GetDeviceSimLockStateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetDeviceSimLockStateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetDeviceSimLockStateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetDeviceSimLockStateResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleWorkspaceAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleWorkspaceAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleWorkspaceAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleWorkspaceAccount(od);
    });
  });

  unittest.group('obj-schema-ListCustomersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCustomersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCustomersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCustomersResponse(od);
    });
  });

  unittest.group('obj-schema-ListVendorCustomersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVendorCustomersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVendorCustomersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVendorCustomersResponse(od);
    });
  });

  unittest.group('obj-schema-ListVendorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListVendorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListVendorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListVendorsResponse(od);
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

  unittest.group('obj-schema-PartnerClaim', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerClaim();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerClaim.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartnerClaim(od);
    });
  });

  unittest.group('obj-schema-PartnerUnclaim', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerUnclaim();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerUnclaim.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartnerUnclaim(od);
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

  unittest.group('obj-schema-UnclaimDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnclaimDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnclaimDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnclaimDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-UnclaimDevicesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnclaimDevicesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnclaimDevicesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnclaimDevicesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDeviceMetadataInBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDeviceMetadataInBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDeviceMetadataInBatchRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDeviceMetadataInBatchRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDeviceMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDeviceMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDeviceMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDeviceMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateMetadataArguments', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateMetadataArguments();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateMetadataArguments.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateMetadataArguments(od);
    });
  });

  unittest.group('resource-CustomersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).customers;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/customers'),
        );
        pathOffset += 12;

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
        final resp = convert.json.encode(buildCustomerListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkCustomerListCustomersResponse(
          response as api.CustomerListCustomersResponse);
    });
  });

  unittest.group('resource-CustomersConfigurationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidProvisioningPartnerApi(mock).customers.configurations;
      final arg_request = buildConfiguration();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Configuration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConfiguration(obj);

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
        final resp = convert.json.encode(buildConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkConfiguration(response as api.Configuration);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidProvisioningPartnerApi(mock).customers.configurations;
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
      final res =
          api.AndroidProvisioningPartnerApi(mock).customers.configurations;
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
        final resp = convert.json.encode(buildConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkConfiguration(response as api.Configuration);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidProvisioningPartnerApi(mock).customers.configurations;
      final arg_parent = 'foo';
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
            convert.json.encode(buildCustomerListConfigurationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkCustomerListConfigurationsResponse(
          response as api.CustomerListConfigurationsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidProvisioningPartnerApi(mock).customers.configurations;
      final arg_request = buildConfiguration();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Configuration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConfiguration(obj);

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
        final resp = convert.json.encode(buildConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkConfiguration(response as api.Configuration);
    });
  });

  unittest.group('resource-CustomersDevicesResource', () {
    unittest.test('method--applyConfiguration', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).customers.devices;
      final arg_request = buildCustomerApplyConfigurationRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomerApplyConfigurationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomerApplyConfigurationRequest(obj);

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
      final response = await res.applyConfiguration(arg_request, arg_parent,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).customers.devices;
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
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).customers.devices;
      final arg_parent = 'foo';
      final arg_pageSize = 'foo';
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
          queryMap['pageSize']!.first,
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
        final resp = convert.json.encode(buildCustomerListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkCustomerListDevicesResponse(
          response as api.CustomerListDevicesResponse);
    });

    unittest.test('method--removeConfiguration', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).customers.devices;
      final arg_request = buildCustomerRemoveConfigurationRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomerRemoveConfigurationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomerRemoveConfigurationRequest(obj);

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
      final response = await res.removeConfiguration(arg_request, arg_parent,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--unclaim', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).customers.devices;
      final arg_request = buildCustomerUnclaimDeviceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CustomerUnclaimDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomerUnclaimDeviceRequest(obj);

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
          await res.unclaim(arg_request, arg_parent, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-CustomersDpcsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).customers.dpcs;
      final arg_parent = 'foo';
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
        final resp = convert.json.encode(buildCustomerListDpcsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent, $fields: arg_$fields);
      checkCustomerListDpcsResponse(response as api.CustomerListDpcsResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).operations;
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

  unittest.group('resource-PartnersCustomersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.customers;
      final arg_request = buildCreateCustomerRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateCustomerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateCustomerRequest(obj);

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
        final resp = convert.json.encode(buildCompany());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkCompany(response as api.Company);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.customers;
      final arg_partnerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
        final resp = convert.json.encode(buildListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_partnerId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCustomersResponse(response as api.ListCustomersResponse);
    });
  });

  unittest.group('resource-PartnersDevicesResource', () {
    unittest.test('method--claim', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildClaimDeviceRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClaimDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClaimDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
        final resp = convert.json.encode(buildClaimDeviceResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.claim(arg_request, arg_partnerId, $fields: arg_$fields);
      checkClaimDeviceResponse(response as api.ClaimDeviceResponse);
    });

    unittest.test('method--claimAsync', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildClaimDevicesRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ClaimDevicesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkClaimDevicesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
      final response = await res.claimAsync(arg_request, arg_partnerId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--findByIdentifier', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildFindDevicesByDeviceIdentifierRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FindDevicesByDeviceIdentifierRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFindDevicesByDeviceIdentifierRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
            convert.json.encode(buildFindDevicesByDeviceIdentifierResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findByIdentifier(arg_request, arg_partnerId,
          $fields: arg_$fields);
      checkFindDevicesByDeviceIdentifierResponse(
          response as api.FindDevicesByDeviceIdentifierResponse);
    });

    unittest.test('method--findByOwner', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildFindDevicesByOwnerRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FindDevicesByOwnerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFindDevicesByOwnerRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
        final resp = convert.json.encode(buildFindDevicesByOwnerResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findByOwner(arg_request, arg_partnerId,
          $fields: arg_$fields);
      checkFindDevicesByOwnerResponse(
          response as api.FindDevicesByOwnerResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
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
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--getSimLockState', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildGetDeviceSimLockStateRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetDeviceSimLockStateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetDeviceSimLockStateRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
        final resp = convert.json.encode(buildGetDeviceSimLockStateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSimLockState(arg_request, arg_partnerId,
          $fields: arg_$fields);
      checkGetDeviceSimLockStateResponse(
          response as api.GetDeviceSimLockStateResponse);
    });

    unittest.test('method--metadata', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildUpdateDeviceMetadataRequest();
      final arg_metadataOwnerId = 'foo';
      final arg_deviceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateDeviceMetadataRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateDeviceMetadataRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
        final resp = convert.json.encode(buildDeviceMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.metadata(
          arg_request, arg_metadataOwnerId, arg_deviceId,
          $fields: arg_$fields);
      checkDeviceMetadata(response as api.DeviceMetadata);
    });

    unittest.test('method--unclaim', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildUnclaimDeviceRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UnclaimDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnclaimDeviceRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
          await res.unclaim(arg_request, arg_partnerId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--unclaimAsync', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildUnclaimDevicesRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UnclaimDevicesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUnclaimDevicesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
      final response = await res.unclaimAsync(arg_request, arg_partnerId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--updateMetadataAsync', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.devices;
      final arg_request = buildUpdateDeviceMetadataInBatchRequest();
      final arg_partnerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateDeviceMetadataInBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateDeviceMetadataInBatchRequest(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/partners/'),
        );
        pathOffset += 12;
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
      final response = await res.updateMetadataAsync(arg_request, arg_partnerId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-PartnersVendorsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidProvisioningPartnerApi(mock).partners.vendors;
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
        final resp = convert.json.encode(buildListVendorsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVendorsResponse(response as api.ListVendorsResponse);
    });
  });

  unittest.group('resource-PartnersVendorsCustomersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidProvisioningPartnerApi(mock).partners.vendors.customers;
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
        final resp = convert.json.encode(buildListVendorCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListVendorCustomersResponse(
          response as api.ListVendorCustomersResponse);
    });
  });
}
