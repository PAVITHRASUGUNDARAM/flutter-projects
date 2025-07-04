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

/// Cloud Resource Manager API - v1
///
/// Creates, reads, and updates metadata for Google Cloud Platform resource
/// containers.
///
/// For more information, see <https://cloud.google.com/resource-manager>
///
/// Create an instance of [CloudResourceManagerApi] to access these resources:
///
/// - [FoldersResource]
/// - [LiensResource]
/// - [OperationsResource]
/// - [OrganizationsResource]
/// - [ProjectsResource]
library cloudresourcemanager_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Creates, reads, and updates metadata for Google Cloud Platform resource
/// containers.
class CloudResourceManagerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  final commons.ApiRequester _requester;

  FoldersResource get folders => FoldersResource(_requester);
  LiensResource get liens => LiensResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  OrganizationsResource get organizations => OrganizationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  CloudResourceManagerApi(http.Client client,
      {core.String rootUrl = 'https://cloudresourcemanager.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class FoldersResource {
  final commons.ApiRequester _requester;

  FoldersResource(commons.ApiRequester client) : _requester = client;

  /// Clears a `Policy` from a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource for the `Policy` to clear.
  /// Value must have pattern `^folders/\[^/\]+$`.
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
  async.Future<Empty> clearOrgPolicy(
    ClearOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':clearOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the effective `Policy` on a resource.
  ///
  /// This is the result of merging `Policies` in the resource hierarchy. The
  /// returned `Policy` will not have an `etag`set because it is a computed
  /// `Policy` across multiple resources. Subtrees of Resource Manager resource
  /// hierarchy with 'under:' prefix will not be expanded.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - The name of the resource to start computing the effective
  /// `Policy`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getEffectiveOrgPolicy(
    GetEffectiveOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':getEffectiveOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, a `Policy` is returned with default
  /// values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
  /// `etag` value can be used with `SetOrgPolicy()` to create or update a
  /// `Policy` during read-modify-write.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource the `Policy` is set on.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getOrgPolicy(
    GetOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list `Constraints` for.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAvailableOrgPolicyConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAvailableOrgPolicyConstraintsResponse>
      listAvailableOrgPolicyConstraints(
    ListAvailableOrgPolicyConstraintsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$resource') +
        ':listAvailableOrgPolicyConstraints';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListAvailableOrgPolicyConstraintsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the `Policies` set for a particular resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list Policies for.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOrgPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOrgPoliciesResponse> listOrgPolicies(
    ListOrgPoliciesRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':listOrgPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListOrgPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified `Policy` on the resource.
  ///
  /// Creates a new `Policy` for that `Constraint` on the resource if one does
  /// not exist. Not supplying an `etag` on the request `Policy` results in an
  /// unconditional write of the `Policy`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Resource name of the resource to attach the `Policy`.
  /// Value must have pattern `^folders/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> setOrgPolicy(
    SetOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LiensResource {
  final commons.ApiRequester _requester;

  LiensResource(commons.ApiRequester client) : _requester = client;

  /// Create a Lien which applies to the resource denoted by the `parent` field.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, applying to `projects/1234` requires permission
  /// `resourcemanager.projects.updateLiens`. NOTE: Some resources may limit the
  /// number of Liens which may be applied.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lien].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lien> create(
    Lien request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/liens';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Lien.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete a Lien by `name`.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// `resourcemanager.projects.updateLiens`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name/identifier of the Lien to delete.
  /// Value must have pattern `^liens/.*$`.
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

  /// Retrieve a Lien by `name`.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// `resourcemanager.projects.get`
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name/identifier of the Lien.
  /// Value must have pattern `^liens/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Lien].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Lien> get(
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
    return Lien.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all Liens applied to the `parent` resource.
  ///
  /// Callers of this method will require permission on the `parent` resource.
  /// For example, a Lien with a `parent` of `projects/1234` requires permission
  /// `resourcemanager.projects.get`.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of items to return. This is a suggestion
  /// for the server. The server can return fewer liens than requested. If
  /// unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous List
  /// request, if any.
  ///
  /// [parent] - Required. The name of the resource to list all attached Liens.
  /// For example, `projects/1234`. (google.api.field_policy).resource_type
  /// annotation is not set since the parent depends on the meta api
  /// implementation. This field could be a project or other sub project
  /// resources.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLiensResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLiensResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/liens';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLiensResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
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

  OrganizationsResource(commons.ApiRequester client) : _requester = client;

  /// Clears a `Policy` from a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource for the `Policy` to clear.
  /// Value must have pattern `^organizations/\[^/\]+$`.
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
  async.Future<Empty> clearOrgPolicy(
    ClearOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':clearOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Fetches an Organization resource identified by the specified resource
  /// name.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Organization to fetch. This is the
  /// organization's relative path in the API, formatted as
  /// "organizations/\[organizationId\]". For example, "organizations/1234".
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Organization].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Organization> get(
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
    return Organization.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the effective `Policy` on a resource.
  ///
  /// This is the result of merging `Policies` in the resource hierarchy. The
  /// returned `Policy` will not have an `etag`set because it is a computed
  /// `Policy` across multiple resources. Subtrees of Resource Manager resource
  /// hierarchy with 'under:' prefix will not be expanded.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - The name of the resource to start computing the effective
  /// `Policy`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getEffectiveOrgPolicy(
    GetEffectiveOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':getEffectiveOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for an Organization resource.
  ///
  /// May be empty if no such policy or resource exists. The `resource` field
  /// should be the organization's resource name, e.g. "organizations/123".
  /// Authorization requires the Google IAM permission
  /// `resourcemanager.organizations.getIamPolicy` on the specified organization
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^organizations/\[^/\]+$`.
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

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, a `Policy` is returned with default
  /// values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
  /// `etag` value can be used with `SetOrgPolicy()` to create or update a
  /// `Policy` during read-modify-write.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource the `Policy` is set on.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getOrgPolicy(
    GetOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list `Constraints` for.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAvailableOrgPolicyConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAvailableOrgPolicyConstraintsResponse>
      listAvailableOrgPolicyConstraints(
    ListAvailableOrgPolicyConstraintsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$resource') +
        ':listAvailableOrgPolicyConstraints';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListAvailableOrgPolicyConstraintsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the `Policies` set for a particular resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list Policies for.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOrgPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOrgPoliciesResponse> listOrgPolicies(
    ListOrgPoliciesRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':listOrgPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListOrgPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches Organization resources that are visible to the user and satisfy
  /// the specified filter.
  ///
  /// This method returns Organizations in an unspecified order. New
  /// Organizations do not necessarily appear at the end of the results. Search
  /// will only return organizations on which the user has the permission
  /// `resourcemanager.organizations.get` or has super admin privileges.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchOrganizationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchOrganizationsResponse> search(
    SearchOrganizationsRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/organizations:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchOrganizationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on an Organization resource.
  ///
  /// Replaces any existing policy. The `resource` field should be the
  /// organization's resource name, e.g. "organizations/123". Authorization
  /// requires the Google IAM permission
  /// `resourcemanager.organizations.setIamPolicy` on the specified organization
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^organizations/\[^/\]+$`.
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

  /// Updates the specified `Policy` on the resource.
  ///
  /// Creates a new `Policy` for that `Constraint` on the resource if one does
  /// not exist. Not supplying an `etag` on the request `Policy` results in an
  /// unconditional write of the `Policy`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Resource name of the resource to attach the `Policy`.
  /// Value must have pattern `^organizations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> setOrgPolicy(
    SetOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified Organization.
  ///
  /// The `resource` field should be the organization's resource name, e.g.
  /// "organizations/123". There are no permissions required for making this API
  /// call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^organizations/\[^/\]+$`.
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
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Clears a `Policy` from a resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource for the `Policy` to clear.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Empty> clearOrgPolicy(
    ClearOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':clearOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request that a new Project be created.
  ///
  /// The result is an Operation which can be used to track the creation
  /// process. This process usually takes a few seconds, but can sometimes take
  /// much longer. The tracking Operation is automatically deleted after a few
  /// hours, so there is no need to call DeleteOperation. Authorization requires
  /// the Google IAM permission `resourcemanager.projects.create` on the
  /// specified parent for the new project. The parent is identified by a
  /// specified ResourceId, which must include both an ID and a type, such as
  /// organization. This method does not associate the new project with a
  /// billing account. You can set or update the billing account associated with
  /// a project using the \[`projects.updateBillingInfo`\]
  /// (/billing/reference/rest/v1/projects/updateBillingInfo) method.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
    Project request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/projects';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks the Project identified by the specified `project_id` (for example,
  /// `my-project-123`) for deletion.
  ///
  /// This method will only affect the Project if it has a lifecycle state of
  /// ACTIVE. This method changes the Project's lifecycle state from ACTIVE to
  /// DELETE_REQUESTED. The deletion starts at an unspecified time, at which
  /// point the Project is no longer accessible. Until the deletion completes,
  /// you can check the lifecycle state checked by retrieving the Project with
  /// GetProject, and the Project remains visible to ListProjects. However, you
  /// cannot update the project. After the deletion completes, the Project is
  /// not retrievable by the GetProject and ListProjects methods. The caller
  /// must have delete permissions for this Project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The Project ID (for example, `foo-bar-123`). Required.
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
    core.String projectId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' + commons.escapeVariable('$projectId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the Project identified by the specified `project_id` (for
  /// example, `my-project-123`).
  ///
  /// The caller must have read permissions for this Project.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The Project ID (for example, `my-project-123`).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> get(
    core.String projectId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' + commons.escapeVariable('$projectId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Project.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a list of ancestors in the resource hierarchy for the Project
  /// identified by the specified `project_id` (for example, `my-project-123`).
  ///
  /// The caller must have read permissions for this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The Project ID (for example, `my-project-123`).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetAncestryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetAncestryResponse> getAncestry(
    GetAncestryRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':getAncestry';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetAncestryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the effective `Policy` on a resource.
  ///
  /// This is the result of merging `Policies` in the resource hierarchy. The
  /// returned `Policy` will not have an `etag`set because it is a computed
  /// `Policy` across multiple resources. Subtrees of Resource Manager resource
  /// hierarchy with 'under:' prefix will not be expanded.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - The name of the resource to start computing the effective
  /// `Policy`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getEffectiveOrgPolicy(
    GetEffectiveOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':getEffectiveOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the IAM access control policy for the specified Project.
  ///
  /// Permission is denied if the policy or the resource does not exist.
  /// Authorization requires the Google IAM permission
  /// `resourcemanager.projects.getIamPolicy` on the project. For additional
  /// information about `resource` (e.g. my-project-id) structure and
  /// identification, see
  /// [Resource Names](https://cloud.google.com/apis/design/resource_names).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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

    final url_ =
        'v1/projects/' + commons.escapeVariable('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a `Policy` on a resource.
  ///
  /// If no `Policy` is set on the resource, a `Policy` is returned with default
  /// values including `POLICY_TYPE_NOT_SET` for the `policy_type oneof`. The
  /// `etag` value can be used with `SetOrgPolicy()` to create or update a
  /// `Policy` during read-modify-write.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource the `Policy` is set on.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> getOrgPolicy(
    GetOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Projects that the caller has the `resourcemanager.projects.get`
  /// permission on and satisfy the specified filter.
  ///
  /// This method returns Projects in an unspecified order. This method is
  /// eventually consistent with project mutations; this means that a newly
  /// created project may not appear in the results or recent updates to an
  /// existing project may not be reflected in the results. To retrieve the
  /// latest state of a project, use the GetProject method. NOTE: If the request
  /// filter contains a `parent.type` and `parent.id` and the caller has the
  /// `resourcemanager.projects.list` permission on the parent, the results will
  /// be drawn from an alternate index which provides more consistent results.
  /// In future versions of this API, this List method will be split into List
  /// and Search to properly capture the behavioral difference.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Filter rules are case insensitive. If multiple fields are
  /// included in a filter query, the query will return results that match any
  /// of the fields. Some eligible fields for filtering are: + `name` + `id` +
  /// `labels.` (where *key* is the name of a label) + `parent.type` +
  /// `parent.id` + `lifecycleState` Some examples of filter queries: | Query |
  /// Description |
  /// |------------------|-----------------------------------------------------|
  /// | name:how* | The project's name starts with "how". | | name:Howl | The
  /// project's name is `Howl` or `howl`. | | name:HOWL | Equivalent to above. |
  /// | NAME:howl | Equivalent to above. | | labels.color:* | The project has
  /// the label `color`. | | labels.color:red | The project's label `color` has
  /// the value `red`. | | labels.color:red labels.size:big | The project's
  /// label `color` has the value `red` or its label `size` has the value `big`.
  /// | | lifecycleState:DELETE_REQUESTED | Only show projects that are pending
  /// deletion.| If no filter is specified, the call will return projects for
  /// which the user has the `resourcemanager.projects.get` permission. NOTE: To
  /// perform a by-parent query (eg., what projects are directly in a Folder),
  /// the caller must have the `resourcemanager.projects.list` permission on the
  /// parent and the filter must contain both a `parent.type` and a `parent.id`
  /// restriction (example: "parent.type:folder parent.id:123"). In this case an
  /// alternate search index is used which provides more consistent results.
  ///
  /// [pageSize] - Optional. The maximum number of Projects to return in the
  /// response. The server can return fewer Projects than requested. If
  /// unspecified, server picks an appropriate default.
  ///
  /// [pageToken] - Optional. A pagination token returned from a previous call
  /// to ListProjects that indicates from where listing should continue.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProjectsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProjectsResponse> list({
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/projects';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProjectsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists `Constraints` that could be applied on the specified resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list `Constraints` for.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAvailableOrgPolicyConstraintsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAvailableOrgPolicyConstraintsResponse>
      listAvailableOrgPolicyConstraints(
    ListAvailableOrgPolicyConstraintsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$resource') +
        ':listAvailableOrgPolicyConstraints';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListAvailableOrgPolicyConstraintsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the `Policies` set for a particular resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Name of the resource to list Policies for.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOrgPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOrgPoliciesResponse> listOrgPolicies(
    ListOrgPoliciesRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':listOrgPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListOrgPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM access control policy for the specified Project.
  ///
  /// CAUTION: This method will replace the existing policy, and cannot be used
  /// to append additional IAM settings. NOTE: Removing service accounts from
  /// policies or changing their roles can render services completely
  /// inoperable. It is important to understand how the service account is being
  /// used before removing or updating its roles. For additional information
  /// about `resource` (e.g. my-project-id) structure and identification, see
  /// [Resource Names](https://cloud.google.com/apis/design/resource_names). The
  /// following constraints apply when using `setIamPolicy()`: + Project does
  /// not support `allUsers` and `allAuthenticatedUsers` as `members` in a
  /// `Binding` of a `Policy`. + The owner role can be granted to a `user`,
  /// `serviceAccount`, or a group that is part of an organization. For example,
  /// group@myownpersonaldomain.com could be added as an owner to a project in
  /// the myownpersonaldomain.com organization, but not the examplepetstore.com
  /// organization. + Service accounts can be made owners of a project directly
  /// without any restrictions. However, to be added as an owner, a user must be
  /// invited via Cloud Platform console and must accept the invitation. + A
  /// user cannot be granted the owner role using `setIamPolicy()`. The user
  /// must be granted the owner role using the Cloud Platform Console and must
  /// explicitly accept the invitation. + You can only grant ownership of a
  /// project to a member by using the Google Cloud console. Inviting a member
  /// will deliver an invitation email that they must accept. An invitation
  /// email is not generated if you are granting a role other than owner, or if
  /// both the member you are inviting and the project are part of your
  /// organization. + If the project is not part of an organization, there must
  /// be at least one owner who has accepted the Terms of Service (ToS)
  /// agreement in the policy. Calling `setIamPolicy()` to remove the last
  /// ToS-accepted owner from the policy will fail. This restriction also
  /// applies to legacy projects that no longer have owners who have accepted
  /// the ToS. Edits to IAM policies will be rejected until the lack of a
  /// ToS-accepting owner is rectified. If the project is part of an
  /// organization, you can remove all owners, potentially making the
  /// organization inaccessible. Authorization requires the Google IAM
  /// permission `resourcemanager.projects.setIamPolicy` on the project
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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

    final url_ =
        'v1/projects/' + commons.escapeVariable('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified `Policy` on the resource.
  ///
  /// Creates a new `Policy` for that `Constraint` on the resource if one does
  /// not exist. Not supplying an `etag` on the request `Policy` results in an
  /// unconditional write of the `Policy`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Resource name of the resource to attach the `Policy`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OrgPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OrgPolicy> setOrgPolicy(
    SetOrgPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setOrgPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OrgPolicy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified Project.
  ///
  /// For additional information about `resource` (e.g. my-project-id) structure
  /// and identification, see
  /// [Resource Names](https://cloud.google.com/apis/design/resource_names).
  /// There are no permissions required for making this API call.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
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

    final url_ = 'v1/projects/' +
        commons.escapeVariable('$resource') +
        ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores the Project identified by the specified `project_id` (for
  /// example, `my-project-123`).
  ///
  /// You can only use this method for a Project that has a lifecycle state of
  /// DELETE_REQUESTED. After deletion starts, the Project cannot be restored.
  /// The caller must have undelete permissions for this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The project ID (for example, `foo-bar-123`).
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
  async.Future<Empty> undelete(
    UndeleteProjectRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + ':undelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the attributes of the Project identified by the specified
  /// `project_id` (for example, `my-project-123`).
  ///
  /// The caller must have modify permissions for this Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID (for example, `my-project-123`). Required.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> update(
    Project request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/projects/' + commons.escapeVariable('$projectId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Project.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Identifying information for a single ancestor of a project.
class Ancestor {
  /// Resource id of the ancestor.
  ResourceId? resourceId;

  Ancestor({
    this.resourceId,
  });

  Ancestor.fromJson(core.Map json_)
      : this(
          resourceId: json_.containsKey('resourceId')
              ? ResourceId.fromJson(
                  json_['resourceId'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceId != null) 'resourceId': resourceId!,
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

/// A `Constraint` that is either enforced or not.
///
/// For example a constraint `constraints/compute.disableSerialPortAccess`. If
/// it is enforced on a VM instance, serial port connections will not be opened
/// to that instance.
typedef BooleanConstraint = $Empty;

/// Used in `policy_type` to specify how `boolean_policy` will behave at this
/// resource.
typedef BooleanPolicy = $BooleanPolicy;

/// The request sent to the ClearOrgPolicy method.
class ClearOrgPolicyRequest {
  /// Name of the `Constraint` of the `Policy` to clear.
  core.String? constraint;

  /// The current version, for concurrency control.
  ///
  /// Not sending an `etag` will cause the `Policy` to be cleared blindly.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  ClearOrgPolicyRequest({
    this.constraint,
    this.etag,
  });

  ClearOrgPolicyRequest.fromJson(core.Map json_)
      : this(
          constraint: json_.containsKey('constraint')
              ? json_['constraint'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraint != null) 'constraint': constraint!,
        if (etag != null) 'etag': etag!,
      };
}

/// A `Constraint` describes a way in which a resource's configuration can be
/// restricted.
///
/// For example, it controls which cloud services can be activated across an
/// organization, or whether a Compute Engine instance can have serial port
/// connections established. `Constraints` can be configured by the
/// organization's policy administrator to fit the needs of the organzation by
/// setting Policies for `Constraints` at different locations in the
/// organization's resource hierarchy. Policies are inherited down the resource
/// hierarchy from higher levels, but can also be overridden. For details about
/// the inheritance rules please read about
/// \[Policies\](/resource-manager/reference/rest/v1/Policy). `Constraints` have
/// a default behavior determined by the `constraint_default` field, which is
/// the enforcement behavior that is used in the absence of a `Policy` being
/// defined or inherited for the resource in question.
class Constraint {
  /// Defines this constraint as being a BooleanConstraint.
  BooleanConstraint? booleanConstraint;

  /// The evaluation behavior of this constraint in the absence of 'Policy'.
  /// Possible string values are:
  /// - "CONSTRAINT_DEFAULT_UNSPECIFIED" : This is only used for distinguishing
  /// unset values and should never be used.
  /// - "ALLOW" : Indicate that all values are allowed for list constraints.
  /// Indicate that enforcement is off for boolean constraints.
  /// - "DENY" : Indicate that all values are denied for list constraints.
  /// Indicate that enforcement is on for boolean constraints.
  core.String? constraintDefault;

  /// Detailed description of what this `Constraint` controls as well as how and
  /// where it is enforced.
  ///
  /// Mutable.
  core.String? description;

  /// The human readable name.
  ///
  /// Mutable.
  core.String? displayName;

  /// Defines this constraint as being a ListConstraint.
  ListConstraint? listConstraint;

  /// Immutable value, required to globally be unique.
  ///
  /// For example, `constraints/serviceuser.services`
  core.String? name;

  /// Version of the `Constraint`.
  ///
  /// Default version is 0;
  core.int? version;

  Constraint({
    this.booleanConstraint,
    this.constraintDefault,
    this.description,
    this.displayName,
    this.listConstraint,
    this.name,
    this.version,
  });

  Constraint.fromJson(core.Map json_)
      : this(
          booleanConstraint: json_.containsKey('booleanConstraint')
              ? BooleanConstraint.fromJson(json_['booleanConstraint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          constraintDefault: json_.containsKey('constraintDefault')
              ? json_['constraintDefault'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          listConstraint: json_.containsKey('listConstraint')
              ? ListConstraint.fromJson(json_['listConstraint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanConstraint != null) 'booleanConstraint': booleanConstraint!,
        if (constraintDefault != null) 'constraintDefault': constraintDefault!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (listConstraint != null) 'listConstraint': listConstraint!,
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// The request sent to the GetAncestry method.
typedef GetAncestryRequest = $Empty;

/// Response from the projects.getAncestry method.
class GetAncestryResponse {
  /// Ancestors are ordered from bottom to top of the resource hierarchy.
  ///
  /// The first ancestor is the project itself, followed by the project's
  /// parent, etc..
  core.List<Ancestor>? ancestor;

  GetAncestryResponse({
    this.ancestor,
  });

  GetAncestryResponse.fromJson(core.Map json_)
      : this(
          ancestor: json_.containsKey('ancestor')
              ? (json_['ancestor'] as core.List)
                  .map((value) => Ancestor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ancestor != null) 'ancestor': ancestor!,
      };
}

/// The request sent to the GetEffectiveOrgPolicy method.
class GetEffectiveOrgPolicyRequest {
  /// The name of the `Constraint` to compute the effective `Policy`.
  core.String? constraint;

  GetEffectiveOrgPolicyRequest({
    this.constraint,
  });

  GetEffectiveOrgPolicyRequest.fromJson(core.Map json_)
      : this(
          constraint: json_.containsKey('constraint')
              ? json_['constraint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraint != null) 'constraint': constraint!,
      };
}

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

/// The request sent to the GetOrgPolicy method.
class GetOrgPolicyRequest {
  /// Name of the `Constraint` to get the `Policy`.
  core.String? constraint;

  GetOrgPolicyRequest({
    this.constraint,
  });

  GetOrgPolicyRequest.fromJson(core.Map json_)
      : this(
          constraint: json_.containsKey('constraint')
              ? json_['constraint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraint != null) 'constraint': constraint!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// A Lien represents an encumbrance on the actions that can be performed on a
/// resource.
typedef Lien = $Lien;

/// The request sent to the `ListAvailableOrgPolicyConstraints` method on the
/// project, folder, or organization.
typedef ListAvailableOrgPolicyConstraintsRequest = $Request05;

/// The response returned from the `ListAvailableOrgPolicyConstraints` method.
///
/// Returns all `Constraints` that could be set at this level of the hierarchy
/// (contrast with the response from `ListPolicies`, which returns all policies
/// which are set).
class ListAvailableOrgPolicyConstraintsResponse {
  /// The collection of constraints that are settable on the request resource.
  core.List<Constraint>? constraints;

  /// Page token used to retrieve the next page.
  ///
  /// This is currently not used.
  core.String? nextPageToken;

  ListAvailableOrgPolicyConstraintsResponse({
    this.constraints,
    this.nextPageToken,
  });

  ListAvailableOrgPolicyConstraintsResponse.fromJson(core.Map json_)
      : this(
          constraints: json_.containsKey('constraints')
              ? (json_['constraints'] as core.List)
                  .map((value) => Constraint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraints != null) 'constraints': constraints!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A `Constraint` that allows or disallows a list of string values, which are
/// configured by an Organization's policy administrator with a `Policy`.
class ListConstraint {
  /// The Google Cloud Console will try to default to a configuration that
  /// matches the value specified in this `Constraint`.
  ///
  /// Optional.
  core.String? suggestedValue;

  /// Indicates whether subtrees of Cloud Resource Manager resource hierarchy
  /// can be used in `Policy.allowed_values` and `Policy.denied_values`.
  ///
  /// For example, `"under:folders/123"` would match any resource under the
  /// 'folders/123' folder.
  core.bool? supportsUnder;

  ListConstraint({
    this.suggestedValue,
    this.supportsUnder,
  });

  ListConstraint.fromJson(core.Map json_)
      : this(
          suggestedValue: json_.containsKey('suggestedValue')
              ? json_['suggestedValue'] as core.String
              : null,
          supportsUnder: json_.containsKey('supportsUnder')
              ? json_['supportsUnder'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (suggestedValue != null) 'suggestedValue': suggestedValue!,
        if (supportsUnder != null) 'supportsUnder': supportsUnder!,
      };
}

/// The response message for Liens.ListLiens.
class ListLiensResponse {
  /// A list of Liens.
  core.List<Lien>? liens;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListLiensResponse({
    this.liens,
    this.nextPageToken,
  });

  ListLiensResponse.fromJson(core.Map json_)
      : this(
          liens: json_.containsKey('liens')
              ? (json_['liens'] as core.List)
                  .map((value) => Lien.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (liens != null) 'liens': liens!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The request sent to the ListOrgPolicies method.
typedef ListOrgPoliciesRequest = $Request05;

/// The response returned from the `ListOrgPolicies` method.
///
/// It will be empty if no `Policies` are set on the resource.
class ListOrgPoliciesResponse {
  /// Page token used to retrieve the next page.
  ///
  /// This is currently not used, but the server may at any point start
  /// supplying a valid token.
  core.String? nextPageToken;

  /// The `Policies` that are set on the resource.
  ///
  /// It will be empty if no `Policies` are set.
  core.List<OrgPolicy>? policies;

  ListOrgPoliciesResponse({
    this.nextPageToken,
    this.policies,
  });

  ListOrgPoliciesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          policies: json_.containsKey('policies')
              ? (json_['policies'] as core.List)
                  .map((value) => OrgPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (policies != null) 'policies': policies!,
      };
}

/// Used in `policy_type` to specify how `list_policy` behaves at this resource.
///
/// `ListPolicy` can define specific values and subtrees of Cloud Resource
/// Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are
/// allowed or denied by setting the `allowed_values` and `denied_values`
/// fields. This is achieved by using the `under:` and optional `is:` prefixes.
/// The `under:` prefix is used to denote resource subtree values. The `is:`
/// prefix is used to denote specific values, and is required only if the value
/// contains a ":". Values prefixed with "is:" are treated the same as values
/// with no prefix. Ancestry subtrees must be in one of the following formats: -
/// "projects/", e.g. "projects/tokyo-rain-123" - "folders/", e.g.
/// "folders/1234" - "organizations/", e.g. "organizations/1234" The
/// `supports_under` field of the associated `Constraint` defines whether
/// ancestry prefixes can be used. You can set `allowed_values` and
/// `denied_values` in the same `Policy` if `all_values` is
/// `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all
/// values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values`
/// and `denied_values` must be unset.
typedef ListPolicy = $ListPolicy;

/// A page of the response received from the ListProjects method.
///
/// A paginated response where more pages are available has `next_page_token`
/// set. This token can be used in a subsequent request to retrieve the next
/// request page.
class ListProjectsResponse {
  /// Pagination token.
  ///
  /// If the result set is too large to fit in a single response, this token is
  /// returned. It encodes the position of the current result cursor. Feeding
  /// this value into a new list request with the `page_token` parameter gives
  /// the next page of the results. When `next_page_token` is not filled in,
  /// there is no next page and the list returned is the last page in the result
  /// set. Pagination tokens have a limited lifetime.
  core.String? nextPageToken;

  /// The list of Projects that matched the list filter.
  ///
  /// This list can be paginated.
  core.List<Project>? projects;

  ListProjectsResponse({
    this.nextPageToken,
    this.projects,
  });

  ListProjectsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          projects: json_.containsKey('projects')
              ? (json_['projects'] as core.List)
                  .map((value) => Project.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (projects != null) 'projects': projects!,
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

/// Defines a Cloud Organization `Policy` which is used to specify `Constraints`
/// for configurations of Cloud Platform resources.
class OrgPolicy {
  /// For boolean `Constraints`, whether to enforce the `Constraint` or not.
  BooleanPolicy? booleanPolicy;

  /// The name of the `Constraint` the `Policy` is configuring, for example,
  /// `constraints/serviceuser.services`.
  ///
  /// A \[list of available
  /// constraints\](/resource-manager/docs/organization-policy/org-policy-constraints)
  /// is available. Immutable after creation.
  core.String? constraint;

  /// An opaque tag indicating the current version of the `Policy`, used for
  /// concurrency control.
  ///
  /// When the `Policy` is returned from either a `GetPolicy` or a
  /// `ListOrgPolicy` request, this `etag` indicates the version of the current
  /// `Policy` to use when executing a read-modify-write loop. When the `Policy`
  /// is returned from a `GetEffectivePolicy` request, the `etag` will be unset.
  /// When the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value
  /// that was returned from a `GetOrgPolicy` request as part of a
  /// read-modify-write loop for concurrency control. Not setting the `etag`in a
  /// `SetOrgPolicy` request will result in an unconditional write of the
  /// `Policy`.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// List of values either allowed or disallowed.
  ListPolicy? listPolicy;

  /// Restores the default behavior of the constraint; independent of
  /// `Constraint` type.
  RestoreDefault? restoreDefault;

  /// The time stamp the `Policy` was previously updated.
  ///
  /// This is set by the server, not specified by the caller, and represents the
  /// last time a call to `SetOrgPolicy` was made for that `Policy`. Any value
  /// set by the client will be ignored.
  core.String? updateTime;

  /// Version of the `Policy`.
  ///
  /// Default version is 0;
  core.int? version;

  OrgPolicy({
    this.booleanPolicy,
    this.constraint,
    this.etag,
    this.listPolicy,
    this.restoreDefault,
    this.updateTime,
    this.version,
  });

  OrgPolicy.fromJson(core.Map json_)
      : this(
          booleanPolicy: json_.containsKey('booleanPolicy')
              ? BooleanPolicy.fromJson(
                  json_['booleanPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          constraint: json_.containsKey('constraint')
              ? json_['constraint'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          listPolicy: json_.containsKey('listPolicy')
              ? ListPolicy.fromJson(
                  json_['listPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          restoreDefault: json_.containsKey('restoreDefault')
              ? RestoreDefault.fromJson(json_['restoreDefault']
                  as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanPolicy != null) 'booleanPolicy': booleanPolicy!,
        if (constraint != null) 'constraint': constraint!,
        if (etag != null) 'etag': etag!,
        if (listPolicy != null) 'listPolicy': listPolicy!,
        if (restoreDefault != null) 'restoreDefault': restoreDefault!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (version != null) 'version': version!,
      };
}

/// The root node in the resource hierarchy to which a particular entity's
/// (e.g., company) resources belong.
class Organization {
  /// Timestamp when the Organization was created.
  ///
  /// Assigned by the server.
  core.String? creationTime;

  /// A human-readable string that refers to the Organization in the Google
  /// Cloud console.
  ///
  /// This string is set by the server and cannot be changed. The string will be
  /// set to the primary domain (for example, "google.com") of the G Suite
  /// customer that owns the organization.
  core.String? displayName;

  /// The organization's current lifecycle state.
  ///
  /// Assigned by the server.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified state. This is only useful
  /// for distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The organization has been marked for deletion by
  /// the user.
  core.String? lifecycleState;

  /// The resource name of the organization.
  ///
  /// This is the organization's relative path in the API. Its format is
  /// "organizations/\[organization_id\]". For example, "organizations/1234".
  ///
  /// Output only.
  core.String? name;

  /// The owner of this Organization.
  ///
  /// The owner should be specified on creation. Once set, it cannot be changed.
  /// This field is required.
  OrganizationOwner? owner;

  Organization({
    this.creationTime,
    this.displayName,
    this.lifecycleState,
    this.name,
    this.owner,
  });

  Organization.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          lifecycleState: json_.containsKey('lifecycleState')
              ? json_['lifecycleState'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          owner: json_.containsKey('owner')
              ? OrganizationOwner.fromJson(
                  json_['owner'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (displayName != null) 'displayName': displayName!,
        if (lifecycleState != null) 'lifecycleState': lifecycleState!,
        if (name != null) 'name': name!,
        if (owner != null) 'owner': owner!,
      };
}

/// The entity that owns an Organization.
///
/// The lifetime of the Organization and all of its descendants are bound to the
/// `OrganizationOwner`. If the `OrganizationOwner` is deleted, the Organization
/// and all its descendants will be deleted.
class OrganizationOwner {
  /// The G Suite customer id used in the Directory API.
  core.String? directoryCustomerId;

  OrganizationOwner({
    this.directoryCustomerId,
  });

  OrganizationOwner.fromJson(core.Map json_)
      : this(
          directoryCustomerId: json_.containsKey('directoryCustomerId')
              ? json_['directoryCustomerId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (directoryCustomerId != null)
          'directoryCustomerId': directoryCustomerId!,
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

/// A Project is a high-level Google Cloud Platform entity.
///
/// It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google
/// Cloud Platform resources.
class Project {
  /// Creation time.
  ///
  /// Read-only.
  core.String? createTime;

  /// The labels associated with this Project.
  ///
  /// Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: a-z{0,62}. Label values must be between
  /// 0 and 63 characters long and must conform to the regular expression
  /// \[a-z0-9_-\]{0,63}. A label value can be empty. No more than 256 labels
  /// can be associated with a given resource. Clients should store labels in a
  /// representation such as JSON that does not depend on specific characters
  /// being disallowed. Example: "environment" : "dev" Read-write.
  core.Map<core.String, core.String>? labels;

  /// The Project lifecycle state.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified state. This is only
  /// used/useful for distinguishing unset values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DELETE_REQUESTED" : The project has been marked for deletion by the
  /// user (by invoking DeleteProject) or by the system (Google Cloud Platform).
  /// This can generally be reversed by invoking UndeleteProject.
  /// - "DELETE_IN_PROGRESS" : This lifecycle state is no longer used and not
  /// returned by the API.
  core.String? lifecycleState;

  /// The optional user-assigned display name of the Project.
  ///
  /// When present it must be between 4 to 30 characters. Allowed characters
  /// are: lowercase and uppercase letters, numbers, hyphen, single-quote,
  /// double-quote, space, and exclamation point. Example: `My Project`
  /// Read-write.
  core.String? name;

  /// An optional reference to a parent Resource.
  ///
  /// Supported parent types include "organization" and "folder". Once set, the
  /// parent cannot be cleared. The `parent` can be set on creation or using the
  /// `UpdateProject` method; the end user must have the
  /// `resourcemanager.projects.create` permission on the parent.
  ResourceId? parent;

  /// The unique, user-assigned ID of the Project.
  ///
  /// It must be 6 to 30 lowercase letters, digits, or hyphens. It must start
  /// with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123`
  /// Read-only after creation.
  core.String? projectId;

  /// The number uniquely identifying the project.
  ///
  /// Example: `415104041262` Read-only.
  core.String? projectNumber;

  Project({
    this.createTime,
    this.labels,
    this.lifecycleState,
    this.name,
    this.parent,
    this.projectId,
    this.projectNumber,
  });

  Project.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          lifecycleState: json_.containsKey('lifecycleState')
              ? json_['lifecycleState'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parent: json_.containsKey('parent')
              ? ResourceId.fromJson(
                  json_['parent'] as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_.containsKey('projectId')
              ? json_['projectId'] as core.String
              : null,
          projectNumber: json_.containsKey('projectNumber')
              ? json_['projectNumber'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (lifecycleState != null) 'lifecycleState': lifecycleState!,
        if (name != null) 'name': name!,
        if (parent != null) 'parent': parent!,
        if (projectId != null) 'projectId': projectId!,
        if (projectNumber != null) 'projectNumber': projectNumber!,
      };
}

/// A container to reference an id for any resource type.
///
/// A `resource` in Google Cloud Platform is a generic term for something you (a
/// developer) may want to interact with through one of our API's. Some examples
/// are an App Engine app, a Compute Engine instance, a Cloud SQL database, and
/// so on.
class ResourceId {
  /// The type-specific id.
  ///
  /// This should correspond to the id used in the type-specific API's.
  core.String? id;

  /// The resource type this id is for.
  ///
  /// At present, the valid types are: "organization", "folder", and "project".
  core.String? type;

  ResourceId({
    this.id,
    this.type,
  });

  ResourceId.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (type != null) 'type': type!,
      };
}

/// Ignores policies set above this resource and restores the
/// `constraint_default` enforcement behavior of the specific `Constraint` at
/// this resource.
///
/// Suppose that `constraint_default` is set to `ALLOW` for the `Constraint`
/// `constraints/serviceuser.services`. Suppose that organization foo.com sets a
/// `Policy` at their Organization resource node that restricts the allowed
/// service activations to deny all service activations. They could then set a
/// `Policy` with the `policy_type` `restore_default` on several experimental
/// projects, restoring the `constraint_default` enforcement of the `Constraint`
/// for only those projects, allowing those projects to have all services
/// activated.
typedef RestoreDefault = $Empty;

/// The request sent to the `SearchOrganizations` method.
class SearchOrganizationsRequest {
  /// An optional query string used to filter the Organizations to return in the
  /// response.
  ///
  /// Filter rules are case-insensitive. Organizations may be filtered by
  /// `owner.directoryCustomerId` or by `domain`, where the domain is a G Suite
  /// domain, for example: * Filter `owner.directorycustomerid:123456789`
  /// returns Organization resources with `owner.directory_customer_id` equal to
  /// `123456789`. * Filter `domain:google.com` returns Organization resources
  /// corresponding to the domain `google.com`. This field is optional.
  core.String? filter;

  /// The maximum number of Organizations to return in the response.
  ///
  /// The server can return fewer organizations than requested. If unspecified,
  /// server picks an appropriate default.
  core.int? pageSize;

  /// A pagination token returned from a previous call to `SearchOrganizations`
  /// that indicates from where listing should continue.
  ///
  /// This field is optional.
  core.String? pageToken;

  SearchOrganizationsRequest({
    this.filter,
    this.pageSize,
    this.pageToken,
  });

  SearchOrganizationsRequest.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// The response returned from the `SearchOrganizations` method.
class SearchOrganizationsResponse {
  /// A pagination token to be used to retrieve the next page of results.
  ///
  /// If the result is too large to fit within the page size specified in the
  /// request, this field will be set with a token that can be used to fetch the
  /// next page of results. If this field is empty, it indicates that this
  /// response contains the last page of results.
  core.String? nextPageToken;

  /// The list of Organizations that matched the search query, possibly
  /// paginated.
  core.List<Organization>? organizations;

  SearchOrganizationsResponse({
    this.nextPageToken,
    this.organizations,
  });

  SearchOrganizationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          organizations: json_.containsKey('organizations')
              ? (json_['organizations'] as core.List)
                  .map((value) => Organization.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (organizations != null) 'organizations': organizations!,
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

/// The request sent to the SetOrgPolicyRequest method.
class SetOrgPolicyRequest {
  /// `Policy` to set on the resource.
  OrgPolicy? policy;

  SetOrgPolicyRequest({
    this.policy,
  });

  SetOrgPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? OrgPolicy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
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

/// The request sent to the UndeleteProject method.
typedef UndeleteProjectRequest = $Empty;
