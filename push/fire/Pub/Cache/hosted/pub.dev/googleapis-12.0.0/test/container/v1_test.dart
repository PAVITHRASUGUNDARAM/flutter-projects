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

import 'package:googleapis/container/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  final o = api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.acceleratorCount = 'foo';
    o.acceleratorType = 'foo';
    o.gpuDriverInstallationConfig = buildGPUDriverInstallationConfig();
    o.gpuPartitionSize = 'foo';
    o.gpuSharingConfig = buildGPUSharingConfig();
  }
  buildCounterAcceleratorConfig--;
  return o;
}

void checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(
      o.acceleratorCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.acceleratorType!,
      unittest.equals('foo'),
    );
    checkGPUDriverInstallationConfig(o.gpuDriverInstallationConfig!);
    unittest.expect(
      o.gpuPartitionSize!,
      unittest.equals('foo'),
    );
    checkGPUSharingConfig(o.gpuSharingConfig!);
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAdditionalNodeNetworkConfig = 0;
api.AdditionalNodeNetworkConfig buildAdditionalNodeNetworkConfig() {
  final o = api.AdditionalNodeNetworkConfig();
  buildCounterAdditionalNodeNetworkConfig++;
  if (buildCounterAdditionalNodeNetworkConfig < 3) {
    o.network = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterAdditionalNodeNetworkConfig--;
  return o;
}

void checkAdditionalNodeNetworkConfig(api.AdditionalNodeNetworkConfig o) {
  buildCounterAdditionalNodeNetworkConfig++;
  if (buildCounterAdditionalNodeNetworkConfig < 3) {
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdditionalNodeNetworkConfig--;
}

core.int buildCounterAdditionalPodNetworkConfig = 0;
api.AdditionalPodNetworkConfig buildAdditionalPodNetworkConfig() {
  final o = api.AdditionalPodNetworkConfig();
  buildCounterAdditionalPodNetworkConfig++;
  if (buildCounterAdditionalPodNetworkConfig < 3) {
    o.maxPodsPerNode = buildMaxPodsConstraint();
    o.secondaryPodRange = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterAdditionalPodNetworkConfig--;
  return o;
}

void checkAdditionalPodNetworkConfig(api.AdditionalPodNetworkConfig o) {
  buildCounterAdditionalPodNetworkConfig++;
  if (buildCounterAdditionalPodNetworkConfig < 3) {
    checkMaxPodsConstraint(o.maxPodsPerNode!);
    unittest.expect(
      o.secondaryPodRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdditionalPodNetworkConfig--;
}

core.List<api.RangeInfo> buildUnnamed0() => [
      buildRangeInfo(),
      buildRangeInfo(),
    ];

void checkUnnamed0(core.List<api.RangeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRangeInfo(o[0]);
  checkRangeInfo(o[1]);
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

core.int buildCounterAdditionalPodRangesConfig = 0;
api.AdditionalPodRangesConfig buildAdditionalPodRangesConfig() {
  final o = api.AdditionalPodRangesConfig();
  buildCounterAdditionalPodRangesConfig++;
  if (buildCounterAdditionalPodRangesConfig < 3) {
    o.podRangeInfo = buildUnnamed0();
    o.podRangeNames = buildUnnamed1();
  }
  buildCounterAdditionalPodRangesConfig--;
  return o;
}

void checkAdditionalPodRangesConfig(api.AdditionalPodRangesConfig o) {
  buildCounterAdditionalPodRangesConfig++;
  if (buildCounterAdditionalPodRangesConfig < 3) {
    checkUnnamed0(o.podRangeInfo!);
    checkUnnamed1(o.podRangeNames!);
  }
  buildCounterAdditionalPodRangesConfig--;
}

core.int buildCounterAddonsConfig = 0;
api.AddonsConfig buildAddonsConfig() {
  final o = api.AddonsConfig();
  buildCounterAddonsConfig++;
  if (buildCounterAddonsConfig < 3) {
    o.cloudRunConfig = buildCloudRunConfig();
    o.configConnectorConfig = buildConfigConnectorConfig();
    o.dnsCacheConfig = buildDnsCacheConfig();
    o.gcePersistentDiskCsiDriverConfig =
        buildGcePersistentDiskCsiDriverConfig();
    o.gcpFilestoreCsiDriverConfig = buildGcpFilestoreCsiDriverConfig();
    o.gcsFuseCsiDriverConfig = buildGcsFuseCsiDriverConfig();
    o.gkeBackupAgentConfig = buildGkeBackupAgentConfig();
    o.horizontalPodAutoscaling = buildHorizontalPodAutoscaling();
    o.httpLoadBalancing = buildHttpLoadBalancing();
    o.kubernetesDashboard = buildKubernetesDashboard();
    o.networkPolicyConfig = buildNetworkPolicyConfig();
  }
  buildCounterAddonsConfig--;
  return o;
}

void checkAddonsConfig(api.AddonsConfig o) {
  buildCounterAddonsConfig++;
  if (buildCounterAddonsConfig < 3) {
    checkCloudRunConfig(o.cloudRunConfig!);
    checkConfigConnectorConfig(o.configConnectorConfig!);
    checkDnsCacheConfig(o.dnsCacheConfig!);
    checkGcePersistentDiskCsiDriverConfig(o.gcePersistentDiskCsiDriverConfig!);
    checkGcpFilestoreCsiDriverConfig(o.gcpFilestoreCsiDriverConfig!);
    checkGcsFuseCsiDriverConfig(o.gcsFuseCsiDriverConfig!);
    checkGkeBackupAgentConfig(o.gkeBackupAgentConfig!);
    checkHorizontalPodAutoscaling(o.horizontalPodAutoscaling!);
    checkHttpLoadBalancing(o.httpLoadBalancing!);
    checkKubernetesDashboard(o.kubernetesDashboard!);
    checkNetworkPolicyConfig(o.networkPolicyConfig!);
  }
  buildCounterAddonsConfig--;
}

core.int buildCounterAdvancedDatapathObservabilityConfig = 0;
api.AdvancedDatapathObservabilityConfig
    buildAdvancedDatapathObservabilityConfig() {
  final o = api.AdvancedDatapathObservabilityConfig();
  buildCounterAdvancedDatapathObservabilityConfig++;
  if (buildCounterAdvancedDatapathObservabilityConfig < 3) {
    o.enableMetrics = true;
    o.relayMode = 'foo';
  }
  buildCounterAdvancedDatapathObservabilityConfig--;
  return o;
}

void checkAdvancedDatapathObservabilityConfig(
    api.AdvancedDatapathObservabilityConfig o) {
  buildCounterAdvancedDatapathObservabilityConfig++;
  if (buildCounterAdvancedDatapathObservabilityConfig < 3) {
    unittest.expect(o.enableMetrics!, unittest.isTrue);
    unittest.expect(
      o.relayMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvancedDatapathObservabilityConfig--;
}

core.int buildCounterAdvancedMachineFeatures = 0;
api.AdvancedMachineFeatures buildAdvancedMachineFeatures() {
  final o = api.AdvancedMachineFeatures();
  buildCounterAdvancedMachineFeatures++;
  if (buildCounterAdvancedMachineFeatures < 3) {
    o.threadsPerCore = 'foo';
  }
  buildCounterAdvancedMachineFeatures--;
  return o;
}

void checkAdvancedMachineFeatures(api.AdvancedMachineFeatures o) {
  buildCounterAdvancedMachineFeatures++;
  if (buildCounterAdvancedMachineFeatures < 3) {
    unittest.expect(
      o.threadsPerCore!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdvancedMachineFeatures--;
}

core.int buildCounterAuthenticatorGroupsConfig = 0;
api.AuthenticatorGroupsConfig buildAuthenticatorGroupsConfig() {
  final o = api.AuthenticatorGroupsConfig();
  buildCounterAuthenticatorGroupsConfig++;
  if (buildCounterAuthenticatorGroupsConfig < 3) {
    o.enabled = true;
    o.securityGroup = 'foo';
  }
  buildCounterAuthenticatorGroupsConfig--;
  return o;
}

void checkAuthenticatorGroupsConfig(api.AuthenticatorGroupsConfig o) {
  buildCounterAuthenticatorGroupsConfig++;
  if (buildCounterAuthenticatorGroupsConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.securityGroup!,
      unittest.equals('foo'),
    );
  }
  buildCounterAuthenticatorGroupsConfig--;
}

core.int buildCounterAutoUpgradeOptions = 0;
api.AutoUpgradeOptions buildAutoUpgradeOptions() {
  final o = api.AutoUpgradeOptions();
  buildCounterAutoUpgradeOptions++;
  if (buildCounterAutoUpgradeOptions < 3) {
    o.autoUpgradeStartTime = 'foo';
    o.description = 'foo';
  }
  buildCounterAutoUpgradeOptions--;
  return o;
}

void checkAutoUpgradeOptions(api.AutoUpgradeOptions o) {
  buildCounterAutoUpgradeOptions++;
  if (buildCounterAutoUpgradeOptions < 3) {
    unittest.expect(
      o.autoUpgradeStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutoUpgradeOptions--;
}

core.int buildCounterAutopilot = 0;
api.Autopilot buildAutopilot() {
  final o = api.Autopilot();
  buildCounterAutopilot++;
  if (buildCounterAutopilot < 3) {
    o.enabled = true;
    o.workloadPolicyConfig = buildWorkloadPolicyConfig();
  }
  buildCounterAutopilot--;
  return o;
}

void checkAutopilot(api.Autopilot o) {
  buildCounterAutopilot++;
  if (buildCounterAutopilot < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    checkWorkloadPolicyConfig(o.workloadPolicyConfig!);
  }
  buildCounterAutopilot--;
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

core.int buildCounterAutopilotCompatibilityIssue = 0;
api.AutopilotCompatibilityIssue buildAutopilotCompatibilityIssue() {
  final o = api.AutopilotCompatibilityIssue();
  buildCounterAutopilotCompatibilityIssue++;
  if (buildCounterAutopilotCompatibilityIssue < 3) {
    o.constraintType = 'foo';
    o.description = 'foo';
    o.documentationUrl = 'foo';
    o.incompatibilityType = 'foo';
    o.lastObservation = 'foo';
    o.subjects = buildUnnamed2();
  }
  buildCounterAutopilotCompatibilityIssue--;
  return o;
}

void checkAutopilotCompatibilityIssue(api.AutopilotCompatibilityIssue o) {
  buildCounterAutopilotCompatibilityIssue++;
  if (buildCounterAutopilotCompatibilityIssue < 3) {
    unittest.expect(
      o.constraintType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.documentationUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.incompatibilityType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastObservation!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.subjects!);
  }
  buildCounterAutopilotCompatibilityIssue--;
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

core.int buildCounterAutoprovisioningNodePoolDefaults = 0;
api.AutoprovisioningNodePoolDefaults buildAutoprovisioningNodePoolDefaults() {
  final o = api.AutoprovisioningNodePoolDefaults();
  buildCounterAutoprovisioningNodePoolDefaults++;
  if (buildCounterAutoprovisioningNodePoolDefaults < 3) {
    o.bootDiskKmsKey = 'foo';
    o.diskSizeGb = 42;
    o.diskType = 'foo';
    o.imageType = 'foo';
    o.insecureKubeletReadonlyPortEnabled = true;
    o.management = buildNodeManagement();
    o.minCpuPlatform = 'foo';
    o.oauthScopes = buildUnnamed3();
    o.serviceAccount = 'foo';
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.upgradeSettings = buildUpgradeSettings();
  }
  buildCounterAutoprovisioningNodePoolDefaults--;
  return o;
}

void checkAutoprovisioningNodePoolDefaults(
    api.AutoprovisioningNodePoolDefaults o) {
  buildCounterAutoprovisioningNodePoolDefaults++;
  if (buildCounterAutoprovisioningNodePoolDefaults < 3) {
    unittest.expect(
      o.bootDiskKmsKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.insecureKubeletReadonlyPortEnabled!, unittest.isTrue);
    checkNodeManagement(o.management!);
    unittest.expect(
      o.minCpuPlatform!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.oauthScopes!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
    checkUpgradeSettings(o.upgradeSettings!);
  }
  buildCounterAutoprovisioningNodePoolDefaults--;
}

core.int buildCounterBestEffortProvisioning = 0;
api.BestEffortProvisioning buildBestEffortProvisioning() {
  final o = api.BestEffortProvisioning();
  buildCounterBestEffortProvisioning++;
  if (buildCounterBestEffortProvisioning < 3) {
    o.enabled = true;
    o.minProvisionNodes = 42;
  }
  buildCounterBestEffortProvisioning--;
  return o;
}

void checkBestEffortProvisioning(api.BestEffortProvisioning o) {
  buildCounterBestEffortProvisioning++;
  if (buildCounterBestEffortProvisioning < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.minProvisionNodes!,
      unittest.equals(42),
    );
  }
  buildCounterBestEffortProvisioning--;
}

core.int buildCounterBigQueryDestination = 0;
api.BigQueryDestination buildBigQueryDestination() {
  final o = api.BigQueryDestination();
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    o.datasetId = 'foo';
  }
  buildCounterBigQueryDestination--;
  return o;
}

void checkBigQueryDestination(api.BigQueryDestination o) {
  buildCounterBigQueryDestination++;
  if (buildCounterBigQueryDestination < 3) {
    unittest.expect(
      o.datasetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigQueryDestination--;
}

core.int buildCounterBinaryAuthorization = 0;
api.BinaryAuthorization buildBinaryAuthorization() {
  final o = api.BinaryAuthorization();
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    o.enabled = true;
    o.evaluationMode = 'foo';
  }
  buildCounterBinaryAuthorization--;
  return o;
}

void checkBinaryAuthorization(api.BinaryAuthorization o) {
  buildCounterBinaryAuthorization++;
  if (buildCounterBinaryAuthorization < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.evaluationMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterBinaryAuthorization--;
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

core.int buildCounterBlueGreenInfo = 0;
api.BlueGreenInfo buildBlueGreenInfo() {
  final o = api.BlueGreenInfo();
  buildCounterBlueGreenInfo++;
  if (buildCounterBlueGreenInfo < 3) {
    o.blueInstanceGroupUrls = buildUnnamed4();
    o.bluePoolDeletionStartTime = 'foo';
    o.greenInstanceGroupUrls = buildUnnamed5();
    o.greenPoolVersion = 'foo';
    o.phase = 'foo';
  }
  buildCounterBlueGreenInfo--;
  return o;
}

void checkBlueGreenInfo(api.BlueGreenInfo o) {
  buildCounterBlueGreenInfo++;
  if (buildCounterBlueGreenInfo < 3) {
    checkUnnamed4(o.blueInstanceGroupUrls!);
    unittest.expect(
      o.bluePoolDeletionStartTime!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.greenInstanceGroupUrls!);
    unittest.expect(
      o.greenPoolVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phase!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlueGreenInfo--;
}

core.int buildCounterBlueGreenSettings = 0;
api.BlueGreenSettings buildBlueGreenSettings() {
  final o = api.BlueGreenSettings();
  buildCounterBlueGreenSettings++;
  if (buildCounterBlueGreenSettings < 3) {
    o.nodePoolSoakDuration = 'foo';
    o.standardRolloutPolicy = buildStandardRolloutPolicy();
  }
  buildCounterBlueGreenSettings--;
  return o;
}

void checkBlueGreenSettings(api.BlueGreenSettings o) {
  buildCounterBlueGreenSettings++;
  if (buildCounterBlueGreenSettings < 3) {
    unittest.expect(
      o.nodePoolSoakDuration!,
      unittest.equals('foo'),
    );
    checkStandardRolloutPolicy(o.standardRolloutPolicy!);
  }
  buildCounterBlueGreenSettings--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
    o.name = 'foo';
    o.operationId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCancelOperationRequest--;
}

core.List<api.AutopilotCompatibilityIssue> buildUnnamed6() => [
      buildAutopilotCompatibilityIssue(),
      buildAutopilotCompatibilityIssue(),
    ];

void checkUnnamed6(core.List<api.AutopilotCompatibilityIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutopilotCompatibilityIssue(o[0]);
  checkAutopilotCompatibilityIssue(o[1]);
}

core.int buildCounterCheckAutopilotCompatibilityResponse = 0;
api.CheckAutopilotCompatibilityResponse
    buildCheckAutopilotCompatibilityResponse() {
  final o = api.CheckAutopilotCompatibilityResponse();
  buildCounterCheckAutopilotCompatibilityResponse++;
  if (buildCounterCheckAutopilotCompatibilityResponse < 3) {
    o.issues = buildUnnamed6();
    o.summary = 'foo';
  }
  buildCounterCheckAutopilotCompatibilityResponse--;
  return o;
}

void checkCheckAutopilotCompatibilityResponse(
    api.CheckAutopilotCompatibilityResponse o) {
  buildCounterCheckAutopilotCompatibilityResponse++;
  if (buildCounterCheckAutopilotCompatibilityResponse < 3) {
    checkUnnamed6(o.issues!);
    unittest.expect(
      o.summary!,
      unittest.equals('foo'),
    );
  }
  buildCounterCheckAutopilotCompatibilityResponse--;
}

core.int buildCounterCidrBlock = 0;
api.CidrBlock buildCidrBlock() {
  final o = api.CidrBlock();
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    o.cidrBlock = 'foo';
    o.displayName = 'foo';
  }
  buildCounterCidrBlock--;
  return o;
}

void checkCidrBlock(api.CidrBlock o) {
  buildCounterCidrBlock++;
  if (buildCounterCidrBlock < 3) {
    unittest.expect(
      o.cidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCidrBlock--;
}

core.int buildCounterClientCertificateConfig = 0;
api.ClientCertificateConfig buildClientCertificateConfig() {
  final o = api.ClientCertificateConfig();
  buildCounterClientCertificateConfig++;
  if (buildCounterClientCertificateConfig < 3) {
    o.issueClientCertificate = true;
  }
  buildCounterClientCertificateConfig--;
  return o;
}

void checkClientCertificateConfig(api.ClientCertificateConfig o) {
  buildCounterClientCertificateConfig++;
  if (buildCounterClientCertificateConfig < 3) {
    unittest.expect(o.issueClientCertificate!, unittest.isTrue);
  }
  buildCounterClientCertificateConfig--;
}

core.int buildCounterCloudRunConfig = 0;
api.CloudRunConfig buildCloudRunConfig() {
  final o = api.CloudRunConfig();
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    o.disabled = true;
    o.loadBalancerType = 'foo';
  }
  buildCounterCloudRunConfig--;
  return o;
}

void checkCloudRunConfig(api.CloudRunConfig o) {
  buildCounterCloudRunConfig++;
  if (buildCounterCloudRunConfig < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.loadBalancerType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCloudRunConfig--;
}

core.List<api.StatusCondition> buildUnnamed7() => [
      buildStatusCondition(),
      buildStatusCondition(),
    ];

void checkUnnamed7(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<api.NodePool> buildUnnamed10() => [
      buildNodePool(),
      buildNodePool(),
    ];

void checkUnnamed10(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

core.Map<core.String, core.String> buildUnnamed11() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed11(core.Map<core.String, core.String> o) {
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

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.addonsConfig = buildAddonsConfig();
    o.authenticatorGroupsConfig = buildAuthenticatorGroupsConfig();
    o.autopilot = buildAutopilot();
    o.autoscaling = buildClusterAutoscaling();
    o.binaryAuthorization = buildBinaryAuthorization();
    o.clusterIpv4Cidr = 'foo';
    o.conditions = buildUnnamed7();
    o.confidentialNodes = buildConfidentialNodes();
    o.costManagementConfig = buildCostManagementConfig();
    o.createTime = 'foo';
    o.currentMasterVersion = 'foo';
    o.currentNodeCount = 42;
    o.currentNodeVersion = 'foo';
    o.databaseEncryption = buildDatabaseEncryption();
    o.defaultMaxPodsConstraint = buildMaxPodsConstraint();
    o.description = 'foo';
    o.enableK8sBetaApis = buildK8sBetaAPIConfig();
    o.enableKubernetesAlpha = true;
    o.enableTpu = true;
    o.endpoint = 'foo';
    o.enterpriseConfig = buildEnterpriseConfig();
    o.etag = 'foo';
    o.expireTime = 'foo';
    o.fleet = buildFleet();
    o.id = 'foo';
    o.identityServiceConfig = buildIdentityServiceConfig();
    o.initialClusterVersion = 'foo';
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed8();
    o.ipAllocationPolicy = buildIPAllocationPolicy();
    o.labelFingerprint = 'foo';
    o.legacyAbac = buildLegacyAbac();
    o.location = 'foo';
    o.locations = buildUnnamed9();
    o.loggingConfig = buildLoggingConfig();
    o.loggingService = 'foo';
    o.maintenancePolicy = buildMaintenancePolicy();
    o.masterAuth = buildMasterAuth();
    o.masterAuthorizedNetworksConfig = buildMasterAuthorizedNetworksConfig();
    o.meshCertificates = buildMeshCertificates();
    o.monitoringConfig = buildMonitoringConfig();
    o.monitoringService = 'foo';
    o.name = 'foo';
    o.network = 'foo';
    o.networkConfig = buildNetworkConfig();
    o.networkPolicy = buildNetworkPolicy();
    o.nodeConfig = buildNodeConfig();
    o.nodeIpv4CidrSize = 42;
    o.nodePoolAutoConfig = buildNodePoolAutoConfig();
    o.nodePoolDefaults = buildNodePoolDefaults();
    o.nodePools = buildUnnamed10();
    o.notificationConfig = buildNotificationConfig();
    o.parentProductConfig = buildParentProductConfig();
    o.privateClusterConfig = buildPrivateClusterConfig();
    o.releaseChannel = buildReleaseChannel();
    o.resourceLabels = buildUnnamed11();
    o.resourceUsageExportConfig = buildResourceUsageExportConfig();
    o.securityPostureConfig = buildSecurityPostureConfig();
    o.selfLink = 'foo';
    o.servicesIpv4Cidr = 'foo';
    o.shieldedNodes = buildShieldedNodes();
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.subnetwork = 'foo';
    o.tpuIpv4CidrBlock = 'foo';
    o.verticalPodAutoscaling = buildVerticalPodAutoscaling();
    o.workloadIdentityConfig = buildWorkloadIdentityConfig();
    o.zone = 'foo';
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    checkAddonsConfig(o.addonsConfig!);
    checkAuthenticatorGroupsConfig(o.authenticatorGroupsConfig!);
    checkAutopilot(o.autopilot!);
    checkClusterAutoscaling(o.autoscaling!);
    checkBinaryAuthorization(o.binaryAuthorization!);
    unittest.expect(
      o.clusterIpv4Cidr!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.conditions!);
    checkConfidentialNodes(o.confidentialNodes!);
    checkCostManagementConfig(o.costManagementConfig!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentMasterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.currentNodeVersion!,
      unittest.equals('foo'),
    );
    checkDatabaseEncryption(o.databaseEncryption!);
    checkMaxPodsConstraint(o.defaultMaxPodsConstraint!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkK8sBetaAPIConfig(o.enableK8sBetaApis!);
    unittest.expect(o.enableKubernetesAlpha!, unittest.isTrue);
    unittest.expect(o.enableTpu!, unittest.isTrue);
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    checkEnterpriseConfig(o.enterpriseConfig!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    checkFleet(o.fleet!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkIdentityServiceConfig(o.identityServiceConfig!);
    unittest.expect(
      o.initialClusterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initialNodeCount!,
      unittest.equals(42),
    );
    checkUnnamed8(o.instanceGroupUrls!);
    checkIPAllocationPolicy(o.ipAllocationPolicy!);
    unittest.expect(
      o.labelFingerprint!,
      unittest.equals('foo'),
    );
    checkLegacyAbac(o.legacyAbac!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.locations!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.loggingService!,
      unittest.equals('foo'),
    );
    checkMaintenancePolicy(o.maintenancePolicy!);
    checkMasterAuth(o.masterAuth!);
    checkMasterAuthorizedNetworksConfig(o.masterAuthorizedNetworksConfig!);
    checkMeshCertificates(o.meshCertificates!);
    checkMonitoringConfig(o.monitoringConfig!);
    unittest.expect(
      o.monitoringService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkNetworkConfig(o.networkConfig!);
    checkNetworkPolicy(o.networkPolicy!);
    checkNodeConfig(o.nodeConfig!);
    unittest.expect(
      o.nodeIpv4CidrSize!,
      unittest.equals(42),
    );
    checkNodePoolAutoConfig(o.nodePoolAutoConfig!);
    checkNodePoolDefaults(o.nodePoolDefaults!);
    checkUnnamed10(o.nodePools!);
    checkNotificationConfig(o.notificationConfig!);
    checkParentProductConfig(o.parentProductConfig!);
    checkPrivateClusterConfig(o.privateClusterConfig!);
    checkReleaseChannel(o.releaseChannel!);
    checkUnnamed11(o.resourceLabels!);
    checkResourceUsageExportConfig(o.resourceUsageExportConfig!);
    checkSecurityPostureConfig(o.securityPostureConfig!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesIpv4Cidr!,
      unittest.equals('foo'),
    );
    checkShieldedNodes(o.shieldedNodes!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tpuIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    checkVerticalPodAutoscaling(o.verticalPodAutoscaling!);
    checkWorkloadIdentityConfig(o.workloadIdentityConfig!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCluster--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.List<api.ResourceLimit> buildUnnamed13() => [
      buildResourceLimit(),
      buildResourceLimit(),
    ];

void checkUnnamed13(core.List<api.ResourceLimit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceLimit(o[0]);
  checkResourceLimit(o[1]);
}

core.int buildCounterClusterAutoscaling = 0;
api.ClusterAutoscaling buildClusterAutoscaling() {
  final o = api.ClusterAutoscaling();
  buildCounterClusterAutoscaling++;
  if (buildCounterClusterAutoscaling < 3) {
    o.autoprovisioningLocations = buildUnnamed12();
    o.autoprovisioningNodePoolDefaults =
        buildAutoprovisioningNodePoolDefaults();
    o.autoscalingProfile = 'foo';
    o.enableNodeAutoprovisioning = true;
    o.resourceLimits = buildUnnamed13();
  }
  buildCounterClusterAutoscaling--;
  return o;
}

void checkClusterAutoscaling(api.ClusterAutoscaling o) {
  buildCounterClusterAutoscaling++;
  if (buildCounterClusterAutoscaling < 3) {
    checkUnnamed12(o.autoprovisioningLocations!);
    checkAutoprovisioningNodePoolDefaults(o.autoprovisioningNodePoolDefaults!);
    unittest.expect(
      o.autoscalingProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableNodeAutoprovisioning!, unittest.isTrue);
    checkUnnamed13(o.resourceLimits!);
  }
  buildCounterClusterAutoscaling--;
}

core.int buildCounterClusterNetworkPerformanceConfig = 0;
api.ClusterNetworkPerformanceConfig buildClusterNetworkPerformanceConfig() {
  final o = api.ClusterNetworkPerformanceConfig();
  buildCounterClusterNetworkPerformanceConfig++;
  if (buildCounterClusterNetworkPerformanceConfig < 3) {
    o.totalEgressBandwidthTier = 'foo';
  }
  buildCounterClusterNetworkPerformanceConfig--;
  return o;
}

void checkClusterNetworkPerformanceConfig(
    api.ClusterNetworkPerformanceConfig o) {
  buildCounterClusterNetworkPerformanceConfig++;
  if (buildCounterClusterNetworkPerformanceConfig < 3) {
    unittest.expect(
      o.totalEgressBandwidthTier!,
      unittest.equals('foo'),
    );
  }
  buildCounterClusterNetworkPerformanceConfig--;
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

core.int buildCounterClusterUpdate = 0;
api.ClusterUpdate buildClusterUpdate() {
  final o = api.ClusterUpdate();
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    o.additionalPodRangesConfig = buildAdditionalPodRangesConfig();
    o.desiredAddonsConfig = buildAddonsConfig();
    o.desiredAuthenticatorGroupsConfig = buildAuthenticatorGroupsConfig();
    o.desiredAutopilotWorkloadPolicyConfig = buildWorkloadPolicyConfig();
    o.desiredBinaryAuthorization = buildBinaryAuthorization();
    o.desiredClusterAutoscaling = buildClusterAutoscaling();
    o.desiredCostManagementConfig = buildCostManagementConfig();
    o.desiredDatabaseEncryption = buildDatabaseEncryption();
    o.desiredDatapathProvider = 'foo';
    o.desiredDefaultSnatStatus = buildDefaultSnatStatus();
    o.desiredDnsConfig = buildDNSConfig();
    o.desiredEnableFqdnNetworkPolicy = true;
    o.desiredEnablePrivateEndpoint = true;
    o.desiredFleet = buildFleet();
    o.desiredGatewayApiConfig = buildGatewayAPIConfig();
    o.desiredGcfsConfig = buildGcfsConfig();
    o.desiredIdentityServiceConfig = buildIdentityServiceConfig();
    o.desiredImageType = 'foo';
    o.desiredIntraNodeVisibilityConfig = buildIntraNodeVisibilityConfig();
    o.desiredK8sBetaApis = buildK8sBetaAPIConfig();
    o.desiredL4ilbSubsettingConfig = buildILBSubsettingConfig();
    o.desiredLocations = buildUnnamed14();
    o.desiredLoggingConfig = buildLoggingConfig();
    o.desiredLoggingService = 'foo';
    o.desiredMasterAuthorizedNetworksConfig =
        buildMasterAuthorizedNetworksConfig();
    o.desiredMasterVersion = 'foo';
    o.desiredMeshCertificates = buildMeshCertificates();
    o.desiredMonitoringConfig = buildMonitoringConfig();
    o.desiredMonitoringService = 'foo';
    o.desiredNetworkPerformanceConfig = buildClusterNetworkPerformanceConfig();
    o.desiredNodePoolAutoConfigNetworkTags = buildNetworkTags();
    o.desiredNodePoolAutoConfigResourceManagerTags = buildResourceManagerTags();
    o.desiredNodePoolAutoscaling = buildNodePoolAutoscaling();
    o.desiredNodePoolId = 'foo';
    o.desiredNodePoolLoggingConfig = buildNodePoolLoggingConfig();
    o.desiredNodeVersion = 'foo';
    o.desiredNotificationConfig = buildNotificationConfig();
    o.desiredParentProductConfig = buildParentProductConfig();
    o.desiredPrivateClusterConfig = buildPrivateClusterConfig();
    o.desiredPrivateIpv6GoogleAccess = 'foo';
    o.desiredReleaseChannel = buildReleaseChannel();
    o.desiredResourceUsageExportConfig = buildResourceUsageExportConfig();
    o.desiredSecurityPostureConfig = buildSecurityPostureConfig();
    o.desiredServiceExternalIpsConfig = buildServiceExternalIPsConfig();
    o.desiredShieldedNodes = buildShieldedNodes();
    o.desiredStackType = 'foo';
    o.desiredVerticalPodAutoscaling = buildVerticalPodAutoscaling();
    o.desiredWorkloadIdentityConfig = buildWorkloadIdentityConfig();
    o.enableK8sBetaApis = buildK8sBetaAPIConfig();
    o.etag = 'foo';
    o.removedAdditionalPodRangesConfig = buildAdditionalPodRangesConfig();
  }
  buildCounterClusterUpdate--;
  return o;
}

void checkClusterUpdate(api.ClusterUpdate o) {
  buildCounterClusterUpdate++;
  if (buildCounterClusterUpdate < 3) {
    checkAdditionalPodRangesConfig(o.additionalPodRangesConfig!);
    checkAddonsConfig(o.desiredAddonsConfig!);
    checkAuthenticatorGroupsConfig(o.desiredAuthenticatorGroupsConfig!);
    checkWorkloadPolicyConfig(o.desiredAutopilotWorkloadPolicyConfig!);
    checkBinaryAuthorization(o.desiredBinaryAuthorization!);
    checkClusterAutoscaling(o.desiredClusterAutoscaling!);
    checkCostManagementConfig(o.desiredCostManagementConfig!);
    checkDatabaseEncryption(o.desiredDatabaseEncryption!);
    unittest.expect(
      o.desiredDatapathProvider!,
      unittest.equals('foo'),
    );
    checkDefaultSnatStatus(o.desiredDefaultSnatStatus!);
    checkDNSConfig(o.desiredDnsConfig!);
    unittest.expect(o.desiredEnableFqdnNetworkPolicy!, unittest.isTrue);
    unittest.expect(o.desiredEnablePrivateEndpoint!, unittest.isTrue);
    checkFleet(o.desiredFleet!);
    checkGatewayAPIConfig(o.desiredGatewayApiConfig!);
    checkGcfsConfig(o.desiredGcfsConfig!);
    checkIdentityServiceConfig(o.desiredIdentityServiceConfig!);
    unittest.expect(
      o.desiredImageType!,
      unittest.equals('foo'),
    );
    checkIntraNodeVisibilityConfig(o.desiredIntraNodeVisibilityConfig!);
    checkK8sBetaAPIConfig(o.desiredK8sBetaApis!);
    checkILBSubsettingConfig(o.desiredL4ilbSubsettingConfig!);
    checkUnnamed14(o.desiredLocations!);
    checkLoggingConfig(o.desiredLoggingConfig!);
    unittest.expect(
      o.desiredLoggingService!,
      unittest.equals('foo'),
    );
    checkMasterAuthorizedNetworksConfig(
        o.desiredMasterAuthorizedNetworksConfig!);
    unittest.expect(
      o.desiredMasterVersion!,
      unittest.equals('foo'),
    );
    checkMeshCertificates(o.desiredMeshCertificates!);
    checkMonitoringConfig(o.desiredMonitoringConfig!);
    unittest.expect(
      o.desiredMonitoringService!,
      unittest.equals('foo'),
    );
    checkClusterNetworkPerformanceConfig(o.desiredNetworkPerformanceConfig!);
    checkNetworkTags(o.desiredNodePoolAutoConfigNetworkTags!);
    checkResourceManagerTags(o.desiredNodePoolAutoConfigResourceManagerTags!);
    checkNodePoolAutoscaling(o.desiredNodePoolAutoscaling!);
    unittest.expect(
      o.desiredNodePoolId!,
      unittest.equals('foo'),
    );
    checkNodePoolLoggingConfig(o.desiredNodePoolLoggingConfig!);
    unittest.expect(
      o.desiredNodeVersion!,
      unittest.equals('foo'),
    );
    checkNotificationConfig(o.desiredNotificationConfig!);
    checkParentProductConfig(o.desiredParentProductConfig!);
    checkPrivateClusterConfig(o.desiredPrivateClusterConfig!);
    unittest.expect(
      o.desiredPrivateIpv6GoogleAccess!,
      unittest.equals('foo'),
    );
    checkReleaseChannel(o.desiredReleaseChannel!);
    checkResourceUsageExportConfig(o.desiredResourceUsageExportConfig!);
    checkSecurityPostureConfig(o.desiredSecurityPostureConfig!);
    checkServiceExternalIPsConfig(o.desiredServiceExternalIpsConfig!);
    checkShieldedNodes(o.desiredShieldedNodes!);
    unittest.expect(
      o.desiredStackType!,
      unittest.equals('foo'),
    );
    checkVerticalPodAutoscaling(o.desiredVerticalPodAutoscaling!);
    checkWorkloadIdentityConfig(o.desiredWorkloadIdentityConfig!);
    checkK8sBetaAPIConfig(o.enableK8sBetaApis!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkAdditionalPodRangesConfig(o.removedAdditionalPodRangesConfig!);
  }
  buildCounterClusterUpdate--;
}

core.int buildCounterCompleteIPRotationRequest = 0;
api.CompleteIPRotationRequest buildCompleteIPRotationRequest() {
  final o = api.CompleteIPRotationRequest();
  buildCounterCompleteIPRotationRequest++;
  if (buildCounterCompleteIPRotationRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCompleteIPRotationRequest--;
  return o;
}

void checkCompleteIPRotationRequest(api.CompleteIPRotationRequest o) {
  buildCounterCompleteIPRotationRequest++;
  if (buildCounterCompleteIPRotationRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompleteIPRotationRequest--;
}

core.int buildCounterCompleteNodePoolUpgradeRequest = 0;
api.CompleteNodePoolUpgradeRequest buildCompleteNodePoolUpgradeRequest() {
  final o = api.CompleteNodePoolUpgradeRequest();
  buildCounterCompleteNodePoolUpgradeRequest++;
  if (buildCounterCompleteNodePoolUpgradeRequest < 3) {}
  buildCounterCompleteNodePoolUpgradeRequest--;
  return o;
}

void checkCompleteNodePoolUpgradeRequest(api.CompleteNodePoolUpgradeRequest o) {
  buildCounterCompleteNodePoolUpgradeRequest++;
  if (buildCounterCompleteNodePoolUpgradeRequest < 3) {}
  buildCounterCompleteNodePoolUpgradeRequest--;
}

core.int buildCounterConfidentialNodes = 0;
api.ConfidentialNodes buildConfidentialNodes() {
  final o = api.ConfidentialNodes();
  buildCounterConfidentialNodes++;
  if (buildCounterConfidentialNodes < 3) {
    o.enabled = true;
  }
  buildCounterConfidentialNodes--;
  return o;
}

void checkConfidentialNodes(api.ConfidentialNodes o) {
  buildCounterConfidentialNodes++;
  if (buildCounterConfidentialNodes < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConfidentialNodes--;
}

core.int buildCounterConfigConnectorConfig = 0;
api.ConfigConnectorConfig buildConfigConnectorConfig() {
  final o = api.ConfigConnectorConfig();
  buildCounterConfigConnectorConfig++;
  if (buildCounterConfigConnectorConfig < 3) {
    o.enabled = true;
  }
  buildCounterConfigConnectorConfig--;
  return o;
}

void checkConfigConnectorConfig(api.ConfigConnectorConfig o) {
  buildCounterConfigConnectorConfig++;
  if (buildCounterConfigConnectorConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConfigConnectorConfig--;
}

core.int buildCounterConsumptionMeteringConfig = 0;
api.ConsumptionMeteringConfig buildConsumptionMeteringConfig() {
  final o = api.ConsumptionMeteringConfig();
  buildCounterConsumptionMeteringConfig++;
  if (buildCounterConsumptionMeteringConfig < 3) {
    o.enabled = true;
  }
  buildCounterConsumptionMeteringConfig--;
  return o;
}

void checkConsumptionMeteringConfig(api.ConsumptionMeteringConfig o) {
  buildCounterConsumptionMeteringConfig++;
  if (buildCounterConsumptionMeteringConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterConsumptionMeteringConfig--;
}

core.int buildCounterCostManagementConfig = 0;
api.CostManagementConfig buildCostManagementConfig() {
  final o = api.CostManagementConfig();
  buildCounterCostManagementConfig++;
  if (buildCounterCostManagementConfig < 3) {
    o.enabled = true;
  }
  buildCounterCostManagementConfig--;
  return o;
}

void checkCostManagementConfig(api.CostManagementConfig o) {
  buildCounterCostManagementConfig++;
  if (buildCounterCostManagementConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterCostManagementConfig--;
}

core.int buildCounterCreateClusterRequest = 0;
api.CreateClusterRequest buildCreateClusterRequest() {
  final o = api.CreateClusterRequest();
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    o.cluster = buildCluster();
    o.parent = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCreateClusterRequest--;
  return o;
}

void checkCreateClusterRequest(api.CreateClusterRequest o) {
  buildCounterCreateClusterRequest++;
  if (buildCounterCreateClusterRequest < 3) {
    checkCluster(o.cluster!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateClusterRequest--;
}

core.int buildCounterCreateNodePoolRequest = 0;
api.CreateNodePoolRequest buildCreateNodePoolRequest() {
  final o = api.CreateNodePoolRequest();
  buildCounterCreateNodePoolRequest++;
  if (buildCounterCreateNodePoolRequest < 3) {
    o.clusterId = 'foo';
    o.nodePool = buildNodePool();
    o.parent = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterCreateNodePoolRequest--;
  return o;
}

void checkCreateNodePoolRequest(api.CreateNodePoolRequest o) {
  buildCounterCreateNodePoolRequest++;
  if (buildCounterCreateNodePoolRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkNodePool(o.nodePool!);
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateNodePoolRequest--;
}

core.int buildCounterDNSConfig = 0;
api.DNSConfig buildDNSConfig() {
  final o = api.DNSConfig();
  buildCounterDNSConfig++;
  if (buildCounterDNSConfig < 3) {
    o.clusterDns = 'foo';
    o.clusterDnsDomain = 'foo';
    o.clusterDnsScope = 'foo';
  }
  buildCounterDNSConfig--;
  return o;
}

void checkDNSConfig(api.DNSConfig o) {
  buildCounterDNSConfig++;
  if (buildCounterDNSConfig < 3) {
    unittest.expect(
      o.clusterDns!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterDnsDomain!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterDnsScope!,
      unittest.equals('foo'),
    );
  }
  buildCounterDNSConfig--;
}

core.int buildCounterDailyMaintenanceWindow = 0;
api.DailyMaintenanceWindow buildDailyMaintenanceWindow() {
  final o = api.DailyMaintenanceWindow();
  buildCounterDailyMaintenanceWindow++;
  if (buildCounterDailyMaintenanceWindow < 3) {
    o.duration = 'foo';
    o.startTime = 'foo';
  }
  buildCounterDailyMaintenanceWindow--;
  return o;
}

void checkDailyMaintenanceWindow(api.DailyMaintenanceWindow o) {
  buildCounterDailyMaintenanceWindow++;
  if (buildCounterDailyMaintenanceWindow < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDailyMaintenanceWindow--;
}

core.int buildCounterDatabaseEncryption = 0;
api.DatabaseEncryption buildDatabaseEncryption() {
  final o = api.DatabaseEncryption();
  buildCounterDatabaseEncryption++;
  if (buildCounterDatabaseEncryption < 3) {
    o.keyName = 'foo';
    o.state = 'foo';
  }
  buildCounterDatabaseEncryption--;
  return o;
}

void checkDatabaseEncryption(api.DatabaseEncryption o) {
  buildCounterDatabaseEncryption++;
  if (buildCounterDatabaseEncryption < 3) {
    unittest.expect(
      o.keyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatabaseEncryption--;
}

core.int buildCounterDefaultSnatStatus = 0;
api.DefaultSnatStatus buildDefaultSnatStatus() {
  final o = api.DefaultSnatStatus();
  buildCounterDefaultSnatStatus++;
  if (buildCounterDefaultSnatStatus < 3) {
    o.disabled = true;
  }
  buildCounterDefaultSnatStatus--;
  return o;
}

void checkDefaultSnatStatus(api.DefaultSnatStatus o) {
  buildCounterDefaultSnatStatus++;
  if (buildCounterDefaultSnatStatus < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterDefaultSnatStatus--;
}

core.int buildCounterDnsCacheConfig = 0;
api.DnsCacheConfig buildDnsCacheConfig() {
  final o = api.DnsCacheConfig();
  buildCounterDnsCacheConfig++;
  if (buildCounterDnsCacheConfig < 3) {
    o.enabled = true;
  }
  buildCounterDnsCacheConfig--;
  return o;
}

void checkDnsCacheConfig(api.DnsCacheConfig o) {
  buildCounterDnsCacheConfig++;
  if (buildCounterDnsCacheConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterDnsCacheConfig--;
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

core.int buildCounterEnterpriseConfig = 0;
api.EnterpriseConfig buildEnterpriseConfig() {
  final o = api.EnterpriseConfig();
  buildCounterEnterpriseConfig++;
  if (buildCounterEnterpriseConfig < 3) {
    o.clusterTier = 'foo';
  }
  buildCounterEnterpriseConfig--;
  return o;
}

void checkEnterpriseConfig(api.EnterpriseConfig o) {
  buildCounterEnterpriseConfig++;
  if (buildCounterEnterpriseConfig < 3) {
    unittest.expect(
      o.clusterTier!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnterpriseConfig--;
}

core.int buildCounterEphemeralStorageLocalSsdConfig = 0;
api.EphemeralStorageLocalSsdConfig buildEphemeralStorageLocalSsdConfig() {
  final o = api.EphemeralStorageLocalSsdConfig();
  buildCounterEphemeralStorageLocalSsdConfig++;
  if (buildCounterEphemeralStorageLocalSsdConfig < 3) {
    o.localSsdCount = 42;
  }
  buildCounterEphemeralStorageLocalSsdConfig--;
  return o;
}

void checkEphemeralStorageLocalSsdConfig(api.EphemeralStorageLocalSsdConfig o) {
  buildCounterEphemeralStorageLocalSsdConfig++;
  if (buildCounterEphemeralStorageLocalSsdConfig < 3) {
    unittest.expect(
      o.localSsdCount!,
      unittest.equals(42),
    );
  }
  buildCounterEphemeralStorageLocalSsdConfig--;
}

core.int buildCounterFastSocket = 0;
api.FastSocket buildFastSocket() {
  final o = api.FastSocket();
  buildCounterFastSocket++;
  if (buildCounterFastSocket < 3) {
    o.enabled = true;
  }
  buildCounterFastSocket--;
  return o;
}

void checkFastSocket(api.FastSocket o) {
  buildCounterFastSocket++;
  if (buildCounterFastSocket < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterFastSocket--;
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

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.eventType = buildUnnamed15();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkUnnamed15(o.eventType!);
  }
  buildCounterFilter--;
}

core.int buildCounterFleet = 0;
api.Fleet buildFleet() {
  final o = api.Fleet();
  buildCounterFleet++;
  if (buildCounterFleet < 3) {
    o.membership = 'foo';
    o.preRegistered = true;
    o.project = 'foo';
  }
  buildCounterFleet--;
  return o;
}

void checkFleet(api.Fleet o) {
  buildCounterFleet++;
  if (buildCounterFleet < 3) {
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
    unittest.expect(o.preRegistered!, unittest.isTrue);
    unittest.expect(
      o.project!,
      unittest.equals('foo'),
    );
  }
  buildCounterFleet--;
}

core.int buildCounterGPUDriverInstallationConfig = 0;
api.GPUDriverInstallationConfig buildGPUDriverInstallationConfig() {
  final o = api.GPUDriverInstallationConfig();
  buildCounterGPUDriverInstallationConfig++;
  if (buildCounterGPUDriverInstallationConfig < 3) {
    o.gpuDriverVersion = 'foo';
  }
  buildCounterGPUDriverInstallationConfig--;
  return o;
}

void checkGPUDriverInstallationConfig(api.GPUDriverInstallationConfig o) {
  buildCounterGPUDriverInstallationConfig++;
  if (buildCounterGPUDriverInstallationConfig < 3) {
    unittest.expect(
      o.gpuDriverVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGPUDriverInstallationConfig--;
}

core.int buildCounterGPUSharingConfig = 0;
api.GPUSharingConfig buildGPUSharingConfig() {
  final o = api.GPUSharingConfig();
  buildCounterGPUSharingConfig++;
  if (buildCounterGPUSharingConfig < 3) {
    o.gpuSharingStrategy = 'foo';
    o.maxSharedClientsPerGpu = 'foo';
  }
  buildCounterGPUSharingConfig--;
  return o;
}

void checkGPUSharingConfig(api.GPUSharingConfig o) {
  buildCounterGPUSharingConfig++;
  if (buildCounterGPUSharingConfig < 3) {
    unittest.expect(
      o.gpuSharingStrategy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxSharedClientsPerGpu!,
      unittest.equals('foo'),
    );
  }
  buildCounterGPUSharingConfig--;
}

core.int buildCounterGatewayAPIConfig = 0;
api.GatewayAPIConfig buildGatewayAPIConfig() {
  final o = api.GatewayAPIConfig();
  buildCounterGatewayAPIConfig++;
  if (buildCounterGatewayAPIConfig < 3) {
    o.channel = 'foo';
  }
  buildCounterGatewayAPIConfig--;
  return o;
}

void checkGatewayAPIConfig(api.GatewayAPIConfig o) {
  buildCounterGatewayAPIConfig++;
  if (buildCounterGatewayAPIConfig < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGatewayAPIConfig--;
}

core.int buildCounterGcePersistentDiskCsiDriverConfig = 0;
api.GcePersistentDiskCsiDriverConfig buildGcePersistentDiskCsiDriverConfig() {
  final o = api.GcePersistentDiskCsiDriverConfig();
  buildCounterGcePersistentDiskCsiDriverConfig++;
  if (buildCounterGcePersistentDiskCsiDriverConfig < 3) {
    o.enabled = true;
  }
  buildCounterGcePersistentDiskCsiDriverConfig--;
  return o;
}

void checkGcePersistentDiskCsiDriverConfig(
    api.GcePersistentDiskCsiDriverConfig o) {
  buildCounterGcePersistentDiskCsiDriverConfig++;
  if (buildCounterGcePersistentDiskCsiDriverConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGcePersistentDiskCsiDriverConfig--;
}

core.int buildCounterGcfsConfig = 0;
api.GcfsConfig buildGcfsConfig() {
  final o = api.GcfsConfig();
  buildCounterGcfsConfig++;
  if (buildCounterGcfsConfig < 3) {
    o.enabled = true;
  }
  buildCounterGcfsConfig--;
  return o;
}

void checkGcfsConfig(api.GcfsConfig o) {
  buildCounterGcfsConfig++;
  if (buildCounterGcfsConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGcfsConfig--;
}

core.int buildCounterGcpFilestoreCsiDriverConfig = 0;
api.GcpFilestoreCsiDriverConfig buildGcpFilestoreCsiDriverConfig() {
  final o = api.GcpFilestoreCsiDriverConfig();
  buildCounterGcpFilestoreCsiDriverConfig++;
  if (buildCounterGcpFilestoreCsiDriverConfig < 3) {
    o.enabled = true;
  }
  buildCounterGcpFilestoreCsiDriverConfig--;
  return o;
}

void checkGcpFilestoreCsiDriverConfig(api.GcpFilestoreCsiDriverConfig o) {
  buildCounterGcpFilestoreCsiDriverConfig++;
  if (buildCounterGcpFilestoreCsiDriverConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGcpFilestoreCsiDriverConfig--;
}

core.int buildCounterGcsFuseCsiDriverConfig = 0;
api.GcsFuseCsiDriverConfig buildGcsFuseCsiDriverConfig() {
  final o = api.GcsFuseCsiDriverConfig();
  buildCounterGcsFuseCsiDriverConfig++;
  if (buildCounterGcsFuseCsiDriverConfig < 3) {
    o.enabled = true;
  }
  buildCounterGcsFuseCsiDriverConfig--;
  return o;
}

void checkGcsFuseCsiDriverConfig(api.GcsFuseCsiDriverConfig o) {
  buildCounterGcsFuseCsiDriverConfig++;
  if (buildCounterGcsFuseCsiDriverConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGcsFuseCsiDriverConfig--;
}

core.List<api.Jwk> buildUnnamed16() => [
      buildJwk(),
      buildJwk(),
    ];

void checkUnnamed16(core.List<api.Jwk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJwk(o[0]);
  checkJwk(o[1]);
}

core.int buildCounterGetJSONWebKeysResponse = 0;
api.GetJSONWebKeysResponse buildGetJSONWebKeysResponse() {
  final o = api.GetJSONWebKeysResponse();
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    o.cacheHeader = buildHttpCacheControlResponseHeader();
    o.keys = buildUnnamed16();
  }
  buildCounterGetJSONWebKeysResponse--;
  return o;
}

void checkGetJSONWebKeysResponse(api.GetJSONWebKeysResponse o) {
  buildCounterGetJSONWebKeysResponse++;
  if (buildCounterGetJSONWebKeysResponse < 3) {
    checkHttpCacheControlResponseHeader(o.cacheHeader!);
    checkUnnamed16(o.keys!);
  }
  buildCounterGetJSONWebKeysResponse--;
}

core.List<core.String> buildUnnamed17() => [
      'foo',
      'foo',
    ];

void checkUnnamed17(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterGetOpenIDConfigResponse = 0;
api.GetOpenIDConfigResponse buildGetOpenIDConfigResponse() {
  final o = api.GetOpenIDConfigResponse();
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    o.cacheHeader = buildHttpCacheControlResponseHeader();
    o.claimsSupported = buildUnnamed17();
    o.grantTypes = buildUnnamed18();
    o.idTokenSigningAlgValuesSupported = buildUnnamed19();
    o.issuer = 'foo';
    o.jwksUri = 'foo';
    o.responseTypesSupported = buildUnnamed20();
    o.subjectTypesSupported = buildUnnamed21();
  }
  buildCounterGetOpenIDConfigResponse--;
  return o;
}

void checkGetOpenIDConfigResponse(api.GetOpenIDConfigResponse o) {
  buildCounterGetOpenIDConfigResponse++;
  if (buildCounterGetOpenIDConfigResponse < 3) {
    checkHttpCacheControlResponseHeader(o.cacheHeader!);
    checkUnnamed17(o.claimsSupported!);
    checkUnnamed18(o.grantTypes!);
    checkUnnamed19(o.idTokenSigningAlgValuesSupported!);
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jwksUri!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.responseTypesSupported!);
    checkUnnamed21(o.subjectTypesSupported!);
  }
  buildCounterGetOpenIDConfigResponse--;
}

core.int buildCounterGkeBackupAgentConfig = 0;
api.GkeBackupAgentConfig buildGkeBackupAgentConfig() {
  final o = api.GkeBackupAgentConfig();
  buildCounterGkeBackupAgentConfig++;
  if (buildCounterGkeBackupAgentConfig < 3) {
    o.enabled = true;
  }
  buildCounterGkeBackupAgentConfig--;
  return o;
}

void checkGkeBackupAgentConfig(api.GkeBackupAgentConfig o) {
  buildCounterGkeBackupAgentConfig++;
  if (buildCounterGkeBackupAgentConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterGkeBackupAgentConfig--;
}

core.int buildCounterHorizontalPodAutoscaling = 0;
api.HorizontalPodAutoscaling buildHorizontalPodAutoscaling() {
  final o = api.HorizontalPodAutoscaling();
  buildCounterHorizontalPodAutoscaling++;
  if (buildCounterHorizontalPodAutoscaling < 3) {
    o.disabled = true;
  }
  buildCounterHorizontalPodAutoscaling--;
  return o;
}

void checkHorizontalPodAutoscaling(api.HorizontalPodAutoscaling o) {
  buildCounterHorizontalPodAutoscaling++;
  if (buildCounterHorizontalPodAutoscaling < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterHorizontalPodAutoscaling--;
}

core.int buildCounterHttpCacheControlResponseHeader = 0;
api.HttpCacheControlResponseHeader buildHttpCacheControlResponseHeader() {
  final o = api.HttpCacheControlResponseHeader();
  buildCounterHttpCacheControlResponseHeader++;
  if (buildCounterHttpCacheControlResponseHeader < 3) {
    o.age = 'foo';
    o.directive = 'foo';
    o.expires = 'foo';
  }
  buildCounterHttpCacheControlResponseHeader--;
  return o;
}

void checkHttpCacheControlResponseHeader(api.HttpCacheControlResponseHeader o) {
  buildCounterHttpCacheControlResponseHeader++;
  if (buildCounterHttpCacheControlResponseHeader < 3) {
    unittest.expect(
      o.age!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.directive!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expires!,
      unittest.equals('foo'),
    );
  }
  buildCounterHttpCacheControlResponseHeader--;
}

core.int buildCounterHttpLoadBalancing = 0;
api.HttpLoadBalancing buildHttpLoadBalancing() {
  final o = api.HttpLoadBalancing();
  buildCounterHttpLoadBalancing++;
  if (buildCounterHttpLoadBalancing < 3) {
    o.disabled = true;
  }
  buildCounterHttpLoadBalancing--;
  return o;
}

void checkHttpLoadBalancing(api.HttpLoadBalancing o) {
  buildCounterHttpLoadBalancing++;
  if (buildCounterHttpLoadBalancing < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterHttpLoadBalancing--;
}

core.int buildCounterILBSubsettingConfig = 0;
api.ILBSubsettingConfig buildILBSubsettingConfig() {
  final o = api.ILBSubsettingConfig();
  buildCounterILBSubsettingConfig++;
  if (buildCounterILBSubsettingConfig < 3) {
    o.enabled = true;
  }
  buildCounterILBSubsettingConfig--;
  return o;
}

void checkILBSubsettingConfig(api.ILBSubsettingConfig o) {
  buildCounterILBSubsettingConfig++;
  if (buildCounterILBSubsettingConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterILBSubsettingConfig--;
}

core.int buildCounterIPAllocationPolicy = 0;
api.IPAllocationPolicy buildIPAllocationPolicy() {
  final o = api.IPAllocationPolicy();
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    o.additionalPodRangesConfig = buildAdditionalPodRangesConfig();
    o.clusterIpv4Cidr = 'foo';
    o.clusterIpv4CidrBlock = 'foo';
    o.clusterSecondaryRangeName = 'foo';
    o.createSubnetwork = true;
    o.defaultPodIpv4RangeUtilization = 42.0;
    o.ipv6AccessType = 'foo';
    o.nodeIpv4Cidr = 'foo';
    o.nodeIpv4CidrBlock = 'foo';
    o.podCidrOverprovisionConfig = buildPodCIDROverprovisionConfig();
    o.servicesIpv4Cidr = 'foo';
    o.servicesIpv4CidrBlock = 'foo';
    o.servicesIpv6CidrBlock = 'foo';
    o.servicesSecondaryRangeName = 'foo';
    o.stackType = 'foo';
    o.subnetIpv6CidrBlock = 'foo';
    o.subnetworkName = 'foo';
    o.tpuIpv4CidrBlock = 'foo';
    o.useIpAliases = true;
    o.useRoutes = true;
  }
  buildCounterIPAllocationPolicy--;
  return o;
}

void checkIPAllocationPolicy(api.IPAllocationPolicy o) {
  buildCounterIPAllocationPolicy++;
  if (buildCounterIPAllocationPolicy < 3) {
    checkAdditionalPodRangesConfig(o.additionalPodRangesConfig!);
    unittest.expect(
      o.clusterIpv4Cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterSecondaryRangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.createSubnetwork!, unittest.isTrue);
    unittest.expect(
      o.defaultPodIpv4RangeUtilization!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.ipv6AccessType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeIpv4Cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    checkPodCIDROverprovisionConfig(o.podCidrOverprovisionConfig!);
    unittest.expect(
      o.servicesIpv4Cidr!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesIpv6CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.servicesSecondaryRangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stackType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetIpv6CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetworkName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tpuIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useIpAliases!, unittest.isTrue);
    unittest.expect(o.useRoutes!, unittest.isTrue);
  }
  buildCounterIPAllocationPolicy--;
}

core.int buildCounterIdentityServiceConfig = 0;
api.IdentityServiceConfig buildIdentityServiceConfig() {
  final o = api.IdentityServiceConfig();
  buildCounterIdentityServiceConfig++;
  if (buildCounterIdentityServiceConfig < 3) {
    o.enabled = true;
  }
  buildCounterIdentityServiceConfig--;
  return o;
}

void checkIdentityServiceConfig(api.IdentityServiceConfig o) {
  buildCounterIdentityServiceConfig++;
  if (buildCounterIdentityServiceConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterIdentityServiceConfig--;
}

core.int buildCounterIntraNodeVisibilityConfig = 0;
api.IntraNodeVisibilityConfig buildIntraNodeVisibilityConfig() {
  final o = api.IntraNodeVisibilityConfig();
  buildCounterIntraNodeVisibilityConfig++;
  if (buildCounterIntraNodeVisibilityConfig < 3) {
    o.enabled = true;
  }
  buildCounterIntraNodeVisibilityConfig--;
  return o;
}

void checkIntraNodeVisibilityConfig(api.IntraNodeVisibilityConfig o) {
  buildCounterIntraNodeVisibilityConfig++;
  if (buildCounterIntraNodeVisibilityConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterIntraNodeVisibilityConfig--;
}

core.int buildCounterJwk = 0;
api.Jwk buildJwk() {
  final o = api.Jwk();
  buildCounterJwk++;
  if (buildCounterJwk < 3) {
    o.alg = 'foo';
    o.crv = 'foo';
    o.e = 'foo';
    o.kid = 'foo';
    o.kty = 'foo';
    o.n = 'foo';
    o.use = 'foo';
    o.x = 'foo';
    o.y = 'foo';
  }
  buildCounterJwk--;
  return o;
}

void checkJwk(api.Jwk o) {
  buildCounterJwk++;
  if (buildCounterJwk < 3) {
    unittest.expect(
      o.alg!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crv!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.e!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kty!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.n!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.use!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.x!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.y!,
      unittest.equals('foo'),
    );
  }
  buildCounterJwk--;
}

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.int buildCounterK8sBetaAPIConfig = 0;
api.K8sBetaAPIConfig buildK8sBetaAPIConfig() {
  final o = api.K8sBetaAPIConfig();
  buildCounterK8sBetaAPIConfig++;
  if (buildCounterK8sBetaAPIConfig < 3) {
    o.enabledApis = buildUnnamed22();
  }
  buildCounterK8sBetaAPIConfig--;
  return o;
}

void checkK8sBetaAPIConfig(api.K8sBetaAPIConfig o) {
  buildCounterK8sBetaAPIConfig++;
  if (buildCounterK8sBetaAPIConfig < 3) {
    checkUnnamed22(o.enabledApis!);
  }
  buildCounterK8sBetaAPIConfig--;
}

core.int buildCounterKubernetesDashboard = 0;
api.KubernetesDashboard buildKubernetesDashboard() {
  final o = api.KubernetesDashboard();
  buildCounterKubernetesDashboard++;
  if (buildCounterKubernetesDashboard < 3) {
    o.disabled = true;
  }
  buildCounterKubernetesDashboard--;
  return o;
}

void checkKubernetesDashboard(api.KubernetesDashboard o) {
  buildCounterKubernetesDashboard++;
  if (buildCounterKubernetesDashboard < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterKubernetesDashboard--;
}

core.int buildCounterLegacyAbac = 0;
api.LegacyAbac buildLegacyAbac() {
  final o = api.LegacyAbac();
  buildCounterLegacyAbac++;
  if (buildCounterLegacyAbac < 3) {
    o.enabled = true;
  }
  buildCounterLegacyAbac--;
  return o;
}

void checkLegacyAbac(api.LegacyAbac o) {
  buildCounterLegacyAbac++;
  if (buildCounterLegacyAbac < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterLegacyAbac--;
}

core.Map<core.String, core.String> buildUnnamed23() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed23(core.Map<core.String, core.String> o) {
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

core.int buildCounterLinuxNodeConfig = 0;
api.LinuxNodeConfig buildLinuxNodeConfig() {
  final o = api.LinuxNodeConfig();
  buildCounterLinuxNodeConfig++;
  if (buildCounterLinuxNodeConfig < 3) {
    o.cgroupMode = 'foo';
    o.sysctls = buildUnnamed23();
  }
  buildCounterLinuxNodeConfig--;
  return o;
}

void checkLinuxNodeConfig(api.LinuxNodeConfig o) {
  buildCounterLinuxNodeConfig++;
  if (buildCounterLinuxNodeConfig < 3) {
    unittest.expect(
      o.cgroupMode!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.sysctls!);
  }
  buildCounterLinuxNodeConfig--;
}

core.List<api.Cluster> buildUnnamed24() => [
      buildCluster(),
      buildCluster(),
    ];

void checkUnnamed24(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
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

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed24();
    o.missingZones = buildUnnamed25();
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed24(o.clusters!);
    checkUnnamed25(o.missingZones!);
  }
  buildCounterListClustersResponse--;
}

core.List<api.NodePool> buildUnnamed26() => [
      buildNodePool(),
      buildNodePool(),
    ];

void checkUnnamed26(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

core.int buildCounterListNodePoolsResponse = 0;
api.ListNodePoolsResponse buildListNodePoolsResponse() {
  final o = api.ListNodePoolsResponse();
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    o.nodePools = buildUnnamed26();
  }
  buildCounterListNodePoolsResponse--;
  return o;
}

void checkListNodePoolsResponse(api.ListNodePoolsResponse o) {
  buildCounterListNodePoolsResponse++;
  if (buildCounterListNodePoolsResponse < 3) {
    checkUnnamed26(o.nodePools!);
  }
  buildCounterListNodePoolsResponse--;
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

core.List<api.Operation> buildUnnamed28() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed28(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.missingZones = buildUnnamed27();
    o.operations = buildUnnamed28();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    checkUnnamed27(o.missingZones!);
    checkUnnamed28(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.UsableSubnetwork> buildUnnamed29() => [
      buildUsableSubnetwork(),
      buildUsableSubnetwork(),
    ];

void checkUnnamed29(core.List<api.UsableSubnetwork> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsableSubnetwork(o[0]);
  checkUsableSubnetwork(o[1]);
}

core.int buildCounterListUsableSubnetworksResponse = 0;
api.ListUsableSubnetworksResponse buildListUsableSubnetworksResponse() {
  final o = api.ListUsableSubnetworksResponse();
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    o.nextPageToken = 'foo';
    o.subnetworks = buildUnnamed29();
  }
  buildCounterListUsableSubnetworksResponse--;
  return o;
}

void checkListUsableSubnetworksResponse(api.ListUsableSubnetworksResponse o) {
  buildCounterListUsableSubnetworksResponse++;
  if (buildCounterListUsableSubnetworksResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.subnetworks!);
  }
  buildCounterListUsableSubnetworksResponse--;
}

core.int buildCounterLocalNvmeSsdBlockConfig = 0;
api.LocalNvmeSsdBlockConfig buildLocalNvmeSsdBlockConfig() {
  final o = api.LocalNvmeSsdBlockConfig();
  buildCounterLocalNvmeSsdBlockConfig++;
  if (buildCounterLocalNvmeSsdBlockConfig < 3) {
    o.localSsdCount = 42;
  }
  buildCounterLocalNvmeSsdBlockConfig--;
  return o;
}

void checkLocalNvmeSsdBlockConfig(api.LocalNvmeSsdBlockConfig o) {
  buildCounterLocalNvmeSsdBlockConfig++;
  if (buildCounterLocalNvmeSsdBlockConfig < 3) {
    unittest.expect(
      o.localSsdCount!,
      unittest.equals(42),
    );
  }
  buildCounterLocalNvmeSsdBlockConfig--;
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

core.int buildCounterLoggingComponentConfig = 0;
api.LoggingComponentConfig buildLoggingComponentConfig() {
  final o = api.LoggingComponentConfig();
  buildCounterLoggingComponentConfig++;
  if (buildCounterLoggingComponentConfig < 3) {
    o.enableComponents = buildUnnamed30();
  }
  buildCounterLoggingComponentConfig--;
  return o;
}

void checkLoggingComponentConfig(api.LoggingComponentConfig o) {
  buildCounterLoggingComponentConfig++;
  if (buildCounterLoggingComponentConfig < 3) {
    checkUnnamed30(o.enableComponents!);
  }
  buildCounterLoggingComponentConfig--;
}

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  final o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.componentConfig = buildLoggingComponentConfig();
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    checkLoggingComponentConfig(o.componentConfig!);
  }
  buildCounterLoggingConfig--;
}

core.int buildCounterLoggingVariantConfig = 0;
api.LoggingVariantConfig buildLoggingVariantConfig() {
  final o = api.LoggingVariantConfig();
  buildCounterLoggingVariantConfig++;
  if (buildCounterLoggingVariantConfig < 3) {
    o.variant = 'foo';
  }
  buildCounterLoggingVariantConfig--;
  return o;
}

void checkLoggingVariantConfig(api.LoggingVariantConfig o) {
  buildCounterLoggingVariantConfig++;
  if (buildCounterLoggingVariantConfig < 3) {
    unittest.expect(
      o.variant!,
      unittest.equals('foo'),
    );
  }
  buildCounterLoggingVariantConfig--;
}

core.int buildCounterMaintenanceExclusionOptions = 0;
api.MaintenanceExclusionOptions buildMaintenanceExclusionOptions() {
  final o = api.MaintenanceExclusionOptions();
  buildCounterMaintenanceExclusionOptions++;
  if (buildCounterMaintenanceExclusionOptions < 3) {
    o.scope = 'foo';
  }
  buildCounterMaintenanceExclusionOptions--;
  return o;
}

void checkMaintenanceExclusionOptions(api.MaintenanceExclusionOptions o) {
  buildCounterMaintenanceExclusionOptions++;
  if (buildCounterMaintenanceExclusionOptions < 3) {
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaintenanceExclusionOptions--;
}

core.int buildCounterMaintenancePolicy = 0;
api.MaintenancePolicy buildMaintenancePolicy() {
  final o = api.MaintenancePolicy();
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    o.resourceVersion = 'foo';
    o.window = buildMaintenanceWindow();
  }
  buildCounterMaintenancePolicy--;
  return o;
}

void checkMaintenancePolicy(api.MaintenancePolicy o) {
  buildCounterMaintenancePolicy++;
  if (buildCounterMaintenancePolicy < 3) {
    unittest.expect(
      o.resourceVersion!,
      unittest.equals('foo'),
    );
    checkMaintenanceWindow(o.window!);
  }
  buildCounterMaintenancePolicy--;
}

core.Map<core.String, api.TimeWindow> buildUnnamed31() => {
      'x': buildTimeWindow(),
      'y': buildTimeWindow(),
    };

void checkUnnamed31(core.Map<core.String, api.TimeWindow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTimeWindow(o['x']!);
  checkTimeWindow(o['y']!);
}

core.int buildCounterMaintenanceWindow = 0;
api.MaintenanceWindow buildMaintenanceWindow() {
  final o = api.MaintenanceWindow();
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    o.dailyMaintenanceWindow = buildDailyMaintenanceWindow();
    o.maintenanceExclusions = buildUnnamed31();
    o.recurringWindow = buildRecurringTimeWindow();
  }
  buildCounterMaintenanceWindow--;
  return o;
}

void checkMaintenanceWindow(api.MaintenanceWindow o) {
  buildCounterMaintenanceWindow++;
  if (buildCounterMaintenanceWindow < 3) {
    checkDailyMaintenanceWindow(o.dailyMaintenanceWindow!);
    checkUnnamed31(o.maintenanceExclusions!);
    checkRecurringTimeWindow(o.recurringWindow!);
  }
  buildCounterMaintenanceWindow--;
}

core.int buildCounterManagedPrometheusConfig = 0;
api.ManagedPrometheusConfig buildManagedPrometheusConfig() {
  final o = api.ManagedPrometheusConfig();
  buildCounterManagedPrometheusConfig++;
  if (buildCounterManagedPrometheusConfig < 3) {
    o.enabled = true;
  }
  buildCounterManagedPrometheusConfig--;
  return o;
}

void checkManagedPrometheusConfig(api.ManagedPrometheusConfig o) {
  buildCounterManagedPrometheusConfig++;
  if (buildCounterManagedPrometheusConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterManagedPrometheusConfig--;
}

core.int buildCounterMasterAuth = 0;
api.MasterAuth buildMasterAuth() {
  final o = api.MasterAuth();
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    o.clientCertificate = 'foo';
    o.clientCertificateConfig = buildClientCertificateConfig();
    o.clientKey = 'foo';
    o.clusterCaCertificate = 'foo';
    o.password = 'foo';
    o.username = 'foo';
  }
  buildCounterMasterAuth--;
  return o;
}

void checkMasterAuth(api.MasterAuth o) {
  buildCounterMasterAuth++;
  if (buildCounterMasterAuth < 3) {
    unittest.expect(
      o.clientCertificate!,
      unittest.equals('foo'),
    );
    checkClientCertificateConfig(o.clientCertificateConfig!);
    unittest.expect(
      o.clientKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterCaCertificate!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.password!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.username!,
      unittest.equals('foo'),
    );
  }
  buildCounterMasterAuth--;
}

core.List<api.CidrBlock> buildUnnamed32() => [
      buildCidrBlock(),
      buildCidrBlock(),
    ];

void checkUnnamed32(core.List<api.CidrBlock> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCidrBlock(o[0]);
  checkCidrBlock(o[1]);
}

core.int buildCounterMasterAuthorizedNetworksConfig = 0;
api.MasterAuthorizedNetworksConfig buildMasterAuthorizedNetworksConfig() {
  final o = api.MasterAuthorizedNetworksConfig();
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    o.cidrBlocks = buildUnnamed32();
    o.enabled = true;
    o.gcpPublicCidrsAccessEnabled = true;
  }
  buildCounterMasterAuthorizedNetworksConfig--;
  return o;
}

void checkMasterAuthorizedNetworksConfig(api.MasterAuthorizedNetworksConfig o) {
  buildCounterMasterAuthorizedNetworksConfig++;
  if (buildCounterMasterAuthorizedNetworksConfig < 3) {
    checkUnnamed32(o.cidrBlocks!);
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.gcpPublicCidrsAccessEnabled!, unittest.isTrue);
  }
  buildCounterMasterAuthorizedNetworksConfig--;
}

core.int buildCounterMaxPodsConstraint = 0;
api.MaxPodsConstraint buildMaxPodsConstraint() {
  final o = api.MaxPodsConstraint();
  buildCounterMaxPodsConstraint++;
  if (buildCounterMaxPodsConstraint < 3) {
    o.maxPodsPerNode = 'foo';
  }
  buildCounterMaxPodsConstraint--;
  return o;
}

void checkMaxPodsConstraint(api.MaxPodsConstraint o) {
  buildCounterMaxPodsConstraint++;
  if (buildCounterMaxPodsConstraint < 3) {
    unittest.expect(
      o.maxPodsPerNode!,
      unittest.equals('foo'),
    );
  }
  buildCounterMaxPodsConstraint--;
}

core.int buildCounterMeshCertificates = 0;
api.MeshCertificates buildMeshCertificates() {
  final o = api.MeshCertificates();
  buildCounterMeshCertificates++;
  if (buildCounterMeshCertificates < 3) {
    o.enableCertificates = true;
  }
  buildCounterMeshCertificates--;
  return o;
}

void checkMeshCertificates(api.MeshCertificates o) {
  buildCounterMeshCertificates++;
  if (buildCounterMeshCertificates < 3) {
    unittest.expect(o.enableCertificates!, unittest.isTrue);
  }
  buildCounterMeshCertificates--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.doubleValue = 42.0;
    o.intValue = 'foo';
    o.name = 'foo';
    o.stringValue = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetric--;
}

core.List<core.String> buildUnnamed33() => [
      'foo',
      'foo',
    ];

void checkUnnamed33(core.List<core.String> o) {
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

core.int buildCounterMonitoringComponentConfig = 0;
api.MonitoringComponentConfig buildMonitoringComponentConfig() {
  final o = api.MonitoringComponentConfig();
  buildCounterMonitoringComponentConfig++;
  if (buildCounterMonitoringComponentConfig < 3) {
    o.enableComponents = buildUnnamed33();
  }
  buildCounterMonitoringComponentConfig--;
  return o;
}

void checkMonitoringComponentConfig(api.MonitoringComponentConfig o) {
  buildCounterMonitoringComponentConfig++;
  if (buildCounterMonitoringComponentConfig < 3) {
    checkUnnamed33(o.enableComponents!);
  }
  buildCounterMonitoringComponentConfig--;
}

core.int buildCounterMonitoringConfig = 0;
api.MonitoringConfig buildMonitoringConfig() {
  final o = api.MonitoringConfig();
  buildCounterMonitoringConfig++;
  if (buildCounterMonitoringConfig < 3) {
    o.advancedDatapathObservabilityConfig =
        buildAdvancedDatapathObservabilityConfig();
    o.componentConfig = buildMonitoringComponentConfig();
    o.managedPrometheusConfig = buildManagedPrometheusConfig();
  }
  buildCounterMonitoringConfig--;
  return o;
}

void checkMonitoringConfig(api.MonitoringConfig o) {
  buildCounterMonitoringConfig++;
  if (buildCounterMonitoringConfig < 3) {
    checkAdvancedDatapathObservabilityConfig(
        o.advancedDatapathObservabilityConfig!);
    checkMonitoringComponentConfig(o.componentConfig!);
    checkManagedPrometheusConfig(o.managedPrometheusConfig!);
  }
  buildCounterMonitoringConfig--;
}

core.int buildCounterNetworkConfig = 0;
api.NetworkConfig buildNetworkConfig() {
  final o = api.NetworkConfig();
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    o.datapathProvider = 'foo';
    o.defaultSnatStatus = buildDefaultSnatStatus();
    o.dnsConfig = buildDNSConfig();
    o.enableFqdnNetworkPolicy = true;
    o.enableIntraNodeVisibility = true;
    o.enableL4ilbSubsetting = true;
    o.enableMultiNetworking = true;
    o.gatewayApiConfig = buildGatewayAPIConfig();
    o.network = 'foo';
    o.networkPerformanceConfig = buildClusterNetworkPerformanceConfig();
    o.privateIpv6GoogleAccess = 'foo';
    o.serviceExternalIpsConfig = buildServiceExternalIPsConfig();
    o.subnetwork = 'foo';
  }
  buildCounterNetworkConfig--;
  return o;
}

void checkNetworkConfig(api.NetworkConfig o) {
  buildCounterNetworkConfig++;
  if (buildCounterNetworkConfig < 3) {
    unittest.expect(
      o.datapathProvider!,
      unittest.equals('foo'),
    );
    checkDefaultSnatStatus(o.defaultSnatStatus!);
    checkDNSConfig(o.dnsConfig!);
    unittest.expect(o.enableFqdnNetworkPolicy!, unittest.isTrue);
    unittest.expect(o.enableIntraNodeVisibility!, unittest.isTrue);
    unittest.expect(o.enableL4ilbSubsetting!, unittest.isTrue);
    unittest.expect(o.enableMultiNetworking!, unittest.isTrue);
    checkGatewayAPIConfig(o.gatewayApiConfig!);
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkClusterNetworkPerformanceConfig(o.networkPerformanceConfig!);
    unittest.expect(
      o.privateIpv6GoogleAccess!,
      unittest.equals('foo'),
    );
    checkServiceExternalIPsConfig(o.serviceExternalIpsConfig!);
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkConfig--;
}

core.int buildCounterNetworkPerformanceConfig = 0;
api.NetworkPerformanceConfig buildNetworkPerformanceConfig() {
  final o = api.NetworkPerformanceConfig();
  buildCounterNetworkPerformanceConfig++;
  if (buildCounterNetworkPerformanceConfig < 3) {
    o.totalEgressBandwidthTier = 'foo';
  }
  buildCounterNetworkPerformanceConfig--;
  return o;
}

void checkNetworkPerformanceConfig(api.NetworkPerformanceConfig o) {
  buildCounterNetworkPerformanceConfig++;
  if (buildCounterNetworkPerformanceConfig < 3) {
    unittest.expect(
      o.totalEgressBandwidthTier!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkPerformanceConfig--;
}

core.int buildCounterNetworkPolicy = 0;
api.NetworkPolicy buildNetworkPolicy() {
  final o = api.NetworkPolicy();
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    o.enabled = true;
    o.provider = 'foo';
  }
  buildCounterNetworkPolicy--;
  return o;
}

void checkNetworkPolicy(api.NetworkPolicy o) {
  buildCounterNetworkPolicy++;
  if (buildCounterNetworkPolicy < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkPolicy--;
}

core.int buildCounterNetworkPolicyConfig = 0;
api.NetworkPolicyConfig buildNetworkPolicyConfig() {
  final o = api.NetworkPolicyConfig();
  buildCounterNetworkPolicyConfig++;
  if (buildCounterNetworkPolicyConfig < 3) {
    o.disabled = true;
  }
  buildCounterNetworkPolicyConfig--;
  return o;
}

void checkNetworkPolicyConfig(api.NetworkPolicyConfig o) {
  buildCounterNetworkPolicyConfig++;
  if (buildCounterNetworkPolicyConfig < 3) {
    unittest.expect(o.disabled!, unittest.isTrue);
  }
  buildCounterNetworkPolicyConfig--;
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

core.int buildCounterNetworkTags = 0;
api.NetworkTags buildNetworkTags() {
  final o = api.NetworkTags();
  buildCounterNetworkTags++;
  if (buildCounterNetworkTags < 3) {
    o.tags = buildUnnamed34();
  }
  buildCounterNetworkTags--;
  return o;
}

void checkNetworkTags(api.NetworkTags o) {
  buildCounterNetworkTags++;
  if (buildCounterNetworkTags < 3) {
    checkUnnamed34(o.tags!);
  }
  buildCounterNetworkTags--;
}

core.List<core.String> buildUnnamed35() => [
      'foo',
      'foo',
    ];

void checkUnnamed35(core.List<core.String> o) {
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

core.int buildCounterNodeAffinity = 0;
api.NodeAffinity buildNodeAffinity() {
  final o = api.NodeAffinity();
  buildCounterNodeAffinity++;
  if (buildCounterNodeAffinity < 3) {
    o.key = 'foo';
    o.operator = 'foo';
    o.values = buildUnnamed35();
  }
  buildCounterNodeAffinity--;
  return o;
}

void checkNodeAffinity(api.NodeAffinity o) {
  buildCounterNodeAffinity++;
  if (buildCounterNodeAffinity < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    checkUnnamed35(o.values!);
  }
  buildCounterNodeAffinity--;
}

core.List<api.AcceleratorConfig> buildUnnamed36() => [
      buildAcceleratorConfig(),
      buildAcceleratorConfig(),
    ];

void checkUnnamed36(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
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

core.List<api.NodeTaint> buildUnnamed42() => [
      buildNodeTaint(),
      buildNodeTaint(),
    ];

void checkUnnamed42(core.List<api.NodeTaint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTaint(o[0]);
  checkNodeTaint(o[1]);
}

core.int buildCounterNodeConfig = 0;
api.NodeConfig buildNodeConfig() {
  final o = api.NodeConfig();
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    o.accelerators = buildUnnamed36();
    o.advancedMachineFeatures = buildAdvancedMachineFeatures();
    o.bootDiskKmsKey = 'foo';
    o.confidentialNodes = buildConfidentialNodes();
    o.diskSizeGb = 42;
    o.diskType = 'foo';
    o.ephemeralStorageLocalSsdConfig = buildEphemeralStorageLocalSsdConfig();
    o.fastSocket = buildFastSocket();
    o.gcfsConfig = buildGcfsConfig();
    o.gvnic = buildVirtualNIC();
    o.imageType = 'foo';
    o.kubeletConfig = buildNodeKubeletConfig();
    o.labels = buildUnnamed37();
    o.linuxNodeConfig = buildLinuxNodeConfig();
    o.localNvmeSsdBlockConfig = buildLocalNvmeSsdBlockConfig();
    o.localSsdCount = 42;
    o.loggingConfig = buildNodePoolLoggingConfig();
    o.machineType = 'foo';
    o.metadata = buildUnnamed38();
    o.minCpuPlatform = 'foo';
    o.nodeGroup = 'foo';
    o.oauthScopes = buildUnnamed39();
    o.preemptible = true;
    o.reservationAffinity = buildReservationAffinity();
    o.resourceLabels = buildUnnamed40();
    o.resourceManagerTags = buildResourceManagerTags();
    o.sandboxConfig = buildSandboxConfig();
    o.serviceAccount = 'foo';
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.soleTenantConfig = buildSoleTenantConfig();
    o.spot = true;
    o.tags = buildUnnamed41();
    o.taints = buildUnnamed42();
    o.windowsNodeConfig = buildWindowsNodeConfig();
    o.workloadMetadataConfig = buildWorkloadMetadataConfig();
  }
  buildCounterNodeConfig--;
  return o;
}

void checkNodeConfig(api.NodeConfig o) {
  buildCounterNodeConfig++;
  if (buildCounterNodeConfig < 3) {
    checkUnnamed36(o.accelerators!);
    checkAdvancedMachineFeatures(o.advancedMachineFeatures!);
    unittest.expect(
      o.bootDiskKmsKey!,
      unittest.equals('foo'),
    );
    checkConfidentialNodes(o.confidentialNodes!);
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    checkEphemeralStorageLocalSsdConfig(o.ephemeralStorageLocalSsdConfig!);
    checkFastSocket(o.fastSocket!);
    checkGcfsConfig(o.gcfsConfig!);
    checkVirtualNIC(o.gvnic!);
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    checkNodeKubeletConfig(o.kubeletConfig!);
    checkUnnamed37(o.labels!);
    checkLinuxNodeConfig(o.linuxNodeConfig!);
    checkLocalNvmeSsdBlockConfig(o.localNvmeSsdBlockConfig!);
    unittest.expect(
      o.localSsdCount!,
      unittest.equals(42),
    );
    checkNodePoolLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.metadata!);
    unittest.expect(
      o.minCpuPlatform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeGroup!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.oauthScopes!);
    unittest.expect(o.preemptible!, unittest.isTrue);
    checkReservationAffinity(o.reservationAffinity!);
    checkUnnamed40(o.resourceLabels!);
    checkResourceManagerTags(o.resourceManagerTags!);
    checkSandboxConfig(o.sandboxConfig!);
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
    checkSoleTenantConfig(o.soleTenantConfig!);
    unittest.expect(o.spot!, unittest.isTrue);
    checkUnnamed41(o.tags!);
    checkUnnamed42(o.taints!);
    checkWindowsNodeConfig(o.windowsNodeConfig!);
    checkWorkloadMetadataConfig(o.workloadMetadataConfig!);
  }
  buildCounterNodeConfig--;
}

core.int buildCounterNodeConfigDefaults = 0;
api.NodeConfigDefaults buildNodeConfigDefaults() {
  final o = api.NodeConfigDefaults();
  buildCounterNodeConfigDefaults++;
  if (buildCounterNodeConfigDefaults < 3) {
    o.gcfsConfig = buildGcfsConfig();
    o.loggingConfig = buildNodePoolLoggingConfig();
  }
  buildCounterNodeConfigDefaults--;
  return o;
}

void checkNodeConfigDefaults(api.NodeConfigDefaults o) {
  buildCounterNodeConfigDefaults++;
  if (buildCounterNodeConfigDefaults < 3) {
    checkGcfsConfig(o.gcfsConfig!);
    checkNodePoolLoggingConfig(o.loggingConfig!);
  }
  buildCounterNodeConfigDefaults--;
}

core.int buildCounterNodeKubeletConfig = 0;
api.NodeKubeletConfig buildNodeKubeletConfig() {
  final o = api.NodeKubeletConfig();
  buildCounterNodeKubeletConfig++;
  if (buildCounterNodeKubeletConfig < 3) {
    o.cpuCfsQuota = true;
    o.cpuCfsQuotaPeriod = 'foo';
    o.cpuManagerPolicy = 'foo';
    o.insecureKubeletReadonlyPortEnabled = true;
    o.podPidsLimit = 'foo';
  }
  buildCounterNodeKubeletConfig--;
  return o;
}

void checkNodeKubeletConfig(api.NodeKubeletConfig o) {
  buildCounterNodeKubeletConfig++;
  if (buildCounterNodeKubeletConfig < 3) {
    unittest.expect(o.cpuCfsQuota!, unittest.isTrue);
    unittest.expect(
      o.cpuCfsQuotaPeriod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuManagerPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(o.insecureKubeletReadonlyPortEnabled!, unittest.isTrue);
    unittest.expect(
      o.podPidsLimit!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeKubeletConfig--;
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

core.int buildCounterNodeLabels = 0;
api.NodeLabels buildNodeLabels() {
  final o = api.NodeLabels();
  buildCounterNodeLabels++;
  if (buildCounterNodeLabels < 3) {
    o.labels = buildUnnamed43();
  }
  buildCounterNodeLabels--;
  return o;
}

void checkNodeLabels(api.NodeLabels o) {
  buildCounterNodeLabels++;
  if (buildCounterNodeLabels < 3) {
    checkUnnamed43(o.labels!);
  }
  buildCounterNodeLabels--;
}

core.int buildCounterNodeManagement = 0;
api.NodeManagement buildNodeManagement() {
  final o = api.NodeManagement();
  buildCounterNodeManagement++;
  if (buildCounterNodeManagement < 3) {
    o.autoRepair = true;
    o.autoUpgrade = true;
    o.upgradeOptions = buildAutoUpgradeOptions();
  }
  buildCounterNodeManagement--;
  return o;
}

void checkNodeManagement(api.NodeManagement o) {
  buildCounterNodeManagement++;
  if (buildCounterNodeManagement < 3) {
    unittest.expect(o.autoRepair!, unittest.isTrue);
    unittest.expect(o.autoUpgrade!, unittest.isTrue);
    checkAutoUpgradeOptions(o.upgradeOptions!);
  }
  buildCounterNodeManagement--;
}

core.List<api.AdditionalNodeNetworkConfig> buildUnnamed44() => [
      buildAdditionalNodeNetworkConfig(),
      buildAdditionalNodeNetworkConfig(),
    ];

void checkUnnamed44(core.List<api.AdditionalNodeNetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdditionalNodeNetworkConfig(o[0]);
  checkAdditionalNodeNetworkConfig(o[1]);
}

core.List<api.AdditionalPodNetworkConfig> buildUnnamed45() => [
      buildAdditionalPodNetworkConfig(),
      buildAdditionalPodNetworkConfig(),
    ];

void checkUnnamed45(core.List<api.AdditionalPodNetworkConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdditionalPodNetworkConfig(o[0]);
  checkAdditionalPodNetworkConfig(o[1]);
}

core.int buildCounterNodeNetworkConfig = 0;
api.NodeNetworkConfig buildNodeNetworkConfig() {
  final o = api.NodeNetworkConfig();
  buildCounterNodeNetworkConfig++;
  if (buildCounterNodeNetworkConfig < 3) {
    o.additionalNodeNetworkConfigs = buildUnnamed44();
    o.additionalPodNetworkConfigs = buildUnnamed45();
    o.createPodRange = true;
    o.enablePrivateNodes = true;
    o.networkPerformanceConfig = buildNetworkPerformanceConfig();
    o.podCidrOverprovisionConfig = buildPodCIDROverprovisionConfig();
    o.podIpv4CidrBlock = 'foo';
    o.podIpv4RangeUtilization = 42.0;
    o.podRange = 'foo';
  }
  buildCounterNodeNetworkConfig--;
  return o;
}

void checkNodeNetworkConfig(api.NodeNetworkConfig o) {
  buildCounterNodeNetworkConfig++;
  if (buildCounterNodeNetworkConfig < 3) {
    checkUnnamed44(o.additionalNodeNetworkConfigs!);
    checkUnnamed45(o.additionalPodNetworkConfigs!);
    unittest.expect(o.createPodRange!, unittest.isTrue);
    unittest.expect(o.enablePrivateNodes!, unittest.isTrue);
    checkNetworkPerformanceConfig(o.networkPerformanceConfig!);
    checkPodCIDROverprovisionConfig(o.podCidrOverprovisionConfig!);
    unittest.expect(
      o.podIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.podIpv4RangeUtilization!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.podRange!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeNetworkConfig--;
}

core.List<api.StatusCondition> buildUnnamed46() => [
      buildStatusCondition(),
      buildStatusCondition(),
    ];

void checkUnnamed46(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
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

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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

core.int buildCounterNodePool = 0;
api.NodePool buildNodePool() {
  final o = api.NodePool();
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    o.autoscaling = buildNodePoolAutoscaling();
    o.bestEffortProvisioning = buildBestEffortProvisioning();
    o.conditions = buildUnnamed46();
    o.config = buildNodeConfig();
    o.etag = 'foo';
    o.initialNodeCount = 42;
    o.instanceGroupUrls = buildUnnamed47();
    o.locations = buildUnnamed48();
    o.management = buildNodeManagement();
    o.maxPodsConstraint = buildMaxPodsConstraint();
    o.name = 'foo';
    o.networkConfig = buildNodeNetworkConfig();
    o.placementPolicy = buildPlacementPolicy();
    o.podIpv4CidrSize = 42;
    o.queuedProvisioning = buildQueuedProvisioning();
    o.selfLink = 'foo';
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.updateInfo = buildUpdateInfo();
    o.upgradeSettings = buildUpgradeSettings();
    o.version = 'foo';
  }
  buildCounterNodePool--;
  return o;
}

void checkNodePool(api.NodePool o) {
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    checkNodePoolAutoscaling(o.autoscaling!);
    checkBestEffortProvisioning(o.bestEffortProvisioning!);
    checkUnnamed46(o.conditions!);
    checkNodeConfig(o.config!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initialNodeCount!,
      unittest.equals(42),
    );
    checkUnnamed47(o.instanceGroupUrls!);
    checkUnnamed48(o.locations!);
    checkNodeManagement(o.management!);
    checkMaxPodsConstraint(o.maxPodsConstraint!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNodeNetworkConfig(o.networkConfig!);
    checkPlacementPolicy(o.placementPolicy!);
    unittest.expect(
      o.podIpv4CidrSize!,
      unittest.equals(42),
    );
    checkQueuedProvisioning(o.queuedProvisioning!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    checkUpdateInfo(o.updateInfo!);
    checkUpgradeSettings(o.upgradeSettings!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodePool--;
}

core.int buildCounterNodePoolAutoConfig = 0;
api.NodePoolAutoConfig buildNodePoolAutoConfig() {
  final o = api.NodePoolAutoConfig();
  buildCounterNodePoolAutoConfig++;
  if (buildCounterNodePoolAutoConfig < 3) {
    o.networkTags = buildNetworkTags();
    o.resourceManagerTags = buildResourceManagerTags();
  }
  buildCounterNodePoolAutoConfig--;
  return o;
}

void checkNodePoolAutoConfig(api.NodePoolAutoConfig o) {
  buildCounterNodePoolAutoConfig++;
  if (buildCounterNodePoolAutoConfig < 3) {
    checkNetworkTags(o.networkTags!);
    checkResourceManagerTags(o.resourceManagerTags!);
  }
  buildCounterNodePoolAutoConfig--;
}

core.int buildCounterNodePoolAutoscaling = 0;
api.NodePoolAutoscaling buildNodePoolAutoscaling() {
  final o = api.NodePoolAutoscaling();
  buildCounterNodePoolAutoscaling++;
  if (buildCounterNodePoolAutoscaling < 3) {
    o.autoprovisioned = true;
    o.enabled = true;
    o.locationPolicy = 'foo';
    o.maxNodeCount = 42;
    o.minNodeCount = 42;
    o.totalMaxNodeCount = 42;
    o.totalMinNodeCount = 42;
  }
  buildCounterNodePoolAutoscaling--;
  return o;
}

void checkNodePoolAutoscaling(api.NodePoolAutoscaling o) {
  buildCounterNodePoolAutoscaling++;
  if (buildCounterNodePoolAutoscaling < 3) {
    unittest.expect(o.autoprovisioned!, unittest.isTrue);
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.locationPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalMaxNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalMinNodeCount!,
      unittest.equals(42),
    );
  }
  buildCounterNodePoolAutoscaling--;
}

core.int buildCounterNodePoolDefaults = 0;
api.NodePoolDefaults buildNodePoolDefaults() {
  final o = api.NodePoolDefaults();
  buildCounterNodePoolDefaults++;
  if (buildCounterNodePoolDefaults < 3) {
    o.nodeConfigDefaults = buildNodeConfigDefaults();
  }
  buildCounterNodePoolDefaults--;
  return o;
}

void checkNodePoolDefaults(api.NodePoolDefaults o) {
  buildCounterNodePoolDefaults++;
  if (buildCounterNodePoolDefaults < 3) {
    checkNodeConfigDefaults(o.nodeConfigDefaults!);
  }
  buildCounterNodePoolDefaults--;
}

core.int buildCounterNodePoolLoggingConfig = 0;
api.NodePoolLoggingConfig buildNodePoolLoggingConfig() {
  final o = api.NodePoolLoggingConfig();
  buildCounterNodePoolLoggingConfig++;
  if (buildCounterNodePoolLoggingConfig < 3) {
    o.variantConfig = buildLoggingVariantConfig();
  }
  buildCounterNodePoolLoggingConfig--;
  return o;
}

void checkNodePoolLoggingConfig(api.NodePoolLoggingConfig o) {
  buildCounterNodePoolLoggingConfig++;
  if (buildCounterNodePoolLoggingConfig < 3) {
    checkLoggingVariantConfig(o.variantConfig!);
  }
  buildCounterNodePoolLoggingConfig--;
}

core.int buildCounterNodeTaint = 0;
api.NodeTaint buildNodeTaint() {
  final o = api.NodeTaint();
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    o.effect = 'foo';
    o.key = 'foo';
    o.value = 'foo';
  }
  buildCounterNodeTaint--;
  return o;
}

void checkNodeTaint(api.NodeTaint o) {
  buildCounterNodeTaint++;
  if (buildCounterNodeTaint < 3) {
    unittest.expect(
      o.effect!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterNodeTaint--;
}

core.List<api.NodeTaint> buildUnnamed49() => [
      buildNodeTaint(),
      buildNodeTaint(),
    ];

void checkUnnamed49(core.List<api.NodeTaint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeTaint(o[0]);
  checkNodeTaint(o[1]);
}

core.int buildCounterNodeTaints = 0;
api.NodeTaints buildNodeTaints() {
  final o = api.NodeTaints();
  buildCounterNodeTaints++;
  if (buildCounterNodeTaints < 3) {
    o.taints = buildUnnamed49();
  }
  buildCounterNodeTaints--;
  return o;
}

void checkNodeTaints(api.NodeTaints o) {
  buildCounterNodeTaints++;
  if (buildCounterNodeTaints < 3) {
    checkUnnamed49(o.taints!);
  }
  buildCounterNodeTaints--;
}

core.int buildCounterNotificationConfig = 0;
api.NotificationConfig buildNotificationConfig() {
  final o = api.NotificationConfig();
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    o.pubsub = buildPubSub();
  }
  buildCounterNotificationConfig--;
  return o;
}

void checkNotificationConfig(api.NotificationConfig o) {
  buildCounterNotificationConfig++;
  if (buildCounterNotificationConfig < 3) {
    checkPubSub(o.pubsub!);
  }
  buildCounterNotificationConfig--;
}

core.List<api.StatusCondition> buildUnnamed50() => [
      buildStatusCondition(),
      buildStatusCondition(),
    ];

void checkUnnamed50(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.List<api.StatusCondition> buildUnnamed51() => [
      buildStatusCondition(),
      buildStatusCondition(),
    ];

void checkUnnamed51(core.List<api.StatusCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatusCondition(o[0]);
  checkStatusCondition(o[1]);
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.clusterConditions = buildUnnamed50();
    o.detail = 'foo';
    o.endTime = 'foo';
    o.error = buildStatus();
    o.location = 'foo';
    o.name = 'foo';
    o.nodepoolConditions = buildUnnamed51();
    o.operationType = 'foo';
    o.progress = buildOperationProgress();
    o.selfLink = 'foo';
    o.startTime = 'foo';
    o.status = 'foo';
    o.statusMessage = 'foo';
    o.targetLink = 'foo';
    o.zone = 'foo';
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    checkUnnamed50(o.clusterConditions!);
    unittest.expect(
      o.detail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkStatus(o.error!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed51(o.nodepoolConditions!);
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
    checkOperationProgress(o.progress!);
    unittest.expect(
      o.selfLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperation--;
}

core.List<api.Metric> buildUnnamed52() => [
      buildMetric(),
      buildMetric(),
    ];

void checkUnnamed52(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.OperationProgress> buildUnnamed53() => [
      buildOperationProgress(),
      buildOperationProgress(),
    ];

void checkUnnamed53(core.List<api.OperationProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperationProgress(o[0]);
  checkOperationProgress(o[1]);
}

core.int buildCounterOperationProgress = 0;
api.OperationProgress buildOperationProgress() {
  final o = api.OperationProgress();
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    o.metrics = buildUnnamed52();
    o.name = 'foo';
    o.stages = buildUnnamed53();
    o.status = 'foo';
  }
  buildCounterOperationProgress--;
  return o;
}

void checkOperationProgress(api.OperationProgress o) {
  buildCounterOperationProgress++;
  if (buildCounterOperationProgress < 3) {
    checkUnnamed52(o.metrics!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed53(o.stages!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterOperationProgress--;
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

core.int buildCounterParentProductConfig = 0;
api.ParentProductConfig buildParentProductConfig() {
  final o = api.ParentProductConfig();
  buildCounterParentProductConfig++;
  if (buildCounterParentProductConfig < 3) {
    o.labels = buildUnnamed54();
    o.productName = 'foo';
  }
  buildCounterParentProductConfig--;
  return o;
}

void checkParentProductConfig(api.ParentProductConfig o) {
  buildCounterParentProductConfig++;
  if (buildCounterParentProductConfig < 3) {
    checkUnnamed54(o.labels!);
    unittest.expect(
      o.productName!,
      unittest.equals('foo'),
    );
  }
  buildCounterParentProductConfig--;
}

core.int buildCounterPlacementPolicy = 0;
api.PlacementPolicy buildPlacementPolicy() {
  final o = api.PlacementPolicy();
  buildCounterPlacementPolicy++;
  if (buildCounterPlacementPolicy < 3) {
    o.policyName = 'foo';
    o.tpuTopology = 'foo';
    o.type = 'foo';
  }
  buildCounterPlacementPolicy--;
  return o;
}

void checkPlacementPolicy(api.PlacementPolicy o) {
  buildCounterPlacementPolicy++;
  if (buildCounterPlacementPolicy < 3) {
    unittest.expect(
      o.policyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tpuTopology!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlacementPolicy--;
}

core.int buildCounterPodCIDROverprovisionConfig = 0;
api.PodCIDROverprovisionConfig buildPodCIDROverprovisionConfig() {
  final o = api.PodCIDROverprovisionConfig();
  buildCounterPodCIDROverprovisionConfig++;
  if (buildCounterPodCIDROverprovisionConfig < 3) {
    o.disable = true;
  }
  buildCounterPodCIDROverprovisionConfig--;
  return o;
}

void checkPodCIDROverprovisionConfig(api.PodCIDROverprovisionConfig o) {
  buildCounterPodCIDROverprovisionConfig++;
  if (buildCounterPodCIDROverprovisionConfig < 3) {
    unittest.expect(o.disable!, unittest.isTrue);
  }
  buildCounterPodCIDROverprovisionConfig--;
}

core.int buildCounterPrivateClusterConfig = 0;
api.PrivateClusterConfig buildPrivateClusterConfig() {
  final o = api.PrivateClusterConfig();
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    o.enablePrivateEndpoint = true;
    o.enablePrivateNodes = true;
    o.masterGlobalAccessConfig = buildPrivateClusterMasterGlobalAccessConfig();
    o.masterIpv4CidrBlock = 'foo';
    o.peeringName = 'foo';
    o.privateEndpoint = 'foo';
    o.privateEndpointSubnetwork = 'foo';
    o.publicEndpoint = 'foo';
  }
  buildCounterPrivateClusterConfig--;
  return o;
}

void checkPrivateClusterConfig(api.PrivateClusterConfig o) {
  buildCounterPrivateClusterConfig++;
  if (buildCounterPrivateClusterConfig < 3) {
    unittest.expect(o.enablePrivateEndpoint!, unittest.isTrue);
    unittest.expect(o.enablePrivateNodes!, unittest.isTrue);
    checkPrivateClusterMasterGlobalAccessConfig(o.masterGlobalAccessConfig!);
    unittest.expect(
      o.masterIpv4CidrBlock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.peeringName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.privateEndpointSubnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicEndpoint!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrivateClusterConfig--;
}

core.int buildCounterPrivateClusterMasterGlobalAccessConfig = 0;
api.PrivateClusterMasterGlobalAccessConfig
    buildPrivateClusterMasterGlobalAccessConfig() {
  final o = api.PrivateClusterMasterGlobalAccessConfig();
  buildCounterPrivateClusterMasterGlobalAccessConfig++;
  if (buildCounterPrivateClusterMasterGlobalAccessConfig < 3) {
    o.enabled = true;
  }
  buildCounterPrivateClusterMasterGlobalAccessConfig--;
  return o;
}

void checkPrivateClusterMasterGlobalAccessConfig(
    api.PrivateClusterMasterGlobalAccessConfig o) {
  buildCounterPrivateClusterMasterGlobalAccessConfig++;
  if (buildCounterPrivateClusterMasterGlobalAccessConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterPrivateClusterMasterGlobalAccessConfig--;
}

core.int buildCounterPubSub = 0;
api.PubSub buildPubSub() {
  final o = api.PubSub();
  buildCounterPubSub++;
  if (buildCounterPubSub < 3) {
    o.enabled = true;
    o.filter = buildFilter();
    o.topic = 'foo';
  }
  buildCounterPubSub--;
  return o;
}

void checkPubSub(api.PubSub o) {
  buildCounterPubSub++;
  if (buildCounterPubSub < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    checkFilter(o.filter!);
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubSub--;
}

core.int buildCounterQueuedProvisioning = 0;
api.QueuedProvisioning buildQueuedProvisioning() {
  final o = api.QueuedProvisioning();
  buildCounterQueuedProvisioning++;
  if (buildCounterQueuedProvisioning < 3) {
    o.enabled = true;
  }
  buildCounterQueuedProvisioning--;
  return o;
}

void checkQueuedProvisioning(api.QueuedProvisioning o) {
  buildCounterQueuedProvisioning++;
  if (buildCounterQueuedProvisioning < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterQueuedProvisioning--;
}

core.int buildCounterRangeInfo = 0;
api.RangeInfo buildRangeInfo() {
  final o = api.RangeInfo();
  buildCounterRangeInfo++;
  if (buildCounterRangeInfo < 3) {
    o.rangeName = 'foo';
    o.utilization = 42.0;
  }
  buildCounterRangeInfo--;
  return o;
}

void checkRangeInfo(api.RangeInfo o) {
  buildCounterRangeInfo++;
  if (buildCounterRangeInfo < 3) {
    unittest.expect(
      o.rangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.utilization!,
      unittest.equals(42.0),
    );
  }
  buildCounterRangeInfo--;
}

core.int buildCounterRecurringTimeWindow = 0;
api.RecurringTimeWindow buildRecurringTimeWindow() {
  final o = api.RecurringTimeWindow();
  buildCounterRecurringTimeWindow++;
  if (buildCounterRecurringTimeWindow < 3) {
    o.recurrence = 'foo';
    o.window = buildTimeWindow();
  }
  buildCounterRecurringTimeWindow--;
  return o;
}

void checkRecurringTimeWindow(api.RecurringTimeWindow o) {
  buildCounterRecurringTimeWindow++;
  if (buildCounterRecurringTimeWindow < 3) {
    unittest.expect(
      o.recurrence!,
      unittest.equals('foo'),
    );
    checkTimeWindow(o.window!);
  }
  buildCounterRecurringTimeWindow--;
}

core.int buildCounterReleaseChannel = 0;
api.ReleaseChannel buildReleaseChannel() {
  final o = api.ReleaseChannel();
  buildCounterReleaseChannel++;
  if (buildCounterReleaseChannel < 3) {
    o.channel = 'foo';
  }
  buildCounterReleaseChannel--;
  return o;
}

void checkReleaseChannel(api.ReleaseChannel o) {
  buildCounterReleaseChannel++;
  if (buildCounterReleaseChannel < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
  }
  buildCounterReleaseChannel--;
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

core.int buildCounterReleaseChannelConfig = 0;
api.ReleaseChannelConfig buildReleaseChannelConfig() {
  final o = api.ReleaseChannelConfig();
  buildCounterReleaseChannelConfig++;
  if (buildCounterReleaseChannelConfig < 3) {
    o.channel = 'foo';
    o.defaultVersion = 'foo';
    o.validVersions = buildUnnamed55();
  }
  buildCounterReleaseChannelConfig--;
  return o;
}

void checkReleaseChannelConfig(api.ReleaseChannelConfig o) {
  buildCounterReleaseChannelConfig++;
  if (buildCounterReleaseChannelConfig < 3) {
    unittest.expect(
      o.channel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed55(o.validVersions!);
  }
  buildCounterReleaseChannelConfig--;
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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
    o.values = buildUnnamed56();
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
    checkUnnamed56(o.values!);
  }
  buildCounterReservationAffinity--;
}

core.Map<core.String, core.String> buildUnnamed57() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed57(core.Map<core.String, core.String> o) {
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

core.int buildCounterResourceLabels = 0;
api.ResourceLabels buildResourceLabels() {
  final o = api.ResourceLabels();
  buildCounterResourceLabels++;
  if (buildCounterResourceLabels < 3) {
    o.labels = buildUnnamed57();
  }
  buildCounterResourceLabels--;
  return o;
}

void checkResourceLabels(api.ResourceLabels o) {
  buildCounterResourceLabels++;
  if (buildCounterResourceLabels < 3) {
    checkUnnamed57(o.labels!);
  }
  buildCounterResourceLabels--;
}

core.int buildCounterResourceLimit = 0;
api.ResourceLimit buildResourceLimit() {
  final o = api.ResourceLimit();
  buildCounterResourceLimit++;
  if (buildCounterResourceLimit < 3) {
    o.maximum = 'foo';
    o.minimum = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterResourceLimit--;
  return o;
}

void checkResourceLimit(api.ResourceLimit o) {
  buildCounterResourceLimit++;
  if (buildCounterResourceLimit < 3) {
    unittest.expect(
      o.maximum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimum!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterResourceLimit--;
}

core.Map<core.String, core.String> buildUnnamed58() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed58(core.Map<core.String, core.String> o) {
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

core.int buildCounterResourceManagerTags = 0;
api.ResourceManagerTags buildResourceManagerTags() {
  final o = api.ResourceManagerTags();
  buildCounterResourceManagerTags++;
  if (buildCounterResourceManagerTags < 3) {
    o.tags = buildUnnamed58();
  }
  buildCounterResourceManagerTags--;
  return o;
}

void checkResourceManagerTags(api.ResourceManagerTags o) {
  buildCounterResourceManagerTags++;
  if (buildCounterResourceManagerTags < 3) {
    checkUnnamed58(o.tags!);
  }
  buildCounterResourceManagerTags--;
}

core.int buildCounterResourceUsageExportConfig = 0;
api.ResourceUsageExportConfig buildResourceUsageExportConfig() {
  final o = api.ResourceUsageExportConfig();
  buildCounterResourceUsageExportConfig++;
  if (buildCounterResourceUsageExportConfig < 3) {
    o.bigqueryDestination = buildBigQueryDestination();
    o.consumptionMeteringConfig = buildConsumptionMeteringConfig();
    o.enableNetworkEgressMetering = true;
  }
  buildCounterResourceUsageExportConfig--;
  return o;
}

void checkResourceUsageExportConfig(api.ResourceUsageExportConfig o) {
  buildCounterResourceUsageExportConfig++;
  if (buildCounterResourceUsageExportConfig < 3) {
    checkBigQueryDestination(o.bigqueryDestination!);
    checkConsumptionMeteringConfig(o.consumptionMeteringConfig!);
    unittest.expect(o.enableNetworkEgressMetering!, unittest.isTrue);
  }
  buildCounterResourceUsageExportConfig--;
}

core.int buildCounterRollbackNodePoolUpgradeRequest = 0;
api.RollbackNodePoolUpgradeRequest buildRollbackNodePoolUpgradeRequest() {
  final o = api.RollbackNodePoolUpgradeRequest();
  buildCounterRollbackNodePoolUpgradeRequest++;
  if (buildCounterRollbackNodePoolUpgradeRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.respectPdb = true;
    o.zone = 'foo';
  }
  buildCounterRollbackNodePoolUpgradeRequest--;
  return o;
}

void checkRollbackNodePoolUpgradeRequest(api.RollbackNodePoolUpgradeRequest o) {
  buildCounterRollbackNodePoolUpgradeRequest++;
  if (buildCounterRollbackNodePoolUpgradeRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.respectPdb!, unittest.isTrue);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterRollbackNodePoolUpgradeRequest--;
}

core.int buildCounterSandboxConfig = 0;
api.SandboxConfig buildSandboxConfig() {
  final o = api.SandboxConfig();
  buildCounterSandboxConfig++;
  if (buildCounterSandboxConfig < 3) {
    o.type = 'foo';
  }
  buildCounterSandboxConfig--;
  return o;
}

void checkSandboxConfig(api.SandboxConfig o) {
  buildCounterSandboxConfig++;
  if (buildCounterSandboxConfig < 3) {
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterSandboxConfig--;
}

core.int buildCounterSecurityPostureConfig = 0;
api.SecurityPostureConfig buildSecurityPostureConfig() {
  final o = api.SecurityPostureConfig();
  buildCounterSecurityPostureConfig++;
  if (buildCounterSecurityPostureConfig < 3) {
    o.mode = 'foo';
    o.vulnerabilityMode = 'foo';
  }
  buildCounterSecurityPostureConfig--;
  return o;
}

void checkSecurityPostureConfig(api.SecurityPostureConfig o) {
  buildCounterSecurityPostureConfig++;
  if (buildCounterSecurityPostureConfig < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vulnerabilityMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterSecurityPostureConfig--;
}

core.List<api.ReleaseChannelConfig> buildUnnamed59() => [
      buildReleaseChannelConfig(),
      buildReleaseChannelConfig(),
    ];

void checkUnnamed59(core.List<api.ReleaseChannelConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReleaseChannelConfig(o[0]);
  checkReleaseChannelConfig(o[1]);
}

core.List<core.String> buildUnnamed60() => [
      'foo',
      'foo',
    ];

void checkUnnamed60(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed61() => [
      'foo',
      'foo',
    ];

void checkUnnamed61(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed62() => [
      'foo',
      'foo',
    ];

void checkUnnamed62(core.List<core.String> o) {
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

core.int buildCounterServerConfig = 0;
api.ServerConfig buildServerConfig() {
  final o = api.ServerConfig();
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    o.channels = buildUnnamed59();
    o.defaultClusterVersion = 'foo';
    o.defaultImageType = 'foo';
    o.validImageTypes = buildUnnamed60();
    o.validMasterVersions = buildUnnamed61();
    o.validNodeVersions = buildUnnamed62();
  }
  buildCounterServerConfig--;
  return o;
}

void checkServerConfig(api.ServerConfig o) {
  buildCounterServerConfig++;
  if (buildCounterServerConfig < 3) {
    checkUnnamed59(o.channels!);
    unittest.expect(
      o.defaultClusterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultImageType!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.validImageTypes!);
    checkUnnamed61(o.validMasterVersions!);
    checkUnnamed62(o.validNodeVersions!);
  }
  buildCounterServerConfig--;
}

core.int buildCounterServiceExternalIPsConfig = 0;
api.ServiceExternalIPsConfig buildServiceExternalIPsConfig() {
  final o = api.ServiceExternalIPsConfig();
  buildCounterServiceExternalIPsConfig++;
  if (buildCounterServiceExternalIPsConfig < 3) {
    o.enabled = true;
  }
  buildCounterServiceExternalIPsConfig--;
  return o;
}

void checkServiceExternalIPsConfig(api.ServiceExternalIPsConfig o) {
  buildCounterServiceExternalIPsConfig++;
  if (buildCounterServiceExternalIPsConfig < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterServiceExternalIPsConfig--;
}

core.int buildCounterSetAddonsConfigRequest = 0;
api.SetAddonsConfigRequest buildSetAddonsConfigRequest() {
  final o = api.SetAddonsConfigRequest();
  buildCounterSetAddonsConfigRequest++;
  if (buildCounterSetAddonsConfigRequest < 3) {
    o.addonsConfig = buildAddonsConfig();
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetAddonsConfigRequest--;
  return o;
}

void checkSetAddonsConfigRequest(api.SetAddonsConfigRequest o) {
  buildCounterSetAddonsConfigRequest++;
  if (buildCounterSetAddonsConfigRequest < 3) {
    checkAddonsConfig(o.addonsConfig!);
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetAddonsConfigRequest--;
}

core.Map<core.String, core.String> buildUnnamed63() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed63(core.Map<core.String, core.String> o) {
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

core.int buildCounterSetLabelsRequest = 0;
api.SetLabelsRequest buildSetLabelsRequest() {
  final o = api.SetLabelsRequest();
  buildCounterSetLabelsRequest++;
  if (buildCounterSetLabelsRequest < 3) {
    o.clusterId = 'foo';
    o.labelFingerprint = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.resourceLabels = buildUnnamed63();
    o.zone = 'foo';
  }
  buildCounterSetLabelsRequest--;
  return o;
}

void checkSetLabelsRequest(api.SetLabelsRequest o) {
  buildCounterSetLabelsRequest++;
  if (buildCounterSetLabelsRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.labelFingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUnnamed63(o.resourceLabels!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetLabelsRequest--;
}

core.int buildCounterSetLegacyAbacRequest = 0;
api.SetLegacyAbacRequest buildSetLegacyAbacRequest() {
  final o = api.SetLegacyAbacRequest();
  buildCounterSetLegacyAbacRequest++;
  if (buildCounterSetLegacyAbacRequest < 3) {
    o.clusterId = 'foo';
    o.enabled = true;
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLegacyAbacRequest--;
  return o;
}

void checkSetLegacyAbacRequest(api.SetLegacyAbacRequest o) {
  buildCounterSetLegacyAbacRequest++;
  if (buildCounterSetLegacyAbacRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetLegacyAbacRequest--;
}

core.List<core.String> buildUnnamed64() => [
      'foo',
      'foo',
    ];

void checkUnnamed64(core.List<core.String> o) {
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

core.int buildCounterSetLocationsRequest = 0;
api.SetLocationsRequest buildSetLocationsRequest() {
  final o = api.SetLocationsRequest();
  buildCounterSetLocationsRequest++;
  if (buildCounterSetLocationsRequest < 3) {
    o.clusterId = 'foo';
    o.locations = buildUnnamed64();
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLocationsRequest--;
  return o;
}

void checkSetLocationsRequest(api.SetLocationsRequest o) {
  buildCounterSetLocationsRequest++;
  if (buildCounterSetLocationsRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.locations!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetLocationsRequest--;
}

core.int buildCounterSetLoggingServiceRequest = 0;
api.SetLoggingServiceRequest buildSetLoggingServiceRequest() {
  final o = api.SetLoggingServiceRequest();
  buildCounterSetLoggingServiceRequest++;
  if (buildCounterSetLoggingServiceRequest < 3) {
    o.clusterId = 'foo';
    o.loggingService = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetLoggingServiceRequest--;
  return o;
}

void checkSetLoggingServiceRequest(api.SetLoggingServiceRequest o) {
  buildCounterSetLoggingServiceRequest++;
  if (buildCounterSetLoggingServiceRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.loggingService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetLoggingServiceRequest--;
}

core.int buildCounterSetMaintenancePolicyRequest = 0;
api.SetMaintenancePolicyRequest buildSetMaintenancePolicyRequest() {
  final o = api.SetMaintenancePolicyRequest();
  buildCounterSetMaintenancePolicyRequest++;
  if (buildCounterSetMaintenancePolicyRequest < 3) {
    o.clusterId = 'foo';
    o.maintenancePolicy = buildMaintenancePolicy();
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetMaintenancePolicyRequest--;
  return o;
}

void checkSetMaintenancePolicyRequest(api.SetMaintenancePolicyRequest o) {
  buildCounterSetMaintenancePolicyRequest++;
  if (buildCounterSetMaintenancePolicyRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkMaintenancePolicy(o.maintenancePolicy!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetMaintenancePolicyRequest--;
}

core.int buildCounterSetMasterAuthRequest = 0;
api.SetMasterAuthRequest buildSetMasterAuthRequest() {
  final o = api.SetMasterAuthRequest();
  buildCounterSetMasterAuthRequest++;
  if (buildCounterSetMasterAuthRequest < 3) {
    o.action = 'foo';
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.update = buildMasterAuth();
    o.zone = 'foo';
  }
  buildCounterSetMasterAuthRequest--;
  return o;
}

void checkSetMasterAuthRequest(api.SetMasterAuthRequest o) {
  buildCounterSetMasterAuthRequest++;
  if (buildCounterSetMasterAuthRequest < 3) {
    unittest.expect(
      o.action!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkMasterAuth(o.update!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetMasterAuthRequest--;
}

core.int buildCounterSetMonitoringServiceRequest = 0;
api.SetMonitoringServiceRequest buildSetMonitoringServiceRequest() {
  final o = api.SetMonitoringServiceRequest();
  buildCounterSetMonitoringServiceRequest++;
  if (buildCounterSetMonitoringServiceRequest < 3) {
    o.clusterId = 'foo';
    o.monitoringService = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetMonitoringServiceRequest--;
  return o;
}

void checkSetMonitoringServiceRequest(api.SetMonitoringServiceRequest o) {
  buildCounterSetMonitoringServiceRequest++;
  if (buildCounterSetMonitoringServiceRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.monitoringService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetMonitoringServiceRequest--;
}

core.int buildCounterSetNetworkPolicyRequest = 0;
api.SetNetworkPolicyRequest buildSetNetworkPolicyRequest() {
  final o = api.SetNetworkPolicyRequest();
  buildCounterSetNetworkPolicyRequest++;
  if (buildCounterSetNetworkPolicyRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.networkPolicy = buildNetworkPolicy();
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNetworkPolicyRequest--;
  return o;
}

void checkSetNetworkPolicyRequest(api.SetNetworkPolicyRequest o) {
  buildCounterSetNetworkPolicyRequest++;
  if (buildCounterSetNetworkPolicyRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNetworkPolicy(o.networkPolicy!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetNetworkPolicyRequest--;
}

core.int buildCounterSetNodePoolAutoscalingRequest = 0;
api.SetNodePoolAutoscalingRequest buildSetNodePoolAutoscalingRequest() {
  final o = api.SetNodePoolAutoscalingRequest();
  buildCounterSetNodePoolAutoscalingRequest++;
  if (buildCounterSetNodePoolAutoscalingRequest < 3) {
    o.autoscaling = buildNodePoolAutoscaling();
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolAutoscalingRequest--;
  return o;
}

void checkSetNodePoolAutoscalingRequest(api.SetNodePoolAutoscalingRequest o) {
  buildCounterSetNodePoolAutoscalingRequest++;
  if (buildCounterSetNodePoolAutoscalingRequest < 3) {
    checkNodePoolAutoscaling(o.autoscaling!);
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetNodePoolAutoscalingRequest--;
}

core.int buildCounterSetNodePoolManagementRequest = 0;
api.SetNodePoolManagementRequest buildSetNodePoolManagementRequest() {
  final o = api.SetNodePoolManagementRequest();
  buildCounterSetNodePoolManagementRequest++;
  if (buildCounterSetNodePoolManagementRequest < 3) {
    o.clusterId = 'foo';
    o.management = buildNodeManagement();
    o.name = 'foo';
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolManagementRequest--;
  return o;
}

void checkSetNodePoolManagementRequest(api.SetNodePoolManagementRequest o) {
  buildCounterSetNodePoolManagementRequest++;
  if (buildCounterSetNodePoolManagementRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkNodeManagement(o.management!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetNodePoolManagementRequest--;
}

core.int buildCounterSetNodePoolSizeRequest = 0;
api.SetNodePoolSizeRequest buildSetNodePoolSizeRequest() {
  final o = api.SetNodePoolSizeRequest();
  buildCounterSetNodePoolSizeRequest++;
  if (buildCounterSetNodePoolSizeRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.nodeCount = 42;
    o.nodePoolId = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterSetNodePoolSizeRequest--;
  return o;
}

void checkSetNodePoolSizeRequest(api.SetNodePoolSizeRequest o) {
  buildCounterSetNodePoolSizeRequest++;
  if (buildCounterSetNodePoolSizeRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterSetNodePoolSizeRequest--;
}

core.int buildCounterShieldedInstanceConfig = 0;
api.ShieldedInstanceConfig buildShieldedInstanceConfig() {
  final o = api.ShieldedInstanceConfig();
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
  }
  buildCounterShieldedInstanceConfig--;
  return o;
}

void checkShieldedInstanceConfig(api.ShieldedInstanceConfig o) {
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring!, unittest.isTrue);
    unittest.expect(o.enableSecureBoot!, unittest.isTrue);
  }
  buildCounterShieldedInstanceConfig--;
}

core.int buildCounterShieldedNodes = 0;
api.ShieldedNodes buildShieldedNodes() {
  final o = api.ShieldedNodes();
  buildCounterShieldedNodes++;
  if (buildCounterShieldedNodes < 3) {
    o.enabled = true;
  }
  buildCounterShieldedNodes--;
  return o;
}

void checkShieldedNodes(api.ShieldedNodes o) {
  buildCounterShieldedNodes++;
  if (buildCounterShieldedNodes < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterShieldedNodes--;
}

core.List<api.NodeAffinity> buildUnnamed65() => [
      buildNodeAffinity(),
      buildNodeAffinity(),
    ];

void checkUnnamed65(core.List<api.NodeAffinity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeAffinity(o[0]);
  checkNodeAffinity(o[1]);
}

core.int buildCounterSoleTenantConfig = 0;
api.SoleTenantConfig buildSoleTenantConfig() {
  final o = api.SoleTenantConfig();
  buildCounterSoleTenantConfig++;
  if (buildCounterSoleTenantConfig < 3) {
    o.nodeAffinities = buildUnnamed65();
  }
  buildCounterSoleTenantConfig--;
  return o;
}

void checkSoleTenantConfig(api.SoleTenantConfig o) {
  buildCounterSoleTenantConfig++;
  if (buildCounterSoleTenantConfig < 3) {
    checkUnnamed65(o.nodeAffinities!);
  }
  buildCounterSoleTenantConfig--;
}

core.int buildCounterStandardRolloutPolicy = 0;
api.StandardRolloutPolicy buildStandardRolloutPolicy() {
  final o = api.StandardRolloutPolicy();
  buildCounterStandardRolloutPolicy++;
  if (buildCounterStandardRolloutPolicy < 3) {
    o.batchNodeCount = 42;
    o.batchPercentage = 42.0;
    o.batchSoakDuration = 'foo';
  }
  buildCounterStandardRolloutPolicy--;
  return o;
}

void checkStandardRolloutPolicy(api.StandardRolloutPolicy o) {
  buildCounterStandardRolloutPolicy++;
  if (buildCounterStandardRolloutPolicy < 3) {
    unittest.expect(
      o.batchNodeCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.batchPercentage!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.batchSoakDuration!,
      unittest.equals('foo'),
    );
  }
  buildCounterStandardRolloutPolicy--;
}

core.int buildCounterStartIPRotationRequest = 0;
api.StartIPRotationRequest buildStartIPRotationRequest() {
  final o = api.StartIPRotationRequest();
  buildCounterStartIPRotationRequest++;
  if (buildCounterStartIPRotationRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.rotateCredentials = true;
    o.zone = 'foo';
  }
  buildCounterStartIPRotationRequest--;
  return o;
}

void checkStartIPRotationRequest(api.StartIPRotationRequest o) {
  buildCounterStartIPRotationRequest++;
  if (buildCounterStartIPRotationRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.rotateCredentials!, unittest.isTrue);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterStartIPRotationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed66() => {
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

void checkUnnamed66(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed67() => [
      buildUnnamed66(),
      buildUnnamed66(),
    ];

void checkUnnamed67(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed66(o[0]);
  checkUnnamed66(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed67();
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
    checkUnnamed67(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.int buildCounterStatusCondition = 0;
api.StatusCondition buildStatusCondition() {
  final o = api.StatusCondition();
  buildCounterStatusCondition++;
  if (buildCounterStatusCondition < 3) {
    o.canonicalCode = 'foo';
    o.code = 'foo';
    o.message = 'foo';
  }
  buildCounterStatusCondition--;
  return o;
}

void checkStatusCondition(api.StatusCondition o) {
  buildCounterStatusCondition++;
  if (buildCounterStatusCondition < 3) {
    unittest.expect(
      o.canonicalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatusCondition--;
}

core.int buildCounterTimeWindow = 0;
api.TimeWindow buildTimeWindow() {
  final o = api.TimeWindow();
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    o.endTime = 'foo';
    o.maintenanceExclusionOptions = buildMaintenanceExclusionOptions();
    o.startTime = 'foo';
  }
  buildCounterTimeWindow--;
  return o;
}

void checkTimeWindow(api.TimeWindow o) {
  buildCounterTimeWindow++;
  if (buildCounterTimeWindow < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkMaintenanceExclusionOptions(o.maintenanceExclusionOptions!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimeWindow--;
}

core.int buildCounterUpdateClusterRequest = 0;
api.UpdateClusterRequest buildUpdateClusterRequest() {
  final o = api.UpdateClusterRequest();
  buildCounterUpdateClusterRequest++;
  if (buildCounterUpdateClusterRequest < 3) {
    o.clusterId = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.update = buildClusterUpdate();
    o.zone = 'foo';
  }
  buildCounterUpdateClusterRequest--;
  return o;
}

void checkUpdateClusterRequest(api.UpdateClusterRequest o) {
  buildCounterUpdateClusterRequest++;
  if (buildCounterUpdateClusterRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkClusterUpdate(o.update!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateClusterRequest--;
}

core.int buildCounterUpdateInfo = 0;
api.UpdateInfo buildUpdateInfo() {
  final o = api.UpdateInfo();
  buildCounterUpdateInfo++;
  if (buildCounterUpdateInfo < 3) {
    o.blueGreenInfo = buildBlueGreenInfo();
  }
  buildCounterUpdateInfo--;
  return o;
}

void checkUpdateInfo(api.UpdateInfo o) {
  buildCounterUpdateInfo++;
  if (buildCounterUpdateInfo < 3) {
    checkBlueGreenInfo(o.blueGreenInfo!);
  }
  buildCounterUpdateInfo--;
}

core.int buildCounterUpdateMasterRequest = 0;
api.UpdateMasterRequest buildUpdateMasterRequest() {
  final o = api.UpdateMasterRequest();
  buildCounterUpdateMasterRequest++;
  if (buildCounterUpdateMasterRequest < 3) {
    o.clusterId = 'foo';
    o.masterVersion = 'foo';
    o.name = 'foo';
    o.projectId = 'foo';
    o.zone = 'foo';
  }
  buildCounterUpdateMasterRequest--;
  return o;
}

void checkUpdateMasterRequest(api.UpdateMasterRequest o) {
  buildCounterUpdateMasterRequest++;
  if (buildCounterUpdateMasterRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.masterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateMasterRequest--;
}

core.List<core.String> buildUnnamed68() => [
      'foo',
      'foo',
    ];

void checkUnnamed68(core.List<core.String> o) {
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

core.int buildCounterUpdateNodePoolRequest = 0;
api.UpdateNodePoolRequest buildUpdateNodePoolRequest() {
  final o = api.UpdateNodePoolRequest();
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    o.clusterId = 'foo';
    o.confidentialNodes = buildConfidentialNodes();
    o.diskSizeGb = 'foo';
    o.diskType = 'foo';
    o.etag = 'foo';
    o.fastSocket = buildFastSocket();
    o.gcfsConfig = buildGcfsConfig();
    o.gvnic = buildVirtualNIC();
    o.imageType = 'foo';
    o.kubeletConfig = buildNodeKubeletConfig();
    o.labels = buildNodeLabels();
    o.linuxNodeConfig = buildLinuxNodeConfig();
    o.locations = buildUnnamed68();
    o.loggingConfig = buildNodePoolLoggingConfig();
    o.machineType = 'foo';
    o.name = 'foo';
    o.nodeNetworkConfig = buildNodeNetworkConfig();
    o.nodePoolId = 'foo';
    o.nodeVersion = 'foo';
    o.projectId = 'foo';
    o.resourceLabels = buildResourceLabels();
    o.resourceManagerTags = buildResourceManagerTags();
    o.tags = buildNetworkTags();
    o.taints = buildNodeTaints();
    o.upgradeSettings = buildUpgradeSettings();
    o.windowsNodeConfig = buildWindowsNodeConfig();
    o.workloadMetadataConfig = buildWorkloadMetadataConfig();
    o.zone = 'foo';
  }
  buildCounterUpdateNodePoolRequest--;
  return o;
}

void checkUpdateNodePoolRequest(api.UpdateNodePoolRequest o) {
  buildCounterUpdateNodePoolRequest++;
  if (buildCounterUpdateNodePoolRequest < 3) {
    unittest.expect(
      o.clusterId!,
      unittest.equals('foo'),
    );
    checkConfidentialNodes(o.confidentialNodes!);
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    checkFastSocket(o.fastSocket!);
    checkGcfsConfig(o.gcfsConfig!);
    checkVirtualNIC(o.gvnic!);
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    checkNodeKubeletConfig(o.kubeletConfig!);
    checkNodeLabels(o.labels!);
    checkLinuxNodeConfig(o.linuxNodeConfig!);
    checkUnnamed68(o.locations!);
    checkNodePoolLoggingConfig(o.loggingConfig!);
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNodeNetworkConfig(o.nodeNetworkConfig!);
    unittest.expect(
      o.nodePoolId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkResourceLabels(o.resourceLabels!);
    checkResourceManagerTags(o.resourceManagerTags!);
    checkNetworkTags(o.tags!);
    checkNodeTaints(o.taints!);
    checkUpgradeSettings(o.upgradeSettings!);
    checkWindowsNodeConfig(o.windowsNodeConfig!);
    checkWorkloadMetadataConfig(o.workloadMetadataConfig!);
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateNodePoolRequest--;
}

core.int buildCounterUpgradeSettings = 0;
api.UpgradeSettings buildUpgradeSettings() {
  final o = api.UpgradeSettings();
  buildCounterUpgradeSettings++;
  if (buildCounterUpgradeSettings < 3) {
    o.blueGreenSettings = buildBlueGreenSettings();
    o.maxSurge = 42;
    o.maxUnavailable = 42;
    o.strategy = 'foo';
  }
  buildCounterUpgradeSettings--;
  return o;
}

void checkUpgradeSettings(api.UpgradeSettings o) {
  buildCounterUpgradeSettings++;
  if (buildCounterUpgradeSettings < 3) {
    checkBlueGreenSettings(o.blueGreenSettings!);
    unittest.expect(
      o.maxSurge!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxUnavailable!,
      unittest.equals(42),
    );
    unittest.expect(
      o.strategy!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpgradeSettings--;
}

core.List<api.UsableSubnetworkSecondaryRange> buildUnnamed69() => [
      buildUsableSubnetworkSecondaryRange(),
      buildUsableSubnetworkSecondaryRange(),
    ];

void checkUnnamed69(core.List<api.UsableSubnetworkSecondaryRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsableSubnetworkSecondaryRange(o[0]);
  checkUsableSubnetworkSecondaryRange(o[1]);
}

core.int buildCounterUsableSubnetwork = 0;
api.UsableSubnetwork buildUsableSubnetwork() {
  final o = api.UsableSubnetwork();
  buildCounterUsableSubnetwork++;
  if (buildCounterUsableSubnetwork < 3) {
    o.ipCidrRange = 'foo';
    o.network = 'foo';
    o.secondaryIpRanges = buildUnnamed69();
    o.statusMessage = 'foo';
    o.subnetwork = 'foo';
  }
  buildCounterUsableSubnetwork--;
  return o;
}

void checkUsableSubnetwork(api.UsableSubnetwork o) {
  buildCounterUsableSubnetwork++;
  if (buildCounterUsableSubnetwork < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    checkUnnamed69(o.secondaryIpRanges!);
    unittest.expect(
      o.statusMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsableSubnetwork--;
}

core.int buildCounterUsableSubnetworkSecondaryRange = 0;
api.UsableSubnetworkSecondaryRange buildUsableSubnetworkSecondaryRange() {
  final o = api.UsableSubnetworkSecondaryRange();
  buildCounterUsableSubnetworkSecondaryRange++;
  if (buildCounterUsableSubnetworkSecondaryRange < 3) {
    o.ipCidrRange = 'foo';
    o.rangeName = 'foo';
    o.status = 'foo';
  }
  buildCounterUsableSubnetworkSecondaryRange--;
  return o;
}

void checkUsableSubnetworkSecondaryRange(api.UsableSubnetworkSecondaryRange o) {
  buildCounterUsableSubnetworkSecondaryRange++;
  if (buildCounterUsableSubnetworkSecondaryRange < 3) {
    unittest.expect(
      o.ipCidrRange!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsableSubnetworkSecondaryRange--;
}

core.int buildCounterVerticalPodAutoscaling = 0;
api.VerticalPodAutoscaling buildVerticalPodAutoscaling() {
  final o = api.VerticalPodAutoscaling();
  buildCounterVerticalPodAutoscaling++;
  if (buildCounterVerticalPodAutoscaling < 3) {
    o.enabled = true;
  }
  buildCounterVerticalPodAutoscaling--;
  return o;
}

void checkVerticalPodAutoscaling(api.VerticalPodAutoscaling o) {
  buildCounterVerticalPodAutoscaling++;
  if (buildCounterVerticalPodAutoscaling < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterVerticalPodAutoscaling--;
}

core.int buildCounterVirtualNIC = 0;
api.VirtualNIC buildVirtualNIC() {
  final o = api.VirtualNIC();
  buildCounterVirtualNIC++;
  if (buildCounterVirtualNIC < 3) {
    o.enabled = true;
  }
  buildCounterVirtualNIC--;
  return o;
}

void checkVirtualNIC(api.VirtualNIC o) {
  buildCounterVirtualNIC++;
  if (buildCounterVirtualNIC < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
  }
  buildCounterVirtualNIC--;
}

core.int buildCounterWindowsNodeConfig = 0;
api.WindowsNodeConfig buildWindowsNodeConfig() {
  final o = api.WindowsNodeConfig();
  buildCounterWindowsNodeConfig++;
  if (buildCounterWindowsNodeConfig < 3) {
    o.osVersion = 'foo';
  }
  buildCounterWindowsNodeConfig--;
  return o;
}

void checkWindowsNodeConfig(api.WindowsNodeConfig o) {
  buildCounterWindowsNodeConfig++;
  if (buildCounterWindowsNodeConfig < 3) {
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterWindowsNodeConfig--;
}

core.int buildCounterWorkloadIdentityConfig = 0;
api.WorkloadIdentityConfig buildWorkloadIdentityConfig() {
  final o = api.WorkloadIdentityConfig();
  buildCounterWorkloadIdentityConfig++;
  if (buildCounterWorkloadIdentityConfig < 3) {
    o.workloadPool = 'foo';
  }
  buildCounterWorkloadIdentityConfig--;
  return o;
}

void checkWorkloadIdentityConfig(api.WorkloadIdentityConfig o) {
  buildCounterWorkloadIdentityConfig++;
  if (buildCounterWorkloadIdentityConfig < 3) {
    unittest.expect(
      o.workloadPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadIdentityConfig--;
}

core.int buildCounterWorkloadMetadataConfig = 0;
api.WorkloadMetadataConfig buildWorkloadMetadataConfig() {
  final o = api.WorkloadMetadataConfig();
  buildCounterWorkloadMetadataConfig++;
  if (buildCounterWorkloadMetadataConfig < 3) {
    o.mode = 'foo';
  }
  buildCounterWorkloadMetadataConfig--;
  return o;
}

void checkWorkloadMetadataConfig(api.WorkloadMetadataConfig o) {
  buildCounterWorkloadMetadataConfig++;
  if (buildCounterWorkloadMetadataConfig < 3) {
    unittest.expect(
      o.mode!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkloadMetadataConfig--;
}

core.int buildCounterWorkloadPolicyConfig = 0;
api.WorkloadPolicyConfig buildWorkloadPolicyConfig() {
  final o = api.WorkloadPolicyConfig();
  buildCounterWorkloadPolicyConfig++;
  if (buildCounterWorkloadPolicyConfig < 3) {
    o.allowNetAdmin = true;
  }
  buildCounterWorkloadPolicyConfig--;
  return o;
}

void checkWorkloadPolicyConfig(api.WorkloadPolicyConfig o) {
  buildCounterWorkloadPolicyConfig++;
  if (buildCounterWorkloadPolicyConfig < 3) {
    unittest.expect(o.allowNetAdmin!, unittest.isTrue);
  }
  buildCounterWorkloadPolicyConfig--;
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

  unittest.group('obj-schema-AdditionalNodeNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdditionalNodeNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdditionalNodeNetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdditionalNodeNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-AdditionalPodNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdditionalPodNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdditionalPodNetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdditionalPodNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-AdditionalPodRangesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdditionalPodRangesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdditionalPodRangesConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdditionalPodRangesConfig(od);
    });
  });

  unittest.group('obj-schema-AddonsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddonsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddonsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddonsConfig(od);
    });
  });

  unittest.group('obj-schema-AdvancedDatapathObservabilityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvancedDatapathObservabilityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvancedDatapathObservabilityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvancedDatapathObservabilityConfig(od);
    });
  });

  unittest.group('obj-schema-AdvancedMachineFeatures', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvancedMachineFeatures();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvancedMachineFeatures.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvancedMachineFeatures(od);
    });
  });

  unittest.group('obj-schema-AuthenticatorGroupsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthenticatorGroupsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuthenticatorGroupsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAuthenticatorGroupsConfig(od);
    });
  });

  unittest.group('obj-schema-AutoUpgradeOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoUpgradeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoUpgradeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoUpgradeOptions(od);
    });
  });

  unittest.group('obj-schema-Autopilot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutopilot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Autopilot.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAutopilot(od);
    });
  });

  unittest.group('obj-schema-AutopilotCompatibilityIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutopilotCompatibilityIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutopilotCompatibilityIssue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutopilotCompatibilityIssue(od);
    });
  });

  unittest.group('obj-schema-AutoprovisioningNodePoolDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoprovisioningNodePoolDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoprovisioningNodePoolDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoprovisioningNodePoolDefaults(od);
    });
  });

  unittest.group('obj-schema-BestEffortProvisioning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBestEffortProvisioning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BestEffortProvisioning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBestEffortProvisioning(od);
    });
  });

  unittest.group('obj-schema-BigQueryDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryDestination(od);
    });
  });

  unittest.group('obj-schema-BinaryAuthorization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinaryAuthorization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BinaryAuthorization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBinaryAuthorization(od);
    });
  });

  unittest.group('obj-schema-BlueGreenInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlueGreenInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlueGreenInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlueGreenInfo(od);
    });
  });

  unittest.group('obj-schema-BlueGreenSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlueGreenSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlueGreenSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlueGreenSettings(od);
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

  unittest.group('obj-schema-CheckAutopilotCompatibilityResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckAutopilotCompatibilityResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckAutopilotCompatibilityResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckAutopilotCompatibilityResponse(od);
    });
  });

  unittest.group('obj-schema-CidrBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCidrBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CidrBlock.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCidrBlock(od);
    });
  });

  unittest.group('obj-schema-ClientCertificateConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientCertificateConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientCertificateConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientCertificateConfig(od);
    });
  });

  unittest.group('obj-schema-CloudRunConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudRunConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudRunConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloudRunConfig(od);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Cluster.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-ClusterAutoscaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterAutoscaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterAutoscaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterAutoscaling(od);
    });
  });

  unittest.group('obj-schema-ClusterNetworkPerformanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterNetworkPerformanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterNetworkPerformanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterNetworkPerformanceConfig(od);
    });
  });

  unittest.group('obj-schema-ClusterUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClusterUpdate(od);
    });
  });

  unittest.group('obj-schema-CompleteIPRotationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteIPRotationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompleteIPRotationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteIPRotationRequest(od);
    });
  });

  unittest.group('obj-schema-CompleteNodePoolUpgradeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompleteNodePoolUpgradeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompleteNodePoolUpgradeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompleteNodePoolUpgradeRequest(od);
    });
  });

  unittest.group('obj-schema-ConfidentialNodes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfidentialNodes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfidentialNodes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfidentialNodes(od);
    });
  });

  unittest.group('obj-schema-ConfigConnectorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfigConnectorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfigConnectorConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConfigConnectorConfig(od);
    });
  });

  unittest.group('obj-schema-ConsumptionMeteringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsumptionMeteringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsumptionMeteringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConsumptionMeteringConfig(od);
    });
  });

  unittest.group('obj-schema-CostManagementConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCostManagementConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CostManagementConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCostManagementConfig(od);
    });
  });

  unittest.group('obj-schema-CreateClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateClusterRequest(od);
    });
  });

  unittest.group('obj-schema-CreateNodePoolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateNodePoolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateNodePoolRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateNodePoolRequest(od);
    });
  });

  unittest.group('obj-schema-DNSConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDNSConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DNSConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDNSConfig(od);
    });
  });

  unittest.group('obj-schema-DailyMaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyMaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-DatabaseEncryption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseEncryption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseEncryption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatabaseEncryption(od);
    });
  });

  unittest.group('obj-schema-DefaultSnatStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultSnatStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultSnatStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDefaultSnatStatus(od);
    });
  });

  unittest.group('obj-schema-DnsCacheConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDnsCacheConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DnsCacheConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDnsCacheConfig(od);
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

  unittest.group('obj-schema-EnterpriseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterpriseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnterpriseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnterpriseConfig(od);
    });
  });

  unittest.group('obj-schema-EphemeralStorageLocalSsdConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEphemeralStorageLocalSsdConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EphemeralStorageLocalSsdConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEphemeralStorageLocalSsdConfig(od);
    });
  });

  unittest.group('obj-schema-FastSocket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFastSocket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FastSocket.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFastSocket(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilter(od);
    });
  });

  unittest.group('obj-schema-Fleet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFleet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Fleet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFleet(od);
    });
  });

  unittest.group('obj-schema-GPUDriverInstallationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGPUDriverInstallationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GPUDriverInstallationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGPUDriverInstallationConfig(od);
    });
  });

  unittest.group('obj-schema-GPUSharingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGPUSharingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GPUSharingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGPUSharingConfig(od);
    });
  });

  unittest.group('obj-schema-GatewayAPIConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGatewayAPIConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GatewayAPIConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGatewayAPIConfig(od);
    });
  });

  unittest.group('obj-schema-GcePersistentDiskCsiDriverConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcePersistentDiskCsiDriverConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcePersistentDiskCsiDriverConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcePersistentDiskCsiDriverConfig(od);
    });
  });

  unittest.group('obj-schema-GcfsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcfsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GcfsConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGcfsConfig(od);
    });
  });

  unittest.group('obj-schema-GcpFilestoreCsiDriverConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcpFilestoreCsiDriverConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcpFilestoreCsiDriverConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcpFilestoreCsiDriverConfig(od);
    });
  });

  unittest.group('obj-schema-GcsFuseCsiDriverConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcsFuseCsiDriverConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcsFuseCsiDriverConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGcsFuseCsiDriverConfig(od);
    });
  });

  unittest.group('obj-schema-GetJSONWebKeysResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetJSONWebKeysResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetJSONWebKeysResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetJSONWebKeysResponse(od);
    });
  });

  unittest.group('obj-schema-GetOpenIDConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetOpenIDConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetOpenIDConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetOpenIDConfigResponse(od);
    });
  });

  unittest.group('obj-schema-GkeBackupAgentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeBackupAgentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeBackupAgentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGkeBackupAgentConfig(od);
    });
  });

  unittest.group('obj-schema-HorizontalPodAutoscaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHorizontalPodAutoscaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HorizontalPodAutoscaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHorizontalPodAutoscaling(od);
    });
  });

  unittest.group('obj-schema-HttpCacheControlResponseHeader', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpCacheControlResponseHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpCacheControlResponseHeader.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpCacheControlResponseHeader(od);
    });
  });

  unittest.group('obj-schema-HttpLoadBalancing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpLoadBalancing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpLoadBalancing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHttpLoadBalancing(od);
    });
  });

  unittest.group('obj-schema-ILBSubsettingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildILBSubsettingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ILBSubsettingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkILBSubsettingConfig(od);
    });
  });

  unittest.group('obj-schema-IPAllocationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIPAllocationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IPAllocationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIPAllocationPolicy(od);
    });
  });

  unittest.group('obj-schema-IdentityServiceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityServiceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityServiceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdentityServiceConfig(od);
    });
  });

  unittest.group('obj-schema-IntraNodeVisibilityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntraNodeVisibilityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntraNodeVisibilityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntraNodeVisibilityConfig(od);
    });
  });

  unittest.group('obj-schema-Jwk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJwk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Jwk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJwk(od);
    });
  });

  unittest.group('obj-schema-K8sBetaAPIConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildK8sBetaAPIConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.K8sBetaAPIConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkK8sBetaAPIConfig(od);
    });
  });

  unittest.group('obj-schema-KubernetesDashboard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesDashboard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesDashboard.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKubernetesDashboard(od);
    });
  });

  unittest.group('obj-schema-LegacyAbac', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLegacyAbac();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LegacyAbac.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLegacyAbac(od);
    });
  });

  unittest.group('obj-schema-LinuxNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinuxNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinuxNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinuxNodeConfig(od);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClustersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListNodePoolsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListNodePoolsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListNodePoolsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListNodePoolsResponse(od);
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

  unittest.group('obj-schema-ListUsableSubnetworksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsableSubnetworksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsableSubnetworksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUsableSubnetworksResponse(od);
    });
  });

  unittest.group('obj-schema-LocalNvmeSsdBlockConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalNvmeSsdBlockConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalNvmeSsdBlockConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalNvmeSsdBlockConfig(od);
    });
  });

  unittest.group('obj-schema-LoggingComponentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingComponentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingComponentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingComponentConfig(od);
    });
  });

  unittest.group('obj-schema-LoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-LoggingVariantConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingVariantConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingVariantConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLoggingVariantConfig(od);
    });
  });

  unittest.group('obj-schema-MaintenanceExclusionOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceExclusionOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceExclusionOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenanceExclusionOptions(od);
    });
  });

  unittest.group('obj-schema-MaintenancePolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenancePolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenancePolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenancePolicy(od);
    });
  });

  unittest.group('obj-schema-MaintenanceWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaintenanceWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaintenanceWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaintenanceWindow(od);
    });
  });

  unittest.group('obj-schema-ManagedPrometheusConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedPrometheusConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedPrometheusConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedPrometheusConfig(od);
    });
  });

  unittest.group('obj-schema-MasterAuth', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMasterAuth();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MasterAuth.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMasterAuth(od);
    });
  });

  unittest.group('obj-schema-MasterAuthorizedNetworksConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMasterAuthorizedNetworksConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MasterAuthorizedNetworksConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMasterAuthorizedNetworksConfig(od);
    });
  });

  unittest.group('obj-schema-MaxPodsConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMaxPodsConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MaxPodsConstraint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMaxPodsConstraint(od);
    });
  });

  unittest.group('obj-schema-MeshCertificates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMeshCertificates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MeshCertificates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMeshCertificates(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Metric.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-MonitoringComponentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringComponentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringComponentConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoringComponentConfig(od);
    });
  });

  unittest.group('obj-schema-MonitoringConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMonitoringConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MonitoringConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMonitoringConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkPerformanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPerformanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPerformanceConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkPerformanceConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkPolicy(od);
    });
  });

  unittest.group('obj-schema-NetworkPolicyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkPolicyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkPolicyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkPolicyConfig(od);
    });
  });

  unittest.group('obj-schema-NetworkTags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkTags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkTags.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkTags(od);
    });
  });

  unittest.group('obj-schema-NodeAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeAffinity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeAffinity(od);
    });
  });

  unittest.group('obj-schema-NodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeConfig(od);
    });
  });

  unittest.group('obj-schema-NodeConfigDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeConfigDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeConfigDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeConfigDefaults(od);
    });
  });

  unittest.group('obj-schema-NodeKubeletConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeKubeletConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeKubeletConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeKubeletConfig(od);
    });
  });

  unittest.group('obj-schema-NodeLabels', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeLabels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeLabels.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeLabels(od);
    });
  });

  unittest.group('obj-schema-NodeManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeManagement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeManagement(od);
    });
  });

  unittest.group('obj-schema-NodeNetworkConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeNetworkConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeNetworkConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodeNetworkConfig(od);
    });
  });

  unittest.group('obj-schema-NodePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodePool.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodePool(od);
    });
  });

  unittest.group('obj-schema-NodePoolAutoConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePoolAutoConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodePoolAutoConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodePoolAutoConfig(od);
    });
  });

  unittest.group('obj-schema-NodePoolAutoscaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePoolAutoscaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodePoolAutoscaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodePoolAutoscaling(od);
    });
  });

  unittest.group('obj-schema-NodePoolDefaults', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePoolDefaults();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodePoolDefaults.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodePoolDefaults(od);
    });
  });

  unittest.group('obj-schema-NodePoolLoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePoolLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodePoolLoggingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNodePoolLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-NodeTaint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeTaint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeTaint.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeTaint(od);
    });
  });

  unittest.group('obj-schema-NodeTaints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeTaints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NodeTaints.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNodeTaints(od);
    });
  });

  unittest.group('obj-schema-NotificationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotificationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotificationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotificationConfig(od);
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

  unittest.group('obj-schema-OperationProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperationProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperationProgress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOperationProgress(od);
    });
  });

  unittest.group('obj-schema-ParentProductConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParentProductConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParentProductConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParentProductConfig(od);
    });
  });

  unittest.group('obj-schema-PlacementPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlacementPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlacementPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlacementPolicy(od);
    });
  });

  unittest.group('obj-schema-PodCIDROverprovisionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPodCIDROverprovisionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PodCIDROverprovisionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPodCIDROverprovisionConfig(od);
    });
  });

  unittest.group('obj-schema-PrivateClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateClusterConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateClusterConfig(od);
    });
  });

  unittest.group('obj-schema-PrivateClusterMasterGlobalAccessConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrivateClusterMasterGlobalAccessConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrivateClusterMasterGlobalAccessConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrivateClusterMasterGlobalAccessConfig(od);
    });
  });

  unittest.group('obj-schema-PubSub', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubSub();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PubSub.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPubSub(od);
    });
  });

  unittest.group('obj-schema-QueuedProvisioning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueuedProvisioning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueuedProvisioning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkQueuedProvisioning(od);
    });
  });

  unittest.group('obj-schema-RangeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRangeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RangeInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRangeInfo(od);
    });
  });

  unittest.group('obj-schema-RecurringTimeWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecurringTimeWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecurringTimeWindow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecurringTimeWindow(od);
    });
  });

  unittest.group('obj-schema-ReleaseChannel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseChannel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseChannel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReleaseChannel(od);
    });
  });

  unittest.group('obj-schema-ReleaseChannelConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReleaseChannelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReleaseChannelConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReleaseChannelConfig(od);
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

  unittest.group('obj-schema-ResourceLabels', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceLabels();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceLabels.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceLabels(od);
    });
  });

  unittest.group('obj-schema-ResourceLimit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceLimit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceLimit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceLimit(od);
    });
  });

  unittest.group('obj-schema-ResourceManagerTags', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceManagerTags();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceManagerTags.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceManagerTags(od);
    });
  });

  unittest.group('obj-schema-ResourceUsageExportConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUsageExportConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUsageExportConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUsageExportConfig(od);
    });
  });

  unittest.group('obj-schema-RollbackNodePoolUpgradeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRollbackNodePoolUpgradeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RollbackNodePoolUpgradeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRollbackNodePoolUpgradeRequest(od);
    });
  });

  unittest.group('obj-schema-SandboxConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSandboxConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SandboxConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSandboxConfig(od);
    });
  });

  unittest.group('obj-schema-SecurityPostureConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityPostureConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityPostureConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecurityPostureConfig(od);
    });
  });

  unittest.group('obj-schema-ServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServerConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServerConfig(od);
    });
  });

  unittest.group('obj-schema-ServiceExternalIPsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceExternalIPsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceExternalIPsConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceExternalIPsConfig(od);
    });
  });

  unittest.group('obj-schema-SetAddonsConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetAddonsConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetAddonsConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetAddonsConfigRequest(od);
    });
  });

  unittest.group('obj-schema-SetLabelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetLabelsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetLabelsRequest(od);
    });
  });

  unittest.group('obj-schema-SetLegacyAbacRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetLegacyAbacRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetLegacyAbacRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetLegacyAbacRequest(od);
    });
  });

  unittest.group('obj-schema-SetLocationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetLocationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetLocationsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetLocationsRequest(od);
    });
  });

  unittest.group('obj-schema-SetLoggingServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetLoggingServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetLoggingServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetLoggingServiceRequest(od);
    });
  });

  unittest.group('obj-schema-SetMaintenancePolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetMaintenancePolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetMaintenancePolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetMaintenancePolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SetMasterAuthRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetMasterAuthRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetMasterAuthRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetMasterAuthRequest(od);
    });
  });

  unittest.group('obj-schema-SetMonitoringServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetMonitoringServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetMonitoringServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetMonitoringServiceRequest(od);
    });
  });

  unittest.group('obj-schema-SetNetworkPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetNetworkPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetNetworkPolicyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetNetworkPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-SetNodePoolAutoscalingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetNodePoolAutoscalingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetNodePoolAutoscalingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetNodePoolAutoscalingRequest(od);
    });
  });

  unittest.group('obj-schema-SetNodePoolManagementRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetNodePoolManagementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetNodePoolManagementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetNodePoolManagementRequest(od);
    });
  });

  unittest.group('obj-schema-SetNodePoolSizeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetNodePoolSizeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetNodePoolSizeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetNodePoolSizeRequest(od);
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

  unittest.group('obj-schema-ShieldedNodes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShieldedNodes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShieldedNodes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShieldedNodes(od);
    });
  });

  unittest.group('obj-schema-SoleTenantConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoleTenantConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoleTenantConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSoleTenantConfig(od);
    });
  });

  unittest.group('obj-schema-StandardRolloutPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandardRolloutPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandardRolloutPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandardRolloutPolicy(od);
    });
  });

  unittest.group('obj-schema-StartIPRotationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartIPRotationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartIPRotationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStartIPRotationRequest(od);
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

  unittest.group('obj-schema-StatusCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatusCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatusCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusCondition(od);
    });
  });

  unittest.group('obj-schema-TimeWindow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeWindow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TimeWindow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimeWindow(od);
    });
  });

  unittest.group('obj-schema-UpdateClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateClusterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateClusterRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.UpdateInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUpdateInfo(od);
    });
  });

  unittest.group('obj-schema-UpdateMasterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateMasterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateMasterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateMasterRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateNodePoolRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateNodePoolRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateNodePoolRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateNodePoolRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeSettings(od);
    });
  });

  unittest.group('obj-schema-UsableSubnetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsableSubnetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsableSubnetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsableSubnetwork(od);
    });
  });

  unittest.group('obj-schema-UsableSubnetworkSecondaryRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsableSubnetworkSecondaryRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsableSubnetworkSecondaryRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsableSubnetworkSecondaryRange(od);
    });
  });

  unittest.group('obj-schema-VerticalPodAutoscaling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVerticalPodAutoscaling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VerticalPodAutoscaling.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVerticalPodAutoscaling(od);
    });
  });

  unittest.group('obj-schema-VirtualNIC', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualNIC();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.VirtualNIC.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVirtualNIC(od);
    });
  });

  unittest.group('obj-schema-WindowsNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWindowsNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WindowsNodeConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWindowsNodeConfig(od);
    });
  });

  unittest.group('obj-schema-WorkloadIdentityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadIdentityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadIdentityConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadIdentityConfig(od);
    });
  });

  unittest.group('obj-schema-WorkloadMetadataConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadMetadataConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadMetadataConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadMetadataConfig(od);
    });
  });

  unittest.group('obj-schema-WorkloadPolicyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkloadPolicyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkloadPolicyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkloadPolicyConfig(od);
    });
  });

  unittest.group('resource-ProjectsAggregatedUsableSubnetworksResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.aggregated.usableSubnetworks;
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
        final resp = convert.json.encode(buildListUsableSubnetworksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUsableSubnetworksResponse(
          response as api.ListUsableSubnetworksResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--getServerConfig', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getServerConfig(arg_name,
          projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields);
      checkServerConfig(response as api.ServerConfig);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersResource', () {
    unittest.test('method--checkAutopilotCompatibility', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
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
            convert.json.encode(buildCheckAutopilotCompatibilityResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.checkAutopilotCompatibility(arg_name, $fields: arg_$fields);
      checkCheckAutopilotCompatibilityResponse(
          response as api.CheckAutopilotCompatibilityResponse);
    });

    unittest.test('method--completeIpRotation', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildCompleteIPRotationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CompleteIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteIPRotationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.completeIpRotation(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildCreateClusterRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateClusterRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_name = 'foo';
      final arg_clusterId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
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
          clusterId: arg_clusterId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_name = 'foo';
      final arg_clusterId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          clusterId: arg_clusterId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--getJwks', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
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
        final resp = convert.json.encode(buildGetJSONWebKeysResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getJwks(arg_parent, $fields: arg_$fields);
      checkGetJSONWebKeysResponse(response as api.GetJSONWebKeysResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields);
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--setAddons', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetAddonsConfigRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetAddonsConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetAddonsConfigRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setAddons(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setLegacyAbac', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetLegacyAbacRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLegacyAbacRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLegacyAbacRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setLegacyAbac(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setLocations', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetLocationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLocationsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setLocations(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setLogging', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetLoggingServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLoggingServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLoggingServiceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setLogging(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMaintenancePolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetMaintenancePolicyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMaintenancePolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMaintenancePolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.setMaintenancePolicy(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMasterAuth', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetMasterAuthRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMasterAuthRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMasterAuthRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setMasterAuth(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMonitoring', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetMonitoringServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMonitoringServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMonitoringServiceRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setMonitoring(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setNetworkPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetNetworkPolicyRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNetworkPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNetworkPolicyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.setNetworkPolicy(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setResourceLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildSetLabelsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLabelsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.setResourceLabels(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startIpRotation', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildStartIPRotationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartIPRotationRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.startIpRotation(arg_request, arg_name,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildUpdateClusterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateClusterRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--updateMaster', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters;
      final arg_request = buildUpdateMasterRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateMasterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateMasterRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.updateMaster(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersNodePoolsResource', () {
    unittest.test('method--completeUpgrade', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildCompleteNodePoolUpgradeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CompleteNodePoolUpgradeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteNodePoolUpgradeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
      final response = await res.completeUpgrade(arg_request, arg_name,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildCreateNodePoolRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateNodePoolRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_name = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['nodePoolId']!.first,
          unittest.equals(arg_nodePoolId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
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
          clusterId: arg_clusterId,
          nodePoolId: arg_nodePoolId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_name = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['nodePoolId']!.first,
          unittest.equals(arg_nodePoolId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNodePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          clusterId: arg_clusterId,
          nodePoolId: arg_nodePoolId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkNodePool(response as api.NodePool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_parent = 'foo';
      final arg_clusterId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['clusterId']!.first,
          unittest.equals(arg_clusterId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNodePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          clusterId: arg_clusterId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkListNodePoolsResponse(response as api.ListNodePoolsResponse);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildRollbackNodePoolUpgradeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackNodePoolUpgradeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackNodePoolUpgradeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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

    unittest.test('method--setAutoscaling', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildSetNodePoolAutoscalingRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolAutoscalingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolAutoscalingRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setAutoscaling(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setManagement', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildSetNodePoolManagementRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolManagementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolManagementRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setManagement(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setSize', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildSetNodePoolSizeRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolSizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolSizeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.setSize(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.nodePools;
      final arg_request = buildUpdateNodePoolRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateNodePoolRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
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
          await res.update(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsClustersWellKnownResource', () {
    unittest.test('method--getOpenidConfiguration', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.clusters.wellKnown;
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
        final resp = convert.json.encode(buildGetOpenIDConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getOpenidConfiguration(arg_parent, $fields: arg_$fields);
      checkGetOpenIDConfigResponse(response as api.GetOpenIDConfigResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.operations;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_operationId = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['operationId']!.first,
          unittest.equals(arg_operationId),
        );
        unittest.expect(
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
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
      final response = await res.get(arg_name,
          operationId: arg_operationId,
          projectId: arg_projectId,
          zone: arg_zone,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.locations.operations;
      final arg_parent = 'foo';
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          queryMap['projectId']!.first,
          unittest.equals(arg_projectId),
        );
        unittest.expect(
          queryMap['zone']!.first,
          unittest.equals(arg_zone),
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
      final response = await res.list(arg_parent,
          projectId: arg_projectId, zone: arg_zone, $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsZonesResource', () {
    unittest.test('method--getServerconfig', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/serverconfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/serverconfig'),
        );
        pathOffset += 13;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildServerConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getServerconfig(arg_projectId, arg_zone,
          name: arg_name, $fields: arg_$fields);
      checkServerConfig(response as api.ServerConfig);
    });
  });

  unittest.group('resource-ProjectsZonesClustersResource', () {
    unittest.test('method--addons', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetAddonsConfigRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetAddonsConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetAddonsConfigRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/addons', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/addons'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.addons(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--completeIpRotation', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildCompleteIPRotationRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CompleteIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCompleteIPRotationRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':completeIpRotation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals(':completeIpRotation'),
        );
        pathOffset += 19;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.completeIpRotation(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildCreateClusterRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateClusterRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.create(arg_request, arg_projectId, arg_zone,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.delete(arg_projectId, arg_zone, arg_clusterId,
          name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCluster());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_zone, arg_clusterId,
          name: arg_name, $fields: arg_$fields);
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--legacyAbac', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetLegacyAbacRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLegacyAbacRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLegacyAbacRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/legacyAbac', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/legacyAbac'),
        );
        pathOffset += 11;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.legacyAbac(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/clusters'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListClustersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_zone,
          parent: arg_parent, $fields: arg_$fields);
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--locations', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetLocationsRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLocationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLocationsRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/locations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/locations'),
        );
        pathOffset += 10;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.locations(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--logging', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetLoggingServiceRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLoggingServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLoggingServiceRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/logging', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/logging'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.logging(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--master', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildUpdateMasterRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateMasterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateMasterRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/master', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/master'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.master(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--monitoring', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetMonitoringServiceRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMonitoringServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMonitoringServiceRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/monitoring', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/monitoring'),
        );
        pathOffset += 11;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.monitoring(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resourceLabels', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetLabelsRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetLabelsRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/resourceLabels', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/resourceLabels'),
        );
        pathOffset += 15;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.resourceLabels(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMaintenancePolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetMaintenancePolicyRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMaintenancePolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMaintenancePolicyRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':setMaintenancePolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals(':setMaintenancePolicy'),
        );
        pathOffset += 21;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.setMaintenancePolicy(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setMasterAuth', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetMasterAuthRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetMasterAuthRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetMasterAuthRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':setMasterAuth', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals(':setMasterAuth'),
        );
        pathOffset += 14;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.setMasterAuth(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setNetworkPolicy', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildSetNetworkPolicyRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNetworkPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNetworkPolicyRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':setNetworkPolicy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals(':setNetworkPolicy'),
        );
        pathOffset += 17;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.setNetworkPolicy(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--startIpRotation', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildStartIPRotationRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.StartIPRotationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkStartIPRotationRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf(':startIpRotation', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals(':startIpRotation'),
        );
        pathOffset += 16;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.startIpRotation(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters;
      final arg_request = buildUpdateClusterRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateClusterRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.update(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsZonesClustersNodePoolsResource', () {
    unittest.test('method--autoscaling', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildSetNodePoolAutoscalingRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolAutoscalingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolAutoscalingRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf('/autoscaling', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/autoscaling'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.autoscaling(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildCreateNodePoolRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateNodePoolRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/nodePools'),
        );
        pathOffset += 10;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.create(
          arg_request, arg_projectId, arg_zone, arg_clusterId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.delete(
          arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildNodePool());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          name: arg_name, $fields: arg_$fields);
      checkNodePool(response as api.NodePool);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/nodePools'),
        );
        pathOffset += 10;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListNodePoolsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_zone, arg_clusterId,
          parent: arg_parent, $fields: arg_$fields);
      checkListNodePoolsResponse(response as api.ListNodePoolsResponse);
    });

    unittest.test('method--rollback', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildRollbackNodePoolUpgradeRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RollbackNodePoolUpgradeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRollbackNodePoolUpgradeRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf(':rollback', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':rollback'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.rollback(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setManagement', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildSetNodePoolManagementRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolManagementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolManagementRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf('/setManagement', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/setManagement'),
        );
        pathOffset += 14;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.setManagement(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setSize', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildSetNodePoolSizeRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SetNodePoolSizeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSetNodePoolSizeRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf('/setSize', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/setSize'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.setSize(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.clusters.nodePools;
      final arg_request = buildUpdateNodePoolRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_clusterId = 'foo';
      final arg_nodePoolId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.UpdateNodePoolRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUpdateNodePoolRequest(obj);

        final path = req.url.path;
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
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/clusters/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/clusters/'),
        );
        pathOffset += 10;
        index = path.indexOf('/nodePools/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_clusterId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/nodePools/'),
        );
        pathOffset += 11;
        index = path.indexOf('/update', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_nodePoolId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/update'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.update(
          arg_request, arg_projectId, arg_zone, arg_clusterId, arg_nodePoolId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsZonesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_operationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/operations/'),
        );
        pathOffset += 12;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':cancel'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      final response = await res.cancel(
          arg_request, arg_projectId, arg_zone, arg_operationId,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.operations;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
      final arg_operationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/operations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/operations/'),
        );
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_operationId'),
        );

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
      final response = await res.get(arg_projectId, arg_zone, arg_operationId,
          name: arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.ContainerApi(mock).projects.zones.operations;
      final arg_projectId = 'foo';
      final arg_zone = 'foo';
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/projects/'),
        );
        pathOffset += 12;
        index = path.indexOf('/zones/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/zones/'),
        );
        pathOffset += 7;
        index = path.indexOf('/operations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zone'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/operations'),
        );
        pathOffset += 11;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['parent']!.first,
          unittest.equals(arg_parent),
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
      final response = await res.list(arg_projectId, arg_zone,
          parent: arg_parent, $fields: arg_$fields);
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });
}
