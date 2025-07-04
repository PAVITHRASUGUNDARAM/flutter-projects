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

/// Identity and Access Management (IAM) API - v1
///
/// Manages identity and access control for Google Cloud Platform resources,
/// including the creation of service accounts, which you can use to
/// authenticate to Google and make API calls.
///
/// For more information, see <https://cloud.google.com/iam/>
///
/// Create an instance of [IamApi] to access these resources:
///
/// - [IamPoliciesResource]
/// - [LocationsResource]
///   - [LocationsWorkforcePoolsResource]
///     - [LocationsWorkforcePoolsOperationsResource]
///     - [LocationsWorkforcePoolsProvidersResource]
///       - [LocationsWorkforcePoolsProvidersKeysResource]
///         - [LocationsWorkforcePoolsProvidersKeysOperationsResource]
///       - [LocationsWorkforcePoolsProvidersOperationsResource]
///     - [LocationsWorkforcePoolsSubjectsResource]
///       - [LocationsWorkforcePoolsSubjectsOperationsResource]
/// - [OrganizationsResource]
///   - [OrganizationsRolesResource]
/// - [PermissionsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsWorkloadIdentityPoolsResource]
///       - [ProjectsLocationsWorkloadIdentityPoolsNamespacesResource]
/// -
/// [ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesResource]
/// -
/// [ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesOperationsResource]
/// -
/// [ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesResource]
/// -
/// [ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesOperationsResource]
/// - [ProjectsLocationsWorkloadIdentityPoolsNamespacesOperationsResource]
///       - [ProjectsLocationsWorkloadIdentityPoolsOperationsResource]
///       - [ProjectsLocationsWorkloadIdentityPoolsProvidersResource]
///         - [ProjectsLocationsWorkloadIdentityPoolsProvidersKeysResource]
/// - [ProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsResource]
/// - [ProjectsLocationsWorkloadIdentityPoolsProvidersOperationsResource]
///   - [ProjectsRolesResource]
///   - [ProjectsServiceAccountsResource]
///     - [ProjectsServiceAccountsKeysResource]
/// - [RolesResource]
library iam_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages identity and access control for Google Cloud Platform resources,
/// including the creation of service accounts, which you can use to
/// authenticate to Google and make API calls.
class IamApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  IamPoliciesResource get iamPolicies => IamPoliciesResource(_requester);
  LocationsResource get locations => LocationsResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  PermissionsResource get permissions => PermissionsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  RolesResource get roles => RolesResource(_requester);

  IamApi(http.Client client,
      {core.String rootUrl = 'https://iam.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class IamPoliciesResource {
  final commons.ApiRequester _requester;

  IamPoliciesResource(commons.ApiRequester client) : _requester = client;

  /// Lints, or validates, an IAM policy.
  ///
  /// Currently checks the google.iam.v1.Binding.condition field, which contains
  /// a condition expression for a role binding. Successful calls to this method
  /// always return an HTTP `200 OK` status code, even if the linter detects an
  /// issue in the IAM policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LintPolicyResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LintPolicyResponse> lintPolicy(
    LintPolicyRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/iamPolicies:lintPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LintPolicyResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of services that allow you to opt into audit logs that are
  /// not generated by default.
  ///
  /// To learn more about audit logs, see the
  /// [Logging documentation](https://cloud.google.com/logging/docs/audit).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryAuditableServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryAuditableServicesResponse> queryAuditableServices(
    QueryAuditableServicesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/iamPolicies:queryAuditableServices';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryAuditableServicesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsResource get workforcePools =>
      LocationsWorkforcePoolsResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;
}

class LocationsWorkforcePoolsResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsOperationsResource get operations =>
      LocationsWorkforcePoolsOperationsResource(_requester);
  LocationsWorkforcePoolsProvidersResource get providers =>
      LocationsWorkforcePoolsProvidersResource(_requester);
  LocationsWorkforcePoolsSubjectsResource get subjects =>
      LocationsWorkforcePoolsSubjectsResource(_requester);

  LocationsWorkforcePoolsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new WorkforcePool.
  ///
  /// You cannot reuse the name of a deleted pool until 30 days after deletion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - The location of the pool to create. Format:
  /// `locations/{location}`.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [workforcePoolId] - The ID to use for the pool, which becomes the final
  /// component of the resource name. The IDs must be a globally unique string
  /// of 6 to 63 lowercase letters, digits, or hyphens. It must start with a
  /// letter, and cannot have a trailing hyphen. The prefix `gcp-` is reserved
  /// for use by Google, and may not be specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    WorkforcePool request,
    core.String location, {
    core.String? workforcePoolId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workforcePoolId != null) 'workforcePoolId': [workforcePoolId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + '/workforcePools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a WorkforcePool.
  ///
  /// You cannot use a deleted WorkforcePool to exchange external credentials
  /// for Google Cloud credentials. However, deletion does not revoke
  /// credentials that have already been issued. Credentials issued for a
  /// deleted pool do not grant access to resources. If the pool is undeleted,
  /// and the credentials are not expired, they grant access again. You can
  /// undelete a pool for 30 days. After 30 days, deletion is permanent. You
  /// cannot update deleted pools. However, you can view and list them.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool to delete. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}`
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an individual WorkforcePool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool to retrieve. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}`
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkforcePool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkforcePool> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkforcePool.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets IAM policies on a WorkforcePool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all non-deleted WorkforcePools under the specified parent.
  ///
  /// If `show_deleted` is set to `true`, then deleted pools are also listed.
  ///
  /// Request parameters:
  ///
  /// [location] - The location of the pool. Format: `locations/{location}`.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of pools to return. If unspecified, at
  /// most 50 pools will be returned. The maximum value is 1000; values above
  /// 1000 are truncated to 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListWorkforcePools`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [parent] - Required. The parent resource to list pools for. Format:
  /// `organizations/{org-id}`.
  ///
  /// [showDeleted] - Whether to return soft-deleted pools.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkforcePoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkforcePoolsResponse> list(
    core.String location, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + '/workforcePools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkforcePoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing WorkforcePool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the pool. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}`
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    WorkforcePool request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets IAM policies on a WorkforcePool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the caller's permissions on the WorkforcePool.
  ///
  /// If the pool does not exist, this will return an empty set of permissions,
  /// not a `NOT_FOUND` error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a WorkforcePool, as long as it was deleted fewer than 30 days
  /// ago.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool to undelete. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}`
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> undelete(
    UndeleteWorkforcePoolRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsWorkforcePoolsOperationsResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsWorkforcePoolsProvidersResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsProvidersKeysResource get keys =>
      LocationsWorkforcePoolsProvidersKeysResource(_requester);
  LocationsWorkforcePoolsProvidersOperationsResource get operations =>
      LocationsWorkforcePoolsProvidersOperationsResource(_requester);

  LocationsWorkforcePoolsProvidersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new WorkforcePoolProvider in a WorkforcePool.
  ///
  /// You cannot reuse the name of a deleted provider until 30 days after
  /// deletion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pool to create this provider in. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}`
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [workforcePoolProviderId] - Required. The ID for the provider, which
  /// becomes the final component of the resource name. This value must be 4-32
  /// characters, and may contain the characters \[a-z0-9-\]. The prefix `gcp-`
  /// is reserved for use by Google, and may not be specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    WorkforcePoolProvider request,
    core.String parent, {
    core.String? workforcePoolProviderId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workforcePoolProviderId != null)
        'workforcePoolProviderId': [workforcePoolProviderId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/providers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a WorkforcePoolProvider.
  ///
  /// Deleting a provider does not revoke credentials that have already been\
  /// issued; they continue to grant access. You can undelete a provider for 30
  /// days. After 30 days, deletion is permanent. You cannot update deleted
  /// providers. However, you can view and list them.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the provider to delete. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an individual WorkforcePoolProvider.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the provider to retrieve. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkforcePoolProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkforcePoolProvider> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkforcePoolProvider.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all non-deleted WorkforcePoolProviders in a WorkforcePool.
  ///
  /// If `show_deleted` is set to `true`, then deleted providers are also
  /// listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pool to list providers for. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}`
  /// Value must have pattern `^locations/\[^/\]+/workforcePools/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of providers to return. If unspecified, at
  /// most 50 providers are returned. The maximum value is 100; values above 100
  /// are truncated to 100.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListWorkforcePoolProviders` call. Provide this to retrieve the subsequent
  /// page.
  ///
  /// [showDeleted] - Whether to return soft-deleted providers.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkforcePoolProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkforcePoolProvidersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/providers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkforcePoolProvidersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing WorkforcePoolProvider.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the provider. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    WorkforcePoolProvider request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a WorkforcePoolProvider, as long as it was deleted fewer than 30
  /// days ago.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the provider to undelete. Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> undelete(
    UndeleteWorkforcePoolProviderRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsWorkforcePoolsProvidersKeysResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsProvidersKeysOperationsResource get operations =>
      LocationsWorkforcePoolsProvidersKeysOperationsResource(_requester);

  LocationsWorkforcePoolsProvidersKeysResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new WorkforcePoolProviderKey in a WorkforcePoolProvider.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The provider to create this key in.
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [workforcePoolProviderKeyId] - Required. The ID to use for the key, which
  /// becomes the final component of the resource name. This value must be 4-32
  /// characters, and may contain the characters \[a-z0-9-\].
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    WorkforcePoolProviderKey request,
    core.String parent, {
    core.String? workforcePoolProviderKeyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workforcePoolProviderKeyId != null)
        'workforcePoolProviderKeyId': [workforcePoolProviderKeyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/keys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a WorkforcePoolProviderKey.
  ///
  /// You can undelete a key for 30 days. After 30 days, deletion is permanent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key to delete.
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a WorkforcePoolProviderKey.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key to retrieve.
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkforcePoolProviderKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkforcePoolProviderKey> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkforcePoolProviderKey.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all non-deleted WorkforcePoolProviderKeys in a
  /// WorkforcePoolProvider.
  ///
  /// If `show_deleted` is set to `true`, then deleted keys are also listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The provider resource to list encryption keys for.
  /// Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of keys to return. If unspecified, all
  /// keys are returned. The maximum value is 10; values above 10 are truncated
  /// to 10.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListWorkforcePoolProviderKeys` call. Provide this to retrieve the
  /// subsequent page.
  ///
  /// [showDeleted] - Whether to return soft-deleted keys.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkforcePoolProviderKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkforcePoolProviderKeysResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/keys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkforcePoolProviderKeysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a WorkforcePoolProviderKey, as long as it was deleted fewer than
  /// 30 days ago.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key to undelete.
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> undelete(
    UndeleteWorkforcePoolProviderKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsWorkforcePoolsProvidersKeysOperationsResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsProvidersKeysOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+/keys/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsWorkforcePoolsProvidersOperationsResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsProvidersOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/providers/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsWorkforcePoolsSubjectsResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsSubjectsOperationsResource get operations =>
      LocationsWorkforcePoolsSubjectsOperationsResource(_requester);

  LocationsWorkforcePoolsSubjectsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a WorkforcePoolSubject.
  ///
  /// Subject must not already be in a deleted state. A WorkforcePoolSubject is
  /// automatically created the first time an external credential is exchanged
  /// for a Google Cloud credential with a mapped `google.subject` attribute.
  /// There is no path to manually create WorkforcePoolSubjects. Once deleted,
  /// the WorkforcePoolSubject may not be used for 30 days. After 30 days, the
  /// WorkforcePoolSubject will be deleted forever and can be reused in token
  /// exchanges with Google Cloud STS. This will automatically create a new
  /// WorkforcePoolSubject that is independent of the previously deleted
  /// WorkforcePoolSubject with the same google.subject value.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the WorkforcePoolSubject. Special
  /// characters, like '/' and ':', must be escaped, because all URLs need to
  /// conform to the "When to Escape and Unescape" section of
  /// [RFC3986](https://www.ietf.org/rfc/rfc2396.txt). Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}/subjects/{subject_id}`
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a WorkforcePoolSubject, as long as it was deleted fewer than 30
  /// days ago.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the WorkforcePoolSubject. Special
  /// characters, like '/' and ':', must be escaped, because all URLs need to
  /// conform to the "When to Escape and Unescape" section of
  /// [RFC3986](https://www.ietf.org/rfc/rfc2396.txt). Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}/subjects/{subject_id}`
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/subjects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> undelete(
    UndeleteWorkforcePoolSubjectRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsWorkforcePoolsSubjectsOperationsResource {
  final commons.ApiRequester _requester;

  LocationsWorkforcePoolsSubjectsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^locations/\[^/\]+/workforcePools/\[^/\]+/subjects/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OrganizationsResource {
  final commons.ApiRequester _requester;

  OrganizationsRolesResource get roles =>
      OrganizationsRolesResource(_requester);

  OrganizationsResource(commons.ApiRequester client) : _requester = client;
}

class OrganizationsRolesResource {
  final commons.ApiRequester _requester;

  OrganizationsRolesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles)
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `parent` value format is described below: *
  /// \[`projects.roles.create()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/create):
  /// `projects/{PROJECT_ID}`. This method creates project-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// \[`organizations.roles.create()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/create):
  /// `organizations/{ORGANIZATION_ID}`. This method creates organization-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> create(
    CreateRoleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/roles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a custom Role.
  ///
  /// When you delete a custom role, the following changes occur immediately: *
  /// You cannot bind a principal to the custom role in an IAM Policy. *
  /// Existing bindings to the custom role are not changed, but they have no
  /// effect. * By default, the response from ListRoles does not include the
  /// custom role. You have 7 days to undelete the custom role. After 7 days,
  /// the following changes occur: * The custom role is permanently deleted and
  /// cannot be recovered. * If an IAM policy contains a binding to the custom
  /// role, the binding is permanently removed.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles)
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`projects.roles.delete()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/delete):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method deletes only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.delete()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/delete):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// deletes only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^organizations/\[^/\]+/roles/\[^/\]+$`.
  ///
  /// [etag] - Used to perform a consistent read-modify-write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> delete(
    core.String name, {
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the definition of a Role.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`roles`\](https://cloud.google.com/iam/reference/rest/v1/roles),
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles),
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/roles/get):
  /// `roles/{ROLE_NAME}`. This method returns results from all
  /// [predefined roles](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles)
  /// in Cloud IAM. Example request URL:
  /// `https://iam.googleapis.com/v1/roles/{ROLE_NAME}` *
  /// \[`projects.roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/get):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method returns only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/get):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// returns only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^organizations/\[^/\]+/roles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists every predefined Role that IAM supports, or every custom role that
  /// is defined for an organization or project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely
  /// \[`roles`\](https://cloud.google.com/iam/reference/rest/v1/roles),
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles),
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `parent` value format is described below: *
  /// \[`roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/roles/list):
  /// An empty string. This method doesn't require a resource; it simply returns
  /// all
  /// [predefined roles](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles)
  /// in Cloud IAM. Example request URL: `https://iam.googleapis.com/v1/roles` *
  /// \[`projects.roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/list):
  /// `projects/{PROJECT_ID}`. This method lists all project-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// \[`organizations.roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/list):
  /// `organizations/{ORGANIZATION_ID}`. This method lists all
  /// organization-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response. The default is 300, and the maximum is 1,000.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [view] - Optional view for the returned Role objects. When `FULL` is
  /// specified, the `includedPermissions` field is returned, which includes a
  /// list of all permissions in the role. The default value is `BASIC`, which
  /// does not return the `includedPermissions` field.
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field. This is the default
  /// value.
  /// - "FULL" : Returns all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/roles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRolesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the definition of a custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles)
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`projects.roles.patch()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/patch):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method updates only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.patch()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/patch):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// updates only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^organizations/\[^/\]+/roles/\[^/\]+$`.
  ///
  /// [updateMask] - A mask describing which fields in the Role have changed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> patch(
    Role request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles)
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`projects.roles.undelete()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/undelete):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method undeletes only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.undelete()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/undelete):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// undeletes only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^organizations/\[^/\]+/roles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> undelete(
    UndeleteRoleRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class PermissionsResource {
  final commons.ApiRequester _requester;

  PermissionsResource(commons.ApiRequester client) : _requester = client;

  /// Lists every permission that you can test on a resource.
  ///
  /// A permission is testable if you can check whether a principal has that
  /// permission on the resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryTestablePermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryTestablePermissionsResponse> queryTestablePermissions(
    QueryTestablePermissionsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/permissions:queryTestablePermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryTestablePermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsRolesResource get roles => ProjectsRolesResource(_requester);
  ProjectsServiceAccountsResource get serviceAccounts =>
      ProjectsServiceAccountsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsResource get workloadIdentityPools =>
      ProjectsLocationsWorkloadIdentityPoolsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsWorkloadIdentityPoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsNamespacesResource get namespaces =>
      ProjectsLocationsWorkloadIdentityPoolsNamespacesResource(_requester);
  ProjectsLocationsWorkloadIdentityPoolsOperationsResource get operations =>
      ProjectsLocationsWorkloadIdentityPoolsOperationsResource(_requester);
  ProjectsLocationsWorkloadIdentityPoolsProvidersResource get providers =>
      ProjectsLocationsWorkloadIdentityPoolsProvidersResource(_requester);

  ProjectsLocationsWorkloadIdentityPoolsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new WorkloadIdentityPool.
  ///
  /// You cannot reuse the name of a deleted pool until 30 days after deletion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource to create the pool in. The only
  /// supported location is `global`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [workloadIdentityPoolId] - Required. The ID to use for the pool, which
  /// becomes the final component of the resource name. This value should be
  /// 4-32 characters, and may contain the characters \[a-z0-9-\]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    WorkloadIdentityPool request,
    core.String parent, {
    core.String? workloadIdentityPoolId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workloadIdentityPoolId != null)
        'workloadIdentityPoolId': [workloadIdentityPoolId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/workloadIdentityPools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a WorkloadIdentityPool.
  ///
  /// You cannot use a deleted pool to exchange external credentials for Google
  /// Cloud credentials. However, deletion does not revoke credentials that have
  /// already been issued. Credentials issued for a deleted pool do not grant
  /// access to resources. If the pool is undeleted, and the credentials are not
  /// expired, they grant access again. You can undelete a pool for 30 days.
  /// After 30 days, deletion is permanent. You cannot update deleted pools.
  /// However, you can view and list them.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an individual WorkloadIdentityPool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkloadIdentityPool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkloadIdentityPool> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkloadIdentityPool.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all non-deleted WorkloadIdentityPools in a project.
  ///
  /// If `show_deleted` is set to `true`, then deleted pools are also listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource to list pools for.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of pools to return. If unspecified, at
  /// most 50 pools are returned. The maximum value is 1000; values above are
  /// 1000 truncated to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListWorkloadIdentityPools` call. Provide this to retrieve the subsequent
  /// page.
  ///
  /// [showDeleted] - Whether to return soft-deleted pools.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkloadIdentityPoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkloadIdentityPoolsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/workloadIdentityPools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkloadIdentityPoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing WorkloadIdentityPool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the pool.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    WorkloadIdentityPool request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a WorkloadIdentityPool, as long as it was deleted fewer than 30
  /// days ago.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the pool to undelete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> undelete(
    UndeleteWorkloadIdentityPoolRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkloadIdentityPoolsNamespacesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesResource
      get managedIdentities =>
          ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesResource(
              _requester);
  ProjectsLocationsWorkloadIdentityPoolsNamespacesOperationsResource
      get operations =>
          ProjectsLocationsWorkloadIdentityPoolsNamespacesOperationsResource(
              _requester);

  ProjectsLocationsWorkloadIdentityPoolsNamespacesResource(
      commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesOperationsResource
      get operations =>
          ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesOperationsResource(
              _requester);
  ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesResource
      get workloadSources =>
          ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesResource(
              _requester);

  ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesResource(
      commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/namespaces/\[^/\]+/managedIdentities/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesOperationsResource
      get operations =>
          ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesOperationsResource(
              _requester);

  ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesResource(
      commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsNamespacesManagedIdentitiesWorkloadSourcesOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/namespaces/\[^/\]+/managedIdentities/\[^/\]+/workloadSources/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkloadIdentityPoolsNamespacesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsNamespacesOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/namespaces/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkloadIdentityPoolsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkloadIdentityPoolsProvidersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsProvidersKeysResource get keys =>
      ProjectsLocationsWorkloadIdentityPoolsProvidersKeysResource(_requester);
  ProjectsLocationsWorkloadIdentityPoolsProvidersOperationsResource
      get operations =>
          ProjectsLocationsWorkloadIdentityPoolsProvidersOperationsResource(
              _requester);

  ProjectsLocationsWorkloadIdentityPoolsProvidersResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new WorkloadIdentityPoolProvider in a WorkloadIdentityPool.
  ///
  /// You cannot reuse the name of a deleted provider until 30 days after
  /// deletion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pool to create this provider in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [workloadIdentityPoolProviderId] - Required. The ID for the provider,
  /// which becomes the final component of the resource name. This value must be
  /// 4-32 characters, and may contain the characters \[a-z0-9-\]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    WorkloadIdentityPoolProvider request,
    core.String parent, {
    core.String? workloadIdentityPoolProviderId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workloadIdentityPoolProviderId != null)
        'workloadIdentityPoolProviderId': [workloadIdentityPoolProviderId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/providers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a WorkloadIdentityPoolProvider.
  ///
  /// Deleting a provider does not revoke credentials that have already been
  /// issued; they continue to grant access. You can undelete a provider for 30
  /// days. After 30 days, deletion is permanent. You cannot update deleted
  /// providers. However, you can view and list them.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the provider to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an individual WorkloadIdentityPoolProvider.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the provider to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkloadIdentityPoolProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkloadIdentityPoolProvider> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkloadIdentityPoolProvider.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all non-deleted WorkloadIdentityPoolProviders in a
  /// WorkloadIdentityPool.
  ///
  /// If `show_deleted` is set to `true`, then deleted providers are also
  /// listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The pool to list providers for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of providers to return. If unspecified, at
  /// most 50 providers are returned. The maximum value is 100; values above 100
  /// are truncated to 100.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListWorkloadIdentityPoolProviders` call. Provide this to retrieve the
  /// subsequent page.
  ///
  /// [showDeleted] - Whether to return soft-deleted providers.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkloadIdentityPoolProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkloadIdentityPoolProvidersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/providers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkloadIdentityPoolProvidersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing WorkloadIdentityPoolProvider.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the provider.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> patch(
    WorkloadIdentityPoolProvider request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a WorkloadIdentityPoolProvider, as long as it was deleted fewer
  /// than 30 days ago.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the provider to undelete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> undelete(
    UndeleteWorkloadIdentityPoolProviderRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkloadIdentityPoolsProvidersKeysResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsResource
      get operations =>
          ProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsResource(
              _requester);

  ProjectsLocationsWorkloadIdentityPoolsProvidersKeysResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Create a new WorkloadIdentityPoolProviderKey in a
  /// WorkloadIdentityPoolProvider.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent provider resource to create the key in.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [workloadIdentityPoolProviderKeyId] - Required. The ID to use for the key,
  /// which becomes the final component of the resource name. This value should
  /// be 4-32 characters, and may contain the characters \[a-z0-9-\].
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    WorkloadIdentityPoolProviderKey request,
    core.String parent, {
    core.String? workloadIdentityPoolProviderKeyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (workloadIdentityPoolProviderKeyId != null)
        'workloadIdentityPoolProviderKeyId': [
          workloadIdentityPoolProviderKeyId
        ],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/keys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an WorkloadIdentityPoolProviderKey.
  ///
  /// You can undelete a key for 30 days. After 30 days, deletion is permanent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the encryption key to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets an individual WorkloadIdentityPoolProviderKey.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the key to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WorkloadIdentityPoolProviderKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WorkloadIdentityPoolProviderKey> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return WorkloadIdentityPoolProviderKey.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all non-deleted WorkloadIdentityPoolProviderKeys in a project.
  ///
  /// If show_deleted is set to `true`, then deleted pools are also listed.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent provider resource to list encryption keys
  /// for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of keys to return. If unspecified, all
  /// keys are returned. The maximum value is 10; values above 10 are truncated
  /// to 10.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListWorkloadIdentityPoolProviderKeys` call. Provide this to retrieve the
  /// subsequent page.
  ///
  /// [showDeleted] - Whether to return soft deleted resources as well.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkloadIdentityPoolProviderKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkloadIdentityPoolProviderKeysResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/keys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkloadIdentityPoolProviderKeysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes an WorkloadIdentityPoolProviderKey, as long as it was deleted
  /// fewer than 30 days ago.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the encryption key to undelete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> undelete(
    UndeleteWorkloadIdentityPoolProviderKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsProvidersKeysOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+/keys/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsWorkloadIdentityPoolsProvidersOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsWorkloadIdentityPoolsProvidersOperationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/workloadIdentityPools/\[^/\]+/providers/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsRolesResource {
  final commons.ApiRequester _requester;

  ProjectsRolesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles)
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `parent` value format is described below: *
  /// \[`projects.roles.create()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/create):
  /// `projects/{PROJECT_ID}`. This method creates project-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// \[`organizations.roles.create()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/create):
  /// `organizations/{ORGANIZATION_ID}`. This method creates organization-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> create(
    CreateRoleRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/roles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a custom Role.
  ///
  /// When you delete a custom role, the following changes occur immediately: *
  /// You cannot bind a principal to the custom role in an IAM Policy. *
  /// Existing bindings to the custom role are not changed, but they have no
  /// effect. * By default, the response from ListRoles does not include the
  /// custom role. You have 7 days to undelete the custom role. After 7 days,
  /// the following changes occur: * The custom role is permanently deleted and
  /// cannot be recovered. * If an IAM policy contains a binding to the custom
  /// role, the binding is permanently removed.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles)
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`projects.roles.delete()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/delete):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method deletes only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.delete()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/delete):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// deletes only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^projects/\[^/\]+/roles/\[^/\]+$`.
  ///
  /// [etag] - Used to perform a consistent read-modify-write.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> delete(
    core.String name, {
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the definition of a Role.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`roles`\](https://cloud.google.com/iam/reference/rest/v1/roles),
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles),
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/roles/get):
  /// `roles/{ROLE_NAME}`. This method returns results from all
  /// [predefined roles](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles)
  /// in Cloud IAM. Example request URL:
  /// `https://iam.googleapis.com/v1/roles/{ROLE_NAME}` *
  /// \[`projects.roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/get):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method returns only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/get):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// returns only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^projects/\[^/\]+/roles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists every predefined Role that IAM supports, or every custom role that
  /// is defined for an organization or project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely
  /// \[`roles`\](https://cloud.google.com/iam/reference/rest/v1/roles),
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles),
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `parent` value format is described below: *
  /// \[`roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/roles/list):
  /// An empty string. This method doesn't require a resource; it simply returns
  /// all
  /// [predefined roles](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles)
  /// in Cloud IAM. Example request URL: `https://iam.googleapis.com/v1/roles` *
  /// \[`projects.roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/list):
  /// `projects/{PROJECT_ID}`. This method lists all project-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// \[`organizations.roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/list):
  /// `organizations/{ORGANIZATION_ID}`. This method lists all
  /// organization-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response. The default is 300, and the maximum is 1,000.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [view] - Optional view for the returned Role objects. When `FULL` is
  /// specified, the `includedPermissions` field is returned, which includes a
  /// list of all permissions in the role. The default value is `BASIC`, which
  /// does not return the `includedPermissions` field.
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field. This is the default
  /// value.
  /// - "FULL" : Returns all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? showDeleted,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/roles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRolesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the definition of a custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles)
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`projects.roles.patch()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/patch):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method updates only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.patch()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/patch):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// updates only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^projects/\[^/\]+/roles/\[^/\]+$`.
  ///
  /// [updateMask] - A mask describing which fields in the Role have changed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> patch(
    Role request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeletes a custom Role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles)
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`projects.roles.undelete()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/undelete):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method undeletes only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.undelete()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/undelete):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// undeletes only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^projects/\[^/\]+/roles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> undelete(
    UndeleteRoleRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsServiceAccountsResource {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsKeysResource get keys =>
      ProjectsServiceAccountsKeysResource(_requester);

  ProjectsServiceAccountsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the project associated with the
  /// service accounts, such as `projects/my-project-123`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> create(
    CreateServiceAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/serviceAccounts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ServiceAccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a ServiceAccount.
  ///
  /// **Warning:** After you delete a service account, you might not be able to
  /// undelete it. If you know that you need to re-enable the service account in
  /// the future, use DisableServiceAccount instead. If you delete a service
  /// account, IAM permanently removes the service account 30 days later. Google
  /// Cloud cannot recover the service account after it is permanently removed,
  /// even if you file a support request. To help avoid unplanned outages, we
  /// recommend that you disable the service account before you delete it. Use
  /// DisableServiceAccount to disable the service account, then wait at least
  /// 24 hours and watch for unintended consequences. If there are no unintended
  /// consequences, you can delete the service account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account. Use one of
  /// the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Disables a ServiceAccount immediately.
  ///
  /// If an application uses the service account to authenticate, that
  /// application can no longer call Google APIs or access Google Cloud
  /// resources. Existing access tokens for the service account are rejected,
  /// and requests for new access tokens will fail. To re-enable the service
  /// account, use EnableServiceAccount. After you re-enable the service
  /// account, its existing access tokens will be accepted, and you can request
  /// new access tokens. To help avoid unplanned outages, we recommend that you
  /// disable the service account before you delete it. Use this method to
  /// disable the service account, then wait at least 24 hours and watch for
  /// unintended consequences. If there are no unintended consequences, you can
  /// delete the service account with DeleteServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account. Use one of the
  /// following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> disable(
    DisableServiceAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enables a ServiceAccount that was disabled by DisableServiceAccount.
  ///
  /// If the service account is already enabled, then this method has no effect.
  /// If the service account was disabled by other means—for example, if Google
  /// disabled the service account because it was compromised—you cannot use
  /// this method to enable the service account.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account. Use one of the
  /// following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> enable(
    EnableServiceAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a ServiceAccount.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account. Use one of
  /// the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ServiceAccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the IAM policy that is attached to a ServiceAccount.
  ///
  /// This IAM policy specifies which principals have access to the service
  /// account. This method does not tell you whether the service account has
  /// been granted any roles on other resources. To check whether a service
  /// account has role grants on a resource, use the `getIamPolicy` method for
  /// that resource. For example, to view the role grants for a project, call
  /// the Resource Manager API's
  /// \[`projects.getIamPolicy`\](https://cloud.google.com/resource-manager/reference/rest/v1/projects/getIamPolicy)
  /// method.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists every ServiceAccount that belongs to a specific project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the project associated with the
  /// service accounts, such as `projects/my-project-123`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional limit on the number of service accounts to include
  /// in the response. Further accounts can subsequently be obtained by
  /// including the ListServiceAccountsResponse.next_page_token in a subsequent
  /// request. The default is 20, and the maximum is 100.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListServiceAccountsResponse.next_page_token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceAccountsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceAccountsResponse> list(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/serviceAccounts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceAccountsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Patches a ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account. Use one of the
  /// following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> patch(
    PatchServiceAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ServiceAccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM policy that is attached to a ServiceAccount.
  ///
  /// Use this method to grant or revoke access to the service account. For
  /// example, you could grant a principal the ability to impersonate the
  /// service account. This method does not enable the service account to access
  /// other resources. To grant roles to a service account on a resource, follow
  /// these steps: 1. Call the resource's `getIamPolicy` method to get its
  /// current IAM policy. 2. Edit the policy so that it binds the service
  /// account to an IAM role for the resource. 3. Call the resource's
  /// `setIamPolicy` method to update its IAM policy. For detailed instructions,
  /// see
  /// [Manage access to project, folders, and organizations](https://cloud.google.com/iam/help/service-accounts/granting-access-to-service-accounts)
  /// or
  /// [Manage access to other resources](https://cloud.google.com/iam/help/access/manage-other-resources).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// **Note:** This method is deprecated.
  ///
  /// Use the
  /// \[`signBlob`\](https://cloud.google.com/iam/help/rest-credentials/v1/projects.serviceAccounts/signBlob)
  /// method in the IAM Service Account Credentials API instead. If you
  /// currently use this method, see the
  /// [migration guide](https://cloud.google.com/iam/help/credentials/migrate-api)
  /// for instructions. Signs a blob using the system-managed private key for a
  /// ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Deprecated.
  /// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
  /// The resource name of the service account. Use one of the following
  /// formats: * `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignBlobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<SignBlobResponse> signBlob(
    SignBlobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':signBlob';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SignBlobResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// **Note:** This method is deprecated.
  ///
  /// Use the
  /// \[`signJwt`\](https://cloud.google.com/iam/help/rest-credentials/v1/projects.serviceAccounts/signJwt)
  /// method in the IAM Service Account Credentials API instead. If you
  /// currently use this method, see the
  /// [migration guide](https://cloud.google.com/iam/help/credentials/migrate-api)
  /// for instructions. Signs a JSON Web Token (JWT) using the system-managed
  /// private key for a ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Deprecated.
  /// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
  /// The resource name of the service account. Use one of the following
  /// formats: * `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SignJwtResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  async.Future<SignJwtResponse> signJwt(
    SignJwtRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':signJwt';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SignJwtResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Tests whether the caller has the specified permissions on a
  /// ServiceAccount.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a deleted ServiceAccount.
  ///
  /// **Important:** It is not always possible to restore a deleted service
  /// account. Use this method only as a last resort. After you delete a service
  /// account, IAM permanently removes the service account 30 days later. There
  /// is no way to restore a deleted service account that has been permanently
  /// removed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account. Use one of the
  /// following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UndeleteServiceAccountResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UndeleteServiceAccountResponse> undelete(
    UndeleteServiceAccountRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UndeleteServiceAccountResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// **Note:** We are in the process of deprecating this method.
  ///
  /// Use PatchServiceAccount instead. Updates a ServiceAccount. You can update
  /// only the `display_name` field.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account. Use one of the
  /// following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccount> update(
    ServiceAccount request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return ServiceAccount.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsServiceAccountsKeysResource {
  final commons.ApiRequester _requester;

  ProjectsServiceAccountsKeysResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a ServiceAccountKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account. Use one of
  /// the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> create(
    CreateServiceAccountKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/keys';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ServiceAccountKey.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a ServiceAccountKey.
  ///
  /// Deleting a service account key does not revoke short-lived credentials
  /// that have been issued based on the service account key.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account key. Use one
  /// of the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}/keys/{KEY_ID}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}/keys/{KEY_ID}` As an
  /// alternative, you can use the `-` wildcard character instead of the project
  /// ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}/keys/{KEY_ID}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}/keys/{KEY_ID}` When possible,
  /// avoid using the `-` wildcard character, because it can cause response
  /// messages to contain misleading error codes. For example, if you try to
  /// access the service account key
  /// `projects/-/serviceAccounts/fake@example.com/keys/fake-key`, which does
  /// not exist, the response contains an HTTP `403 Forbidden` error instead of
  /// a `404 Not Found` error.
  /// Value must have pattern
  /// `^projects/\[^/\]+/serviceAccounts/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Disable a ServiceAccountKey.
  ///
  /// A disabled service account key can be re-enabled with
  /// EnableServiceAccountKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account key. Use one
  /// of the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}/keys/{KEY_ID}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}/keys/{KEY_ID}` As an
  /// alternative, you can use the `-` wildcard character instead of the project
  /// ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}/keys/{KEY_ID}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}/keys/{KEY_ID}` When possible,
  /// avoid using the `-` wildcard character, because it can cause response
  /// messages to contain misleading error codes. For example, if you try to
  /// access the service account key
  /// `projects/-/serviceAccounts/fake@example.com/keys/fake-key`, which does
  /// not exist, the response contains an HTTP `403 Forbidden` error instead of
  /// a `404 Not Found` error.
  /// Value must have pattern
  /// `^projects/\[^/\]+/serviceAccounts/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> disable(
    DisableServiceAccountKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enable a ServiceAccountKey.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account key. Use one
  /// of the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}/keys/{KEY_ID}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}/keys/{KEY_ID}` As an
  /// alternative, you can use the `-` wildcard character instead of the project
  /// ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}/keys/{KEY_ID}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}/keys/{KEY_ID}` When possible,
  /// avoid using the `-` wildcard character, because it can cause response
  /// messages to contain misleading error codes. For example, if you try to
  /// access the service account key
  /// `projects/-/serviceAccounts/fake@example.com/keys/fake-key`, which does
  /// not exist, the response contains an HTTP `403 Forbidden` error instead of
  /// a `404 Not Found` error.
  /// Value must have pattern
  /// `^projects/\[^/\]+/serviceAccounts/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> enable(
    EnableServiceAccountKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a ServiceAccountKey.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account key. Use one
  /// of the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}/keys/{KEY_ID}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}/keys/{KEY_ID}` As an
  /// alternative, you can use the `-` wildcard character instead of the project
  /// ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}/keys/{KEY_ID}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}/keys/{KEY_ID}` When possible,
  /// avoid using the `-` wildcard character, because it can cause response
  /// messages to contain misleading error codes. For example, if you try to
  /// access the service account key
  /// `projects/-/serviceAccounts/fake@example.com/keys/fake-key`, which does
  /// not exist, the response contains an HTTP `403 Forbidden` error instead of
  /// a `404 Not Found` error.
  /// Value must have pattern
  /// `^projects/\[^/\]+/serviceAccounts/\[^/\]+/keys/\[^/\]+$`.
  ///
  /// [publicKeyType] - Optional. The output format of the public key. The
  /// default is `TYPE_NONE`, which means that the public key is not returned.
  /// Possible string values are:
  /// - "TYPE_NONE" : Do not return the public key.
  /// - "TYPE_X509_PEM_FILE" : X509 PEM format.
  /// - "TYPE_RAW_PUBLIC_KEY" : Raw public key.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> get(
    core.String name, {
    core.String? publicKeyType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (publicKeyType != null) 'publicKeyType': [publicKeyType],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ServiceAccountKey.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists every ServiceAccountKey for a service account.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the service account. Use one of
  /// the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [keyTypes] - Filters the types of keys the user wants to include in the
  /// list response. Duplicate key types are not allowed. If no key type is
  /// provided, all keys are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServiceAccountKeysResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServiceAccountKeysResponse> list(
    core.String name, {
    core.List<core.String>? keyTypes,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (keyTypes != null) 'keyTypes': keyTypes,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/keys';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServiceAccountKeysResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Uploads the public key portion of a key pair that you manage, and
  /// associates the public key with a ServiceAccount.
  ///
  /// After you upload the public key, you can use the private key from the key
  /// pair as a service account key.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the service account key. Use one of the
  /// following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  /// Value must have pattern `^projects/\[^/\]+/serviceAccounts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAccountKey].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAccountKey> upload(
    UploadServiceAccountKeyRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/keys:upload';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ServiceAccountKey.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class RolesResource {
  final commons.ApiRequester _requester;

  RolesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the definition of a Role.
  ///
  /// Request parameters:
  ///
  /// [name] - The `name` parameter's value depends on the target resource for
  /// the request, namely
  /// \[`roles`\](https://cloud.google.com/iam/reference/rest/v1/roles),
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles),
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `name` value format is described below: *
  /// \[`roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/roles/get):
  /// `roles/{ROLE_NAME}`. This method returns results from all
  /// [predefined roles](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles)
  /// in Cloud IAM. Example request URL:
  /// `https://iam.googleapis.com/v1/roles/{ROLE_NAME}` *
  /// \[`projects.roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/get):
  /// `projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`. This method returns only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the project level. Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles/{CUSTOM_ROLE_ID}`
  /// *
  /// \[`organizations.roles.get()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/get):
  /// `organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`. This method
  /// returns only
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles)
  /// that have been created at the organization level. Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles/{CUSTOM_ROLE_ID}`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  /// Value must have pattern `^roles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Role].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Role> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Role.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists every predefined Role that IAM supports, or every custom role that
  /// is defined for an organization or project.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Optional limit on the number of roles to include in the
  /// response. The default is 300, and the maximum is 1,000.
  ///
  /// [pageToken] - Optional pagination token returned in an earlier
  /// ListRolesResponse.
  ///
  /// [parent] - The `parent` parameter's value depends on the target resource
  /// for the request, namely
  /// \[`roles`\](https://cloud.google.com/iam/reference/rest/v1/roles),
  /// \[`projects`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles),
  /// or
  /// \[`organizations`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
  /// Each resource type's `parent` value format is described below: *
  /// \[`roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/roles/list):
  /// An empty string. This method doesn't require a resource; it simply returns
  /// all
  /// [predefined roles](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles)
  /// in Cloud IAM. Example request URL: `https://iam.googleapis.com/v1/roles` *
  /// \[`projects.roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/projects.roles/list):
  /// `projects/{PROJECT_ID}`. This method lists all project-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/projects/{PROJECT_ID}/roles` *
  /// \[`organizations.roles.list()`\](https://cloud.google.com/iam/reference/rest/v1/organizations.roles/list):
  /// `organizations/{ORGANIZATION_ID}`. This method lists all
  /// organization-level
  /// [custom roles](https://cloud.google.com/iam/docs/understanding-custom-roles).
  /// Example request URL:
  /// `https://iam.googleapis.com/v1/organizations/{ORGANIZATION_ID}/roles`
  /// Note: Wildcard (*) values are invalid; you must specify a complete project
  /// ID or organization ID.
  ///
  /// [showDeleted] - Include Roles that have been deleted.
  ///
  /// [view] - Optional view for the returned Role objects. When `FULL` is
  /// specified, the `includedPermissions` field is returned, which includes a
  /// list of all permissions in the role. The default value is `BASIC`, which
  /// does not return the `includedPermissions` field.
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field. This is the default
  /// value.
  /// - "FULL" : Returns all fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRolesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.bool? showDeleted,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (showDeleted != null) 'showDeleted': ['${showDeleted}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/roles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRolesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists roles that can be granted on a Google Cloud resource.
  ///
  /// A role is grantable if the IAM policy for the resource can contain
  /// bindings to the role.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [QueryGrantableRolesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<QueryGrantableRolesResponse> queryGrantableRoles(
    QueryGrantableRolesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/roles:queryGrantableRoles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return QueryGrantableRolesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Access related restrictions on the workforce pool.
class AccessRestrictions {
  /// Services allowed for web sign-in with the workforce pool.
  ///
  /// If not set by default there are no restrictions.
  ///
  /// Optional. Immutable.
  core.List<ServiceConfig>? allowedServices;

  /// Disable programmatic sign-in by disabling token issue via the Security
  /// Token API endpoint.
  ///
  /// See
  /// [Security Token Service API](https://cloud.google.com/iam/docs/reference/sts/rest).
  ///
  /// Optional.
  core.bool? disableProgrammaticSignin;

  AccessRestrictions({
    this.allowedServices,
    this.disableProgrammaticSignin,
  });

  AccessRestrictions.fromJson(core.Map json_)
      : this(
          allowedServices: json_.containsKey('allowedServices')
              ? (json_['allowedServices'] as core.List)
                  .map((value) => ServiceConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          disableProgrammaticSignin:
              json_.containsKey('disableProgrammaticSignin')
                  ? json_['disableProgrammaticSignin'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedServices != null) 'allowedServices': allowedServices!,
        if (disableProgrammaticSignin != null)
          'disableProgrammaticSignin': disableProgrammaticSignin!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Contains information about an auditable service.
class AuditableService {
  /// Public name of the service.
  ///
  /// For example, the service name for Cloud IAM is 'iam.googleapis.com'.
  core.String? name;

  AuditableService({
    this.name,
  });

  AuditableService.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Represents an Amazon Web Services identity provider.
class Aws {
  /// The AWS account ID.
  ///
  /// Required.
  core.String? accountId;

  Aws({
    this.accountId,
  });

  Aws.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
      };
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The request to create a new role.
class CreateRoleRequest {
  /// The Role resource to create.
  Role? role;

  /// The role ID to use for this role.
  ///
  /// A role ID may contain alphanumeric characters, underscores (`_`), and
  /// periods (`.`). It must contain a minimum of 3 characters and a maximum of
  /// 64 characters.
  core.String? roleId;

  CreateRoleRequest({
    this.role,
    this.roleId,
  });

  CreateRoleRequest.fromJson(core.Map json_)
      : this(
          role: json_.containsKey('role')
              ? Role.fromJson(
                  json_['role'] as core.Map<core.String, core.dynamic>)
              : null,
          roleId: json_.containsKey('roleId')
              ? json_['roleId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (role != null) 'role': role!,
        if (roleId != null) 'roleId': roleId!,
      };
}

/// The service account key create request.
class CreateServiceAccountKeyRequest {
  /// Which type of key and algorithm to use for the key.
  ///
  /// The default is currently a 2K RSA key. However this may change in the
  /// future.
  /// Possible string values are:
  /// - "KEY_ALG_UNSPECIFIED" : An unspecified key algorithm.
  /// - "KEY_ALG_RSA_1024" : 1k RSA Key.
  /// - "KEY_ALG_RSA_2048" : 2k RSA Key.
  core.String? keyAlgorithm;

  /// The output format of the private key.
  ///
  /// The default value is `TYPE_GOOGLE_CREDENTIALS_FILE`, which is the Google
  /// Credentials File format.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified. Equivalent to
  /// `TYPE_GOOGLE_CREDENTIALS_FILE`.
  /// - "TYPE_PKCS12_FILE" : PKCS12 format. The password for the PKCS12 file is
  /// `notasecret`. For more information, see
  /// https://tools.ietf.org/html/rfc7292.
  /// - "TYPE_GOOGLE_CREDENTIALS_FILE" : Google Credentials File format.
  core.String? privateKeyType;

  CreateServiceAccountKeyRequest({
    this.keyAlgorithm,
    this.privateKeyType,
  });

  CreateServiceAccountKeyRequest.fromJson(core.Map json_)
      : this(
          keyAlgorithm: json_.containsKey('keyAlgorithm')
              ? json_['keyAlgorithm'] as core.String
              : null,
          privateKeyType: json_.containsKey('privateKeyType')
              ? json_['privateKeyType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyAlgorithm != null) 'keyAlgorithm': keyAlgorithm!,
        if (privateKeyType != null) 'privateKeyType': privateKeyType!,
      };
}

/// The service account create request.
class CreateServiceAccountRequest {
  /// The account id that is used to generate the service account email address
  /// and a stable unique id.
  ///
  /// It is unique within a project, must be 6-30 characters long, and match the
  /// regular expression `[a-z]([-a-z0-9]*[a-z0-9])` to comply with RFC1035.
  ///
  /// Required.
  core.String? accountId;

  /// The ServiceAccount resource to create.
  ///
  /// Currently, only the following values are user assignable: `display_name`
  /// and `description`.
  ServiceAccount? serviceAccount;

  CreateServiceAccountRequest({
    this.accountId,
    this.serviceAccount,
  });

  CreateServiceAccountRequest.fromJson(core.Map json_)
      : this(
          accountId: json_.containsKey('accountId')
              ? json_['accountId'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? ServiceAccount.fromJson(json_['serviceAccount']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
      };
}

/// The service account key disable request.
typedef DisableServiceAccountKeyRequest = $Empty;

/// The service account disable request.
typedef DisableServiceAccountRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The service account key enable request.
typedef EnableServiceAccountKeyRequest = $Empty;

/// The service account enable request.
typedef EnableServiceAccountRequest = $Empty;

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// Represents an OpenId Connect 1.0 identity provider.
class GoogleIamAdminV1WorkforcePoolProviderOidc {
  /// The client ID.
  ///
  /// Must match the audience claim of the JWT issued by the identity provider.
  ///
  /// Required.
  core.String? clientId;

  /// The optional client secret.
  ///
  /// Required to enable Authorization Code flow for web sign-in.
  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret? clientSecret;

  /// The OIDC issuer URI.
  ///
  /// Must be a valid URI using the 'https' scheme.
  ///
  /// Required.
  core.String? issuerUri;

  /// OIDC JWKs in JSON String format.
  ///
  /// For details on the definition of a JWK, see
  /// https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the
  /// discovery document(fetched from the .well-known path of the `issuer_uri`)
  /// will be used. Currently, RSA and EC asymmetric keys are supported. The JWK
  /// must use following format and include only the following fields: { "keys":
  /// \[ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e":
  /// "", "x": "", "y": "", "crv": "" } \] }
  core.String? jwksJson;

  /// Configuration for web single sign-on for the OIDC provider.
  ///
  /// Here, web sign-in refers to console sign-in and gcloud sign-in through the
  /// browser.
  ///
  /// Required.
  GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig? webSsoConfig;

  GoogleIamAdminV1WorkforcePoolProviderOidc({
    this.clientId,
    this.clientSecret,
    this.issuerUri,
    this.jwksJson,
    this.webSsoConfig,
  });

  GoogleIamAdminV1WorkforcePoolProviderOidc.fromJson(core.Map json_)
      : this(
          clientId: json_.containsKey('clientId')
              ? json_['clientId'] as core.String
              : null,
          clientSecret: json_.containsKey('clientSecret')
              ? GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>)
              : null,
          issuerUri: json_.containsKey('issuerUri')
              ? json_['issuerUri'] as core.String
              : null,
          jwksJson: json_.containsKey('jwksJson')
              ? json_['jwksJson'] as core.String
              : null,
          webSsoConfig: json_.containsKey('webSsoConfig')
              ? GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig.fromJson(
                  json_['webSsoConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
        if (issuerUri != null) 'issuerUri': issuerUri!,
        if (jwksJson != null) 'jwksJson': jwksJson!,
        if (webSsoConfig != null) 'webSsoConfig': webSsoConfig!,
      };
}

/// Representation of a client secret configured for the OIDC provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret {
  /// The value of the client secret.
  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue? value;

  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret({
    this.value,
  });

  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret.fromJson(core.Map json_)
      : this(
          value: json_.containsKey('value')
              ? GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue
                  .fromJson(
                      json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// Representation of the value of the client secret.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue {
  /// Input only.
  ///
  /// The plain text of the client secret value. For security reasons, this
  /// field is only used for input and will never be populated in any response.
  core.String? plainText;

  /// A thumbprint to represent the current client secret value.
  ///
  /// Output only.
  core.String? thumbprint;

  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue({
    this.plainText,
    this.thumbprint,
  });

  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue.fromJson(
      core.Map json_)
      : this(
          plainText: json_.containsKey('plainText')
              ? json_['plainText'] as core.String
              : null,
          thumbprint: json_.containsKey('thumbprint')
              ? json_['thumbprint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (plainText != null) 'plainText': plainText!,
        if (thumbprint != null) 'thumbprint': thumbprint!,
      };
}

/// Configuration for web single sign-on for the OIDC provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig {
  /// Additional scopes to request for in the OIDC authentication request on top
  /// of scopes requested by default.
  ///
  /// By default, the `openid`, `profile` and `email` scopes that are supported
  /// by the identity provider are requested. Each additional scope may be at
  /// most 256 characters. A maximum of 10 additional scopes may be configured.
  core.List<core.String>? additionalScopes;

  /// The behavior for how OIDC Claims are included in the `assertion` object
  /// used for attribute mapping and attribute condition.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ASSERTION_CLAIMS_BEHAVIOR_UNSPECIFIED" : No assertion claims behavior
  /// specified.
  /// - "MERGE_USER_INFO_OVER_ID_TOKEN_CLAIMS" : Merge the UserInfo Endpoint
  /// Claims with ID Token Claims, preferring UserInfo Claim Values for the same
  /// Claim Name. This option is available only for the Authorization Code Flow.
  /// - "ONLY_ID_TOKEN_CLAIMS" : Only include ID Token Claims.
  core.String? assertionClaimsBehavior;

  /// The Response Type to request for in the OIDC Authorization Request for web
  /// sign-in.
  ///
  /// The `CODE` Response Type is recommended to avoid the Implicit Flow, for
  /// security reasons.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESPONSE_TYPE_UNSPECIFIED" : No Response Type specified.
  /// - "CODE" : The `response_type=code` selection uses the Authorization Code
  /// Flow for web sign-in. Requires a configured client secret.
  /// - "ID_TOKEN" : The `response_type=id_token` selection uses the Implicit
  /// Flow for web sign-in.
  core.String? responseType;

  GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig({
    this.additionalScopes,
    this.assertionClaimsBehavior,
    this.responseType,
  });

  GoogleIamAdminV1WorkforcePoolProviderOidcWebSsoConfig.fromJson(core.Map json_)
      : this(
          additionalScopes: json_.containsKey('additionalScopes')
              ? (json_['additionalScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          assertionClaimsBehavior: json_.containsKey('assertionClaimsBehavior')
              ? json_['assertionClaimsBehavior'] as core.String
              : null,
          responseType: json_.containsKey('responseType')
              ? json_['responseType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalScopes != null) 'additionalScopes': additionalScopes!,
        if (assertionClaimsBehavior != null)
          'assertionClaimsBehavior': assertionClaimsBehavior!,
        if (responseType != null) 'responseType': responseType!,
      };
}

/// Represents a SAML identity provider.
class GoogleIamAdminV1WorkforcePoolProviderSaml {
  /// SAML Identity provider configuration metadata xml doc.
  ///
  /// The xml document should comply with
  /// [SAML 2.0 specification](https://docs.oasis-open.org/security/saml/v2.0/saml-metadata-2.0-os.pdf).
  /// The max size of the acceptable xml document will be bounded to 128k
  /// characters. The metadata xml document should satisfy the following
  /// constraints: 1) Must contain an Identity Provider Entity ID. 2) Must
  /// contain at least one non-expired signing key certificate. 3) For each
  /// signing key: a) Valid from should be no more than 7 days from now. b)
  /// Valid to should be no more than 15 years in the future. 4) Up to 3 IdP
  /// signing keys are allowed in the metadata xml. When updating the provider's
  /// metadata xml, at least one non-expired signing key must overlap with the
  /// existing metadata. This requirement is skipped if there are no non-expired
  /// signing keys present in the existing metadata.
  ///
  /// Required.
  core.String? idpMetadataXml;

  GoogleIamAdminV1WorkforcePoolProviderSaml({
    this.idpMetadataXml,
  });

  GoogleIamAdminV1WorkforcePoolProviderSaml.fromJson(core.Map json_)
      : this(
          idpMetadataXml: json_.containsKey('idpMetadataXml')
              ? json_['idpMetadataXml'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idpMetadataXml != null) 'idpMetadataXml': idpMetadataXml!,
      };
}

/// Represents a public key data along with its format.
class KeyData {
  /// The format of the key.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "KEY_FORMAT_UNSPECIFIED" : No format has been specified. This is an
  /// invalid format and must not be used.
  /// - "RSA_X509_PEM" : A RSA public key wrapped in an X.509v3 certificate
  /// (\[RFC5280\] ( https://www.ietf.org/rfc/rfc5280.txt)), encoded in base64,
  /// and wrapped in
  /// [public certificate label](https://datatracker.ietf.org/doc/html/rfc7468#section-5.1).
  core.String? format;

  /// The key data.
  ///
  /// The format of the key is represented by the format field.
  ///
  /// Output only.
  core.String? key;

  /// The specifications for the key.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KEY_SPEC_UNSPECIFIED" : No key specification specified.
  /// - "RSA_2048" : A 2048 bit RSA key.
  /// - "RSA_3072" : A 3072 bit RSA key.
  /// - "RSA_4096" : A 4096 bit RSA key.
  core.String? keySpec;

  /// Latest timestamp when this key is valid.
  ///
  /// Attempts to use this key after this time will fail. Only present if the
  /// key data represents a X.509 certificate.
  ///
  /// Output only.
  core.String? notAfterTime;

  /// Earliest timestamp when this key is valid.
  ///
  /// Attempts to use this key before this time will fail. Only present if the
  /// key data represents a X.509 certificate.
  ///
  /// Output only.
  core.String? notBeforeTime;

  KeyData({
    this.format,
    this.key,
    this.keySpec,
    this.notAfterTime,
    this.notBeforeTime,
  });

  KeyData.fromJson(core.Map json_)
      : this(
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          keySpec: json_.containsKey('keySpec')
              ? json_['keySpec'] as core.String
              : null,
          notAfterTime: json_.containsKey('notAfterTime')
              ? json_['notAfterTime'] as core.String
              : null,
          notBeforeTime: json_.containsKey('notBeforeTime')
              ? json_['notBeforeTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (format != null) 'format': format!,
        if (key != null) 'key': key!,
        if (keySpec != null) 'keySpec': keySpec!,
        if (notAfterTime != null) 'notAfterTime': notAfterTime!,
        if (notBeforeTime != null) 'notBeforeTime': notBeforeTime!,
      };
}

/// The request to lint a Cloud IAM policy object.
class LintPolicyRequest {
  /// google.iam.v1.Binding.condition object to be linted.
  Expr? condition;

  /// The full resource name of the policy this lint request is about.
  ///
  /// The name follows the Google Cloud format for full resource names. For
  /// example, a Cloud project with ID `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`. The resource
  /// name is not used to read a policy from IAM. Only the data in the request
  /// object is linted.
  core.String? fullResourceName;

  LintPolicyRequest({
    this.condition,
    this.fullResourceName,
  });

  LintPolicyRequest.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
      };
}

/// The response of a lint operation.
///
/// An empty response indicates the operation was able to fully execute and no
/// lint issue was found.
class LintPolicyResponse {
  /// List of lint results sorted by `severity` in descending order.
  core.List<LintResult>? lintResults;

  LintPolicyResponse({
    this.lintResults,
  });

  LintPolicyResponse.fromJson(core.Map json_)
      : this(
          lintResults: json_.containsKey('lintResults')
              ? (json_['lintResults'] as core.List)
                  .map((value) => LintResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lintResults != null) 'lintResults': lintResults!,
      };
}

/// Structured response of a single validation unit.
class LintResult {
  /// Human readable debug message associated with the issue.
  core.String? debugMessage;

  /// The name of the field for which this lint result is about.
  ///
  /// For nested messages `field_name` consists of names of the embedded fields
  /// separated by period character. The top-level qualifier is the input object
  /// to lint in the request. For example, the `field_name` value
  /// `condition.expression` identifies a lint result for the `expression` field
  /// of the provided condition.
  core.String? fieldName;

  /// The validation unit level.
  /// Possible string values are:
  /// - "LEVEL_UNSPECIFIED" : Level is unspecified.
  /// - "CONDITION" : A validation unit which operates on an individual
  /// condition within a binding.
  core.String? level;

  /// 0-based character position of problematic construct within the object
  /// identified by `field_name`.
  ///
  /// Currently, this is populated only for condition expression.
  core.int? locationOffset;

  /// The validation unit severity.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Severity is unspecified.
  /// - "ERROR" : A validation unit returns an error only for critical issues.
  /// If an attempt is made to set the problematic policy without rectifying the
  /// critical issue, it causes the `setPolicy` operation to fail.
  /// - "WARNING" : Any issue which is severe enough but does not cause an
  /// error. For example, suspicious constructs in the input object will not
  /// necessarily fail `setPolicy`, but there is a high likelihood that they
  /// won't behave as expected during policy evaluation in `checkPolicy`. This
  /// includes the following common scenarios: - Unsatisfiable condition:
  /// Expired timestamp in date/time condition. - Ineffective condition:
  /// Condition on a pair which is granted unconditionally in another binding of
  /// the same policy.
  /// - "NOTICE" : Reserved for the issues that are not severe as
  /// `ERROR`/`WARNING`, but need special handling. For instance, messages about
  /// skipped validation units are issued as `NOTICE`.
  /// - "INFO" : Any informative statement which is not severe enough to raise
  /// `ERROR`/`WARNING`/`NOTICE`, like auto-correction recommendations on the
  /// input content. Note that current version of the linter does not utilize
  /// `INFO`.
  /// - "DEPRECATED" : Deprecated severity level.
  core.String? severity;

  /// The validation unit name, for instance
  /// "lintValidationUnits/ConditionComplexityCheck".
  core.String? validationUnitName;

  LintResult({
    this.debugMessage,
    this.fieldName,
    this.level,
    this.locationOffset,
    this.severity,
    this.validationUnitName,
  });

  LintResult.fromJson(core.Map json_)
      : this(
          debugMessage: json_.containsKey('debugMessage')
              ? json_['debugMessage'] as core.String
              : null,
          fieldName: json_.containsKey('fieldName')
              ? json_['fieldName'] as core.String
              : null,
          level:
              json_.containsKey('level') ? json_['level'] as core.String : null,
          locationOffset: json_.containsKey('locationOffset')
              ? json_['locationOffset'] as core.int
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          validationUnitName: json_.containsKey('validationUnitName')
              ? json_['validationUnitName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugMessage != null) 'debugMessage': debugMessage!,
        if (fieldName != null) 'fieldName': fieldName!,
        if (level != null) 'level': level!,
        if (locationOffset != null) 'locationOffset': locationOffset!,
        if (severity != null) 'severity': severity!,
        if (validationUnitName != null)
          'validationUnitName': validationUnitName!,
      };
}

/// The response containing the roles defined under a resource.
class ListRolesResponse {
  /// To retrieve the next page of results, set `ListRolesRequest.page_token` to
  /// this value.
  core.String? nextPageToken;

  /// The Roles defined on this resource.
  core.List<Role>? roles;

  ListRolesResponse({
    this.nextPageToken,
    this.roles,
  });

  ListRolesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          roles: json_.containsKey('roles')
              ? (json_['roles'] as core.List)
                  .map((value) => Role.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (roles != null) 'roles': roles!,
      };
}

/// The service account keys list response.
class ListServiceAccountKeysResponse {
  /// The public keys for the service account.
  core.List<ServiceAccountKey>? keys;

  ListServiceAccountKeysResponse({
    this.keys,
  });

  ListServiceAccountKeysResponse.fromJson(core.Map json_)
      : this(
          keys: json_.containsKey('keys')
              ? (json_['keys'] as core.List)
                  .map((value) => ServiceAccountKey.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keys != null) 'keys': keys!,
      };
}

/// The service account list response.
class ListServiceAccountsResponse {
  /// The list of matching service accounts.
  core.List<ServiceAccount>? accounts;

  /// To retrieve the next page of results, set
  /// ListServiceAccountsRequest.page_token to this value.
  core.String? nextPageToken;

  ListServiceAccountsResponse({
    this.accounts,
    this.nextPageToken,
  });

  ListServiceAccountsResponse.fromJson(core.Map json_)
      : this(
          accounts: json_.containsKey('accounts')
              ? (json_['accounts'] as core.List)
                  .map((value) => ServiceAccount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accounts != null) 'accounts': accounts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListWorkforcePoolProviderKeys.
class ListWorkforcePoolProviderKeysResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of WorkforcePoolProviderKeys.
  core.List<WorkforcePoolProviderKey>? workforcePoolProviderKeys;

  ListWorkforcePoolProviderKeysResponse({
    this.nextPageToken,
    this.workforcePoolProviderKeys,
  });

  ListWorkforcePoolProviderKeysResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workforcePoolProviderKeys:
              json_.containsKey('workforcePoolProviderKeys')
                  ? (json_['workforcePoolProviderKeys'] as core.List)
                      .map((value) => WorkforcePoolProviderKey.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workforcePoolProviderKeys != null)
          'workforcePoolProviderKeys': workforcePoolProviderKeys!,
      };
}

/// Response message for ListWorkforcePoolProviders.
class ListWorkforcePoolProvidersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of providers.
  core.List<WorkforcePoolProvider>? workforcePoolProviders;

  ListWorkforcePoolProvidersResponse({
    this.nextPageToken,
    this.workforcePoolProviders,
  });

  ListWorkforcePoolProvidersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workforcePoolProviders: json_.containsKey('workforcePoolProviders')
              ? (json_['workforcePoolProviders'] as core.List)
                  .map((value) => WorkforcePoolProvider.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workforcePoolProviders != null)
          'workforcePoolProviders': workforcePoolProviders!,
      };
}

/// Response message for ListWorkforcePools.
class ListWorkforcePoolsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of pools.
  core.List<WorkforcePool>? workforcePools;

  ListWorkforcePoolsResponse({
    this.nextPageToken,
    this.workforcePools,
  });

  ListWorkforcePoolsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workforcePools: json_.containsKey('workforcePools')
              ? (json_['workforcePools'] as core.List)
                  .map((value) => WorkforcePool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workforcePools != null) 'workforcePools': workforcePools!,
      };
}

/// Response message for ListWorkloadIdentityPoolProviderKeys.
class ListWorkloadIdentityPoolProviderKeysResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of WorkloadIdentityPoolProviderKey
  core.List<WorkloadIdentityPoolProviderKey>? workloadIdentityPoolProviderKeys;

  ListWorkloadIdentityPoolProviderKeysResponse({
    this.nextPageToken,
    this.workloadIdentityPoolProviderKeys,
  });

  ListWorkloadIdentityPoolProviderKeysResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workloadIdentityPoolProviderKeys:
              json_.containsKey('workloadIdentityPoolProviderKeys')
                  ? (json_['workloadIdentityPoolProviderKeys'] as core.List)
                      .map((value) => WorkloadIdentityPoolProviderKey.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workloadIdentityPoolProviderKeys != null)
          'workloadIdentityPoolProviderKeys': workloadIdentityPoolProviderKeys!,
      };
}

/// Response message for ListWorkloadIdentityPoolProviders.
class ListWorkloadIdentityPoolProvidersResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of providers.
  core.List<WorkloadIdentityPoolProvider>? workloadIdentityPoolProviders;

  ListWorkloadIdentityPoolProvidersResponse({
    this.nextPageToken,
    this.workloadIdentityPoolProviders,
  });

  ListWorkloadIdentityPoolProvidersResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workloadIdentityPoolProviders:
              json_.containsKey('workloadIdentityPoolProviders')
                  ? (json_['workloadIdentityPoolProviders'] as core.List)
                      .map((value) => WorkloadIdentityPoolProvider.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workloadIdentityPoolProviders != null)
          'workloadIdentityPoolProviders': workloadIdentityPoolProviders!,
      };
}

/// Response message for ListWorkloadIdentityPools.
class ListWorkloadIdentityPoolsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// A list of pools.
  core.List<WorkloadIdentityPool>? workloadIdentityPools;

  ListWorkloadIdentityPoolsResponse({
    this.nextPageToken,
    this.workloadIdentityPools,
  });

  ListWorkloadIdentityPoolsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workloadIdentityPools: json_.containsKey('workloadIdentityPools')
              ? (json_['workloadIdentityPools'] as core.List)
                  .map((value) => WorkloadIdentityPool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workloadIdentityPools != null)
          'workloadIdentityPools': workloadIdentityPools!,
      };
}

/// Represents an OpenId Connect 1.0 identity provider.
class Oidc {
  /// Acceptable values for the `aud` field (audience) in the OIDC token.
  ///
  /// Token exchange requests are rejected if the token audience does not match
  /// one of the configured values. Each audience may be at most 256 characters.
  /// A maximum of 10 audiences may be configured. If this list is empty, the
  /// OIDC token audience must be equal to the full canonical resource name of
  /// the WorkloadIdentityPoolProvider, with or without the HTTPS prefix. For
  /// example: ```
  /// //iam.googleapis.com/projects//locations//workloadIdentityPools//providers/
  /// https://iam.googleapis.com/projects//locations//workloadIdentityPools//providers/
  /// ```
  core.List<core.String>? allowedAudiences;

  /// The OIDC issuer URL.
  ///
  /// Must be an HTTPS endpoint.
  ///
  /// Required.
  core.String? issuerUri;

  /// OIDC JWKs in JSON String format.
  ///
  /// For details on the definition of a JWK, see
  /// https://tools.ietf.org/html/rfc7517. If not set, the `jwks_uri` from the
  /// discovery document(fetched from the .well-known path of the `issuer_uri`)
  /// will be used. Currently, RSA and EC asymmetric keys are supported. The JWK
  /// must use following format and include only the following fields: { "keys":
  /// \[ { "kty": "RSA/EC", "alg": "", "use": "sig", "kid": "", "n": "", "e":
  /// "", "x": "", "y": "", "crv": "" } \] }
  ///
  /// Optional.
  core.String? jwksJson;

  Oidc({
    this.allowedAudiences,
    this.issuerUri,
    this.jwksJson,
  });

  Oidc.fromJson(core.Map json_)
      : this(
          allowedAudiences: json_.containsKey('allowedAudiences')
              ? (json_['allowedAudiences'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          issuerUri: json_.containsKey('issuerUri')
              ? json_['issuerUri'] as core.String
              : null,
          jwksJson: json_.containsKey('jwksJson')
              ? json_['jwksJson'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedAudiences != null) 'allowedAudiences': allowedAudiences!,
        if (issuerUri != null) 'issuerUri': issuerUri!,
        if (jwksJson != null) 'jwksJson': jwksJson!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
              ? json_['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// The service account patch request.
///
/// You can patch only the `display_name` and `description` fields. You must use
/// the `update_mask` field to specify which of these fields you want to patch.
/// Only the fields specified in the request are guaranteed to be returned in
/// the response. Other fields may be empty in the response.
class PatchServiceAccountRequest {
  ServiceAccount? serviceAccount;
  core.String? updateMask;

  PatchServiceAccountRequest({
    this.serviceAccount,
    this.updateMask,
  });

  PatchServiceAccountRequest.fromJson(core.Map json_)
      : this(
          serviceAccount: json_.containsKey('serviceAccount')
              ? ServiceAccount.fromJson(json_['serviceAccount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// A permission which can be included by a role.
class Permission {
  /// The service API associated with the permission is not enabled.
  core.bool? apiDisabled;

  /// The current custom role support level.
  /// Possible string values are:
  /// - "SUPPORTED" : Default state. Permission is fully supported for custom
  /// role use.
  /// - "TESTING" : Permission is being tested to check custom role
  /// compatibility.
  /// - "NOT_SUPPORTED" : Permission is not supported for custom role use.
  core.String? customRolesSupportLevel;

  /// A brief description of what this Permission is used for.
  ///
  /// This permission can ONLY be used in predefined roles.
  core.String? description;

  /// The name of this Permission.
  core.String? name;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? onlyInPredefinedRoles;

  /// The preferred name for this permission.
  ///
  /// If present, then this permission is an alias of, and equivalent to, the
  /// listed primary_permission.
  core.String? primaryPermission;

  /// The current launch stage of the permission.
  /// Possible string values are:
  /// - "ALPHA" : The permission is currently in an alpha phase.
  /// - "BETA" : The permission is currently in a beta phase.
  /// - "GA" : The permission is generally available.
  /// - "DEPRECATED" : The permission is being deprecated.
  core.String? stage;

  /// The title of this Permission.
  core.String? title;

  Permission({
    this.apiDisabled,
    this.customRolesSupportLevel,
    this.description,
    this.name,
    this.onlyInPredefinedRoles,
    this.primaryPermission,
    this.stage,
    this.title,
  });

  Permission.fromJson(core.Map json_)
      : this(
          apiDisabled: json_.containsKey('apiDisabled')
              ? json_['apiDisabled'] as core.bool
              : null,
          customRolesSupportLevel: json_.containsKey('customRolesSupportLevel')
              ? json_['customRolesSupportLevel'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          onlyInPredefinedRoles: json_.containsKey('onlyInPredefinedRoles')
              ? json_['onlyInPredefinedRoles'] as core.bool
              : null,
          primaryPermission: json_.containsKey('primaryPermission')
              ? json_['primaryPermission'] as core.String
              : null,
          stage:
              json_.containsKey('stage') ? json_['stage'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiDisabled != null) 'apiDisabled': apiDisabled!,
        if (customRolesSupportLevel != null)
          'customRolesSupportLevel': customRolesSupportLevel!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (onlyInPredefinedRoles != null)
          'onlyInPredefinedRoles': onlyInPredefinedRoles!,
        if (primaryPermission != null) 'primaryPermission': primaryPermission!,
        if (stage != null) 'stage': stage!,
        if (title != null) 'title': title!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// A request to get the list of auditable services for a resource.
class QueryAuditableServicesRequest {
  /// The full resource name to query from the list of auditable services.
  ///
  /// The name follows the Google Cloud Platform resource format. For example, a
  /// Cloud Platform project with id `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  ///
  /// Required.
  core.String? fullResourceName;

  QueryAuditableServicesRequest({
    this.fullResourceName,
  });

  QueryAuditableServicesRequest.fromJson(core.Map json_)
      : this(
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
      };
}

/// A response containing a list of auditable services for a resource.
class QueryAuditableServicesResponse {
  /// The auditable services for a resource.
  core.List<AuditableService>? services;

  QueryAuditableServicesResponse({
    this.services,
  });

  QueryAuditableServicesResponse.fromJson(core.Map json_)
      : this(
          services: json_.containsKey('services')
              ? (json_['services'] as core.List)
                  .map((value) => AuditableService.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (services != null) 'services': services!,
      };
}

/// The grantable role query request.
class QueryGrantableRolesRequest {
  /// The full resource name to query from the list of grantable roles.
  ///
  /// The name follows the Google Cloud Platform resource format. For example, a
  /// Cloud Platform project with id `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  ///
  /// Required.
  core.String? fullResourceName;

  /// Optional limit on the number of roles to include in the response.
  ///
  /// The default is 300, and the maximum is 1,000.
  core.int? pageSize;

  /// Optional pagination token returned in an earlier
  /// QueryGrantableRolesResponse.
  core.String? pageToken;

  ///
  /// Possible string values are:
  /// - "BASIC" : Omits the `included_permissions` field. This is the default
  /// value.
  /// - "FULL" : Returns all fields.
  core.String? view;

  QueryGrantableRolesRequest({
    this.fullResourceName,
    this.pageSize,
    this.pageToken,
    this.view,
  });

  QueryGrantableRolesRequest.fromJson(core.Map json_)
      : this(
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          view: json_.containsKey('view') ? json_['view'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (view != null) 'view': view!,
      };
}

/// The grantable role query response.
class QueryGrantableRolesResponse {
  /// To retrieve the next page of results, set
  /// `QueryGrantableRolesRequest.page_token` to this value.
  core.String? nextPageToken;

  /// The list of matching roles.
  core.List<Role>? roles;

  QueryGrantableRolesResponse({
    this.nextPageToken,
    this.roles,
  });

  QueryGrantableRolesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          roles: json_.containsKey('roles')
              ? (json_['roles'] as core.List)
                  .map((value) => Role.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (roles != null) 'roles': roles!,
      };
}

/// A request to get permissions which can be tested on a resource.
class QueryTestablePermissionsRequest {
  /// The full resource name to query from the list of testable permissions.
  ///
  /// The name follows the Google Cloud Platform resource format. For example, a
  /// Cloud Platform project with id `my-project` will be named
  /// `//cloudresourcemanager.googleapis.com/projects/my-project`.
  ///
  /// Required.
  core.String? fullResourceName;

  /// Optional limit on the number of permissions to include in the response.
  ///
  /// The default is 100, and the maximum is 1,000.
  core.int? pageSize;

  /// Optional pagination token returned in an earlier
  /// QueryTestablePermissionsRequest.
  core.String? pageToken;

  QueryTestablePermissionsRequest({
    this.fullResourceName,
    this.pageSize,
    this.pageToken,
  });

  QueryTestablePermissionsRequest.fromJson(core.Map json_)
      : this(
          fullResourceName: json_.containsKey('fullResourceName')
              ? json_['fullResourceName'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullResourceName != null) 'fullResourceName': fullResourceName!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// The response containing permissions which can be tested on a resource.
class QueryTestablePermissionsResponse {
  /// To retrieve the next page of results, set
  /// `QueryTestableRolesRequest.page_token` to this value.
  core.String? nextPageToken;

  /// The Permissions testable on the requested resource.
  core.List<Permission>? permissions;

  QueryTestablePermissionsResponse({
    this.nextPageToken,
    this.permissions,
  });

  QueryTestablePermissionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          permissions: json_.containsKey('permissions')
              ? (json_['permissions'] as core.List)
                  .map((value) => Permission.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (permissions != null) 'permissions': permissions!,
      };
}

/// A role in the Identity and Access Management API.
class Role {
  /// The current deleted state of the role.
  ///
  /// This field is read only. It will be ignored in calls to CreateRole and
  /// UpdateRole.
  core.bool? deleted;

  /// A human-readable description for the role.
  ///
  /// Optional.
  core.String? description;

  /// Used to perform a consistent read-modify-write.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The names of the permissions this role grants when bound in an IAM policy.
  core.List<core.String>? includedPermissions;

  /// The name of the role.
  ///
  /// When `Role` is used in `CreateRole`, the role name must not be set. When
  /// `Role` is used in output and other input such as `UpdateRole`, the role
  /// name is the complete path. For example, `roles/logging.viewer` for
  /// predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for
  /// organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role`
  /// for project-level custom roles.
  core.String? name;

  /// The current launch stage of the role.
  ///
  /// If the `ALPHA` launch stage has been selected for a role, the `stage`
  /// field will not be included in the returned definition for the role.
  /// Possible string values are:
  /// - "ALPHA" : The user has indicated this role is currently in an Alpha
  /// phase. If this launch stage is selected, the `stage` field will not be
  /// included when requesting the definition for a given role.
  /// - "BETA" : The user has indicated this role is currently in a Beta phase.
  /// - "GA" : The user has indicated this role is generally available.
  /// - "DEPRECATED" : The user has indicated this role is being deprecated.
  /// - "DISABLED" : This role is disabled and will not contribute permissions
  /// to any principals it is granted to in policies.
  /// - "EAP" : The user has indicated this role is currently in an EAP phase.
  core.String? stage;

  /// A human-readable title for the role.
  ///
  /// Typically this is limited to 100 UTF-8 bytes.
  ///
  /// Optional.
  core.String? title;

  Role({
    this.deleted,
    this.description,
    this.etag,
    this.includedPermissions,
    this.name,
    this.stage,
    this.title,
  });

  Role.fromJson(core.Map json_)
      : this(
          deleted: json_.containsKey('deleted')
              ? json_['deleted'] as core.bool
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          includedPermissions: json_.containsKey('includedPermissions')
              ? (json_['includedPermissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          stage:
              json_.containsKey('stage') ? json_['stage'] as core.String : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleted != null) 'deleted': deleted!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (includedPermissions != null)
          'includedPermissions': includedPermissions!,
        if (name != null) 'name': name!,
        if (stage != null) 'stage': stage!,
        if (title != null) 'title': title!,
      };
}

/// Represents an SAML 2.0 identity provider.
class Saml {
  /// SAML Identity provider configuration metadata xml doc.
  ///
  /// The xml document should comply with
  /// [SAML 2.0 specification](https://www.oasis-open.org/committees/download.php/56785/sstc-saml-metadata-errata-2.0-wd-05.pdf).
  /// The max size of the acceptable xml document will be bounded to 128k
  /// characters. The metadata xml document should satisfy the following
  /// constraints: 1) Must contain an Identity Provider Entity ID. 2) Must
  /// contain at least one non-expired signing key certificate. 3) For each
  /// signing key: a) Valid from should be no more than 7 days from now. b)
  /// Valid to should be no more than 15 years in the future. 4) Upto 3 IdP
  /// signing keys are allowed in the metadata xml. When updating the provider's
  /// metadata xml, at lease one non-expired signing key must overlap with the
  /// existing metadata. This requirement is skipped if there are no non-expired
  /// signing keys present in the existing metadata
  ///
  /// Required.
  core.String? idpMetadataXml;

  Saml({
    this.idpMetadataXml,
  });

  Saml.fromJson(core.Map json_)
      : this(
          idpMetadataXml: json_.containsKey('idpMetadataXml')
              ? json_['idpMetadataXml'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (idpMetadataXml != null) 'idpMetadataXml': idpMetadataXml!,
      };
}

/// An IAM service account.
///
/// A service account is an account for an application or a virtual machine (VM)
/// instance, not a person. You can use a service account to call Google APIs.
/// To learn more, read the
/// [overview of service accounts](https://cloud.google.com/iam/help/service-accounts/overview).
/// When you create a service account, you specify the project ID that owns the
/// service account, as well as a name that must be unique within the project.
/// IAM uses these values to create an email address that identifies the service
/// account. //
class ServiceAccount {
  /// A user-specified, human-readable description of the service account.
  ///
  /// The maximum length is 256 UTF-8 bytes.
  ///
  /// Optional.
  core.String? description;

  /// Whether the service account is disabled.
  ///
  /// Output only.
  core.bool? disabled;

  /// A user-specified, human-readable name for the service account.
  ///
  /// The maximum length is 100 UTF-8 bytes.
  ///
  /// Optional.
  core.String? displayName;

  /// The email address of the service account.
  ///
  /// Output only.
  core.String? email;

  /// Do not use.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The resource name of the service account.
  ///
  /// Use one of the following formats: *
  /// `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you
  /// can use the `-` wildcard character instead of the project ID: *
  /// `projects/-/serviceAccounts/{EMAIL_ADDRESS}` *
  /// `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the
  /// `-` wildcard character, because it can cause response messages to contain
  /// misleading error codes. For example, if you try to access the service
  /// account `projects/-/serviceAccounts/fake@example.com`, which does not
  /// exist, the response contains an HTTP `403 Forbidden` error instead of a
  /// `404 Not Found` error.
  core.String? name;

  /// The OAuth 2.0 client ID for the service account.
  ///
  /// Output only.
  core.String? oauth2ClientId;

  /// The ID of the project that owns the service account.
  ///
  /// Output only.
  core.String? projectId;

  /// The unique, stable numeric ID for the service account.
  ///
  /// Each service account retains its unique ID even if you delete the service
  /// account. For example, if you delete a service account, then create a new
  /// service account with the same name, the new service account has a
  /// different unique ID than the deleted service account.
  ///
  /// Output only.
  core.String? uniqueId;

  ServiceAccount({
    this.description,
    this.disabled,
    this.displayName,
    this.email,
    this.etag,
    this.name,
    this.oauth2ClientId,
    this.projectId,
    this.uniqueId,
  });

  ServiceAccount.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          oauth2ClientId: json_.containsKey('oauth2ClientId')
              ? json_['oauth2ClientId'] as core.String
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          uniqueId: json_.containsKey('uniqueId')
              ? json_['uniqueId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (email != null) 'email': email!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (oauth2ClientId != null) 'oauth2ClientId': oauth2ClientId!,
        if (projectId != null) 'projectId': projectId!,
        if (uniqueId != null) 'uniqueId': uniqueId!,
      };
}

/// Represents a service account key.
///
/// A service account has two sets of key-pairs: user-managed, and
/// system-managed. User-managed key-pairs can be created and deleted by users.
/// Users are responsible for rotating these keys periodically to ensure
/// security of their service accounts. Users retain the private key of these
/// key-pairs, and Google retains ONLY the public key. System-managed keys are
/// automatically rotated by Google, and are used for signing for a maximum of
/// two weeks. The rotation process is probabilistic, and usage of the new key
/// will gradually ramp up and down over the key's lifetime. If you cache the
/// public key set for a service account, we recommend that you update the cache
/// every 15 minutes. User-managed keys can be added and removed at any time, so
/// it is important to update the cache frequently. For Google-managed keys,
/// Google will publish a key at least 6 hours before it is first used for
/// signing and will keep publishing it for at least 6 hours after it was last
/// used for signing. Public keys for all service accounts are also published at
/// the OAuth2 Service Account API.
class ServiceAccountKey {
  /// The key status.
  core.bool? disabled;

  /// Specifies the algorithm (and possibly key size) for the key.
  /// Possible string values are:
  /// - "KEY_ALG_UNSPECIFIED" : An unspecified key algorithm.
  /// - "KEY_ALG_RSA_1024" : 1k RSA Key.
  /// - "KEY_ALG_RSA_2048" : 2k RSA Key.
  core.String? keyAlgorithm;

  /// The key origin.
  /// Possible string values are:
  /// - "ORIGIN_UNSPECIFIED" : Unspecified key origin.
  /// - "USER_PROVIDED" : Key is provided by user.
  /// - "GOOGLE_PROVIDED" : Key is provided by Google.
  core.String? keyOrigin;

  /// The key type.
  /// Possible string values are:
  /// - "KEY_TYPE_UNSPECIFIED" : Unspecified key type. The presence of this in
  /// the message will immediately result in an error.
  /// - "USER_MANAGED" : User-managed keys (managed and rotated by the user).
  /// - "SYSTEM_MANAGED" : System-managed keys (managed and rotated by Google).
  core.String? keyType;

  /// The resource name of the service account key in the following format
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  core.String? name;

  /// The private key data.
  ///
  /// Only provided in `CreateServiceAccountKey` responses. Make sure to keep
  /// the private key data secure because it allows for the assertion of the
  /// service account identity. When base64 decoded, the private key data can be
  /// used to authenticate with Google API client libraries and with gcloud auth
  /// activate-service-account.
  core.String? privateKeyData;
  core.List<core.int> get privateKeyDataAsBytes =>
      convert.base64.decode(privateKeyData!);

  set privateKeyDataAsBytes(core.List<core.int> bytes_) {
    privateKeyData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The output format for the private key.
  ///
  /// Only provided in `CreateServiceAccountKey` responses, not in
  /// `GetServiceAccountKey` or `ListServiceAccountKey` responses. Google never
  /// exposes system-managed private keys, and never retains user-managed
  /// private keys.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified. Equivalent to
  /// `TYPE_GOOGLE_CREDENTIALS_FILE`.
  /// - "TYPE_PKCS12_FILE" : PKCS12 format. The password for the PKCS12 file is
  /// `notasecret`. For more information, see
  /// https://tools.ietf.org/html/rfc7292.
  /// - "TYPE_GOOGLE_CREDENTIALS_FILE" : Google Credentials File format.
  core.String? privateKeyType;

  /// The public key data.
  ///
  /// Only provided in `GetServiceAccountKey` responses.
  core.String? publicKeyData;
  core.List<core.int> get publicKeyDataAsBytes =>
      convert.base64.decode(publicKeyData!);

  set publicKeyDataAsBytes(core.List<core.int> bytes_) {
    publicKeyData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The key can be used after this timestamp.
  core.String? validAfterTime;

  /// The key can be used before this timestamp.
  ///
  /// For system-managed key pairs, this timestamp is the end time for the
  /// private key signing operation. The public key could still be used for
  /// verification for a few hours after this time.
  core.String? validBeforeTime;

  ServiceAccountKey({
    this.disabled,
    this.keyAlgorithm,
    this.keyOrigin,
    this.keyType,
    this.name,
    this.privateKeyData,
    this.privateKeyType,
    this.publicKeyData,
    this.validAfterTime,
    this.validBeforeTime,
  });

  ServiceAccountKey.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          keyAlgorithm: json_.containsKey('keyAlgorithm')
              ? json_['keyAlgorithm'] as core.String
              : null,
          keyOrigin: json_.containsKey('keyOrigin')
              ? json_['keyOrigin'] as core.String
              : null,
          keyType: json_.containsKey('keyType')
              ? json_['keyType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          privateKeyData: json_.containsKey('privateKeyData')
              ? json_['privateKeyData'] as core.String
              : null,
          privateKeyType: json_.containsKey('privateKeyType')
              ? json_['privateKeyType'] as core.String
              : null,
          publicKeyData: json_.containsKey('publicKeyData')
              ? json_['publicKeyData'] as core.String
              : null,
          validAfterTime: json_.containsKey('validAfterTime')
              ? json_['validAfterTime'] as core.String
              : null,
          validBeforeTime: json_.containsKey('validBeforeTime')
              ? json_['validBeforeTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (keyAlgorithm != null) 'keyAlgorithm': keyAlgorithm!,
        if (keyOrigin != null) 'keyOrigin': keyOrigin!,
        if (keyType != null) 'keyType': keyType!,
        if (name != null) 'name': name!,
        if (privateKeyData != null) 'privateKeyData': privateKeyData!,
        if (privateKeyType != null) 'privateKeyType': privateKeyType!,
        if (publicKeyData != null) 'publicKeyData': publicKeyData!,
        if (validAfterTime != null) 'validAfterTime': validAfterTime!,
        if (validBeforeTime != null) 'validBeforeTime': validBeforeTime!,
      };
}

/// Configuration for a service.
class ServiceConfig {
  /// Domain name of the service.
  ///
  /// Example: console.cloud.google
  ///
  /// Optional.
  core.String? domain;

  ServiceConfig({
    this.domain,
  });

  ServiceConfig.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
///
/// The service account sign blob request.
///
/// Deprecated.
class SignBlobRequest {
  /// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The bytes to sign.
  ///
  /// Required. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? bytesToSign;
  core.List<core.int> get bytesToSignAsBytes =>
      convert.base64.decode(bytesToSign!);

  set bytesToSignAsBytes(core.List<core.int> bytes_) {
    bytesToSign =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignBlobRequest({
    this.bytesToSign,
  });

  SignBlobRequest.fromJson(core.Map json_)
      : this(
          bytesToSign: json_.containsKey('bytesToSign')
              ? json_['bytesToSign'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bytesToSign != null) 'bytesToSign': bytesToSign!,
      };
}

/// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
///
/// The service account sign blob response.
///
/// Deprecated.
class SignBlobResponse {
  /// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The id of the key used to sign the blob.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? keyId;

  /// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The signed blob.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? signature;
  core.List<core.int> get signatureAsBytes => convert.base64.decode(signature!);

  set signatureAsBytes(core.List<core.int> bytes_) {
    signature =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  SignBlobResponse({
    this.keyId,
    this.signature,
  });

  SignBlobResponse.fromJson(core.Map json_)
      : this(
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
          signature: json_.containsKey('signature')
              ? json_['signature'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (signature != null) 'signature': signature!,
      };
}

/// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
///
/// The service account sign JWT request.
///
/// Deprecated.
class SignJwtRequest {
  /// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The JWT payload to sign. Must be a serialized JSON object that contains a
  /// JWT Claims Set. For example: `{"sub": "user@example.com", "iat": 313435}`
  /// If the JWT Claims Set contains an expiration time (`exp`) claim, it must
  /// be an integer timestamp that is not in the past and no more than 12 hours
  /// in the future. If the JWT Claims Set does not contain an expiration time
  /// (`exp`) claim, this claim is added automatically, with a timestamp that is
  /// 1 hour in the future.
  ///
  /// Required. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? payload;

  SignJwtRequest({
    this.payload,
  });

  SignJwtRequest.fromJson(core.Map json_)
      : this(
          payload: json_.containsKey('payload')
              ? json_['payload'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (payload != null) 'payload': payload!,
      };
}

/// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
///
/// The service account sign JWT response.
///
/// Deprecated.
class SignJwtResponse {
  /// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The id of the key used to sign the JWT.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? keyId;

  /// [Migrate to Service Account Credentials API](https://cloud.google.com/iam/help/credentials/migrate-api).
  ///
  /// The signed JWT.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? signedJwt;

  SignJwtResponse({
    this.keyId,
    this.signedJwt,
  });

  SignJwtResponse.fromJson(core.Map json_)
      : this(
          keyId:
              json_.containsKey('keyId') ? json_['keyId'] as core.String : null,
          signedJwt: json_.containsKey('signedJwt')
              ? json_['signedJwt'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (signedJwt != null) 'signedJwt': signedJwt!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// The request to undelete an existing role.
class UndeleteRoleRequest {
  /// Used to perform a consistent read-modify-write.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  UndeleteRoleRequest({
    this.etag,
  });

  UndeleteRoleRequest.fromJson(core.Map json_)
      : this(
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
      };
}

/// The service account undelete request.
typedef UndeleteServiceAccountRequest = $Empty;

class UndeleteServiceAccountResponse {
  /// Metadata for the restored service account.
  ServiceAccount? restoredAccount;

  UndeleteServiceAccountResponse({
    this.restoredAccount,
  });

  UndeleteServiceAccountResponse.fromJson(core.Map json_)
      : this(
          restoredAccount: json_.containsKey('restoredAccount')
              ? ServiceAccount.fromJson(json_['restoredAccount']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (restoredAccount != null) 'restoredAccount': restoredAccount!,
      };
}

/// Request message for UndeleteWorkforcePoolProviderKey.
typedef UndeleteWorkforcePoolProviderKeyRequest = $Empty;

/// Request message for UndeleteWorkforcePoolProvider.
typedef UndeleteWorkforcePoolProviderRequest = $Empty;

/// Request message for UndeleteWorkforcePool.
typedef UndeleteWorkforcePoolRequest = $Empty;

/// Request message for UndeleteWorkforcePoolSubject.
typedef UndeleteWorkforcePoolSubjectRequest = $Empty;

/// Request message for UndeleteWorkloadIdentityPoolProviderKey.
typedef UndeleteWorkloadIdentityPoolProviderKeyRequest = $Empty;

/// Request message for UndeleteWorkloadIdentityPoolProvider.
typedef UndeleteWorkloadIdentityPoolProviderRequest = $Empty;

/// Request message for UndeleteWorkloadIdentityPool.
typedef UndeleteWorkloadIdentityPoolRequest = $Empty;

/// The service account key upload request.
class UploadServiceAccountKeyRequest {
  /// The public key to associate with the service account.
  ///
  /// Must be an RSA public key that is wrapped in an X.509 v3 certificate.
  /// Include the first line, `-----BEGIN CERTIFICATE-----`, and the last line,
  /// `-----END CERTIFICATE-----`.
  core.String? publicKeyData;
  core.List<core.int> get publicKeyDataAsBytes =>
      convert.base64.decode(publicKeyData!);

  set publicKeyDataAsBytes(core.List<core.int> bytes_) {
    publicKeyData =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  UploadServiceAccountKeyRequest({
    this.publicKeyData,
  });

  UploadServiceAccountKeyRequest.fromJson(core.Map json_)
      : this(
          publicKeyData: json_.containsKey('publicKeyData')
              ? json_['publicKeyData'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (publicKeyData != null) 'publicKeyData': publicKeyData!,
      };
}

/// Represents a collection of external workforces.
///
/// Provides namespaces for federated users that can be referenced in IAM
/// policies.
class WorkforcePool {
  /// Configure access restrictions on the workforce pool users.
  ///
  /// This is an optional field. If specified web sign-in can be restricted to
  /// given set of services or programmatic sign-in can be disabled for pool
  /// users.
  ///
  /// Optional.
  AccessRestrictions? accessRestrictions;

  /// A user-specified description of the pool.
  ///
  /// Cannot exceed 256 characters.
  core.String? description;

  /// Disables the workforce pool.
  ///
  /// You cannot use a disabled pool to exchange tokens, or use existing tokens
  /// to access resources. If the pool is re-enabled, existing tokens grant
  /// access again.
  core.bool? disabled;

  /// A user-specified display name of the pool in Google Cloud Console.
  ///
  /// Cannot exceed 32 characters.
  core.String? displayName;

  /// Time after which the workforce pool will be permanently purged and cannot
  /// be recovered.
  ///
  /// Output only.
  core.String? expireTime;

  /// The resource name of the pool.
  ///
  /// Format: `locations/{location}/workforcePools/{workforce_pool_id}`
  ///
  /// Output only.
  core.String? name;

  /// The resource name of the parent.
  ///
  /// Format: `organizations/{org-id}`.
  ///
  /// Immutable.
  core.String? parent;

  /// Duration that the Google Cloud access tokens, console sign-in sessions,
  /// and `gcloud` sign-in sessions from this pool are valid.
  ///
  /// Must be greater than 15 minutes (900s) and less than 12 hours (43200s). If
  /// `session_duration` is not configured, minted credentials have a default
  /// duration of one hour (3600s). For SAML providers, the lifetime of the
  /// token is the minimum of the `session_duration` and the
  /// `SessionNotOnOrAfter` claim in the SAML assertion.
  core.String? sessionDuration;

  /// The state of the pool.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "ACTIVE" : The pool is active and may be used in Google Cloud policies.
  /// - "DELETED" : The pool is soft-deleted. Soft-deleted pools are permanently
  /// deleted after approximately 30 days. You can restore a soft-deleted pool
  /// using UndeleteWorkforcePool. You cannot reuse the ID of a soft-deleted
  /// pool until it is permanently deleted. While a pool is deleted, you cannot
  /// use it to exchange tokens, or use existing tokens to access resources. If
  /// the pool is undeleted, existing tokens grant access again.
  core.String? state;

  WorkforcePool({
    this.accessRestrictions,
    this.description,
    this.disabled,
    this.displayName,
    this.expireTime,
    this.name,
    this.parent,
    this.sessionDuration,
    this.state,
  });

  WorkforcePool.fromJson(core.Map json_)
      : this(
          accessRestrictions: json_.containsKey('accessRestrictions')
              ? AccessRestrictions.fromJson(json_['accessRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          sessionDuration: json_.containsKey('sessionDuration')
              ? json_['sessionDuration'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessRestrictions != null)
          'accessRestrictions': accessRestrictions!,
        if (description != null) 'description': description!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (sessionDuration != null) 'sessionDuration': sessionDuration!,
        if (state != null) 'state': state!,
      };
}

/// A configuration for an external identity provider.
class WorkforcePoolProvider {
  /// A [Common Expression Language](https://opensource.google/projects/cel)
  /// expression, in plain text, to restrict what otherwise valid authentication
  /// credentials issued by the provider should not be accepted.
  ///
  /// The expression must output a boolean representing whether to allow the
  /// federation. The following keywords may be referenced in the expressions: *
  /// `assertion`: JSON representing the authentication credential issued by the
  /// provider. * `google`: The Google attributes mapped from the assertion in
  /// the `attribute_mappings`. `google.profile_photo` and `google.display_name`
  /// are not supported. * `attribute`: The custom attributes mapped from the
  /// assertion in the `attribute_mappings`. The maximum length of the attribute
  /// condition expression is 4096 characters. If unspecified, all valid
  /// authentication credentials will be accepted. The following example shows
  /// how to only allow credentials with a mapped `google.groups` value of
  /// `admins`: ``` "'admins' in google.groups" ```
  core.String? attributeCondition;

  /// Maps attributes from the authentication credentials issued by an external
  /// identity provider to Google Cloud attributes, such as `subject` and
  /// `segment`.
  ///
  /// Each key must be a string specifying the Google Cloud IAM attribute to map
  /// to. The following keys are supported: * `google.subject`: The principal
  /// IAM is authenticating. You can reference this value in IAM bindings. This
  /// is also the subject that appears in Cloud Logging logs. This is a required
  /// field and the mapped subject cannot exceed 127 bytes. * `google.groups`:
  /// Groups the authenticating user belongs to. You can grant groups access to
  /// resources using an IAM `principalSet` binding; access applies to all
  /// members of the group. * `google.display_name`: The name of the
  /// authenticated user. This is an optional field and the mapped display name
  /// cannot exceed 100 bytes. If not set, `google.subject` will be displayed
  /// instead. This attribute cannot be referenced in IAM bindings. *
  /// `google.profile_photo`: The URL that specifies the authenticated user's
  /// thumbnail photo. This is an optional field. When set, the image will be
  /// visible as the user's profile picture. If not set, a generic user icon
  /// will be displayed instead. This attribute cannot be referenced in IAM
  /// bindings. You can also provide custom attributes by specifying
  /// `attribute.{custom_attribute}`, where {custom_attribute} is the name of
  /// the custom attribute to be mapped. You can define a maximum of 50 custom
  /// attributes. The maximum length of a mapped attribute key is 100
  /// characters, and the key may only contain the characters \[a-z0-9_\]. You
  /// can reference these attributes in IAM policies to define fine-grained
  /// access for a workforce pool to Google Cloud resources. For example: *
  /// `google.subject`:
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool}/subject/{value}`
  /// * `google.groups`:
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/group/{value}`
  /// * `attribute.{custom_attribute}`:
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool}/attribute.{custom_attribute}/{value}`
  /// Each value must be a
  /// [Common Expression Language](https://opensource.google/projects/cel)
  /// function that maps an identity provider credential to the normalized
  /// attribute specified by the corresponding map key. You can use the
  /// `assertion` keyword in the expression to access a JSON representation of
  /// the authentication credential issued by the provider. The maximum length
  /// of an attribute mapping expression is 2048 characters. When evaluated, the
  /// total size of all mapped attributes must not exceed 4KB. For OIDC
  /// providers, you must supply a custom mapping that includes the
  /// `google.subject` attribute. For example, the following maps the `sub`
  /// claim of the incoming credential to the `subject` attribute on a Google
  /// token: ``` {"google.subject": "assertion.sub"} ```
  ///
  /// Required.
  core.Map<core.String, core.String>? attributeMapping;

  /// A user-specified description of the provider.
  ///
  /// Cannot exceed 256 characters.
  core.String? description;

  /// Disables the workforce pool provider.
  ///
  /// You cannot use a disabled provider to exchange tokens. However, existing
  /// tokens still grant access.
  core.bool? disabled;

  /// A user-specified display name for the provider.
  ///
  /// Cannot exceed 32 characters.
  core.String? displayName;

  /// Time after which the workload pool provider will be permanently purged and
  /// cannot be recovered.
  ///
  /// Output only.
  core.String? expireTime;

  /// The resource name of the provider.
  ///
  /// Format:
  /// `locations/{location}/workforcePools/{workforce_pool_id}/providers/{provider_id}`
  ///
  /// Output only.
  core.String? name;

  /// An OpenId Connect 1.0 identity provider configuration.
  GoogleIamAdminV1WorkforcePoolProviderOidc? oidc;

  /// A SAML identity provider configuration.
  GoogleIamAdminV1WorkforcePoolProviderSaml? saml;

  /// The state of the provider.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "ACTIVE" : The provider is active and may be used to validate
  /// authentication credentials.
  /// - "DELETED" : The provider is soft-deleted. Soft-deleted providers are
  /// permanently deleted after approximately 30 days. You can restore a
  /// soft-deleted provider using UndeleteWorkforcePoolProvider.
  core.String? state;

  WorkforcePoolProvider({
    this.attributeCondition,
    this.attributeMapping,
    this.description,
    this.disabled,
    this.displayName,
    this.expireTime,
    this.name,
    this.oidc,
    this.saml,
    this.state,
  });

  WorkforcePoolProvider.fromJson(core.Map json_)
      : this(
          attributeCondition: json_.containsKey('attributeCondition')
              ? json_['attributeCondition'] as core.String
              : null,
          attributeMapping: json_.containsKey('attributeMapping')
              ? (json_['attributeMapping']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          oidc: json_.containsKey('oidc')
              ? GoogleIamAdminV1WorkforcePoolProviderOidc.fromJson(
                  json_['oidc'] as core.Map<core.String, core.dynamic>)
              : null,
          saml: json_.containsKey('saml')
              ? GoogleIamAdminV1WorkforcePoolProviderSaml.fromJson(
                  json_['saml'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeCondition != null)
          'attributeCondition': attributeCondition!,
        if (attributeMapping != null) 'attributeMapping': attributeMapping!,
        if (description != null) 'description': description!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (oidc != null) 'oidc': oidc!,
        if (saml != null) 'saml': saml!,
        if (state != null) 'state': state!,
      };
}

/// Represents a public key configuration for a Workforce Pool Provider.
///
/// The key can be configured in your identity provider to encrypt SAML
/// assertions. Google holds the corresponding private key, which it uses to
/// decrypt encrypted tokens.
class WorkforcePoolProviderKey {
  /// The time after which the key will be permanently deleted and cannot be
  /// recovered.
  ///
  /// Note that the key may get purged before this time if the total limit of
  /// keys per provider is exceeded.
  ///
  /// Output only.
  core.String? expireTime;

  /// Public half of the asymmetric key.
  ///
  /// Immutable.
  KeyData? keyData;

  /// The resource name of the key.
  ///
  /// Output only.
  core.String? name;

  /// The state of the key.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "ACTIVE" : The key is active.
  /// - "DELETED" : The key is soft-deleted. Soft-deleted keys are permanently
  /// deleted after approximately 30 days. You can restore a soft-deleted key
  /// using UndeleteWorkforcePoolProviderKey.
  core.String? state;

  /// The purpose of the key.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KEY_USE_UNSPECIFIED" : KeyUse unspecified.
  /// - "ENCRYPTION" : The key is used for encryption.
  core.String? use;

  WorkforcePoolProviderKey({
    this.expireTime,
    this.keyData,
    this.name,
    this.state,
    this.use,
  });

  WorkforcePoolProviderKey.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          keyData: json_.containsKey('keyData')
              ? KeyData.fromJson(
                  json_['keyData'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          use: json_.containsKey('use') ? json_['use'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (keyData != null) 'keyData': keyData!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (use != null) 'use': use!,
      };
}

/// Represents a collection of workload identities.
///
/// You can define IAM policies to grant these identities access to Google Cloud
/// resources.
class WorkloadIdentityPool {
  /// A description of the pool.
  ///
  /// Cannot exceed 256 characters.
  core.String? description;

  /// Whether the pool is disabled.
  ///
  /// You cannot use a disabled pool to exchange tokens, or use existing tokens
  /// to access resources. If the pool is re-enabled, existing tokens grant
  /// access again.
  core.bool? disabled;

  /// A display name for the pool.
  ///
  /// Cannot exceed 32 characters.
  core.String? displayName;

  /// Time after which the workload identity pool will be permanently purged and
  /// cannot be recovered.
  ///
  /// Output only.
  core.String? expireTime;

  /// The resource name of the pool.
  ///
  /// Output only.
  core.String? name;

  /// The state of the pool.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "ACTIVE" : The pool is active, and may be used in Google Cloud policies.
  /// - "DELETED" : The pool is soft-deleted. Soft-deleted pools are permanently
  /// deleted after approximately 30 days. You can restore a soft-deleted pool
  /// using UndeleteWorkloadIdentityPool. You cannot reuse the ID of a
  /// soft-deleted pool until it is permanently deleted. While a pool is
  /// deleted, you cannot use it to exchange tokens, or use existing tokens to
  /// access resources. If the pool is undeleted, existing tokens grant access
  /// again.
  core.String? state;

  WorkloadIdentityPool({
    this.description,
    this.disabled,
    this.displayName,
    this.expireTime,
    this.name,
    this.state,
  });

  WorkloadIdentityPool.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// A configuration for an external identity provider.
class WorkloadIdentityPoolProvider {
  /// [A Common Expression Language](https://opensource.google/projects/cel)
  /// expression, in plain text, to restrict what otherwise valid authentication
  /// credentials issued by the provider should not be accepted.
  ///
  /// The expression must output a boolean representing whether to allow the
  /// federation. The following keywords may be referenced in the expressions: *
  /// `assertion`: JSON representing the authentication credential issued by the
  /// provider. * `google`: The Google attributes mapped from the assertion in
  /// the `attribute_mappings`. * `attribute`: The custom attributes mapped from
  /// the assertion in the `attribute_mappings`. The maximum length of the
  /// attribute condition expression is 4096 characters. If unspecified, all
  /// valid authentication credential are accepted. The following example shows
  /// how to only allow credentials with a mapped `google.groups` value of
  /// `admins`: ``` "'admins' in google.groups" ```
  core.String? attributeCondition;

  /// Maps attributes from authentication credentials issued by an external
  /// identity provider to Google Cloud attributes, such as `subject` and
  /// `segment`.
  ///
  /// Each key must be a string specifying the Google Cloud IAM attribute to map
  /// to. The following keys are supported: * `google.subject`: The principal
  /// IAM is authenticating. You can reference this value in IAM bindings. This
  /// is also the subject that appears in Cloud Logging logs. Cannot exceed 127
  /// bytes. * `google.groups`: Groups the external identity belongs to. You can
  /// grant groups access to resources using an IAM `principalSet` binding;
  /// access applies to all members of the group. You can also provide custom
  /// attributes by specifying `attribute.{custom_attribute}`, where
  /// `{custom_attribute}` is the name of the custom attribute to be mapped. You
  /// can define a maximum of 50 custom attributes. The maximum length of a
  /// mapped attribute key is 100 characters, and the key may only contain the
  /// characters \[a-z0-9_\]. You can reference these attributes in IAM policies
  /// to define fine-grained access for a workload to Google Cloud resources.
  /// For example: * `google.subject`:
  /// `principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}`
  /// * `google.groups`:
  /// `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}`
  /// * `attribute.{custom_attribute}`:
  /// `principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}`
  /// Each value must be a
  /// [Common Expression Language](https://opensource.google/projects/cel)
  /// function that maps an identity provider credential to the normalized
  /// attribute specified by the corresponding map key. You can use the
  /// `assertion` keyword in the expression to access a JSON representation of
  /// the authentication credential issued by the provider. The maximum length
  /// of an attribute mapping expression is 2048 characters. When evaluated, the
  /// total size of all mapped attributes must not exceed 8KB. For AWS
  /// providers, if no attribute mapping is defined, the following default
  /// mapping applies: ``` { "google.subject":"assertion.arn",
  /// "attribute.aws_role": "assertion.arn.contains('assumed-role')" " ?
  /// assertion.arn.extract('{account_arn}assumed-role/')" " + 'assumed-role/'"
  /// " + assertion.arn.extract('assumed-role/{role_name}/')" " :
  /// assertion.arn", } ``` If any custom attribute mappings are defined, they
  /// must include a mapping to the `google.subject` attribute. For OIDC
  /// providers, you must supply a custom mapping, which must include the
  /// `google.subject` attribute. For example, the following maps the `sub`
  /// claim of the incoming credential to the `subject` attribute on a Google
  /// token: ``` {"google.subject": "assertion.sub"} ```
  core.Map<core.String, core.String>? attributeMapping;

  /// An Amazon Web Services identity provider.
  Aws? aws;

  /// A description for the provider.
  ///
  /// Cannot exceed 256 characters.
  core.String? description;

  /// Whether the provider is disabled.
  ///
  /// You cannot use a disabled provider to exchange tokens. However, existing
  /// tokens still grant access.
  core.bool? disabled;

  /// A display name for the provider.
  ///
  /// Cannot exceed 32 characters.
  core.String? displayName;

  /// Time after which the workload identity pool provider will be permanently
  /// purged and cannot be recovered.
  ///
  /// Output only.
  core.String? expireTime;

  /// The resource name of the provider.
  ///
  /// Output only.
  core.String? name;

  /// An OpenId Connect 1.0 identity provider.
  Oidc? oidc;

  /// An SAML 2.0 identity provider.
  Saml? saml;

  /// The state of the provider.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "ACTIVE" : The provider is active, and may be used to validate
  /// authentication credentials.
  /// - "DELETED" : The provider is soft-deleted. Soft-deleted providers are
  /// permanently deleted after approximately 30 days. You can restore a
  /// soft-deleted provider using UndeleteWorkloadIdentityPoolProvider. You
  /// cannot reuse the ID of a soft-deleted provider until it is permanently
  /// deleted.
  core.String? state;

  WorkloadIdentityPoolProvider({
    this.attributeCondition,
    this.attributeMapping,
    this.aws,
    this.description,
    this.disabled,
    this.displayName,
    this.expireTime,
    this.name,
    this.oidc,
    this.saml,
    this.state,
  });

  WorkloadIdentityPoolProvider.fromJson(core.Map json_)
      : this(
          attributeCondition: json_.containsKey('attributeCondition')
              ? json_['attributeCondition'] as core.String
              : null,
          attributeMapping: json_.containsKey('attributeMapping')
              ? (json_['attributeMapping']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          aws: json_.containsKey('aws')
              ? Aws.fromJson(
                  json_['aws'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          oidc: json_.containsKey('oidc')
              ? Oidc.fromJson(
                  json_['oidc'] as core.Map<core.String, core.dynamic>)
              : null,
          saml: json_.containsKey('saml')
              ? Saml.fromJson(
                  json_['saml'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeCondition != null)
          'attributeCondition': attributeCondition!,
        if (attributeMapping != null) 'attributeMapping': attributeMapping!,
        if (aws != null) 'aws': aws!,
        if (description != null) 'description': description!,
        if (disabled != null) 'disabled': disabled!,
        if (displayName != null) 'displayName': displayName!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (oidc != null) 'oidc': oidc!,
        if (saml != null) 'saml': saml!,
        if (state != null) 'state': state!,
      };
}

/// Represents a public key configuration for your workload identity pool
/// provider.
///
/// The key can be configured in your identity provider to encrypt the SAML
/// assertions. Google holds the corresponding private key which it uses to
/// decrypt encrypted tokens.
class WorkloadIdentityPoolProviderKey {
  /// Time after which the key will be permanently purged and cannot be
  /// recovered.
  ///
  /// Note that the key may get purged before this timestamp if the total limit
  /// of keys per provider is crossed.
  ///
  /// Output only.
  core.String? expireTime;

  /// Public half of the asymmetric key.
  ///
  /// Immutable.
  KeyData? keyData;

  /// The resource name of the key.
  ///
  /// Output only.
  core.String? name;

  /// The state of the key.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "ACTIVE" : The key is active.
  /// - "DELETED" : The key is soft-deleted. Soft-deleted keys are permanently
  /// deleted after approximately 30 days. You can restore a soft-deleted key
  /// using UndeleteWorkloadIdentityPoolProviderKey. While a key is deleted, you
  /// cannot use it during the federation.
  core.String? state;

  /// The purpose of the key.
  ///
  /// Required.
  /// Possible string values are:
  /// - "KEY_USE_UNSPECIFIED" : The key use is not known.
  /// - "ENCRYPTION" : The public key is used for encryption purposes.
  core.String? use;

  WorkloadIdentityPoolProviderKey({
    this.expireTime,
    this.keyData,
    this.name,
    this.state,
    this.use,
  });

  WorkloadIdentityPoolProviderKey.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          keyData: json_.containsKey('keyData')
              ? KeyData.fromJson(
                  json_['keyData'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          use: json_.containsKey('use') ? json_['use'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (keyData != null) 'keyData': keyData!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (use != null) 'use': use!,
      };
}
