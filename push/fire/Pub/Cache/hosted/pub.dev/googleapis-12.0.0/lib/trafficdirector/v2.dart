// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations

/// Traffic Director API - v2
///
/// For more information, see <https://cloud.google.com/traffic-director>
///
/// Create an instance of [TrafficDirectorServiceApi] to access these resources:
///
/// - [DiscoveryResource]
library trafficdirector_v2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class TrafficDirectorServiceApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  DiscoveryResource get discovery => DiscoveryResource(_requester);

  TrafficDirectorServiceApi(http.Client client,
      {core.String rootUrl = 'https://trafficdirector.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DiscoveryResource {
  final commons.ApiRequester _requester;

  DiscoveryResource(commons.ApiRequester client) : _requester = client;

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientStatusResponse> clientStatus(
    ClientStatusRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v2/discovery:client_status';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ClientStatusResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Addresses specify either a logical or physical address and port, which are
/// used to tell Envoy where to bind/listen, connect to upstream and find
/// management servers.
class Address {
  Pipe? pipe;
  SocketAddress? socketAddress;

  Address({
    this.pipe,
    this.socketAddress,
  });

  Address.fromJson(core.Map json_)
      : this(
          pipe: json_.containsKey('pipe')
              ? Pipe.fromJson(
                  json_['pipe'] as core.Map<core.String, core.dynamic>)
              : null,
          socketAddress: json_.containsKey('socketAddress')
              ? SocketAddress.fromJson(
                  json_['socketAddress'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pipe != null) 'pipe': pipe!,
        if (socketAddress != null) 'socketAddress': socketAddress!,
      };
}

/// BuildVersion combines SemVer version of extension with free-form build
/// information (i.e. 'alpha', 'private-build') as a set of strings.
class BuildVersion {
  /// Free-form build information.
  ///
  /// Envoy defines several well known keys in the
  /// source/common/version/version.h file
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// SemVer version of extension.
  SemanticVersion? version;

  BuildVersion({
    this.metadata,
    this.version,
  });

  BuildVersion.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          version: json_.containsKey('version')
              ? SemanticVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (version != null) 'version': version!,
      };
}

/// All xds configs for a particular client.
class ClientConfig {
  /// Node for a particular client.
  Node? node;
  core.List<PerXdsConfig>? xdsConfig;

  ClientConfig({
    this.node,
    this.xdsConfig,
  });

  ClientConfig.fromJson(core.Map json_)
      : this(
          node: json_.containsKey('node')
              ? Node.fromJson(
                  json_['node'] as core.Map<core.String, core.dynamic>)
              : null,
          xdsConfig: json_.containsKey('xdsConfig')
              ? (json_['xdsConfig'] as core.List)
                  .map((value) => PerXdsConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (node != null) 'node': node!,
        if (xdsConfig != null) 'xdsConfig': xdsConfig!,
      };
}

/// Request for client status of clients identified by a list of NodeMatchers.
class ClientStatusRequest {
  /// Management server can use these match criteria to identify clients.
  ///
  /// The match follows OR semantics.
  core.List<NodeMatcher>? nodeMatchers;

  ClientStatusRequest({
    this.nodeMatchers,
  });

  ClientStatusRequest.fromJson(core.Map json_)
      : this(
          nodeMatchers: json_.containsKey('nodeMatchers')
              ? (json_['nodeMatchers'] as core.List)
                  .map((value) => NodeMatcher.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeMatchers != null) 'nodeMatchers': nodeMatchers!,
      };
}

class ClientStatusResponse {
  /// Client configs for the clients specified in the ClientStatusRequest.
  core.List<ClientConfig>? config;

  ClientStatusResponse({
    this.config,
  });

  ClientStatusResponse.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? (json_['config'] as core.List)
                  .map((value) => ClientConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
      };
}

/// Envoy's cluster manager fills this message with all currently known
/// clusters.
///
/// Cluster configuration information can be used to recreate an Envoy
/// configuration by populating all clusters as static clusters or by returning
/// them in a CDS response.
class ClustersConfigDump {
  /// The dynamically loaded active clusters.
  ///
  /// These are clusters that are available to service data plane traffic.
  core.List<DynamicCluster>? dynamicActiveClusters;

  /// The dynamically loaded warming clusters.
  ///
  /// These are clusters that are currently undergoing warming in preparation to
  /// service data plane traffic. Note that if attempting to recreate an Envoy
  /// configuration from a configuration dump, the warming clusters should
  /// generally be discarded.
  core.List<DynamicCluster>? dynamicWarmingClusters;

  /// The statically loaded cluster configs.
  core.List<StaticCluster>? staticClusters;

  /// This is the :ref:`version_info ` in the last processed CDS discovery
  /// response.
  ///
  /// If there are only static bootstrap clusters, this field will be "".
  core.String? versionInfo;

  ClustersConfigDump({
    this.dynamicActiveClusters,
    this.dynamicWarmingClusters,
    this.staticClusters,
    this.versionInfo,
  });

  ClustersConfigDump.fromJson(core.Map json_)
      : this(
          dynamicActiveClusters: json_.containsKey('dynamicActiveClusters')
              ? (json_['dynamicActiveClusters'] as core.List)
                  .map((value) => DynamicCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dynamicWarmingClusters: json_.containsKey('dynamicWarmingClusters')
              ? (json_['dynamicWarmingClusters'] as core.List)
                  .map((value) => DynamicCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          staticClusters: json_.containsKey('staticClusters')
              ? (json_['staticClusters'] as core.List)
                  .map((value) => StaticCluster.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          versionInfo: json_.containsKey('versionInfo')
              ? json_['versionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicActiveClusters != null)
          'dynamicActiveClusters': dynamicActiveClusters!,
        if (dynamicWarmingClusters != null)
          'dynamicWarmingClusters': dynamicWarmingClusters!,
        if (staticClusters != null) 'staticClusters': staticClusters!,
        if (versionInfo != null) 'versionInfo': versionInfo!,
      };
}

/// Specifies the way to match a double value.
class DoubleMatcher {
  /// If specified, the input double value must be equal to the value specified
  /// here.
  core.double? exact;

  /// If specified, the input double value must be in the range specified here.
  ///
  /// Note: The range is using half-open interval semantics \[start, end).
  DoubleRange? range;

  DoubleMatcher({
    this.exact,
    this.range,
  });

  DoubleMatcher.fromJson(core.Map json_)
      : this(
          exact: json_.containsKey('exact')
              ? (json_['exact'] as core.num).toDouble()
              : null,
          range: json_.containsKey('range')
              ? DoubleRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exact != null) 'exact': exact!,
        if (range != null) 'range': range!,
      };
}

/// Specifies the double start and end of the range using half-open interval
/// semantics \[start, end).
typedef DoubleRange = $DoubleRange;

/// Describes a dynamically loaded cluster via the CDS API.
class DynamicCluster {
  /// The cluster config.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? cluster;

  /// The timestamp when the Cluster was last updated.
  core.String? lastUpdated;

  /// This is the per-resource version information.
  ///
  /// This version is currently taken from the :ref:`version_info ` field at the
  /// time that the cluster was loaded. In the future, discrete per-cluster
  /// versions may be supported by the API.
  core.String? versionInfo;

  DynamicCluster({
    this.cluster,
    this.lastUpdated,
    this.versionInfo,
  });

  DynamicCluster.fromJson(core.Map json_)
      : this(
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.Map<core.String, core.dynamic>
              : null,
          lastUpdated: json_.containsKey('lastUpdated')
              ? json_['lastUpdated'] as core.String
              : null,
          versionInfo: json_.containsKey('versionInfo')
              ? json_['versionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
        if (lastUpdated != null) 'lastUpdated': lastUpdated!,
        if (versionInfo != null) 'versionInfo': versionInfo!,
      };
}

/// Describes a dynamically loaded listener via the LDS API.
///
/// \[#next-free-field: 6\]
class DynamicListener {
  /// The listener state for any active listener by this name.
  ///
  /// These are listeners that are available to service data plane traffic.
  DynamicListenerState? activeState;

  /// The listener state for any draining listener by this name.
  ///
  /// These are listeners that are currently undergoing draining in preparation
  /// to stop servicing data plane traffic. Note that if attempting to recreate
  /// an Envoy configuration from a configuration dump, the draining listeners
  /// should generally be discarded.
  DynamicListenerState? drainingState;

  /// Set if the last update failed, cleared after the next successful update.
  UpdateFailureState? errorState;

  /// The name or unique id of this listener, pulled from the
  /// DynamicListenerState config.
  core.String? name;

  /// The listener state for any warming listener by this name.
  ///
  /// These are listeners that are currently undergoing warming in preparation
  /// to service data plane traffic. Note that if attempting to recreate an
  /// Envoy configuration from a configuration dump, the warming listeners
  /// should generally be discarded.
  DynamicListenerState? warmingState;

  DynamicListener({
    this.activeState,
    this.drainingState,
    this.errorState,
    this.name,
    this.warmingState,
  });

  DynamicListener.fromJson(core.Map json_)
      : this(
          activeState: json_.containsKey('activeState')
              ? DynamicListenerState.fromJson(
                  json_['activeState'] as core.Map<core.String, core.dynamic>)
              : null,
          drainingState: json_.containsKey('drainingState')
              ? DynamicListenerState.fromJson(
                  json_['drainingState'] as core.Map<core.String, core.dynamic>)
              : null,
          errorState: json_.containsKey('errorState')
              ? UpdateFailureState.fromJson(
                  json_['errorState'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          warmingState: json_.containsKey('warmingState')
              ? DynamicListenerState.fromJson(
                  json_['warmingState'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeState != null) 'activeState': activeState!,
        if (drainingState != null) 'drainingState': drainingState!,
        if (errorState != null) 'errorState': errorState!,
        if (name != null) 'name': name!,
        if (warmingState != null) 'warmingState': warmingState!,
      };
}

typedef DynamicListenerState = $DynamicListenerState;

class DynamicRouteConfig {
  /// The timestamp when the Route was last updated.
  core.String? lastUpdated;

  /// The route config.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? routeConfig;

  /// This is the per-resource version information.
  ///
  /// This version is currently taken from the :ref:`version_info ` field at the
  /// time that the route configuration was loaded.
  core.String? versionInfo;

  DynamicRouteConfig({
    this.lastUpdated,
    this.routeConfig,
    this.versionInfo,
  });

  DynamicRouteConfig.fromJson(core.Map json_)
      : this(
          lastUpdated: json_.containsKey('lastUpdated')
              ? json_['lastUpdated'] as core.String
              : null,
          routeConfig: json_.containsKey('routeConfig')
              ? json_['routeConfig'] as core.Map<core.String, core.dynamic>
              : null,
          versionInfo: json_.containsKey('versionInfo')
              ? json_['versionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastUpdated != null) 'lastUpdated': lastUpdated!,
        if (routeConfig != null) 'routeConfig': routeConfig!,
        if (versionInfo != null) 'versionInfo': versionInfo!,
      };
}

class DynamicScopedRouteConfigs {
  /// The timestamp when the scoped route config set was last updated.
  core.String? lastUpdated;

  /// The name assigned to the scoped route configurations.
  core.String? name;

  /// The scoped route configurations.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? scopedRouteConfigs;

  /// This is the per-resource version information.
  ///
  /// This version is currently taken from the :ref:`version_info ` field at the
  /// time that the scoped routes configuration was loaded.
  core.String? versionInfo;

  DynamicScopedRouteConfigs({
    this.lastUpdated,
    this.name,
    this.scopedRouteConfigs,
    this.versionInfo,
  });

  DynamicScopedRouteConfigs.fromJson(core.Map json_)
      : this(
          lastUpdated: json_.containsKey('lastUpdated')
              ? json_['lastUpdated'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          scopedRouteConfigs: json_.containsKey('scopedRouteConfigs')
              ? (json_['scopedRouteConfigs'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
          versionInfo: json_.containsKey('versionInfo')
              ? json_['versionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastUpdated != null) 'lastUpdated': lastUpdated!,
        if (name != null) 'name': name!,
        if (scopedRouteConfigs != null)
          'scopedRouteConfigs': scopedRouteConfigs!,
        if (versionInfo != null) 'versionInfo': versionInfo!,
      };
}

/// Version and identification for an Envoy extension.
///
/// \[#next-free-field: 6\]
class Extension {
  /// Category of the extension.
  ///
  /// Extension category names use reverse DNS notation. For instance
  /// "envoy.filters.listener" for Envoy's built-in listener filters or
  /// "com.acme.filters.http" for HTTP filters from acme.com vendor. \[#comment:
  core.String? category;

  /// Indicates that the extension is present but was disabled via dynamic
  /// configuration.
  core.bool? disabled;

  /// This is the name of the Envoy filter as specified in the Envoy
  /// configuration, e.g. envoy.filters.http.router, com.acme.widget.
  core.String? name;

  /// \[#not-implemented-hide:\] Type descriptor of extension configuration
  /// proto.
  ///
  /// \[#comment:
  core.String? typeDescriptor;

  /// The version is a property of the extension and maintained independently of
  /// other extensions and the Envoy API.
  ///
  /// This field is not set when extension did not provide version information.
  BuildVersion? version;

  Extension({
    this.category,
    this.disabled,
    this.name,
    this.typeDescriptor,
    this.version,
  });

  Extension.fromJson(core.Map json_)
      : this(
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          typeDescriptor: json_.containsKey('typeDescriptor')
              ? json_['typeDescriptor'] as core.String
              : null,
          version: json_.containsKey('version')
              ? BuildVersion.fromJson(
                  json_['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (disabled != null) 'disabled': disabled!,
        if (name != null) 'name': name!,
        if (typeDescriptor != null) 'typeDescriptor': typeDescriptor!,
        if (version != null) 'version': version!,
      };
}

/// Google's `RE2 `_ regex engine.
///
/// The regex string must adhere to the documented `syntax `_. The engine is
/// designed to complete execution in linear time as well as limit the amount of
/// memory used. Envoy supports program size checking via runtime. The runtime
/// keys ``re2.max_program_size.error_level`` and
/// ``re2.max_program_size.warn_level`` can be set to integers as the maximum
/// program size or complexity that a compiled regex can have before an
/// exception is thrown or a warning is logged, respectively.
/// ``re2.max_program_size.error_level`` defaults to 100, and
/// ``re2.max_program_size.warn_level`` has no default if unset (will not
/// check/log a warning). Envoy emits two stats for tracking the program size of
/// regexes: the histogram `re2.program_size`, which records the program size,
/// and the counter `re2.exceeded_warn_level`, which is incremented each time
/// the program size exceeds the warn level threshold.
class GoogleRE2 {
  /// This field controls the RE2 "program size" which is a rough estimate of
  /// how complex a compiled regex is to evaluate.
  ///
  /// A regex that has a program size greater than the configured value will
  /// fail to compile. In this case, the configured max program size can be
  /// increased or the regex can be simplified. If not specified, the default is
  /// 100. This field is deprecated; regexp validation should be performed on
  /// the management server instead of being done by each individual client.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? maxProgramSize;

  GoogleRE2({
    this.maxProgramSize,
  });

  GoogleRE2.fromJson(core.Map json_)
      : this(
          maxProgramSize: json_.containsKey('maxProgramSize')
              ? json_['maxProgramSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxProgramSize != null) 'maxProgramSize': maxProgramSize!,
      };
}

typedef InlineScopedRouteConfigs = $InlineScopedRouteConfigs;

/// Specifies the way to match a list value.
class ListMatcher {
  /// If specified, at least one of the values in the list must match the value
  /// specified.
  ValueMatcher? oneOf;

  ListMatcher({
    this.oneOf,
  });

  ListMatcher.fromJson(core.Map json_)
      : this(
          oneOf: json_.containsKey('oneOf')
              ? ValueMatcher.fromJson(
                  json_['oneOf'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oneOf != null) 'oneOf': oneOf!,
      };
}

/// Envoy's listener manager fills this message with all currently known
/// listeners.
///
/// Listener configuration information can be used to recreate an Envoy
/// configuration by populating all listeners as static listeners or by
/// returning them in a LDS response.
class ListenersConfigDump {
  /// State for any warming, active, or draining listeners.
  core.List<DynamicListener>? dynamicListeners;

  /// The statically loaded listener configs.
  core.List<StaticListener>? staticListeners;

  /// This is the :ref:`version_info ` in the last processed LDS discovery
  /// response.
  ///
  /// If there are only static bootstrap listeners, this field will be "".
  core.String? versionInfo;

  ListenersConfigDump({
    this.dynamicListeners,
    this.staticListeners,
    this.versionInfo,
  });

  ListenersConfigDump.fromJson(core.Map json_)
      : this(
          dynamicListeners: json_.containsKey('dynamicListeners')
              ? (json_['dynamicListeners'] as core.List)
                  .map((value) => DynamicListener.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          staticListeners: json_.containsKey('staticListeners')
              ? (json_['staticListeners'] as core.List)
                  .map((value) => StaticListener.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          versionInfo: json_.containsKey('versionInfo')
              ? json_['versionInfo'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicListeners != null) 'dynamicListeners': dynamicListeners!,
        if (staticListeners != null) 'staticListeners': staticListeners!,
        if (versionInfo != null) 'versionInfo': versionInfo!,
      };
}

/// Identifies location of where either Envoy runs or where upstream hosts run.
typedef Locality = $Locality;

/// Identifies a specific Envoy instance.
///
/// The node identifier is presented to the management server, which may use
/// this identifier to distinguish per Envoy configuration for serving.
/// \[#next-free-field: 12\]
class Node {
  /// This is motivated by informing a management server during canary which
  /// version of Envoy is being tested in a heterogeneous fleet.
  ///
  /// This will be set by Envoy in management server RPCs. This field is
  /// deprecated in favor of the user_agent_name and user_agent_version values.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? buildVersion;

  /// Client feature support list.
  ///
  /// These are well known features described in the Envoy API repository for a
  /// given major version of an API. Client features use reverse DNS naming
  /// scheme, for example `com.acme.feature`. See :ref:`the list of features `
  /// that xDS client may support.
  core.List<core.String>? clientFeatures;

  /// Defines the local service cluster name where Envoy is running.
  ///
  /// Though optional, it should be set if any of the following features are
  /// used: :ref:`statsd `, :ref:`health check cluster verification `,
  /// :ref:`runtime override directory `, :ref:`user agent addition `,
  /// :ref:`HTTP global rate limiting `, :ref:`CDS `, and :ref:`HTTP tracing `,
  /// either in this message or via :option:`--service-cluster`.
  core.String? cluster;

  /// List of extensions and their versions supported by the node.
  core.List<Extension>? extensions;

  /// An opaque node identifier for the Envoy node.
  ///
  /// This also provides the local service node name. It should be set if any of
  /// the following features are used: :ref:`statsd `, :ref:`CDS `, and
  /// :ref:`HTTP tracing `, either in this message or via
  /// :option:`--service-node`.
  core.String? id;

  /// Known listening ports on the node as a generic hint to the management
  /// server for filtering :ref:`listeners ` to be returned.
  ///
  /// For example, if there is a listener bound to port 80, the list can
  /// optionally contain the SocketAddress `(0.0.0.0,80)`. The field is optional
  /// and just a hint.
  core.List<Address>? listeningAddresses;

  /// Locality specifying where the Envoy instance is running.
  Locality? locality;

  /// Opaque metadata extending the node identifier.
  ///
  /// Envoy will pass this directly to the management server.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Structured version of the entity requesting config.
  BuildVersion? userAgentBuildVersion;

  /// Free-form string that identifies the entity requesting config.
  ///
  /// E.g. "envoy" or "grpc"
  core.String? userAgentName;

  /// Free-form string that identifies the version of the entity requesting
  /// config.
  ///
  /// E.g. "1.12.2" or "abcd1234", or "SpecialEnvoyBuild"
  core.String? userAgentVersion;

  Node({
    this.buildVersion,
    this.clientFeatures,
    this.cluster,
    this.extensions,
    this.id,
    this.listeningAddresses,
    this.locality,
    this.metadata,
    this.userAgentBuildVersion,
    this.userAgentName,
    this.userAgentVersion,
  });

  Node.fromJson(core.Map json_)
      : this(
          buildVersion: json_.containsKey('buildVersion')
              ? json_['buildVersion'] as core.String
              : null,
          clientFeatures: json_.containsKey('clientFeatures')
              ? (json_['clientFeatures'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.String
              : null,
          extensions: json_.containsKey('extensions')
              ? (json_['extensions'] as core.List)
                  .map((value) => Extension.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          listeningAddresses: json_.containsKey('listeningAddresses')
              ? (json_['listeningAddresses'] as core.List)
                  .map((value) => Address.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locality: json_.containsKey('locality')
              ? Locality.fromJson(
                  json_['locality'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          userAgentBuildVersion: json_.containsKey('userAgentBuildVersion')
              ? BuildVersion.fromJson(json_['userAgentBuildVersion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userAgentName: json_.containsKey('userAgentName')
              ? json_['userAgentName'] as core.String
              : null,
          userAgentVersion: json_.containsKey('userAgentVersion')
              ? json_['userAgentVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buildVersion != null) 'buildVersion': buildVersion!,
        if (clientFeatures != null) 'clientFeatures': clientFeatures!,
        if (cluster != null) 'cluster': cluster!,
        if (extensions != null) 'extensions': extensions!,
        if (id != null) 'id': id!,
        if (listeningAddresses != null)
          'listeningAddresses': listeningAddresses!,
        if (locality != null) 'locality': locality!,
        if (metadata != null) 'metadata': metadata!,
        if (userAgentBuildVersion != null)
          'userAgentBuildVersion': userAgentBuildVersion!,
        if (userAgentName != null) 'userAgentName': userAgentName!,
        if (userAgentVersion != null) 'userAgentVersion': userAgentVersion!,
      };
}

/// Specifies the way to match a Node.
///
/// The match follows AND semantics.
class NodeMatcher {
  /// Specifies match criteria on the node id.
  StringMatcher? nodeId;

  /// Specifies match criteria on the node metadata.
  core.List<StructMatcher>? nodeMetadatas;

  NodeMatcher({
    this.nodeId,
    this.nodeMetadatas,
  });

  NodeMatcher.fromJson(core.Map json_)
      : this(
          nodeId: json_.containsKey('nodeId')
              ? StringMatcher.fromJson(
                  json_['nodeId'] as core.Map<core.String, core.dynamic>)
              : null,
          nodeMetadatas: json_.containsKey('nodeMetadatas')
              ? (json_['nodeMetadatas'] as core.List)
                  .map((value) => StructMatcher.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nodeId != null) 'nodeId': nodeId!,
        if (nodeMetadatas != null) 'nodeMetadatas': nodeMetadatas!,
      };
}

/// NullMatch is an empty message to specify a null value.
typedef NullMatch = $Empty;

/// Specifies the segment in a path to retrieve value from Struct.
typedef PathSegment = $PathSegment;

/// Detailed config (per xDS) with status.
///
/// \[#next-free-field: 6\]
class PerXdsConfig {
  ClustersConfigDump? clusterConfig;
  ListenersConfigDump? listenerConfig;
  RoutesConfigDump? routeConfig;
  ScopedRoutesConfigDump? scopedRouteConfig;

  ///
  /// Possible string values are:
  /// - "UNKNOWN" : Status info is not available/unknown.
  /// - "SYNCED" : Management server has sent the config to client and received
  /// ACK.
  /// - "NOT_SENT" : Config is not sent.
  /// - "STALE" : Management server has sent the config to client but hasn’t
  /// received ACK/NACK.
  /// - "ERROR" : Management server has sent the config to client but received
  /// NACK.
  core.String? status;

  PerXdsConfig({
    this.clusterConfig,
    this.listenerConfig,
    this.routeConfig,
    this.scopedRouteConfig,
    this.status,
  });

  PerXdsConfig.fromJson(core.Map json_)
      : this(
          clusterConfig: json_.containsKey('clusterConfig')
              ? ClustersConfigDump.fromJson(
                  json_['clusterConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          listenerConfig: json_.containsKey('listenerConfig')
              ? ListenersConfigDump.fromJson(json_['listenerConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          routeConfig: json_.containsKey('routeConfig')
              ? RoutesConfigDump.fromJson(
                  json_['routeConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          scopedRouteConfig: json_.containsKey('scopedRouteConfig')
              ? ScopedRoutesConfigDump.fromJson(json_['scopedRouteConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterConfig != null) 'clusterConfig': clusterConfig!,
        if (listenerConfig != null) 'listenerConfig': listenerConfig!,
        if (routeConfig != null) 'routeConfig': routeConfig!,
        if (scopedRouteConfig != null) 'scopedRouteConfig': scopedRouteConfig!,
        if (status != null) 'status': status!,
      };
}

typedef Pipe = $Pipe;

/// A regex matcher designed for safety when used with untrusted input.
class RegexMatcher {
  /// Google's RE2 regex engine.
  GoogleRE2? googleRe2;

  /// The regex match string.
  ///
  /// The string must be supported by the configured engine.
  core.String? regex;

  RegexMatcher({
    this.googleRe2,
    this.regex,
  });

  RegexMatcher.fromJson(core.Map json_)
      : this(
          googleRe2: json_.containsKey('googleRe2')
              ? GoogleRE2.fromJson(
                  json_['googleRe2'] as core.Map<core.String, core.dynamic>)
              : null,
          regex:
              json_.containsKey('regex') ? json_['regex'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleRe2 != null) 'googleRe2': googleRe2!,
        if (regex != null) 'regex': regex!,
      };
}

/// Envoy's RDS implementation fills this message with all currently loaded
/// routes, as described by their RouteConfiguration objects.
///
/// Static routes that are either defined in the bootstrap configuration or
/// defined inline while configuring listeners are separated from those
/// configured dynamically via RDS. Route configuration information can be used
/// to recreate an Envoy configuration by populating all routes as static routes
/// or by returning them in RDS responses.
class RoutesConfigDump {
  /// The dynamically loaded route configs.
  core.List<DynamicRouteConfig>? dynamicRouteConfigs;

  /// The statically loaded route configs.
  core.List<StaticRouteConfig>? staticRouteConfigs;

  RoutesConfigDump({
    this.dynamicRouteConfigs,
    this.staticRouteConfigs,
  });

  RoutesConfigDump.fromJson(core.Map json_)
      : this(
          dynamicRouteConfigs: json_.containsKey('dynamicRouteConfigs')
              ? (json_['dynamicRouteConfigs'] as core.List)
                  .map((value) => DynamicRouteConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          staticRouteConfigs: json_.containsKey('staticRouteConfigs')
              ? (json_['staticRouteConfigs'] as core.List)
                  .map((value) => StaticRouteConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicRouteConfigs != null)
          'dynamicRouteConfigs': dynamicRouteConfigs!,
        if (staticRouteConfigs != null)
          'staticRouteConfigs': staticRouteConfigs!,
      };
}

/// Envoy's scoped RDS implementation fills this message with all currently
/// loaded route configuration scopes (defined via ScopedRouteConfigurationsSet
/// protos).
///
/// This message lists both the scopes defined inline with the higher order
/// object (i.e., the HttpConnectionManager) and the dynamically obtained scopes
/// via the SRDS API.
class ScopedRoutesConfigDump {
  /// The dynamically loaded scoped route configs.
  core.List<DynamicScopedRouteConfigs>? dynamicScopedRouteConfigs;

  /// The statically loaded scoped route configs.
  core.List<InlineScopedRouteConfigs>? inlineScopedRouteConfigs;

  ScopedRoutesConfigDump({
    this.dynamicScopedRouteConfigs,
    this.inlineScopedRouteConfigs,
  });

  ScopedRoutesConfigDump.fromJson(core.Map json_)
      : this(
          dynamicScopedRouteConfigs:
              json_.containsKey('dynamicScopedRouteConfigs')
                  ? (json_['dynamicScopedRouteConfigs'] as core.List)
                      .map((value) => DynamicScopedRouteConfigs.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          inlineScopedRouteConfigs:
              json_.containsKey('inlineScopedRouteConfigs')
                  ? (json_['inlineScopedRouteConfigs'] as core.List)
                      .map((value) => InlineScopedRouteConfigs.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicScopedRouteConfigs != null)
          'dynamicScopedRouteConfigs': dynamicScopedRouteConfigs!,
        if (inlineScopedRouteConfigs != null)
          'inlineScopedRouteConfigs': inlineScopedRouteConfigs!,
      };
}

/// Envoy uses SemVer (https://semver.org/).
///
/// Major/minor versions indicate expected behaviors and APIs, the patch version
/// field is used only for security fixes and can be generally ignored.
typedef SemanticVersion = $SemanticVersion;

/// \[#next-free-field: 7\]
class SocketAddress {
  /// The address for this socket.
  ///
  /// :ref:`Listeners ` will bind to the address. An empty address is not
  /// allowed. Specify ``0.0.0.0`` or ``::`` to bind to any address.
  /// \[#comment:TODO(zuercher) reinstate when implemented: It is possible to
  /// distinguish a Listener address via the prefix/suffix matching in
  /// :ref:`FilterChainMatch `.\] When used within an upstream :ref:`BindConfig
  /// `, the address controls the source address of outbound connections. For
  /// :ref:`clusters `, the cluster type determines whether the address must be
  /// an IP (*STATIC* or *EDS* clusters) or a hostname resolved by DNS
  /// (*STRICT_DNS* or *LOGICAL_DNS* clusters). Address resolution can be
  /// customized via :ref:`resolver_name `.
  core.String? address;

  /// When binding to an IPv6 address above, this enables `IPv4 compatibility
  /// `_.
  ///
  /// Binding to ``::`` will allow both IPv4 and IPv6 connections, with peer
  /// IPv4 addresses mapped into IPv6 space as ``::FFFF:``.
  core.bool? ipv4Compat;

  /// This is only valid if :ref:`resolver_name ` is specified below and the
  /// named resolver is capable of named port resolution.
  core.String? namedPort;
  core.int? portValue;

  ///
  /// Possible string values are:
  /// - "TCP"
  /// - "UDP"
  core.String? protocol;

  /// The name of the custom resolver.
  ///
  /// This must have been registered with Envoy. If this is empty, a context
  /// dependent default applies. If the address is a concrete IP address, no
  /// resolution will occur. If address is a hostname this should be set for
  /// resolution other than DNS. Specifying a custom resolver with *STRICT_DNS*
  /// or *LOGICAL_DNS* will generate an error at runtime.
  core.String? resolverName;

  SocketAddress({
    this.address,
    this.ipv4Compat,
    this.namedPort,
    this.portValue,
    this.protocol,
    this.resolverName,
  });

  SocketAddress.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          ipv4Compat: json_.containsKey('ipv4Compat')
              ? json_['ipv4Compat'] as core.bool
              : null,
          namedPort: json_.containsKey('namedPort')
              ? json_['namedPort'] as core.String
              : null,
          portValue: json_.containsKey('portValue')
              ? json_['portValue'] as core.int
              : null,
          protocol: json_.containsKey('protocol')
              ? json_['protocol'] as core.String
              : null,
          resolverName: json_.containsKey('resolverName')
              ? json_['resolverName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (ipv4Compat != null) 'ipv4Compat': ipv4Compat!,
        if (namedPort != null) 'namedPort': namedPort!,
        if (portValue != null) 'portValue': portValue!,
        if (protocol != null) 'protocol': protocol!,
        if (resolverName != null) 'resolverName': resolverName!,
      };
}

/// Describes a statically loaded cluster.
typedef StaticCluster = $StaticCluster;

/// Describes a statically loaded listener.
typedef StaticListener = $StaticListener;
typedef StaticRouteConfig = $StaticRouteConfig;

/// Specifies the way to match a string.
///
/// \[#next-free-field: 7\]
class StringMatcher {
  /// The input string must match exactly the string specified here.
  ///
  /// Examples: * *abc* only matches the value *abc*.
  core.String? exact;

  /// If true, indicates the exact/prefix/suffix matching should be case
  /// insensitive.
  ///
  /// This has no effect for the safe_regex match. For example, the matcher
  /// *data* will match both input string *Data* and *data* if set to true.
  core.bool? ignoreCase;

  /// The input string must have the prefix specified here.
  ///
  /// Note: empty prefix is not allowed, please use regex instead. Examples: *
  /// *abc* matches the value *abc.xyz*
  core.String? prefix;

  /// The input string must match the regular expression specified here.
  ///
  /// The regex grammar is defined `here `_. Examples: * The regex ``\d{3}``
  /// matches the value *123* * The regex ``\d{3}`` does not match the value
  /// *1234* * The regex ``\d{3}`` does not match the value *123.456* ..
  /// attention:: This field has been deprecated in favor of `safe_regex` as it
  /// is not safe for use with untrusted input in all cases.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? regex;

  /// The input string must match the regular expression specified here.
  RegexMatcher? safeRegex;

  /// The input string must have the suffix specified here.
  ///
  /// Note: empty prefix is not allowed, please use regex instead. Examples: *
  /// *abc* matches the value *xyz.abc*
  core.String? suffix;

  StringMatcher({
    this.exact,
    this.ignoreCase,
    this.prefix,
    this.regex,
    this.safeRegex,
    this.suffix,
  });

  StringMatcher.fromJson(core.Map json_)
      : this(
          exact:
              json_.containsKey('exact') ? json_['exact'] as core.String : null,
          ignoreCase: json_.containsKey('ignoreCase')
              ? json_['ignoreCase'] as core.bool
              : null,
          prefix: json_.containsKey('prefix')
              ? json_['prefix'] as core.String
              : null,
          regex:
              json_.containsKey('regex') ? json_['regex'] as core.String : null,
          safeRegex: json_.containsKey('safeRegex')
              ? RegexMatcher.fromJson(
                  json_['safeRegex'] as core.Map<core.String, core.dynamic>)
              : null,
          suffix: json_.containsKey('suffix')
              ? json_['suffix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exact != null) 'exact': exact!,
        if (ignoreCase != null) 'ignoreCase': ignoreCase!,
        if (prefix != null) 'prefix': prefix!,
        if (regex != null) 'regex': regex!,
        if (safeRegex != null) 'safeRegex': safeRegex!,
        if (suffix != null) 'suffix': suffix!,
      };
}

/// StructMatcher provides a general interface to check if a given value is
/// matched in google.protobuf.Struct.
///
/// It uses `path` to retrieve the value from the struct and then check if it's
/// matched to the specified value. For example, for the following Struct: ..
/// code-block:: yaml fields: a: struct_value: fields: b: struct_value: fields:
/// c: string_value: pro t: list_value: values: - string_value: m -
/// string_value: n The following MetadataMatcher is matched as the path \[a, b,
/// c\] will retrieve a string value "pro" from the Metadata which is matched to
/// the specified prefix match. .. code-block:: yaml path: - key: a - key: b -
/// key: c value: string_match: prefix: pr The following StructMatcher is
/// matched as the code will match one of the string values in the list at the
/// path \[a, t\]. .. code-block:: yaml path: - key: a - key: t value:
/// list_match: one_of: string_match: exact: m An example use of StructMatcher
/// is to match metadata in envoy.v*.core.Node.
class StructMatcher {
  /// The path to retrieve the Value from the Struct.
  core.List<PathSegment>? path;

  /// The StructMatcher is matched if the value retrieved by path is matched to
  /// this value.
  ValueMatcher? value;

  StructMatcher({
    this.path,
    this.value,
  });

  StructMatcher.fromJson(core.Map json_)
      : this(
          path: json_.containsKey('path')
              ? (json_['path'] as core.List)
                  .map((value) => PathSegment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          value: json_.containsKey('value')
              ? ValueMatcher.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (value != null) 'value': value!,
      };
}

class UpdateFailureState {
  /// Details about the last failed update attempt.
  core.String? details;

  /// What the component configuration would have been if the update had
  /// succeeded.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? failedConfiguration;

  /// Time of the latest failed update attempt.
  core.String? lastUpdateAttempt;

  UpdateFailureState({
    this.details,
    this.failedConfiguration,
    this.lastUpdateAttempt,
  });

  UpdateFailureState.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? json_['details'] as core.String
              : null,
          failedConfiguration: json_.containsKey('failedConfiguration')
              ? json_['failedConfiguration']
                  as core.Map<core.String, core.dynamic>
              : null,
          lastUpdateAttempt: json_.containsKey('lastUpdateAttempt')
              ? json_['lastUpdateAttempt'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (failedConfiguration != null)
          'failedConfiguration': failedConfiguration!,
        if (lastUpdateAttempt != null) 'lastUpdateAttempt': lastUpdateAttempt!,
      };
}

/// Specifies the way to match a ProtobufWkt::Value.
///
/// Primitive values and ListValue are supported. StructValue is not supported
/// and is always not matched. \[#next-free-field: 7\]
class ValueMatcher {
  /// If specified, a match occurs if and only if the target value is a bool
  /// value and is equal to this field.
  core.bool? boolMatch;

  /// If specified, a match occurs if and only if the target value is a double
  /// value and is matched to this field.
  DoubleMatcher? doubleMatch;

  /// If specified, a match occurs if and only if the target value is a list
  /// value and is matched to this field.
  ListMatcher? listMatch;

  /// If specified, a match occurs if and only if the target value is a
  /// NullValue.
  NullMatch? nullMatch;

  /// If specified, value match will be performed based on whether the path is
  /// referring to a valid primitive value in the metadata.
  ///
  /// If the path is referring to a non-primitive value, the result is always
  /// not matched.
  core.bool? presentMatch;

  /// If specified, a match occurs if and only if the target value is a string
  /// value and is matched to this field.
  StringMatcher? stringMatch;

  ValueMatcher({
    this.boolMatch,
    this.doubleMatch,
    this.listMatch,
    this.nullMatch,
    this.presentMatch,
    this.stringMatch,
  });

  ValueMatcher.fromJson(core.Map json_)
      : this(
          boolMatch: json_.containsKey('boolMatch')
              ? json_['boolMatch'] as core.bool
              : null,
          doubleMatch: json_.containsKey('doubleMatch')
              ? DoubleMatcher.fromJson(
                  json_['doubleMatch'] as core.Map<core.String, core.dynamic>)
              : null,
          listMatch: json_.containsKey('listMatch')
              ? ListMatcher.fromJson(
                  json_['listMatch'] as core.Map<core.String, core.dynamic>)
              : null,
          nullMatch: json_.containsKey('nullMatch')
              ? NullMatch.fromJson(
                  json_['nullMatch'] as core.Map<core.String, core.dynamic>)
              : null,
          presentMatch: json_.containsKey('presentMatch')
              ? json_['presentMatch'] as core.bool
              : null,
          stringMatch: json_.containsKey('stringMatch')
              ? StringMatcher.fromJson(
                  json_['stringMatch'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolMatch != null) 'boolMatch': boolMatch!,
        if (doubleMatch != null) 'doubleMatch': doubleMatch!,
        if (listMatch != null) 'listMatch': listMatch!,
        if (nullMatch != null) 'nullMatch': nullMatch!,
        if (presentMatch != null) 'presentMatch': presentMatch!,
        if (stringMatch != null) 'stringMatch': stringMatch!,
      };
}
