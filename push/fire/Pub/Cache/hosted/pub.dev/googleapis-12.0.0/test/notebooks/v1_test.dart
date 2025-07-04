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

import 'package:googleapis/notebooks/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  final o = api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.coreCount = 'foo';
    o.type = 'foo';
  }
  buildCounterAcceleratorConfig--;
  return o;
}

void checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(
      o.coreCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAcceleratorConfig--;
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

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed0();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed0(o.members!);
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinding--;
}

core.int buildCounterBootImage = 0;
api.BootImage buildBootImage() {
  final o = api.BootImage();
  buildCounterBootImage++;
  if (buildCounterBootImage < 3) {}
  buildCounterBootImage--;
  return o;
}

void checkBootImage(api.BootImage o) {
  buildCounterBootImage++;
  if (buildCounterBootImage < 3) {}
  buildCounterBootImage--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterContainerImage = 0;
api.ContainerImage buildContainerImage() {
  final o = api.ContainerImage();
  buildCounterContainerImage++;
  if (buildCounterContainerImage < 3) {
    o.repository = 'foo';
    o.tag = 'foo';
  }
  buildCounterContainerImage--;
  return o;
}

void checkContainerImage(api.ContainerImage o) {
  buildCounterContainerImage++;
  if (buildCounterContainerImage < 3) {
    unittest.expect(
      o.repository!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterContainerImage--;
}

core.int buildCounterDataprocParameters = 0;
api.DataprocParameters buildDataprocParameters() {
  final o = api.DataprocParameters();
  buildCounterDataprocParameters++;
  if (buildCounterDataprocParameters < 3) {
    o.cluster = 'foo';
  }
  buildCounterDataprocParameters--;
  return o;
}

void checkDataprocParameters(api.DataprocParameters o) {
  buildCounterDataprocParameters++;
  if (buildCounterDataprocParameters < 3) {
    unittest.expect(
      o.cluster!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataprocParameters--;
}

core.int buildCounterDiagnoseInstanceRequest = 0;
api.DiagnoseInstanceRequest buildDiagnoseInstanceRequest() {
  final o = api.DiagnoseInstanceRequest();
  buildCounterDiagnoseInstanceRequest++;
  if (buildCounterDiagnoseInstanceRequest < 3) {
    o.diagnosticConfig = buildDiagnosticConfig();
    o.timeoutMinutes = 42;
  }
  buildCounterDiagnoseInstanceRequest--;
  return o;
}

void checkDiagnoseInstanceRequest(api.DiagnoseInstanceRequest o) {
  buildCounterDiagnoseInstanceRequest++;
  if (buildCounterDiagnoseInstanceRequest < 3) {
    checkDiagnosticConfig(o.diagnosticConfig!);
    unittest.expect(
      o.timeoutMinutes!,
      unittest.equals(42),
    );
  }
  buildCounterDiagnoseInstanceRequest--;
}

core.int buildCounterDiagnoseRuntimeRequest = 0;
api.DiagnoseRuntimeRequest buildDiagnoseRuntimeRequest() {
  final o = api.DiagnoseRuntimeRequest();
  buildCounterDiagnoseRuntimeRequest++;
  if (buildCounterDiagnoseRuntimeRequest < 3) {
    o.diagnosticConfig = buildDiagnosticConfig();
    o.timeoutMinutes = 42;
  }
  buildCounterDiagnoseRuntimeRequest--;
  return o;
}

void checkDiagnoseRuntimeRequest(api.DiagnoseRuntimeRequest o) {
  buildCounterDiagnoseRuntimeRequest++;
  if (buildCounterDiagnoseRuntimeRequest < 3) {
    checkDiagnosticConfig(o.diagnosticConfig!);
    unittest.expect(
      o.timeoutMinutes!,
      unittest.equals(42),
    );
  }
  buildCounterDiagnoseRuntimeRequest--;
}

core.int buildCounterDiagnosticConfig = 0;
api.DiagnosticConfig buildDiagnosticConfig() {
  final o = api.DiagnosticConfig();
  buildCounterDiagnosticConfig++;
  if (buildCounterDiagnosticConfig < 3) {
    o.copyHomeFilesFlagEnabled = true;
    o.gcsBucket = 'foo';
    o.packetCaptureFlagEnabled = true;
    o.relativePath = 'foo';
    o.repairFlagEnabled = true;
  }
  buildCounterDiagnosticConfig--;
  return o;
}

void checkDiagnosticConfig(api.DiagnosticConfig o) {
  buildCounterDiagnosticConfig++;
  if (buildCounterDiagnosticConfig < 3) {
    unittest.expect(o.copyHomeFilesFlagEnabled!, unittest.isTrue);
    unittest.expect(
      o.gcsBucket!,
      unittest.equals('foo'),
    );
    unittest.expect(o.packetCaptureFlagEnabled!, unittest.isTrue);
    unittest.expect(
      o.relativePath!,
      unittest.equals('foo'),
    );
    unittest.expect(o.repairFlagEnabled!, unittest.isTrue);
  }
  buildCounterDiagnosticConfig--;
}

core.List<api.GuestOsFeature> buildUnnamed1() => [
      buildGuestOsFeature(),
      buildGuestOsFeature(),
    ];

void checkUnnamed1(core.List<api.GuestOsFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuestOsFeature(o[0]);
  checkGuestOsFeature(o[1]);
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

core.int buildCounterDisk = 0;
api.Disk buildDisk() {
  final o = api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.autoDelete = true;
    o.boot = true;
    o.deviceName = 'foo';
    o.diskSizeGb = 'foo';
    o.guestOsFeatures = buildUnnamed1();
    o.index = 'foo';
    o.interface = 'foo';
    o.kind = 'foo';
    o.licenses = buildUnnamed2();
    o.mode = 'foo';
    o.source = 'foo';
    o.type = 'foo';
  }
  buildCounterDisk--;
  return o;
}

void checkDisk(api.Disk o) {
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    unittest.expect(o.autoDelete!, unittest.isTrue);
    unittest.expect(o.boot!, unittest.isTrue);
    unittest.expect(
      o.deviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.guestOsFeatures!);
    unittest.expect(
      o.index!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interface!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.licenses!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisk--;
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

core.int buildCounterEncryptionConfig = 0;
api.EncryptionConfig buildEncryptionConfig() {
  final o = api.EncryptionConfig();
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    o.kmsKey = 'foo';
  }
  buildCounterEncryptionConfig--;
  return o;
}

void checkEncryptionConfig(api.EncryptionConfig o) {
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterEncryptionConfig--;
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.containerImage = buildContainerImage();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.postStartupScript = 'foo';
    o.vmImage = buildVmImage();
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    checkContainerImage(o.containerImage!);
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
    unittest.expect(
      o.postStartupScript!,
      unittest.equals('foo'),
    );
    checkVmImage(o.vmImage!);
  }
  buildCounterEnvironment--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
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

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  final o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.details = buildUnnamed3();
    o.reportTime = 'foo';
    o.type = 'foo';
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    checkUnnamed3(o.details!);
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterEvent--;
}

core.int buildCounterExecution = 0;
api.Execution buildExecution() {
  final o = api.Execution();
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.executionTemplate = buildExecutionTemplate();
    o.jobUri = 'foo';
    o.name = 'foo';
    o.outputNotebookFile = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterExecution--;
  return o;
}

void checkExecution(api.Execution o) {
  buildCounterExecution++;
  if (buildCounterExecution < 3) {
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
    checkExecutionTemplate(o.executionTemplate!);
    unittest.expect(
      o.jobUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputNotebookFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecution--;
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

core.int buildCounterExecutionTemplate = 0;
api.ExecutionTemplate buildExecutionTemplate() {
  final o = api.ExecutionTemplate();
  buildCounterExecutionTemplate++;
  if (buildCounterExecutionTemplate < 3) {
    o.acceleratorConfig = buildSchedulerAcceleratorConfig();
    o.containerImageUri = 'foo';
    o.dataprocParameters = buildDataprocParameters();
    o.inputNotebookFile = 'foo';
    o.jobType = 'foo';
    o.kernelSpec = 'foo';
    o.labels = buildUnnamed4();
    o.masterType = 'foo';
    o.outputNotebookFolder = 'foo';
    o.parameters = 'foo';
    o.paramsYamlFile = 'foo';
    o.scaleTier = 'foo';
    o.serviceAccount = 'foo';
    o.tensorboard = 'foo';
    o.vertexAiParameters = buildVertexAIParameters();
  }
  buildCounterExecutionTemplate--;
  return o;
}

void checkExecutionTemplate(api.ExecutionTemplate o) {
  buildCounterExecutionTemplate++;
  if (buildCounterExecutionTemplate < 3) {
    checkSchedulerAcceleratorConfig(o.acceleratorConfig!);
    unittest.expect(
      o.containerImageUri!,
      unittest.equals('foo'),
    );
    checkDataprocParameters(o.dataprocParameters!);
    unittest.expect(
      o.inputNotebookFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelSpec!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.labels!);
    unittest.expect(
      o.masterType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outputNotebookFolder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parameters!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paramsYamlFile!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scaleTier!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tensorboard!,
      unittest.equals('foo'),
    );
    checkVertexAIParameters(o.vertexAiParameters!);
  }
  buildCounterExecutionTemplate--;
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

core.Map<core.String, core.String> buildUnnamed5() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed5(core.Map<core.String, core.String> o) {
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

core.int buildCounterGetInstanceHealthResponse = 0;
api.GetInstanceHealthResponse buildGetInstanceHealthResponse() {
  final o = api.GetInstanceHealthResponse();
  buildCounterGetInstanceHealthResponse++;
  if (buildCounterGetInstanceHealthResponse < 3) {
    o.healthInfo = buildUnnamed5();
    o.healthState = 'foo';
  }
  buildCounterGetInstanceHealthResponse--;
  return o;
}

void checkGetInstanceHealthResponse(api.GetInstanceHealthResponse o) {
  buildCounterGetInstanceHealthResponse++;
  if (buildCounterGetInstanceHealthResponse < 3) {
    checkUnnamed5(o.healthInfo!);
    unittest.expect(
      o.healthState!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetInstanceHealthResponse--;
}

core.int buildCounterGuestOsFeature = 0;
api.GuestOsFeature buildGuestOsFeature() {
  final o = api.GuestOsFeature();
  buildCounterGuestOsFeature++;
  if (buildCounterGuestOsFeature < 3) {
    o.type = 'foo';
  }
  buildCounterGuestOsFeature--;
  return o;
}

void checkGuestOsFeature(api.GuestOsFeature o) {
  buildCounterGuestOsFeature++;
  if (buildCounterGuestOsFeature < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGuestOsFeature--;
}

core.List<api.Disk> buildUnnamed6() => [
      buildDisk(),
      buildDisk(),
    ];

void checkUnnamed6(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
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

core.List<api.UpgradeHistoryEntry> buildUnnamed12() => [
      buildUpgradeHistoryEntry(),
      buildUpgradeHistoryEntry(),
    ];

void checkUnnamed12(core.List<api.UpgradeHistoryEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpgradeHistoryEntry(o[0]);
  checkUpgradeHistoryEntry(o[1]);
}

core.int buildCounterInstance = 0;
api.Instance buildInstance() {
  final o = api.Instance();
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    o.acceleratorConfig = buildAcceleratorConfig();
    o.bootDiskSizeGb = 'foo';
    o.bootDiskType = 'foo';
    o.canIpForward = true;
    o.containerImage = buildContainerImage();
    o.createTime = 'foo';
    o.creator = 'foo';
    o.customGpuDriverPath = 'foo';
    o.dataDiskSizeGb = 'foo';
    o.dataDiskType = 'foo';
    o.diskEncryption = 'foo';
    o.disks = buildUnnamed6();
    o.installGpuDriver = true;
    o.instanceMigrationEligibility = buildInstanceMigrationEligibility();
    o.instanceOwners = buildUnnamed7();
    o.kmsKey = 'foo';
    o.labels = buildUnnamed8();
    o.machineType = 'foo';
    o.metadata = buildUnnamed9();
    o.migrated = true;
    o.name = 'foo';
    o.network = 'foo';
    o.nicType = 'foo';
    o.noProxyAccess = true;
    o.noPublicIp = true;
    o.noRemoveDataDisk = true;
    o.postStartupScript = 'foo';
    o.proxyUri = 'foo';
    o.reservationAffinity = buildReservationAffinity();
    o.serviceAccount = 'foo';
    o.serviceAccountScopes = buildUnnamed10();
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.state = 'foo';
    o.subnet = 'foo';
    o.tags = buildUnnamed11();
    o.updateTime = 'foo';
    o.upgradeHistory = buildUnnamed12();
    o.vmImage = buildVmImage();
  }
  buildCounterInstance--;
  return o;
}

void checkInstance(api.Instance o) {
  buildCounterInstance++;
  if (buildCounterInstance < 3) {
    checkAcceleratorConfig(o.acceleratorConfig!);
    unittest.expect(
      o.bootDiskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootDiskType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.canIpForward!, unittest.isTrue);
    checkContainerImage(o.containerImage!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customGpuDriverPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDiskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataDiskType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskEncryption!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.disks!);
    unittest.expect(o.installGpuDriver!, unittest.isTrue);
    checkInstanceMigrationEligibility(o.instanceMigrationEligibility!);
    checkUnnamed7(o.instanceOwners!);
    unittest.expect(
      o.kmsKey!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.labels!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.metadata!);
    unittest.expect(o.migrated!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nicType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.noProxyAccess!, unittest.isTrue);
    unittest.expect(o.noPublicIp!, unittest.isTrue);
    unittest.expect(o.noRemoveDataDisk!, unittest.isTrue);
    unittest.expect(
      o.postStartupScript!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proxyUri!,
      unittest.equals('foo'),
    );
    checkReservationAffinity(o.reservationAffinity!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.serviceAccountScopes!);
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnet!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.tags!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.upgradeHistory!);
    checkVmImage(o.vmImage!);
  }
  buildCounterInstance--;
}

core.int buildCounterInstanceConfig = 0;
api.InstanceConfig buildInstanceConfig() {
  final o = api.InstanceConfig();
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    o.enableHealthMonitoring = true;
    o.notebookUpgradeSchedule = 'foo';
  }
  buildCounterInstanceConfig--;
  return o;
}

void checkInstanceConfig(api.InstanceConfig o) {
  buildCounterInstanceConfig++;
  if (buildCounterInstanceConfig < 3) {
    unittest.expect(o.enableHealthMonitoring!, unittest.isTrue);
    unittest.expect(
      o.notebookUpgradeSchedule!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstanceConfig--;
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

core.int buildCounterInstanceMigrationEligibility = 0;
api.InstanceMigrationEligibility buildInstanceMigrationEligibility() {
  final o = api.InstanceMigrationEligibility();
  buildCounterInstanceMigrationEligibility++;
  if (buildCounterInstanceMigrationEligibility < 3) {
    o.errors = buildUnnamed13();
    o.warnings = buildUnnamed14();
  }
  buildCounterInstanceMigrationEligibility--;
  return o;
}

void checkInstanceMigrationEligibility(api.InstanceMigrationEligibility o) {
  buildCounterInstanceMigrationEligibility++;
  if (buildCounterInstanceMigrationEligibility < 3) {
    checkUnnamed13(o.errors!);
    checkUnnamed14(o.warnings!);
  }
  buildCounterInstanceMigrationEligibility--;
}

core.int buildCounterIsInstanceUpgradeableResponse = 0;
api.IsInstanceUpgradeableResponse buildIsInstanceUpgradeableResponse() {
  final o = api.IsInstanceUpgradeableResponse();
  buildCounterIsInstanceUpgradeableResponse++;
  if (buildCounterIsInstanceUpgradeableResponse < 3) {
    o.upgradeImage = 'foo';
    o.upgradeInfo = 'foo';
    o.upgradeVersion = 'foo';
    o.upgradeable = true;
  }
  buildCounterIsInstanceUpgradeableResponse--;
  return o;
}

void checkIsInstanceUpgradeableResponse(api.IsInstanceUpgradeableResponse o) {
  buildCounterIsInstanceUpgradeableResponse++;
  if (buildCounterIsInstanceUpgradeableResponse < 3) {
    unittest.expect(
      o.upgradeImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upgradeInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upgradeVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(o.upgradeable!, unittest.isTrue);
  }
  buildCounterIsInstanceUpgradeableResponse--;
}

core.List<api.Environment> buildUnnamed15() => [
      buildEnvironment(),
      buildEnvironment(),
    ];

void checkUnnamed15(core.List<api.Environment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnvironment(o[0]);
  checkEnvironment(o[1]);
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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

core.int buildCounterListEnvironmentsResponse = 0;
api.ListEnvironmentsResponse buildListEnvironmentsResponse() {
  final o = api.ListEnvironmentsResponse();
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    o.environments = buildUnnamed15();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed16();
  }
  buildCounterListEnvironmentsResponse--;
  return o;
}

void checkListEnvironmentsResponse(api.ListEnvironmentsResponse o) {
  buildCounterListEnvironmentsResponse++;
  if (buildCounterListEnvironmentsResponse < 3) {
    checkUnnamed15(o.environments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed16(o.unreachable!);
  }
  buildCounterListEnvironmentsResponse--;
}

core.List<api.Execution> buildUnnamed17() => [
      buildExecution(),
      buildExecution(),
    ];

void checkUnnamed17(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
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

core.int buildCounterListExecutionsResponse = 0;
api.ListExecutionsResponse buildListExecutionsResponse() {
  final o = api.ListExecutionsResponse();
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    o.executions = buildUnnamed17();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed18();
  }
  buildCounterListExecutionsResponse--;
  return o;
}

void checkListExecutionsResponse(api.ListExecutionsResponse o) {
  buildCounterListExecutionsResponse++;
  if (buildCounterListExecutionsResponse < 3) {
    checkUnnamed17(o.executions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.unreachable!);
  }
  buildCounterListExecutionsResponse--;
}

core.List<api.Instance> buildUnnamed19() => [
      buildInstance(),
      buildInstance(),
    ];

void checkUnnamed19(core.List<api.Instance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstance(o[0]);
  checkInstance(o[1]);
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

core.int buildCounterListInstancesResponse = 0;
api.ListInstancesResponse buildListInstancesResponse() {
  final o = api.ListInstancesResponse();
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    o.instances = buildUnnamed19();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed20();
  }
  buildCounterListInstancesResponse--;
  return o;
}

void checkListInstancesResponse(api.ListInstancesResponse o) {
  buildCounterListInstancesResponse++;
  if (buildCounterListInstancesResponse < 3) {
    checkUnnamed19(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.unreachable!);
  }
  buildCounterListInstancesResponse--;
}

core.List<api.Location> buildUnnamed21() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed21(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed21(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed22() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed22(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed22();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Runtime> buildUnnamed23() => [
      buildRuntime(),
      buildRuntime(),
    ];

void checkUnnamed23(core.List<api.Runtime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntime(o[0]);
  checkRuntime(o[1]);
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

core.int buildCounterListRuntimesResponse = 0;
api.ListRuntimesResponse buildListRuntimesResponse() {
  final o = api.ListRuntimesResponse();
  buildCounterListRuntimesResponse++;
  if (buildCounterListRuntimesResponse < 3) {
    o.nextPageToken = 'foo';
    o.runtimes = buildUnnamed23();
    o.unreachable = buildUnnamed24();
  }
  buildCounterListRuntimesResponse--;
  return o;
}

void checkListRuntimesResponse(api.ListRuntimesResponse o) {
  buildCounterListRuntimesResponse++;
  if (buildCounterListRuntimesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.runtimes!);
    checkUnnamed24(o.unreachable!);
  }
  buildCounterListRuntimesResponse--;
}

core.List<api.Schedule> buildUnnamed25() => [
      buildSchedule(),
      buildSchedule(),
    ];

void checkUnnamed25(core.List<api.Schedule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSchedule(o[0]);
  checkSchedule(o[1]);
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

core.int buildCounterListSchedulesResponse = 0;
api.ListSchedulesResponse buildListSchedulesResponse() {
  final o = api.ListSchedulesResponse();
  buildCounterListSchedulesResponse++;
  if (buildCounterListSchedulesResponse < 3) {
    o.nextPageToken = 'foo';
    o.schedules = buildUnnamed25();
    o.unreachable = buildUnnamed26();
  }
  buildCounterListSchedulesResponse--;
  return o;
}

void checkListSchedulesResponse(api.ListSchedulesResponse o) {
  buildCounterListSchedulesResponse++;
  if (buildCounterListSchedulesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed25(o.schedules!);
    checkUnnamed26(o.unreachable!);
  }
  buildCounterListSchedulesResponse--;
}

core.List<api.RuntimeGuestOsFeature> buildUnnamed27() => [
      buildRuntimeGuestOsFeature(),
      buildRuntimeGuestOsFeature(),
    ];

void checkUnnamed27(core.List<api.RuntimeGuestOsFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRuntimeGuestOsFeature(o[0]);
  checkRuntimeGuestOsFeature(o[1]);
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

core.int buildCounterLocalDisk = 0;
api.LocalDisk buildLocalDisk() {
  final o = api.LocalDisk();
  buildCounterLocalDisk++;
  if (buildCounterLocalDisk < 3) {
    o.autoDelete = true;
    o.boot = true;
    o.deviceName = 'foo';
    o.guestOsFeatures = buildUnnamed27();
    o.index = 42;
    o.initializeParams = buildLocalDiskInitializeParams();
    o.interface = 'foo';
    o.kind = 'foo';
    o.licenses = buildUnnamed28();
    o.mode = 'foo';
    o.source = 'foo';
    o.type = 'foo';
  }
  buildCounterLocalDisk--;
  return o;
}

void checkLocalDisk(api.LocalDisk o) {
  buildCounterLocalDisk++;
  if (buildCounterLocalDisk < 3) {
    unittest.expect(o.autoDelete!, unittest.isTrue);
    unittest.expect(o.boot!, unittest.isTrue);
    unittest.expect(
      o.deviceName!,
      unittest.equals('foo'),
    );
    checkUnnamed27(o.guestOsFeatures!);
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    checkLocalDiskInitializeParams(o.initializeParams!);
    unittest.expect(
      o.interface!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.licenses!);
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalDisk--;
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

core.int buildCounterLocalDiskInitializeParams = 0;
api.LocalDiskInitializeParams buildLocalDiskInitializeParams() {
  final o = api.LocalDiskInitializeParams();
  buildCounterLocalDiskInitializeParams++;
  if (buildCounterLocalDiskInitializeParams < 3) {
    o.description = 'foo';
    o.diskName = 'foo';
    o.diskSizeGb = 'foo';
    o.diskType = 'foo';
    o.labels = buildUnnamed29();
  }
  buildCounterLocalDiskInitializeParams--;
  return o;
}

void checkLocalDiskInitializeParams(api.LocalDiskInitializeParams o) {
  buildCounterLocalDiskInitializeParams++;
  if (buildCounterLocalDiskInitializeParams < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.labels!);
  }
  buildCounterLocalDiskInitializeParams--;
}

core.Map<core.String, core.String> buildUnnamed30() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed30(core.Map<core.String, core.String> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed30();
    o.locationId = 'foo';
    o.metadata = buildUnnamed31();
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
    checkUnnamed30(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMigrateInstanceRequest = 0;
api.MigrateInstanceRequest buildMigrateInstanceRequest() {
  final o = api.MigrateInstanceRequest();
  buildCounterMigrateInstanceRequest++;
  if (buildCounterMigrateInstanceRequest < 3) {
    o.postStartupScriptOption = 'foo';
  }
  buildCounterMigrateInstanceRequest--;
  return o;
}

void checkMigrateInstanceRequest(api.MigrateInstanceRequest o) {
  buildCounterMigrateInstanceRequest++;
  if (buildCounterMigrateInstanceRequest < 3) {
    unittest.expect(
      o.postStartupScriptOption!,
      unittest.equals('foo'),
    );
  }
  buildCounterMigrateInstanceRequest--;
}

core.int buildCounterMigrateRuntimeRequest = 0;
api.MigrateRuntimeRequest buildMigrateRuntimeRequest() {
  final o = api.MigrateRuntimeRequest();
  buildCounterMigrateRuntimeRequest++;
  if (buildCounterMigrateRuntimeRequest < 3) {
    o.network = 'foo';
    o.postStartupScriptOption = 'foo';
    o.requestId = 'foo';
    o.serviceAccount = 'foo';
    o.subnet = 'foo';
  }
  buildCounterMigrateRuntimeRequest--;
  return o;
}

void checkMigrateRuntimeRequest(api.MigrateRuntimeRequest o) {
  buildCounterMigrateRuntimeRequest++;
  if (buildCounterMigrateRuntimeRequest < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postStartupScriptOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnet!,
      unittest.equals('foo'),
    );
  }
  buildCounterMigrateRuntimeRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed32() => {
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

void checkUnnamed32(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed33() => {
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

void checkUnnamed33(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed32();
    o.name = 'foo';
    o.response = buildUnnamed33();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed32(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.Binding> buildUnnamed34() => [
      buildBinding(),
      buildBinding(),
    ];

void checkUnnamed34(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed34();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed34(o.bindings!);
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

core.int buildCounterRefreshRuntimeTokenInternalRequest = 0;
api.RefreshRuntimeTokenInternalRequest
    buildRefreshRuntimeTokenInternalRequest() {
  final o = api.RefreshRuntimeTokenInternalRequest();
  buildCounterRefreshRuntimeTokenInternalRequest++;
  if (buildCounterRefreshRuntimeTokenInternalRequest < 3) {
    o.vmId = 'foo';
  }
  buildCounterRefreshRuntimeTokenInternalRequest--;
  return o;
}

void checkRefreshRuntimeTokenInternalRequest(
    api.RefreshRuntimeTokenInternalRequest o) {
  buildCounterRefreshRuntimeTokenInternalRequest++;
  if (buildCounterRefreshRuntimeTokenInternalRequest < 3) {
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRefreshRuntimeTokenInternalRequest--;
}

core.int buildCounterRefreshRuntimeTokenInternalResponse = 0;
api.RefreshRuntimeTokenInternalResponse
    buildRefreshRuntimeTokenInternalResponse() {
  final o = api.RefreshRuntimeTokenInternalResponse();
  buildCounterRefreshRuntimeTokenInternalResponse++;
  if (buildCounterRefreshRuntimeTokenInternalResponse < 3) {
    o.accessToken = 'foo';
    o.expireTime = 'foo';
  }
  buildCounterRefreshRuntimeTokenInternalResponse--;
  return o;
}

void checkRefreshRuntimeTokenInternalResponse(
    api.RefreshRuntimeTokenInternalResponse o) {
  buildCounterRefreshRuntimeTokenInternalResponse++;
  if (buildCounterRefreshRuntimeTokenInternalResponse < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRefreshRuntimeTokenInternalResponse--;
}

core.int buildCounterRegisterInstanceRequest = 0;
api.RegisterInstanceRequest buildRegisterInstanceRequest() {
  final o = api.RegisterInstanceRequest();
  buildCounterRegisterInstanceRequest++;
  if (buildCounterRegisterInstanceRequest < 3) {
    o.instanceId = 'foo';
  }
  buildCounterRegisterInstanceRequest--;
  return o;
}

void checkRegisterInstanceRequest(api.RegisterInstanceRequest o) {
  buildCounterRegisterInstanceRequest++;
  if (buildCounterRegisterInstanceRequest < 3) {
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegisterInstanceRequest--;
}

core.int buildCounterReportInstanceEventRequest = 0;
api.ReportInstanceEventRequest buildReportInstanceEventRequest() {
  final o = api.ReportInstanceEventRequest();
  buildCounterReportInstanceEventRequest++;
  if (buildCounterReportInstanceEventRequest < 3) {
    o.event = buildEvent();
    o.vmId = 'foo';
  }
  buildCounterReportInstanceEventRequest--;
  return o;
}

void checkReportInstanceEventRequest(api.ReportInstanceEventRequest o) {
  buildCounterReportInstanceEventRequest++;
  if (buildCounterReportInstanceEventRequest < 3) {
    checkEvent(o.event!);
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportInstanceEventRequest--;
}

core.Map<core.String, core.String> buildUnnamed35() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed35(core.Map<core.String, core.String> o) {
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

core.int buildCounterReportInstanceInfoRequest = 0;
api.ReportInstanceInfoRequest buildReportInstanceInfoRequest() {
  final o = api.ReportInstanceInfoRequest();
  buildCounterReportInstanceInfoRequest++;
  if (buildCounterReportInstanceInfoRequest < 3) {
    o.metadata = buildUnnamed35();
    o.vmId = 'foo';
  }
  buildCounterReportInstanceInfoRequest--;
  return o;
}

void checkReportInstanceInfoRequest(api.ReportInstanceInfoRequest o) {
  buildCounterReportInstanceInfoRequest++;
  if (buildCounterReportInstanceInfoRequest < 3) {
    checkUnnamed35(o.metadata!);
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportInstanceInfoRequest--;
}

core.int buildCounterReportRuntimeEventRequest = 0;
api.ReportRuntimeEventRequest buildReportRuntimeEventRequest() {
  final o = api.ReportRuntimeEventRequest();
  buildCounterReportRuntimeEventRequest++;
  if (buildCounterReportRuntimeEventRequest < 3) {
    o.event = buildEvent();
    o.vmId = 'foo';
  }
  buildCounterReportRuntimeEventRequest--;
  return o;
}

void checkReportRuntimeEventRequest(api.ReportRuntimeEventRequest o) {
  buildCounterReportRuntimeEventRequest++;
  if (buildCounterReportRuntimeEventRequest < 3) {
    checkEvent(o.event!);
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportRuntimeEventRequest--;
}

core.List<core.String> buildUnnamed36() => [
      'foo',
      'foo',
    ];

void checkUnnamed36(core.List<core.String> o) {
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

core.int buildCounterReservationAffinity = 0;
api.ReservationAffinity buildReservationAffinity() {
  final o = api.ReservationAffinity();
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    o.consumeReservationType = 'foo';
    o.key = 'foo';
    o.values = buildUnnamed36();
  }
  buildCounterReservationAffinity--;
  return o;
}

void checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(
      o.consumeReservationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.values!);
  }
  buildCounterReservationAffinity--;
}

core.int buildCounterResetInstanceRequest = 0;
api.ResetInstanceRequest buildResetInstanceRequest() {
  final o = api.ResetInstanceRequest();
  buildCounterResetInstanceRequest++;
  if (buildCounterResetInstanceRequest < 3) {}
  buildCounterResetInstanceRequest--;
  return o;
}

void checkResetInstanceRequest(api.ResetInstanceRequest o) {
  buildCounterResetInstanceRequest++;
  if (buildCounterResetInstanceRequest < 3) {}
  buildCounterResetInstanceRequest--;
}

core.int buildCounterResetRuntimeRequest = 0;
api.ResetRuntimeRequest buildResetRuntimeRequest() {
  final o = api.ResetRuntimeRequest();
  buildCounterResetRuntimeRequest++;
  if (buildCounterResetRuntimeRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterResetRuntimeRequest--;
  return o;
}

void checkResetRuntimeRequest(api.ResetRuntimeRequest o) {
  buildCounterResetRuntimeRequest++;
  if (buildCounterResetRuntimeRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterResetRuntimeRequest--;
}

core.int buildCounterRollbackInstanceRequest = 0;
api.RollbackInstanceRequest buildRollbackInstanceRequest() {
  final o = api.RollbackInstanceRequest();
  buildCounterRollbackInstanceRequest++;
  if (buildCounterRollbackInstanceRequest < 3) {
    o.targetSnapshot = 'foo';
  }
  buildCounterRollbackInstanceRequest--;
  return o;
}

void checkRollbackInstanceRequest(api.RollbackInstanceRequest o) {
  buildCounterRollbackInstanceRequest++;
  if (buildCounterRollbackInstanceRequest < 3) {
    unittest.expect(
      o.targetSnapshot!,
      unittest.equals('foo'),
    );
  }
  buildCounterRollbackInstanceRequest--;
}

core.Map<core.String, core.String> buildUnnamed37() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed37(core.Map<core.String, core.String> o) {
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

core.int buildCounterRuntime = 0;
api.Runtime buildRuntime() {
  final o = api.Runtime();
  buildCounterRuntime++;
  if (buildCounterRuntime < 3) {
    o.accessConfig = buildRuntimeAccessConfig();
    o.createTime = 'foo';
    o.healthState = 'foo';
    o.labels = buildUnnamed37();
    o.metrics = buildRuntimeMetrics();
    o.migrated = true;
    o.name = 'foo';
    o.runtimeMigrationEligibility = buildRuntimeMigrationEligibility();
    o.softwareConfig = buildRuntimeSoftwareConfig();
    o.state = 'foo';
    o.updateTime = 'foo';
    o.virtualMachine = buildVirtualMachine();
  }
  buildCounterRuntime--;
  return o;
}

void checkRuntime(api.Runtime o) {
  buildCounterRuntime++;
  if (buildCounterRuntime < 3) {
    checkRuntimeAccessConfig(o.accessConfig!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.healthState!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.labels!);
    checkRuntimeMetrics(o.metrics!);
    unittest.expect(o.migrated!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRuntimeMigrationEligibility(o.runtimeMigrationEligibility!);
    checkRuntimeSoftwareConfig(o.softwareConfig!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVirtualMachine(o.virtualMachine!);
  }
  buildCounterRuntime--;
}

core.int buildCounterRuntimeAcceleratorConfig = 0;
api.RuntimeAcceleratorConfig buildRuntimeAcceleratorConfig() {
  final o = api.RuntimeAcceleratorConfig();
  buildCounterRuntimeAcceleratorConfig++;
  if (buildCounterRuntimeAcceleratorConfig < 3) {
    o.coreCount = 'foo';
    o.type = 'foo';
  }
  buildCounterRuntimeAcceleratorConfig--;
  return o;
}

void checkRuntimeAcceleratorConfig(api.RuntimeAcceleratorConfig o) {
  buildCounterRuntimeAcceleratorConfig++;
  if (buildCounterRuntimeAcceleratorConfig < 3) {
    unittest.expect(
      o.coreCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeAcceleratorConfig--;
}

core.int buildCounterRuntimeAccessConfig = 0;
api.RuntimeAccessConfig buildRuntimeAccessConfig() {
  final o = api.RuntimeAccessConfig();
  buildCounterRuntimeAccessConfig++;
  if (buildCounterRuntimeAccessConfig < 3) {
    o.accessType = 'foo';
    o.proxyUri = 'foo';
    o.runtimeOwner = 'foo';
  }
  buildCounterRuntimeAccessConfig--;
  return o;
}

void checkRuntimeAccessConfig(api.RuntimeAccessConfig o) {
  buildCounterRuntimeAccessConfig++;
  if (buildCounterRuntimeAccessConfig < 3) {
    unittest.expect(
      o.accessType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.proxyUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.runtimeOwner!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeAccessConfig--;
}

core.int buildCounterRuntimeGuestOsFeature = 0;
api.RuntimeGuestOsFeature buildRuntimeGuestOsFeature() {
  final o = api.RuntimeGuestOsFeature();
  buildCounterRuntimeGuestOsFeature++;
  if (buildCounterRuntimeGuestOsFeature < 3) {
    o.type = 'foo';
  }
  buildCounterRuntimeGuestOsFeature--;
  return o;
}

void checkRuntimeGuestOsFeature(api.RuntimeGuestOsFeature o) {
  buildCounterRuntimeGuestOsFeature++;
  if (buildCounterRuntimeGuestOsFeature < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeGuestOsFeature--;
}

core.Map<core.String, core.String> buildUnnamed38() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed38(core.Map<core.String, core.String> o) {
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

core.int buildCounterRuntimeMetrics = 0;
api.RuntimeMetrics buildRuntimeMetrics() {
  final o = api.RuntimeMetrics();
  buildCounterRuntimeMetrics++;
  if (buildCounterRuntimeMetrics < 3) {
    o.systemMetrics = buildUnnamed38();
  }
  buildCounterRuntimeMetrics--;
  return o;
}

void checkRuntimeMetrics(api.RuntimeMetrics o) {
  buildCounterRuntimeMetrics++;
  if (buildCounterRuntimeMetrics < 3) {
    checkUnnamed38(o.systemMetrics!);
  }
  buildCounterRuntimeMetrics--;
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

core.List<core.String> buildUnnamed40() => [
      'foo',
      'foo',
    ];

void checkUnnamed40(core.List<core.String> o) {
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

core.int buildCounterRuntimeMigrationEligibility = 0;
api.RuntimeMigrationEligibility buildRuntimeMigrationEligibility() {
  final o = api.RuntimeMigrationEligibility();
  buildCounterRuntimeMigrationEligibility++;
  if (buildCounterRuntimeMigrationEligibility < 3) {
    o.errors = buildUnnamed39();
    o.warnings = buildUnnamed40();
  }
  buildCounterRuntimeMigrationEligibility--;
  return o;
}

void checkRuntimeMigrationEligibility(api.RuntimeMigrationEligibility o) {
  buildCounterRuntimeMigrationEligibility++;
  if (buildCounterRuntimeMigrationEligibility < 3) {
    checkUnnamed39(o.errors!);
    checkUnnamed40(o.warnings!);
  }
  buildCounterRuntimeMigrationEligibility--;
}

core.int buildCounterRuntimeShieldedInstanceConfig = 0;
api.RuntimeShieldedInstanceConfig buildRuntimeShieldedInstanceConfig() {
  final o = api.RuntimeShieldedInstanceConfig();
  buildCounterRuntimeShieldedInstanceConfig++;
  if (buildCounterRuntimeShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
    o.enableVtpm = true;
  }
  buildCounterRuntimeShieldedInstanceConfig--;
  return o;
}

void checkRuntimeShieldedInstanceConfig(api.RuntimeShieldedInstanceConfig o) {
  buildCounterRuntimeShieldedInstanceConfig++;
  if (buildCounterRuntimeShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring!, unittest.isTrue);
    unittest.expect(o.enableSecureBoot!, unittest.isTrue);
    unittest.expect(o.enableVtpm!, unittest.isTrue);
  }
  buildCounterRuntimeShieldedInstanceConfig--;
}

core.List<api.ContainerImage> buildUnnamed41() => [
      buildContainerImage(),
      buildContainerImage(),
    ];

void checkUnnamed41(core.List<api.ContainerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerImage(o[0]);
  checkContainerImage(o[1]);
}

core.int buildCounterRuntimeSoftwareConfig = 0;
api.RuntimeSoftwareConfig buildRuntimeSoftwareConfig() {
  final o = api.RuntimeSoftwareConfig();
  buildCounterRuntimeSoftwareConfig++;
  if (buildCounterRuntimeSoftwareConfig < 3) {
    o.customGpuDriverPath = 'foo';
    o.disableTerminal = true;
    o.enableHealthMonitoring = true;
    o.idleShutdown = true;
    o.idleShutdownTimeout = 42;
    o.installGpuDriver = true;
    o.kernels = buildUnnamed41();
    o.mixerDisabled = true;
    o.notebookUpgradeSchedule = 'foo';
    o.postStartupScript = 'foo';
    o.postStartupScriptBehavior = 'foo';
    o.upgradeable = true;
    o.version = 'foo';
  }
  buildCounterRuntimeSoftwareConfig--;
  return o;
}

void checkRuntimeSoftwareConfig(api.RuntimeSoftwareConfig o) {
  buildCounterRuntimeSoftwareConfig++;
  if (buildCounterRuntimeSoftwareConfig < 3) {
    unittest.expect(
      o.customGpuDriverPath!,
      unittest.equals('foo'),
    );
    unittest.expect(o.disableTerminal!, unittest.isTrue);
    unittest.expect(o.enableHealthMonitoring!, unittest.isTrue);
    unittest.expect(o.idleShutdown!, unittest.isTrue);
    unittest.expect(
      o.idleShutdownTimeout!,
      unittest.equals(42),
    );
    unittest.expect(o.installGpuDriver!, unittest.isTrue);
    checkUnnamed41(o.kernels!);
    unittest.expect(o.mixerDisabled!, unittest.isTrue);
    unittest.expect(
      o.notebookUpgradeSchedule!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postStartupScript!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postStartupScriptBehavior!,
      unittest.equals('foo'),
    );
    unittest.expect(o.upgradeable!, unittest.isTrue);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeSoftwareConfig--;
}

core.List<api.Execution> buildUnnamed42() => [
      buildExecution(),
      buildExecution(),
    ];

void checkUnnamed42(core.List<api.Execution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecution(o[0]);
  checkExecution(o[1]);
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  final o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.createTime = 'foo';
    o.cronSchedule = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.executionTemplate = buildExecutionTemplate();
    o.name = 'foo';
    o.recentExecutions = buildUnnamed42();
    o.state = 'foo';
    o.timeZone = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cronSchedule!,
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
    checkExecutionTemplate(o.executionTemplate!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed42(o.recentExecutions!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchedule--;
}

core.int buildCounterSchedulerAcceleratorConfig = 0;
api.SchedulerAcceleratorConfig buildSchedulerAcceleratorConfig() {
  final o = api.SchedulerAcceleratorConfig();
  buildCounterSchedulerAcceleratorConfig++;
  if (buildCounterSchedulerAcceleratorConfig < 3) {
    o.coreCount = 'foo';
    o.type = 'foo';
  }
  buildCounterSchedulerAcceleratorConfig--;
  return o;
}

void checkSchedulerAcceleratorConfig(api.SchedulerAcceleratorConfig o) {
  buildCounterSchedulerAcceleratorConfig++;
  if (buildCounterSchedulerAcceleratorConfig < 3) {
    unittest.expect(
      o.coreCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchedulerAcceleratorConfig--;
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

core.int buildCounterSetInstanceAcceleratorRequest = 0;
api.SetInstanceAcceleratorRequest buildSetInstanceAcceleratorRequest() {
  final o = api.SetInstanceAcceleratorRequest();
  buildCounterSetInstanceAcceleratorRequest++;
  if (buildCounterSetInstanceAcceleratorRequest < 3) {
    o.coreCount = 'foo';
    o.type = 'foo';
  }
  buildCounterSetInstanceAcceleratorRequest--;
  return o;
}

void checkSetInstanceAcceleratorRequest(api.SetInstanceAcceleratorRequest o) {
  buildCounterSetInstanceAcceleratorRequest++;
  if (buildCounterSetInstanceAcceleratorRequest < 3) {
    unittest.expect(
      o.coreCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetInstanceAcceleratorRequest--;
}

core.Map<core.String, core.String> buildUnnamed43() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed43(core.Map<core.String, core.String> o) {
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

core.int buildCounterSetInstanceLabelsRequest = 0;
api.SetInstanceLabelsRequest buildSetInstanceLabelsRequest() {
  final o = api.SetInstanceLabelsRequest();
  buildCounterSetInstanceLabelsRequest++;
  if (buildCounterSetInstanceLabelsRequest < 3) {
    o.labels = buildUnnamed43();
  }
  buildCounterSetInstanceLabelsRequest--;
  return o;
}

void checkSetInstanceLabelsRequest(api.SetInstanceLabelsRequest o) {
  buildCounterSetInstanceLabelsRequest++;
  if (buildCounterSetInstanceLabelsRequest < 3) {
    checkUnnamed43(o.labels!);
  }
  buildCounterSetInstanceLabelsRequest--;
}

core.int buildCounterSetInstanceMachineTypeRequest = 0;
api.SetInstanceMachineTypeRequest buildSetInstanceMachineTypeRequest() {
  final o = api.SetInstanceMachineTypeRequest();
  buildCounterSetInstanceMachineTypeRequest++;
  if (buildCounterSetInstanceMachineTypeRequest < 3) {
    o.machineType = 'foo';
  }
  buildCounterSetInstanceMachineTypeRequest--;
  return o;
}

void checkSetInstanceMachineTypeRequest(api.SetInstanceMachineTypeRequest o) {
  buildCounterSetInstanceMachineTypeRequest++;
  if (buildCounterSetInstanceMachineTypeRequest < 3) {
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetInstanceMachineTypeRequest--;
}

core.int buildCounterShieldedInstanceConfig = 0;
api.ShieldedInstanceConfig buildShieldedInstanceConfig() {
  final o = api.ShieldedInstanceConfig();
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
    o.enableVtpm = true;
  }
  buildCounterShieldedInstanceConfig--;
  return o;
}

void checkShieldedInstanceConfig(api.ShieldedInstanceConfig o) {
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring!, unittest.isTrue);
    unittest.expect(o.enableSecureBoot!, unittest.isTrue);
    unittest.expect(o.enableVtpm!, unittest.isTrue);
  }
  buildCounterShieldedInstanceConfig--;
}

core.int buildCounterStartInstanceRequest = 0;
api.StartInstanceRequest buildStartInstanceRequest() {
  final o = api.StartInstanceRequest();
  buildCounterStartInstanceRequest++;
  if (buildCounterStartInstanceRequest < 3) {}
  buildCounterStartInstanceRequest--;
  return o;
}

void checkStartInstanceRequest(api.StartInstanceRequest o) {
  buildCounterStartInstanceRequest++;
  if (buildCounterStartInstanceRequest < 3) {}
  buildCounterStartInstanceRequest--;
}

core.int buildCounterStartRuntimeRequest = 0;
api.StartRuntimeRequest buildStartRuntimeRequest() {
  final o = api.StartRuntimeRequest();
  buildCounterStartRuntimeRequest++;
  if (buildCounterStartRuntimeRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterStartRuntimeRequest--;
  return o;
}

void checkStartRuntimeRequest(api.StartRuntimeRequest o) {
  buildCounterStartRuntimeRequest++;
  if (buildCounterStartRuntimeRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStartRuntimeRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed44() => {
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

void checkUnnamed44(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed45() => [
      buildUnnamed44(),
      buildUnnamed44(),
    ];

void checkUnnamed45(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed44(o[0]);
  checkUnnamed44(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed45();
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
    checkUnnamed45(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStopInstanceRequest = 0;
api.StopInstanceRequest buildStopInstanceRequest() {
  final o = api.StopInstanceRequest();
  buildCounterStopInstanceRequest++;
  if (buildCounterStopInstanceRequest < 3) {}
  buildCounterStopInstanceRequest--;
  return o;
}

void checkStopInstanceRequest(api.StopInstanceRequest o) {
  buildCounterStopInstanceRequest++;
  if (buildCounterStopInstanceRequest < 3) {}
  buildCounterStopInstanceRequest--;
}

core.int buildCounterStopRuntimeRequest = 0;
api.StopRuntimeRequest buildStopRuntimeRequest() {
  final o = api.StopRuntimeRequest();
  buildCounterStopRuntimeRequest++;
  if (buildCounterStopRuntimeRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterStopRuntimeRequest--;
  return o;
}

void checkStopRuntimeRequest(api.StopRuntimeRequest o) {
  buildCounterStopRuntimeRequest++;
  if (buildCounterStopRuntimeRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStopRuntimeRequest--;
}

core.int buildCounterSwitchRuntimeRequest = 0;
api.SwitchRuntimeRequest buildSwitchRuntimeRequest() {
  final o = api.SwitchRuntimeRequest();
  buildCounterSwitchRuntimeRequest++;
  if (buildCounterSwitchRuntimeRequest < 3) {
    o.acceleratorConfig = buildRuntimeAcceleratorConfig();
    o.machineType = 'foo';
    o.requestId = 'foo';
  }
  buildCounterSwitchRuntimeRequest--;
  return o;
}

void checkSwitchRuntimeRequest(api.SwitchRuntimeRequest o) {
  buildCounterSwitchRuntimeRequest++;
  if (buildCounterSwitchRuntimeRequest < 3) {
    checkRuntimeAcceleratorConfig(o.acceleratorConfig!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSwitchRuntimeRequest--;
}

core.List<core.String> buildUnnamed46() => [
      'foo',
      'foo',
    ];

void checkUnnamed46(core.List<core.String> o) {
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
    o.permissions = buildUnnamed46();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed46(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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
    o.permissions = buildUnnamed47();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed47(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.int buildCounterTriggerScheduleRequest = 0;
api.TriggerScheduleRequest buildTriggerScheduleRequest() {
  final o = api.TriggerScheduleRequest();
  buildCounterTriggerScheduleRequest++;
  if (buildCounterTriggerScheduleRequest < 3) {}
  buildCounterTriggerScheduleRequest--;
  return o;
}

void checkTriggerScheduleRequest(api.TriggerScheduleRequest o) {
  buildCounterTriggerScheduleRequest++;
  if (buildCounterTriggerScheduleRequest < 3) {}
  buildCounterTriggerScheduleRequest--;
}

core.int buildCounterUpdateInstanceConfigRequest = 0;
api.UpdateInstanceConfigRequest buildUpdateInstanceConfigRequest() {
  final o = api.UpdateInstanceConfigRequest();
  buildCounterUpdateInstanceConfigRequest++;
  if (buildCounterUpdateInstanceConfigRequest < 3) {
    o.config = buildInstanceConfig();
  }
  buildCounterUpdateInstanceConfigRequest--;
  return o;
}

void checkUpdateInstanceConfigRequest(api.UpdateInstanceConfigRequest o) {
  buildCounterUpdateInstanceConfigRequest++;
  if (buildCounterUpdateInstanceConfigRequest < 3) {
    checkInstanceConfig(o.config!);
  }
  buildCounterUpdateInstanceConfigRequest--;
}

core.Map<core.String, core.String> buildUnnamed48() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed48(core.Map<core.String, core.String> o) {
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

core.int buildCounterUpdateInstanceMetadataItemsRequest = 0;
api.UpdateInstanceMetadataItemsRequest
    buildUpdateInstanceMetadataItemsRequest() {
  final o = api.UpdateInstanceMetadataItemsRequest();
  buildCounterUpdateInstanceMetadataItemsRequest++;
  if (buildCounterUpdateInstanceMetadataItemsRequest < 3) {
    o.items = buildUnnamed48();
  }
  buildCounterUpdateInstanceMetadataItemsRequest--;
  return o;
}

void checkUpdateInstanceMetadataItemsRequest(
    api.UpdateInstanceMetadataItemsRequest o) {
  buildCounterUpdateInstanceMetadataItemsRequest++;
  if (buildCounterUpdateInstanceMetadataItemsRequest < 3) {
    checkUnnamed48(o.items!);
  }
  buildCounterUpdateInstanceMetadataItemsRequest--;
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

core.int buildCounterUpdateInstanceMetadataItemsResponse = 0;
api.UpdateInstanceMetadataItemsResponse
    buildUpdateInstanceMetadataItemsResponse() {
  final o = api.UpdateInstanceMetadataItemsResponse();
  buildCounterUpdateInstanceMetadataItemsResponse++;
  if (buildCounterUpdateInstanceMetadataItemsResponse < 3) {
    o.items = buildUnnamed49();
  }
  buildCounterUpdateInstanceMetadataItemsResponse--;
  return o;
}

void checkUpdateInstanceMetadataItemsResponse(
    api.UpdateInstanceMetadataItemsResponse o) {
  buildCounterUpdateInstanceMetadataItemsResponse++;
  if (buildCounterUpdateInstanceMetadataItemsResponse < 3) {
    checkUnnamed49(o.items!);
  }
  buildCounterUpdateInstanceMetadataItemsResponse--;
}

core.int buildCounterUpdateShieldedInstanceConfigRequest = 0;
api.UpdateShieldedInstanceConfigRequest
    buildUpdateShieldedInstanceConfigRequest() {
  final o = api.UpdateShieldedInstanceConfigRequest();
  buildCounterUpdateShieldedInstanceConfigRequest++;
  if (buildCounterUpdateShieldedInstanceConfigRequest < 3) {
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
  }
  buildCounterUpdateShieldedInstanceConfigRequest--;
  return o;
}

void checkUpdateShieldedInstanceConfigRequest(
    api.UpdateShieldedInstanceConfigRequest o) {
  buildCounterUpdateShieldedInstanceConfigRequest++;
  if (buildCounterUpdateShieldedInstanceConfigRequest < 3) {
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
  }
  buildCounterUpdateShieldedInstanceConfigRequest--;
}

core.int buildCounterUpgradeHistoryEntry = 0;
api.UpgradeHistoryEntry buildUpgradeHistoryEntry() {
  final o = api.UpgradeHistoryEntry();
  buildCounterUpgradeHistoryEntry++;
  if (buildCounterUpgradeHistoryEntry < 3) {
    o.action = 'foo';
    o.containerImage = 'foo';
    o.createTime = 'foo';
    o.framework = 'foo';
    o.snapshot = 'foo';
    o.state = 'foo';
    o.targetImage = 'foo';
    o.targetVersion = 'foo';
    o.version = 'foo';
    o.vmImage = 'foo';
  }
  buildCounterUpgradeHistoryEntry--;
  return o;
}

void checkUpgradeHistoryEntry(api.UpgradeHistoryEntry o) {
  buildCounterUpgradeHistoryEntry++;
  if (buildCounterUpgradeHistoryEntry < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.containerImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.framework!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshot!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmImage!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeHistoryEntry--;
}

core.int buildCounterUpgradeInstanceInternalRequest = 0;
api.UpgradeInstanceInternalRequest buildUpgradeInstanceInternalRequest() {
  final o = api.UpgradeInstanceInternalRequest();
  buildCounterUpgradeInstanceInternalRequest++;
  if (buildCounterUpgradeInstanceInternalRequest < 3) {
    o.type = 'foo';
    o.vmId = 'foo';
  }
  buildCounterUpgradeInstanceInternalRequest--;
  return o;
}

void checkUpgradeInstanceInternalRequest(api.UpgradeInstanceInternalRequest o) {
  buildCounterUpgradeInstanceInternalRequest++;
  if (buildCounterUpgradeInstanceInternalRequest < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeInstanceInternalRequest--;
}

core.int buildCounterUpgradeInstanceRequest = 0;
api.UpgradeInstanceRequest buildUpgradeInstanceRequest() {
  final o = api.UpgradeInstanceRequest();
  buildCounterUpgradeInstanceRequest++;
  if (buildCounterUpgradeInstanceRequest < 3) {
    o.type = 'foo';
  }
  buildCounterUpgradeInstanceRequest--;
  return o;
}

void checkUpgradeInstanceRequest(api.UpgradeInstanceRequest o) {
  buildCounterUpgradeInstanceRequest++;
  if (buildCounterUpgradeInstanceRequest < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeInstanceRequest--;
}

core.int buildCounterUpgradeRuntimeRequest = 0;
api.UpgradeRuntimeRequest buildUpgradeRuntimeRequest() {
  final o = api.UpgradeRuntimeRequest();
  buildCounterUpgradeRuntimeRequest++;
  if (buildCounterUpgradeRuntimeRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterUpgradeRuntimeRequest--;
  return o;
}

void checkUpgradeRuntimeRequest(api.UpgradeRuntimeRequest o) {
  buildCounterUpgradeRuntimeRequest++;
  if (buildCounterUpgradeRuntimeRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeRuntimeRequest--;
}

core.Map<core.String, core.String> buildUnnamed50() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed50(core.Map<core.String, core.String> o) {
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

core.int buildCounterVertexAIParameters = 0;
api.VertexAIParameters buildVertexAIParameters() {
  final o = api.VertexAIParameters();
  buildCounterVertexAIParameters++;
  if (buildCounterVertexAIParameters < 3) {
    o.env = buildUnnamed50();
    o.network = 'foo';
  }
  buildCounterVertexAIParameters--;
  return o;
}

void checkVertexAIParameters(api.VertexAIParameters o) {
  buildCounterVertexAIParameters++;
  if (buildCounterVertexAIParameters < 3) {
    checkUnnamed50(o.env!);
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
  }
  buildCounterVertexAIParameters--;
}

core.int buildCounterVirtualMachine = 0;
api.VirtualMachine buildVirtualMachine() {
  final o = api.VirtualMachine();
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    o.instanceId = 'foo';
    o.instanceName = 'foo';
    o.virtualMachineConfig = buildVirtualMachineConfig();
  }
  buildCounterVirtualMachine--;
  return o;
}

void checkVirtualMachine(api.VirtualMachine o) {
  buildCounterVirtualMachine++;
  if (buildCounterVirtualMachine < 3) {
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceName!,
      unittest.equals('foo'),
    );
    checkVirtualMachineConfig(o.virtualMachineConfig!);
  }
  buildCounterVirtualMachine--;
}

core.List<api.ContainerImage> buildUnnamed51() => [
      buildContainerImage(),
      buildContainerImage(),
    ];

void checkUnnamed51(core.List<api.ContainerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContainerImage(o[0]);
  checkContainerImage(o[1]);
}

core.Map<core.String, core.String> buildUnnamed52() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed52(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed53() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed53(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed54() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed54(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.int buildCounterVirtualMachineConfig = 0;
api.VirtualMachineConfig buildVirtualMachineConfig() {
  final o = api.VirtualMachineConfig();
  buildCounterVirtualMachineConfig++;
  if (buildCounterVirtualMachineConfig < 3) {
    o.acceleratorConfig = buildRuntimeAcceleratorConfig();
    o.bootImage = buildBootImage();
    o.containerImages = buildUnnamed51();
    o.dataDisk = buildLocalDisk();
    o.encryptionConfig = buildEncryptionConfig();
    o.guestAttributes = buildUnnamed52();
    o.internalIpOnly = true;
    o.labels = buildUnnamed53();
    o.machineType = 'foo';
    o.metadata = buildUnnamed54();
    o.network = 'foo';
    o.nicType = 'foo';
    o.reservedIpRange = 'foo';
    o.shieldedInstanceConfig = buildRuntimeShieldedInstanceConfig();
    o.subnet = 'foo';
    o.tags = buildUnnamed55();
    o.zone = 'foo';
  }
  buildCounterVirtualMachineConfig--;
  return o;
}

void checkVirtualMachineConfig(api.VirtualMachineConfig o) {
  buildCounterVirtualMachineConfig++;
  if (buildCounterVirtualMachineConfig < 3) {
    checkRuntimeAcceleratorConfig(o.acceleratorConfig!);
    checkBootImage(o.bootImage!);
    checkUnnamed51(o.containerImages!);
    checkLocalDisk(o.dataDisk!);
    checkEncryptionConfig(o.encryptionConfig!);
    checkUnnamed52(o.guestAttributes!);
    unittest.expect(o.internalIpOnly!, unittest.isTrue);
    checkUnnamed53(o.labels!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.metadata!);
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nicType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reservedIpRange!,
      unittest.equals('foo'),
    );
    checkRuntimeShieldedInstanceConfig(o.shieldedInstanceConfig!);
    unittest.expect(
      o.subnet!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.tags!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterVirtualMachineConfig--;
}

core.int buildCounterVmImage = 0;
api.VmImage buildVmImage() {
  final o = api.VmImage();
  buildCounterVmImage++;
  if (buildCounterVmImage < 3) {
    o.imageFamily = 'foo';
    o.imageName = 'foo';
    o.project = 'foo';
  }
  buildCounterVmImage--;
  return o;
}

void checkVmImage(api.VmImage o) {
  buildCounterVmImage++;
  if (buildCounterVmImage < 3) {
    unittest.expect(
      o.imageFamily!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmImage--;
}

void main() {
  unittest.group('obj-schema-AcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceleratorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcceleratorConfig(od);
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

  unittest.group('obj-schema-BootImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBootImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BootImage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBootImage(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ContainerImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerImage(od);
    });
  });

  unittest.group('obj-schema-DataprocParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataprocParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataprocParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataprocParameters(od);
    });
  });

  unittest.group('obj-schema-DiagnoseInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnoseInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnoseInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiagnoseInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-DiagnoseRuntimeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnoseRuntimeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnoseRuntimeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiagnoseRuntimeRequest(od);
    });
  });

  unittest.group('obj-schema-DiagnosticConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnosticConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnosticConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiagnosticConfig(od);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Disk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDisk(od);
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

  unittest.group('obj-schema-EncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironment(od);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Event.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-Execution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Execution.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkExecution(od);
    });
  });

  unittest.group('obj-schema-ExecutionTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionTemplate(od);
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

  unittest.group('obj-schema-GetInstanceHealthResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetInstanceHealthResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetInstanceHealthResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetInstanceHealthResponse(od);
    });
  });

  unittest.group('obj-schema-GuestOsFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestOsFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestOsFeature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestOsFeature(od);
    });
  });

  unittest.group('obj-schema-Instance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Instance.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInstance(od);
    });
  });

  unittest.group('obj-schema-InstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceMigrationEligibility', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceMigrationEligibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceMigrationEligibility.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstanceMigrationEligibility(od);
    });
  });

  unittest.group('obj-schema-IsInstanceUpgradeableResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIsInstanceUpgradeableResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IsInstanceUpgradeableResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIsInstanceUpgradeableResponse(od);
    });
  });

  unittest.group('obj-schema-ListEnvironmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnvironmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnvironmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEnvironmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListExecutionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListExecutionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListExecutionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListExecutionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInstancesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInstancesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInstancesResponse(od);
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

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRuntimesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRuntimesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRuntimesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListRuntimesResponse(od);
    });
  });

  unittest.group('obj-schema-ListSchedulesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSchedulesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSchedulesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSchedulesResponse(od);
    });
  });

  unittest.group('obj-schema-LocalDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LocalDisk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocalDisk(od);
    });
  });

  unittest.group('obj-schema-LocalDiskInitializeParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalDiskInitializeParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalDiskInitializeParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalDiskInitializeParams(od);
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

  unittest.group('obj-schema-MigrateInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrateInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrateInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMigrateInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-MigrateRuntimeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrateRuntimeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrateRuntimeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMigrateRuntimeRequest(od);
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

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-RefreshRuntimeTokenInternalRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshRuntimeTokenInternalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshRuntimeTokenInternalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshRuntimeTokenInternalRequest(od);
    });
  });

  unittest.group('obj-schema-RefreshRuntimeTokenInternalResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshRuntimeTokenInternalResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshRuntimeTokenInternalResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshRuntimeTokenInternalResponse(od);
    });
  });

  unittest.group('obj-schema-RegisterInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegisterInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegisterInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegisterInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-ReportInstanceEventRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportInstanceEventRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportInstanceEventRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportInstanceEventRequest(od);
    });
  });

  unittest.group('obj-schema-ReportInstanceInfoRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportInstanceInfoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportInstanceInfoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportInstanceInfoRequest(od);
    });
  });

  unittest.group('obj-schema-ReportRuntimeEventRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportRuntimeEventRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportRuntimeEventRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportRuntimeEventRequest(od);
    });
  });

  unittest.group('obj-schema-ReservationAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservationAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReservationAffinity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReservationAffinity(od);
    });
  });

  unittest.group('obj-schema-ResetInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-ResetRuntimeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResetRuntimeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResetRuntimeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResetRuntimeRequest(od);
    });
  });

  unittest.group('obj-schema-RollbackInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRollbackInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-Runtime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Runtime.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRuntime(od);
    });
  });

  unittest.group('obj-schema-RuntimeAcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeAcceleratorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeAcceleratorConfig(od);
    });
  });

  unittest.group('obj-schema-RuntimeAccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeAccessConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeAccessConfig(od);
    });
  });

  unittest.group('obj-schema-RuntimeGuestOsFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeGuestOsFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeGuestOsFeature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeGuestOsFeature(od);
    });
  });

  unittest.group('obj-schema-RuntimeMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeMetrics(od);
    });
  });

  unittest.group('obj-schema-RuntimeMigrationEligibility', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeMigrationEligibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeMigrationEligibility.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeMigrationEligibility(od);
    });
  });

  unittest.group('obj-schema-RuntimeShieldedInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeShieldedInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeShieldedInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeShieldedInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-RuntimeSoftwareConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeSoftwareConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeSoftwareConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeSoftwareConfig(od);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Schedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchedule(od);
    });
  });

  unittest.group('obj-schema-SchedulerAcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSchedulerAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SchedulerAcceleratorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSchedulerAcceleratorConfig(od);
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

  unittest.group('obj-schema-SetInstanceAcceleratorRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetInstanceAcceleratorRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetInstanceAcceleratorRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetInstanceAcceleratorRequest(od);
    });
  });

  unittest.group('obj-schema-SetInstanceLabelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetInstanceLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetInstanceLabelsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetInstanceLabelsRequest(od);
    });
  });

  unittest.group('obj-schema-SetInstanceMachineTypeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetInstanceMachineTypeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetInstanceMachineTypeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetInstanceMachineTypeRequest(od);
    });
  });

  unittest.group('obj-schema-ShieldedInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShieldedInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShieldedInstanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShieldedInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-StartInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-StartRuntimeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartRuntimeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartRuntimeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartRuntimeRequest(od);
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

  unittest.group('obj-schema-StopInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-StopRuntimeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopRuntimeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopRuntimeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStopRuntimeRequest(od);
    });
  });

  unittest.group('obj-schema-SwitchRuntimeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSwitchRuntimeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SwitchRuntimeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSwitchRuntimeRequest(od);
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

  unittest.group('obj-schema-TriggerScheduleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggerScheduleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggerScheduleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriggerScheduleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateInstanceConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInstanceConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateInstanceConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInstanceConfigRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateInstanceMetadataItemsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInstanceMetadataItemsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateInstanceMetadataItemsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInstanceMetadataItemsRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateInstanceMetadataItemsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInstanceMetadataItemsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateInstanceMetadataItemsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInstanceMetadataItemsResponse(od);
    });
  });

  unittest.group('obj-schema-UpdateShieldedInstanceConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateShieldedInstanceConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateShieldedInstanceConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateShieldedInstanceConfigRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeHistoryEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeHistoryEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeHistoryEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeHistoryEntry(od);
    });
  });

  unittest.group('obj-schema-UpgradeInstanceInternalRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeInstanceInternalRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeInstanceInternalRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeInstanceInternalRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeInstanceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeInstanceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeInstanceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeInstanceRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeRuntimeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeRuntimeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeRuntimeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeRuntimeRequest(od);
    });
  });

  unittest.group('obj-schema-VertexAIParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVertexAIParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VertexAIParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVertexAIParameters(od);
    });
  });

  unittest.group('obj-schema-VirtualMachine', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachine.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVirtualMachine(od);
    });
  });

  unittest.group('obj-schema-VirtualMachineConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachineConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachineConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVirtualMachineConfig(od);
    });
  });

  unittest.group('obj-schema-VmImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.VmImage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVmImage(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations;
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
  });

  unittest.group('resource-ProjectsLocationsEnvironmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.environments;
      final arg_request = buildEnvironment();
      final arg_parent = 'foo';
      final arg_environmentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Environment.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnvironment(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['environmentId']!.first,
          unittest.equals(arg_environmentId),
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
          environmentId: arg_environmentId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.environments;
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
          api.AIPlatformNotebooksApi(mock).projects.locations.environments;
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
        final resp = convert.json.encode(buildEnvironment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEnvironment(response as api.Environment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.environments;
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
        final resp = convert.json.encode(buildListEnvironmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListEnvironmentsResponse(response as api.ListEnvironmentsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsExecutionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.executions;
      final arg_request = buildExecution();
      final arg_parent = 'foo';
      final arg_executionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Execution.fromJson(json as core.Map<core.String, core.dynamic>);
        checkExecution(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['executionId']!.first,
          unittest.equals(arg_executionId),
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
          executionId: arg_executionId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.executions;
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
          api.AIPlatformNotebooksApi(mock).projects.locations.executions;
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
        final resp = convert.json.encode(buildExecution());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkExecution(response as api.Execution);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.executions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListExecutionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListExecutionsResponse(response as api.ListExecutionsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildInstance();
      final arg_parent = 'foo';
      final arg_instanceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Instance.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInstance(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['instanceId']!.first,
          unittest.equals(arg_instanceId),
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
          instanceId: arg_instanceId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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

    unittest.test('method--diagnose', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildDiagnoseInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DiagnoseInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDiagnoseInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.diagnose(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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
        final resp = convert.json.encode(buildInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInstance(response as api.Instance);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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

    unittest.test('method--getInstanceHealth', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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
        final resp = convert.json.encode(buildGetInstanceHealthResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getInstanceHealth(arg_name, $fields: arg_$fields);
      checkGetInstanceHealthResponse(response as api.GetInstanceHealthResponse);
    });

    unittest.test('method--isUpgradeable', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_notebookInstance = 'foo';
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
        final resp = convert.json.encode(buildIsInstanceUpgradeableResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.isUpgradeable(arg_notebookInstance,
          type: arg_type, $fields: arg_$fields);
      checkIsInstanceUpgradeableResponse(
          response as api.IsInstanceUpgradeableResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInstancesResponse(response as api.ListInstancesResponse);
    });

    unittest.test('method--migrate', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildMigrateInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MigrateInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigrateInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.migrate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--register', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildRegisterInstanceRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RegisterInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRegisterInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.register(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--report', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildReportInstanceInfoRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportInstanceInfoRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportInstanceInfoRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.report(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reportEvent', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildReportInstanceEventRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportInstanceEventRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportInstanceEventRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.reportEvent(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildResetInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.reset(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildRollbackInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.rollback(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setAccelerator', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildSetInstanceAcceleratorRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetInstanceAcceleratorRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetInstanceAcceleratorRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setAccelerator(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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

    unittest.test('method--setLabels', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildSetInstanceLabelsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetInstanceLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetInstanceLabelsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setLabels(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMachineType', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildSetInstanceMachineTypeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetInstanceMachineTypeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetInstanceMachineTypeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setMachineType(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildStartInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildStopInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
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

    unittest.test('method--updateConfig', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildUpdateInstanceConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateInstanceConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateInstanceConfigRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.updateConfig(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--updateMetadataItems', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildUpdateInstanceMetadataItemsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateInstanceMetadataItemsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateInstanceMetadataItemsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
            convert.json.encode(buildUpdateInstanceMetadataItemsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateMetadataItems(arg_request, arg_name,
          $fields: arg_$fields);
      checkUpdateInstanceMetadataItemsResponse(
          response as api.UpdateInstanceMetadataItemsResponse);
    });

    unittest.test('method--updateShieldedInstanceConfig', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildUpdateShieldedInstanceConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateShieldedInstanceConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateShieldedInstanceConfigRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.updateShieldedInstanceConfig(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--upgrade', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildUpgradeInstanceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpgradeInstanceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpgradeInstanceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.upgrade(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--upgradeInternal', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.instances;
      final arg_request = buildUpgradeInstanceInternalRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpgradeInstanceInternalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpgradeInstanceInternalRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.upgradeInternal(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelOperationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.operations;
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
          api.AIPlatformNotebooksApi(mock).projects.locations.operations;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.AIPlatformNotebooksApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsRuntimesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildRuntime();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_runtimeId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Runtime.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRuntime(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['runtimeId']!.first,
          unittest.equals(arg_runtimeId),
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
          requestId: arg_requestId,
          runtimeId: arg_runtimeId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--diagnose', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildDiagnoseRuntimeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DiagnoseRuntimeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDiagnoseRuntimeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.diagnose(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
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
        final resp = convert.json.encode(buildRuntime());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRuntime(response as api.Runtime);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
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
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListRuntimesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListRuntimesResponse(response as api.ListRuntimesResponse);
    });

    unittest.test('method--migrate', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildMigrateRuntimeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MigrateRuntimeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigrateRuntimeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.migrate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildRuntime();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Runtime.fromJson(json as core.Map<core.String, core.dynamic>);
        checkRuntime(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--refreshRuntimeTokenInternal', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildRefreshRuntimeTokenInternalRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RefreshRuntimeTokenInternalRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRefreshRuntimeTokenInternalRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
            convert.json.encode(buildRefreshRuntimeTokenInternalResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.refreshRuntimeTokenInternal(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkRefreshRuntimeTokenInternalResponse(
          response as api.RefreshRuntimeTokenInternalResponse);
    });

    unittest.test('method--reportEvent', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildReportRuntimeEventRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportRuntimeEventRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportRuntimeEventRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.reportEvent(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--reset', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildResetRuntimeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ResetRuntimeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkResetRuntimeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.reset(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
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

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildStartRuntimeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartRuntimeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartRuntimeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.start(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildStopRuntimeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StopRuntimeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStopRuntimeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.stop(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--switch_', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildSwitchRuntimeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SwitchRuntimeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSwitchRuntimeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.switch_(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
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

    unittest.test('method--upgrade', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.runtimes;
      final arg_request = buildUpgradeRuntimeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpgradeRuntimeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpgradeRuntimeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.upgrade(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsSchedulesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.schedules;
      final arg_request = buildSchedule();
      final arg_parent = 'foo';
      final arg_scheduleId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Schedule.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSchedule(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          queryMap['scheduleId']!.first,
          unittest.equals(arg_scheduleId),
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
          scheduleId: arg_scheduleId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.schedules;
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
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.schedules;
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
        final resp = convert.json.encode(buildSchedule());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSchedule(response as api.Schedule);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.schedules;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
          queryMap['orderBy']!.first,
          unittest.equals(arg_orderBy),
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
        final resp = convert.json.encode(buildListSchedulesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSchedulesResponse(response as api.ListSchedulesResponse);
    });

    unittest.test('method--trigger', () async {
      final mock = HttpServerMock();
      final res = api.AIPlatformNotebooksApi(mock).projects.locations.schedules;
      final arg_request = buildTriggerScheduleRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TriggerScheduleRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTriggerScheduleRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.trigger(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
