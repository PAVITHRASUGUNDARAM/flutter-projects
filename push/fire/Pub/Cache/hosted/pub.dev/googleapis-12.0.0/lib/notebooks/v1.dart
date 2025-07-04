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

/// Notebooks API - v1
///
/// Notebooks API is used to manage notebook resources in Google Cloud.
///
/// For more information, see <https://cloud.google.com/notebooks/docs/>
///
/// Create an instance of [AIPlatformNotebooksApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsEnvironmentsResource]
///     - [ProjectsLocationsExecutionsResource]
///     - [ProjectsLocationsInstancesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRuntimesResource]
///     - [ProjectsLocationsSchedulesResource]
library notebooks_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Notebooks API is used to manage notebook resources in Google Cloud.
class AIPlatformNotebooksApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  AIPlatformNotebooksApi(http.Client client,
      {core.String rootUrl = 'https://notebooks.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEnvironmentsResource get environments =>
      ProjectsLocationsEnvironmentsResource(_requester);
  ProjectsLocationsExecutionsResource get executions =>
      ProjectsLocationsExecutionsResource(_requester);
  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRuntimesResource get runtimes =>
      ProjectsLocationsRuntimesResource(_requester);
  ProjectsLocationsSchedulesResource get schedules =>
      ProjectsLocationsSchedulesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
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
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEnvironmentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Environment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [environmentId] - Required. User-defined unique ID of this environment.
  /// The `environment_id` must be 1 to 63 characters long and contain only
  /// lowercase letters, numeric characters, and dashes. The first character
  /// must be a lowercase letter and the last character cannot be a dash.
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
    Environment request,
    core.String parent, {
    core.String? environmentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (environmentId != null) 'environmentId': [environmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/environments/{environment_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/environments/\[^/\]+$`.
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

  /// Gets details of a single Environment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/environments/{environment_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/environments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Environment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Environment> get(
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
    return Environment.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists environments in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEnvironmentsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/environments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEnvironmentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsExecutionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsExecutionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Execution in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [executionId] - Required. User-defined unique ID of this execution.
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
    Execution request,
    core.String parent, {
    core.String? executionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (executionId != null) 'executionId': [executionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes execution
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/executions/{execution_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/executions/\[^/\]+$`.
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

  /// Gets details of executions
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/executions/{execution_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/executions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Execution].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Execution> get(
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
    return Execution.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists executions in a given project and location
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter applied to resulting executions. Currently only supports
  /// filtering executions by a specified `schedule_id`. Format: `schedule_id=`
  ///
  /// [orderBy] - Sort by field.
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExecutionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExecutionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/executions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExecutionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Instance in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [instanceId] - Required. User-defined unique ID of this instance.
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
    Instance request,
    core.String parent, {
    core.String? instanceId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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

  /// Creates a Diagnostic File and runs Diagnostic Tool given an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> diagnose(
    DiagnoseInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':diagnose';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> get(
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
    return Instance.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Checks whether a notebook instance is healthy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetInstanceHealthResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetInstanceHealthResponse> getInstanceHealth(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getInstanceHealth';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetInstanceHealthResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Checks whether a notebook instance is upgradable.
  ///
  /// Request parameters:
  ///
  /// [notebookInstance] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [type] - Optional. The optional UpgradeType. Setting this field will
  /// search for additional compute images to upgrade this instance.
  /// Possible string values are:
  /// - "UPGRADE_TYPE_UNSPECIFIED" : Upgrade type is not specified.
  /// - "UPGRADE_FRAMEWORK" : Upgrade ML framework.
  /// - "UPGRADE_OS" : Upgrade Operating System.
  /// - "UPGRADE_CUDA" : Upgrade CUDA.
  /// - "UPGRADE_ALL" : Upgrade All (OS, Framework and CUDA).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IsInstanceUpgradeableResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IsInstanceUpgradeableResponse> isUpgradeable(
    core.String notebookInstance, {
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$notebookInstance') + ':isUpgradeable';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return IsInstanceUpgradeableResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists instances in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. List filter.
  ///
  /// [orderBy] - Optional. Sort results. Supported values are "name", "name
  /// desc" or "" (unsorted).
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstancesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListInstancesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Migrates an existing User-Managed Notebook to Workbench Instances.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> migrate(
    MigrateInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':migrate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Registers an existing legacy notebook instance to the Notebooks API
  /// server.
  ///
  /// Legacy instances are instances created with the legacy Compute Engine
  /// calls. They are not manageable by the Notebooks API out of the box. This
  /// call makes these instances manageable by the Notebooks API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> register(
    RegisterInstanceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/instances:register';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Allows notebook instances to report their latest instance information to
  /// the Notebooks API server.
  ///
  /// The server will merge the reported information to the instance metadata
  /// store. Do not use this method directly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> report(
    ReportInstanceInfoRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':report';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reports and processes an instance event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> reportEvent(
    ReportInstanceEventRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reportEvent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> reset(
    ResetInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rollbacks a notebook instance to the previous version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> rollback(
    RollbackInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the guest accelerators of a single Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> setAccelerator(
    SetInstanceAcceleratorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setAccelerator';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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

  /// Replaces all the labels of an Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> setLabels(
    SetInstanceLabelsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setLabels';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the machine type of a single Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> setMachineType(
    SetInstanceMachineTypeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':setMachineType';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> start(
    StartInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops a notebook instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> stop(
    StopInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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

  /// Update Notebook Instance configurations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> updateConfig(
    UpdateInstanceConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':updateConfig';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Add/update metadata items for an instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UpdateInstanceMetadataItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UpdateInstanceMetadataItemsResponse> updateMetadataItems(
    UpdateInstanceMetadataItemsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':updateMetadataItems';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return UpdateInstanceMetadataItemsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Shielded instance configuration of a single Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> updateShieldedInstanceConfig(
    UpdateShieldedInstanceConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':updateShieldedInstanceConfig';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Upgrades a notebook instance to the latest version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> upgrade(
    UpgradeInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':upgrade';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Allows notebook instances to call this endpoint to upgrade themselves.
  ///
  /// Do not use this method directly.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
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
  async.Future<Operation> upgradeInternal(
    UpgradeInstanceInternalRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':upgradeInternal';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRuntimesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRuntimesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Runtime in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Idempotent request UUID.
  ///
  /// [runtimeId] - Required. User-defined unique ID of this Runtime.
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
    Runtime request,
    core.String parent, {
    core.String? requestId,
    core.String? runtimeId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (runtimeId != null) 'runtimeId': [runtimeId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/runtimes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Runtime.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
  ///
  /// [requestId] - Idempotent request UUID.
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

  /// Creates a Diagnostic File and runs Diagnostic Tool given a Runtime.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtimes_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
  async.Future<Operation> diagnose(
    DiagnoseRuntimeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':diagnose';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Runtime.
  ///
  /// The location must be a regional endpoint rather than zonal.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Runtime].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Runtime> get(
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
    return Runtime.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Runtimes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. List filter.
  ///
  /// [orderBy] - Optional. Sort results. Supported values are "name", "name
  /// desc" or "" (unsorted).
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRuntimesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRuntimesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/runtimes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRuntimesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Migrate an existing Runtime to a new Workbench Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
  async.Future<Operation> migrate(
    MigrateRuntimeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':migrate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update Notebook Runtime configuration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the runtime. Format:
  /// `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
  ///
  /// [requestId] - Idempotent request UUID.
  ///
  /// [updateMask] - Required. Specifies the path, relative to `Runtime`, of the
  /// field to update. For example, to change the software configuration
  /// kernels, the `update_mask` parameter would be specified as
  /// `software_config.kernels`, and the `PATCH` request body would specify the
  /// new value, as follows: { "software_config":{ "kernels": \[{ 'repository':
  /// 'gcr.io/deeplearning-platform-release/pytorch-gpu', 'tag': 'latest' }\], }
  /// } Currently, only the following fields can be updated: -
  /// `software_config.kernels` - `software_config.post_startup_script` -
  /// `software_config.custom_gpu_driver_path` - `software_config.idle_shutdown`
  /// - `software_config.idle_shutdown_timeout` -
  /// `software_config.disable_terminal` - `labels`
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
    Runtime request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
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

  /// Gets an access token for the consumer service account that the customer
  /// attached to the runtime.
  ///
  /// Only accessible from the tenant instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RefreshRuntimeTokenInternalResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RefreshRuntimeTokenInternalResponse> refreshRuntimeTokenInternal(
    RefreshRuntimeTokenInternalRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$name') + ':refreshRuntimeTokenInternal';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RefreshRuntimeTokenInternalResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reports and processes a runtime event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
  async.Future<Operation> reportEvent(
    ReportRuntimeEventRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reportEvent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Resets a Managed Notebook Runtime.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
  async.Future<Operation> reset(
    ResetRuntimeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reset';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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

  /// Starts a Managed Notebook Runtime.
  ///
  /// Perform "Start" on GPU instances; "Resume" on CPU instances See:
  /// https://cloud.google.com/compute/docs/instances/stop-start-instance
  /// https://cloud.google.com/compute/docs/instances/suspend-resume-instance
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
  async.Future<Operation> start(
    StartRuntimeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops a Managed Notebook Runtime.
  ///
  /// Perform "Stop" on GPU instances; "Suspend" on CPU instances See:
  /// https://cloud.google.com/compute/docs/instances/stop-start-instance
  /// https://cloud.google.com/compute/docs/instances/suspend-resume-instance
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
  async.Future<Operation> stop(
    StopRuntimeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Switch a Managed Notebook Runtime.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
  async.Future<Operation> switch_(
    SwitchRuntimeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':switch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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

  /// Upgrades a Managed Notebook Runtime to the latest version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/runtimes/{runtime_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimes/\[^/\]+$`.
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
  async.Future<Operation> upgrade(
    UpgradeRuntimeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':upgrade';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSchedulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSchedulesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Scheduled Notebook in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [scheduleId] - Required. User-defined unique ID of this schedule.
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
    Schedule request,
    core.String parent, {
    core.String? scheduleId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (scheduleId != null) 'scheduleId': [scheduleId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schedules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes schedule and all underlying jobs
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schedules/\[^/\]+$`.
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

  /// Gets details of schedule
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schedules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schedule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schedule> get(
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
    return Schedule.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists schedules in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter applied to resulting schedules.
  ///
  /// [orderBy] - Field to order results by.
  ///
  /// [pageSize] - Maximum return size of the list call.
  ///
  /// [pageToken] - A previous returned page token that can be used to continue
  /// listing from the last result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSchedulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSchedulesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schedules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSchedulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Triggers execution of an existing schedule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Format:
  /// `parent=projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/schedules/\[^/\]+$`.
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
  async.Future<Operation> trigger(
    TriggerScheduleRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':trigger';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Definition of a hardware accelerator.
///
/// Note that not all combinations of `type` and `core_count` are valid. See
/// [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list)
/// to find a valid combination. TPUs are not supported.
class AcceleratorConfig {
  /// Count of cores of this accelerator.
  core.String? coreCount;

  /// Type of this accelerator.
  /// Possible string values are:
  /// - "ACCELERATOR_TYPE_UNSPECIFIED" : Accelerator type is not specified.
  /// - "NVIDIA_TESLA_K80" : Accelerator type is Nvidia Tesla K80.
  /// - "NVIDIA_TESLA_P100" : Accelerator type is Nvidia Tesla P100.
  /// - "NVIDIA_TESLA_V100" : Accelerator type is Nvidia Tesla V100.
  /// - "NVIDIA_TESLA_P4" : Accelerator type is Nvidia Tesla P4.
  /// - "NVIDIA_TESLA_T4" : Accelerator type is Nvidia Tesla T4.
  /// - "NVIDIA_TESLA_A100" : Accelerator type is Nvidia Tesla A100.
  /// - "NVIDIA_L4" : Accelerator type is Nvidia Tesla L4.
  /// - "NVIDIA_TESLA_T4_VWS" : Accelerator type is NVIDIA Tesla T4 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P100_VWS" : Accelerator type is NVIDIA Tesla P100 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P4_VWS" : Accelerator type is NVIDIA Tesla P4 Virtual
  /// Workstations.
  /// - "TPU_V2" : (Coming soon) Accelerator type is TPU V2.
  /// - "TPU_V3" : (Coming soon) Accelerator type is TPU V3.
  core.String? type;

  AcceleratorConfig({
    this.coreCount,
    this.type,
  });

  AcceleratorConfig.fromJson(core.Map json_)
      : this(
          coreCount: json_.containsKey('coreCount')
              ? json_['coreCount'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coreCount != null) 'coreCount': coreCount!,
        if (type != null) 'type': type!,
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

/// Definition of the boot image used by the Runtime.
///
/// Used to facilitate runtime upgradeability.
typedef BootImage = $Empty;

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Definition of a container image for starting a notebook instance with the
/// environment installed in a container.
class ContainerImage {
  /// The path to the container image repository.
  ///
  /// For example: `gcr.io/{project_id}/{image_name}`
  ///
  /// Required.
  core.String? repository;

  /// The tag of the container image.
  ///
  /// If not specified, this defaults to the latest tag.
  core.String? tag;

  ContainerImage({
    this.repository,
    this.tag,
  });

  ContainerImage.fromJson(core.Map json_)
      : this(
          repository: json_.containsKey('repository')
              ? json_['repository'] as core.String
              : null,
          tag: json_.containsKey('tag') ? json_['tag'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (repository != null) 'repository': repository!,
        if (tag != null) 'tag': tag!,
      };
}

/// Parameters used in Dataproc JobType executions.
class DataprocParameters {
  /// URI for cluster used to run Dataproc execution.
  ///
  /// Format: `projects/{PROJECT_ID}/regions/{REGION}/clusters/{CLUSTER_NAME}`
  core.String? cluster;

  DataprocParameters({
    this.cluster,
  });

  DataprocParameters.fromJson(core.Map json_)
      : this(
          cluster: json_.containsKey('cluster')
              ? json_['cluster'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cluster != null) 'cluster': cluster!,
      };
}

/// Request for creating a notebook instance diagnostic file.
class DiagnoseInstanceRequest {
  /// Defines flags that are used to run the diagnostic tool
  ///
  /// Required.
  DiagnosticConfig? diagnosticConfig;

  /// Maxmium amount of time in minutes before the operation times out.
  ///
  /// Optional.
  core.int? timeoutMinutes;

  DiagnoseInstanceRequest({
    this.diagnosticConfig,
    this.timeoutMinutes,
  });

  DiagnoseInstanceRequest.fromJson(core.Map json_)
      : this(
          diagnosticConfig: json_.containsKey('diagnosticConfig')
              ? DiagnosticConfig.fromJson(json_['diagnosticConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timeoutMinutes: json_.containsKey('timeoutMinutes')
              ? json_['timeoutMinutes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diagnosticConfig != null) 'diagnosticConfig': diagnosticConfig!,
        if (timeoutMinutes != null) 'timeoutMinutes': timeoutMinutes!,
      };
}

/// Request for creating a notebook instance diagnostic file.
class DiagnoseRuntimeRequest {
  /// Defines flags that are used to run the diagnostic tool
  ///
  /// Required.
  DiagnosticConfig? diagnosticConfig;

  /// Maxmium amount of time in minutes before the operation times out.
  ///
  /// Optional.
  core.int? timeoutMinutes;

  DiagnoseRuntimeRequest({
    this.diagnosticConfig,
    this.timeoutMinutes,
  });

  DiagnoseRuntimeRequest.fromJson(core.Map json_)
      : this(
          diagnosticConfig: json_.containsKey('diagnosticConfig')
              ? DiagnosticConfig.fromJson(json_['diagnosticConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timeoutMinutes: json_.containsKey('timeoutMinutes')
              ? json_['timeoutMinutes'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diagnosticConfig != null) 'diagnosticConfig': diagnosticConfig!,
        if (timeoutMinutes != null) 'timeoutMinutes': timeoutMinutes!,
      };
}

/// Defines flags that are used to run the diagnostic tool
class DiagnosticConfig {
  /// Enables flag to copy all `/home/jupyter` folder contents
  ///
  /// Optional.
  core.bool? copyHomeFilesFlagEnabled;

  /// User Cloud Storage bucket location (REQUIRED).
  ///
  /// Must be formatted with path prefix (`gs://$GCS_BUCKET`). Permissions: User
  /// Managed Notebooks: - storage.buckets.writer: Must be given to the
  /// project's service account attached to VM. Google Managed Notebooks: -
  /// storage.buckets.writer: Must be given to the project's service account or
  /// user credentials attached to VM depending on authentication mode. Cloud
  /// Storage bucket Log file will be written to
  /// `gs://$GCS_BUCKET/$RELATIVE_PATH/$VM_DATE_$TIME.tar.gz`
  ///
  /// Required.
  core.String? gcsBucket;

  /// Enables flag to capture packets from the instance for 30 seconds
  ///
  /// Optional.
  core.bool? packetCaptureFlagEnabled;

  /// Defines the relative storage path in the Cloud Storage bucket where the
  /// diagnostic logs will be written: Default path will be the root directory
  /// of the Cloud Storage bucket (`gs://$GCS_BUCKET/$DATE_$TIME.tar.gz`)
  /// Example of full path where Log file will be written:
  /// `gs://$GCS_BUCKET/$RELATIVE_PATH/`
  ///
  /// Optional.
  core.String? relativePath;

  /// Enables flag to repair service for instance
  ///
  /// Optional.
  core.bool? repairFlagEnabled;

  DiagnosticConfig({
    this.copyHomeFilesFlagEnabled,
    this.gcsBucket,
    this.packetCaptureFlagEnabled,
    this.relativePath,
    this.repairFlagEnabled,
  });

  DiagnosticConfig.fromJson(core.Map json_)
      : this(
          copyHomeFilesFlagEnabled:
              json_.containsKey('copyHomeFilesFlagEnabled')
                  ? json_['copyHomeFilesFlagEnabled'] as core.bool
                  : null,
          gcsBucket: json_.containsKey('gcsBucket')
              ? json_['gcsBucket'] as core.String
              : null,
          packetCaptureFlagEnabled:
              json_.containsKey('packetCaptureFlagEnabled')
                  ? json_['packetCaptureFlagEnabled'] as core.bool
                  : null,
          relativePath: json_.containsKey('relativePath')
              ? json_['relativePath'] as core.String
              : null,
          repairFlagEnabled: json_.containsKey('repairFlagEnabled')
              ? json_['repairFlagEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (copyHomeFilesFlagEnabled != null)
          'copyHomeFilesFlagEnabled': copyHomeFilesFlagEnabled!,
        if (gcsBucket != null) 'gcsBucket': gcsBucket!,
        if (packetCaptureFlagEnabled != null)
          'packetCaptureFlagEnabled': packetCaptureFlagEnabled!,
        if (relativePath != null) 'relativePath': relativePath!,
        if (repairFlagEnabled != null) 'repairFlagEnabled': repairFlagEnabled!,
      };
}

/// An instance-attached disk resource.
class Disk {
  /// Indicates whether the disk will be auto-deleted when the instance is
  /// deleted (but not when the disk is detached from the instance).
  core.bool? autoDelete;

  /// Indicates that this is a boot disk.
  ///
  /// The virtual machine will use the first partition of the disk for its root
  /// filesystem.
  core.bool? boot;

  /// Indicates a unique device name of your choice that is reflected into the
  /// `/dev/disk/by-id/google-*` tree of a Linux operating system running within
  /// the instance.
  ///
  /// This name can be used to reference the device for mounting, resizing, and
  /// so on, from within the instance. If not specified, the server chooses a
  /// default device name to apply to this disk, in the form persistent-disk-x,
  /// where x is a number assigned by Google Compute Engine.This field is only
  /// applicable for persistent disks.
  core.String? deviceName;

  /// Indicates the size of the disk in base-2 GB.
  core.String? diskSizeGb;

  /// Indicates a list of features to enable on the guest operating system.
  ///
  /// Applicable only for bootable images. Read Enabling guest operating system
  /// features to see a list of available options.
  core.List<GuestOsFeature>? guestOsFeatures;

  /// A zero-based index to this disk, where 0 is reserved for the boot disk.
  ///
  /// If you have many disks attached to an instance, each disk would have a
  /// unique index number.
  core.String? index;

  /// Indicates the disk interface to use for attaching this disk, which is
  /// either SCSI or NVME.
  ///
  /// The default is SCSI. Persistent disks must always use SCSI and the request
  /// will fail if you attempt to attach a persistent disk in any other format
  /// than SCSI. Local SSDs can use either NVME or SCSI. For performance
  /// characteristics of SCSI over NVMe, see Local SSD performance. Valid
  /// values: * `NVME` * `SCSI`
  core.String? interface;

  /// Type of the resource.
  ///
  /// Always compute#attachedDisk for attached disks.
  core.String? kind;

  /// A list of publicly visible licenses.
  ///
  /// Reserved for Google's use. A License represents billing and aggregate
  /// usage data for public and marketplace images.
  core.List<core.String>? licenses;

  /// The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`.
  ///
  /// If not specified, the default is to attach the disk in `READ_WRITE` mode.
  /// Valid values: * `READ_ONLY` * `READ_WRITE`
  core.String? mode;

  /// Indicates a valid partial or full URL to an existing Persistent Disk
  /// resource.
  core.String? source;

  /// Indicates the type of the disk, either `SCRATCH` or `PERSISTENT`.
  ///
  /// Valid values: * `PERSISTENT` * `SCRATCH`
  core.String? type;

  Disk({
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskSizeGb,
    this.guestOsFeatures,
    this.index,
    this.interface,
    this.kind,
    this.licenses,
    this.mode,
    this.source,
    this.type,
  });

  Disk.fromJson(core.Map json_)
      : this(
          autoDelete: json_.containsKey('autoDelete')
              ? json_['autoDelete'] as core.bool
              : null,
          boot: json_.containsKey('boot') ? json_['boot'] as core.bool : null,
          deviceName: json_.containsKey('deviceName')
              ? json_['deviceName'] as core.String
              : null,
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.String
              : null,
          guestOsFeatures: json_.containsKey('guestOsFeatures')
              ? (json_['guestOsFeatures'] as core.List)
                  .map((value) => GuestOsFeature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          index:
              json_.containsKey('index') ? json_['index'] as core.String : null,
          interface: json_.containsKey('interface')
              ? json_['interface'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          licenses: json_.containsKey('licenses')
              ? (json_['licenses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoDelete != null) 'autoDelete': autoDelete!,
        if (boot != null) 'boot': boot!,
        if (deviceName != null) 'deviceName': deviceName!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (guestOsFeatures != null) 'guestOsFeatures': guestOsFeatures!,
        if (index != null) 'index': index!,
        if (interface != null) 'interface': interface!,
        if (kind != null) 'kind': kind!,
        if (licenses != null) 'licenses': licenses!,
        if (mode != null) 'mode': mode!,
        if (source != null) 'source': source!,
        if (type != null) 'type': type!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a custom encryption key configuration that can be applied to a
/// resource.
///
/// This will encrypt all disks in Virtual Machine.
class EncryptionConfig {
  /// The Cloud KMS resource identifier of the customer-managed encryption key
  /// used to protect a resource, such as a disks.
  ///
  /// It has the following format:
  /// `projects/{PROJECT_ID}/locations/{REGION}/keyRings/{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}`
  core.String? kmsKey;

  EncryptionConfig({
    this.kmsKey,
  });

  EncryptionConfig.fromJson(core.Map json_)
      : this(
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
}

/// Definition of a software environment that is used to start a notebook
/// instance.
class Environment {
  /// Use a container image to start the notebook instance.
  ContainerImage? containerImage;

  /// The time at which this environment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A brief description of this environment.
  core.String? description;

  /// Display name of this environment for the UI.
  core.String? displayName;

  /// Name of this environment.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/environments/{environment_id}`
  ///
  /// Output only.
  core.String? name;

  /// Path to a Bash script that automatically runs after a notebook instance
  /// fully boots up.
  ///
  /// The path must be a URL or Cloud Storage path. Example:
  /// `"gs://path-to-file/file-name"`
  core.String? postStartupScript;

  /// Use a Compute Engine VM image to start the notebook instance.
  VmImage? vmImage;

  Environment({
    this.containerImage,
    this.createTime,
    this.description,
    this.displayName,
    this.name,
    this.postStartupScript,
    this.vmImage,
  });

  Environment.fromJson(core.Map json_)
      : this(
          containerImage: json_.containsKey('containerImage')
              ? ContainerImage.fromJson(json_['containerImage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          postStartupScript: json_.containsKey('postStartupScript')
              ? json_['postStartupScript'] as core.String
              : null,
          vmImage: json_.containsKey('vmImage')
              ? VmImage.fromJson(
                  json_['vmImage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerImage != null) 'containerImage': containerImage!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (postStartupScript != null) 'postStartupScript': postStartupScript!,
        if (vmImage != null) 'vmImage': vmImage!,
      };
}

/// The definition of an Event for a managed / semi-managed notebook instance.
class Event {
  /// Event details.
  ///
  /// This field is used to pass event information.
  ///
  /// Optional.
  core.Map<core.String, core.String>? details;

  /// Event report time.
  core.String? reportTime;

  /// Event type.
  /// Possible string values are:
  /// - "EVENT_TYPE_UNSPECIFIED" : Event is not specified.
  /// - "IDLE" : The instance / runtime is idle
  /// - "HEARTBEAT" : The instance / runtime is available. This event indicates
  /// that instance / runtime underlying compute is operational.
  /// - "HEALTH" : The instance / runtime health is available. This event
  /// indicates that instance / runtime health information.
  /// - "MAINTENANCE" : The instance / runtime is available. This event allows
  /// instance / runtime to send Host maintenance information to Control Plane.
  /// https://cloud.google.com/compute/docs/gpus/gpu-host-maintenance
  core.String? type;

  Event({
    this.details,
    this.reportTime,
    this.type,
  });

  Event.fromJson(core.Map json_)
      : this(
          details: json_.containsKey('details')
              ? (json_['details'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          reportTime: json_.containsKey('reportTime')
              ? json_['reportTime'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (reportTime != null) 'reportTime': reportTime!,
        if (type != null) 'type': type!,
      };
}

/// The definition of a single executed notebook.
class Execution {
  /// Time the Execution was instantiated.
  ///
  /// Output only.
  core.String? createTime;

  /// A brief description of this execution.
  core.String? description;

  /// Name used for UI purposes.
  ///
  /// Name can only contain alphanumeric characters and underscores '_'.
  ///
  /// Output only.
  core.String? displayName;

  /// execute metadata including name, hardware spec, region, labels, etc.
  ExecutionTemplate? executionTemplate;

  /// The URI of the external job used to execute the notebook.
  ///
  /// Output only.
  core.String? jobUri;

  /// The resource name of the execute.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/executions/{execution_id}`
  ///
  /// Output only.
  core.String? name;

  /// Output notebook file generated by this execution
  core.String? outputNotebookFile;

  /// State of the underlying AI Platform job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The job state is unspecified.
  /// - "QUEUED" : The job has been just created and processing has not yet
  /// begun.
  /// - "PREPARING" : The service is preparing to execution the job.
  /// - "RUNNING" : The job is in progress.
  /// - "SUCCEEDED" : The job completed successfully.
  /// - "FAILED" : The job failed. `error_message` should contain the details of
  /// the failure.
  /// - "CANCELLING" : The job is being cancelled. `error_message` should
  /// describe the reason for the cancellation.
  /// - "CANCELLED" : The job has been cancelled. `error_message` should
  /// describe the reason for the cancellation.
  /// - "EXPIRED" : The job has become expired (relevant to Vertex AI jobs)
  /// https://cloud.google.com/vertex-ai/docs/reference/rest/v1/JobState
  /// - "INITIALIZING" : The Execution is being created.
  core.String? state;

  /// Time the Execution was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Execution({
    this.createTime,
    this.description,
    this.displayName,
    this.executionTemplate,
    this.jobUri,
    this.name,
    this.outputNotebookFile,
    this.state,
    this.updateTime,
  });

  Execution.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          executionTemplate: json_.containsKey('executionTemplate')
              ? ExecutionTemplate.fromJson(json_['executionTemplate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          jobUri: json_.containsKey('jobUri')
              ? json_['jobUri'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          outputNotebookFile: json_.containsKey('outputNotebookFile')
              ? json_['outputNotebookFile'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (executionTemplate != null) 'executionTemplate': executionTemplate!,
        if (jobUri != null) 'jobUri': jobUri!,
        if (name != null) 'name': name!,
        if (outputNotebookFile != null)
          'outputNotebookFile': outputNotebookFile!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The description a notebook execution workload.
class ExecutionTemplate {
  /// Configuration (count and accelerator type) for hardware running notebook
  /// execution.
  SchedulerAcceleratorConfig? acceleratorConfig;

  /// Container Image URI to a DLVM Example:
  /// 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be
  /// found at:
  /// https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container
  core.String? containerImageUri;

  /// Parameters used in Dataproc JobType executions.
  DataprocParameters? dataprocParameters;

  /// Path to the notebook file to execute.
  ///
  /// Must be in a Google Cloud Storage bucket. Format:
  /// `gs://{bucket_name}/{folder}/{notebook_file_name}` Ex:
  /// `gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`
  core.String? inputNotebookFile;

  /// The type of Job to be used on this execution.
  /// Possible string values are:
  /// - "JOB_TYPE_UNSPECIFIED" : No type specified.
  /// - "VERTEX_AI" : Custom Job in `aiplatform.googleapis.com`. Default value
  /// for an execution.
  /// - "DATAPROC" : Run execution on a cluster with Dataproc as a job.
  /// https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.jobs
  core.String? jobType;

  /// Name of the kernel spec to use.
  ///
  /// This must be specified if the kernel spec name on the execution target
  /// does not match the name in the input notebook file.
  core.String? kernelSpec;

  /// Labels for execution.
  ///
  /// If execution is scheduled, a field included will be 'nbs-scheduled'.
  /// Otherwise, it is an immediate execution, and an included field will be
  /// 'nbs-immediate'. Use fields to efficiently index between various types of
  /// executions.
  core.Map<core.String, core.String>? labels;

  /// Specifies the type of virtual machine to use for your training job's
  /// master worker.
  ///
  /// You must specify this field when `scaleTier` is set to `CUSTOM`. You can
  /// use certain Compute Engine machine types directly in this field. The
  /// following types are supported: - `n1-standard-4` - `n1-standard-8` -
  /// `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96`
  /// - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` -
  /// `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` -
  /// `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can
  /// use the following legacy machine types: - `standard` - `large_model` -
  /// `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu`
  /// - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` -
  /// `complex_model_m_p100` - `standard_v100` - `large_model_v100` -
  /// `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to
  /// use a TPU for training, specify `cloud_tpu` in this field. Learn more
  /// about the
  /// [special configuration options for training with TPU](https://cloud.google.com/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  core.String? masterType;

  /// Path to the notebook folder to write to.
  ///
  /// Must be in a Google Cloud Storage bucket path. Format:
  /// `gs://{bucket_name}/{folder}` Ex: `gs://notebook_user/scheduled_notebooks`
  core.String? outputNotebookFolder;

  /// Parameters used within the 'input_notebook_file' notebook.
  core.String? parameters;

  /// Parameters to be overridden in the notebook during execution.
  ///
  /// Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on
  /// how to specifying parameters in the input notebook and pass them here in
  /// an YAML file. Ex:
  /// `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`
  core.String? paramsYamlFile;

  /// Scale tier of the hardware used for notebook execution.
  ///
  /// DEPRECATED Will be discontinued. As right now only CUSTOM is supported.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SCALE_TIER_UNSPECIFIED" : Unspecified Scale Tier.
  /// - "BASIC" : A single worker instance. This tier is suitable for learning
  /// how to use Cloud ML, and for experimenting with new models using small
  /// datasets.
  /// - "STANDARD_1" : Many workers and a few parameter servers.
  /// - "PREMIUM_1" : A large number of workers with many parameter servers.
  /// - "BASIC_GPU" : A single worker instance with a K80 GPU.
  /// - "BASIC_TPU" : A single worker instance with a Cloud TPU.
  /// - "CUSTOM" : The CUSTOM tier is not a set tier, but rather enables you to
  /// use your own cluster specification. When you use this tier, set values to
  /// configure your processing cluster according to these guidelines: * You
  /// _must_ set `ExecutionTemplate.masterType` to specify the type of machine
  /// to use for your master node. This is the only required setting.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? scaleTier;

  /// The email address of a service account to use when running the execution.
  ///
  /// You must have the `iam.serviceAccounts.actAs` permission for the specified
  /// service account.
  core.String? serviceAccount;

  /// The name of a Vertex AI \[Tensorboard\] resource to which this execution
  /// will upload Tensorboard logs.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  core.String? tensorboard;

  /// Parameters used in Vertex AI JobType executions.
  VertexAIParameters? vertexAiParameters;

  ExecutionTemplate({
    this.acceleratorConfig,
    this.containerImageUri,
    this.dataprocParameters,
    this.inputNotebookFile,
    this.jobType,
    this.kernelSpec,
    this.labels,
    this.masterType,
    this.outputNotebookFolder,
    this.parameters,
    this.paramsYamlFile,
    this.scaleTier,
    this.serviceAccount,
    this.tensorboard,
    this.vertexAiParameters,
  });

  ExecutionTemplate.fromJson(core.Map json_)
      : this(
          acceleratorConfig: json_.containsKey('acceleratorConfig')
              ? SchedulerAcceleratorConfig.fromJson(json_['acceleratorConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          containerImageUri: json_.containsKey('containerImageUri')
              ? json_['containerImageUri'] as core.String
              : null,
          dataprocParameters: json_.containsKey('dataprocParameters')
              ? DataprocParameters.fromJson(json_['dataprocParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inputNotebookFile: json_.containsKey('inputNotebookFile')
              ? json_['inputNotebookFile'] as core.String
              : null,
          jobType: json_.containsKey('jobType')
              ? json_['jobType'] as core.String
              : null,
          kernelSpec: json_.containsKey('kernelSpec')
              ? json_['kernelSpec'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          masterType: json_.containsKey('masterType')
              ? json_['masterType'] as core.String
              : null,
          outputNotebookFolder: json_.containsKey('outputNotebookFolder')
              ? json_['outputNotebookFolder'] as core.String
              : null,
          parameters: json_.containsKey('parameters')
              ? json_['parameters'] as core.String
              : null,
          paramsYamlFile: json_.containsKey('paramsYamlFile')
              ? json_['paramsYamlFile'] as core.String
              : null,
          scaleTier: json_.containsKey('scaleTier')
              ? json_['scaleTier'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          tensorboard: json_.containsKey('tensorboard')
              ? json_['tensorboard'] as core.String
              : null,
          vertexAiParameters: json_.containsKey('vertexAiParameters')
              ? VertexAIParameters.fromJson(json_['vertexAiParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorConfig != null) 'acceleratorConfig': acceleratorConfig!,
        if (containerImageUri != null) 'containerImageUri': containerImageUri!,
        if (dataprocParameters != null)
          'dataprocParameters': dataprocParameters!,
        if (inputNotebookFile != null) 'inputNotebookFile': inputNotebookFile!,
        if (jobType != null) 'jobType': jobType!,
        if (kernelSpec != null) 'kernelSpec': kernelSpec!,
        if (labels != null) 'labels': labels!,
        if (masterType != null) 'masterType': masterType!,
        if (outputNotebookFolder != null)
          'outputNotebookFolder': outputNotebookFolder!,
        if (parameters != null) 'parameters': parameters!,
        if (paramsYamlFile != null) 'paramsYamlFile': paramsYamlFile!,
        if (scaleTier != null) 'scaleTier': scaleTier!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (tensorboard != null) 'tensorboard': tensorboard!,
        if (vertexAiParameters != null)
          'vertexAiParameters': vertexAiParameters!,
      };
}

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

/// Response for checking if a notebook instance is healthy.
class GetInstanceHealthResponse {
  /// Additional information about instance health.
  ///
  /// Example: healthInfo": { "docker_proxy_agent_status": "1", "docker_status":
  /// "1", "jupyterlab_api_status": "-1", "jupyterlab_status": "-1", "updated":
  /// "2020-10-18 09:40:03.573409" }
  ///
  /// Output only.
  core.Map<core.String, core.String>? healthInfo;

  /// Runtime health_state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HEALTH_STATE_UNSPECIFIED" : The instance substate is unknown.
  /// - "HEALTHY" : The instance is known to be in an healthy state (for
  /// example, critical daemons are running) Applies to ACTIVE state.
  /// - "UNHEALTHY" : The instance is known to be in an unhealthy state (for
  /// example, critical daemons are not running) Applies to ACTIVE state.
  /// - "AGENT_NOT_INSTALLED" : The instance has not installed health monitoring
  /// agent. Applies to ACTIVE state.
  /// - "AGENT_NOT_RUNNING" : The instance health monitoring agent is not
  /// running. Applies to ACTIVE state.
  core.String? healthState;

  GetInstanceHealthResponse({
    this.healthInfo,
    this.healthState,
  });

  GetInstanceHealthResponse.fromJson(core.Map json_)
      : this(
          healthInfo: json_.containsKey('healthInfo')
              ? (json_['healthInfo'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          healthState: json_.containsKey('healthState')
              ? json_['healthState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (healthInfo != null) 'healthInfo': healthInfo!,
        if (healthState != null) 'healthState': healthState!,
      };
}

/// Guest OS features for boot disk.
class GuestOsFeature {
  /// The ID of a supported feature.
  ///
  /// Read Enabling guest operating system features to see a list of available
  /// options. Valid values: * `FEATURE_TYPE_UNSPECIFIED` * `MULTI_IP_SUBNET` *
  /// `SECURE_BOOT` * `UEFI_COMPATIBLE` * `VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
  core.String? type;

  GuestOsFeature({
    this.type,
  });

  GuestOsFeature.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// The definition of a notebook instance.
class Instance {
  /// The hardware accelerator used on this instance.
  ///
  /// If you use accelerators, make sure that your configuration has \[enough
  /// vCPUs and memory to support the `machine_type` you have
  /// selected\](https://cloud.google.com/compute/docs/gpus/#gpus-list).
  AcceleratorConfig? acceleratorConfig;

  /// Input only.
  ///
  /// The size of the boot disk in GB attached to this instance, up to a maximum
  /// of 64000 GB (64 TB). The minimum recommended value is 100 GB. If not
  /// specified, this defaults to 100.
  core.String? bootDiskSizeGb;

  /// Input only.
  ///
  /// The type of the boot disk attached to this instance, defaults to standard
  /// persistent disk (`PD_STANDARD`).
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Disk type not set.
  /// - "PD_STANDARD" : Standard persistent disk type.
  /// - "PD_SSD" : SSD persistent disk type.
  /// - "PD_BALANCED" : Balanced persistent disk type.
  /// - "PD_EXTREME" : Extreme persistent disk type.
  core.String? bootDiskType;

  /// Flag to enable ip forwarding or not, default false/off.
  ///
  /// https://cloud.google.com/vpc/docs/using-routes#canipforward
  ///
  /// Optional.
  core.bool? canIpForward;

  /// Use a container image to start the notebook instance.
  ContainerImage? containerImage;

  /// Instance creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Email address of entity that sent original CreateInstance request.
  ///
  /// Output only.
  core.String? creator;

  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  ///
  /// If not specified, we'll automatically choose from official GPU drivers.
  core.String? customGpuDriverPath;

  /// Input only.
  ///
  /// The size of the data disk in GB attached to this instance, up to a maximum
  /// of 64000 GB (64 TB). You can choose the size of the data disk based on how
  /// big your notebooks and data are. If not specified, this defaults to 100.
  core.String? dataDiskSizeGb;

  /// Input only.
  ///
  /// The type of the data disk attached to this instance, defaults to standard
  /// persistent disk (`PD_STANDARD`).
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Disk type not set.
  /// - "PD_STANDARD" : Standard persistent disk type.
  /// - "PD_SSD" : SSD persistent disk type.
  /// - "PD_BALANCED" : Balanced persistent disk type.
  /// - "PD_EXTREME" : Extreme persistent disk type.
  core.String? dataDiskType;

  /// Input only.
  ///
  /// Disk encryption method used on the boot and data disks, defaults to GMEK.
  /// Possible string values are:
  /// - "DISK_ENCRYPTION_UNSPECIFIED" : Disk encryption is not specified.
  /// - "GMEK" : Use Google managed encryption keys to encrypt the boot disk.
  /// - "CMEK" : Use customer managed encryption keys to encrypt the boot disk.
  core.String? diskEncryption;

  /// Attached disks to notebook instance.
  ///
  /// Output only.
  core.List<Disk>? disks;

  /// Whether the end user authorizes Google Cloud to install GPU driver on this
  /// instance.
  ///
  /// If this field is empty or set to false, the GPU driver won't be installed.
  /// Only applicable to instances with GPUs.
  core.bool? installGpuDriver;

  /// Checks how feasible a migration from UmN to WbI is.
  ///
  /// Output only.
  InstanceMigrationEligibility? instanceMigrationEligibility;

  /// Input only.
  ///
  /// The owner of this instance after creation. Format: `alias@example.com`
  /// Currently supports one owner only. If not specified, all of the service
  /// account users of your VM instance's service account can use the instance.
  core.List<core.String>? instanceOwners;

  /// Input only.
  ///
  /// The KMS key used to encrypt the disks, only applicable if disk_encryption
  /// is CMEK. Format:
  /// `projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}`
  /// Learn more about \[using your own encryption keys\](/kms/docs/quickstart).
  core.String? kmsKey;

  /// Labels to apply to this instance.
  ///
  /// These can be later modified by the setLabels method.
  core.Map<core.String, core.String>? labels;

  /// The
  /// [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types)
  /// of this instance.
  ///
  /// Required.
  core.String? machineType;

  /// Custom metadata to apply to this instance.
  ///
  /// For example, to specify a Cloud Storage bucket for automatic backup, you
  /// can use the `gcs-data-bucket` metadata tag. Format:
  /// `"--metadata=gcs-data-bucket=``BUCKET''"`.
  core.Map<core.String, core.String>? metadata;

  /// Bool indicating whether this notebook has been migrated to a Workbench
  /// Instance
  ///
  /// Output only.
  core.bool? migrated;

  /// The name of this notebook instance.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/instances/{instance_id}`
  ///
  /// Output only.
  core.String? name;

  /// The name of the VPC that this instance is in.
  ///
  /// Format: `projects/{project_id}/global/networks/{network_id}`
  core.String? network;

  /// The type of vNIC to be used on this interface.
  ///
  /// This may be gVNIC or VirtioNet.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UNSPECIFIED_NIC_TYPE" : No type specified.
  /// - "VIRTIO_NET" : VIRTIO
  /// - "GVNIC" : GVNIC
  core.String? nicType;

  /// If true, the notebook instance will not register with the proxy.
  core.bool? noProxyAccess;

  /// If true, no external IP will be assigned to this instance.
  core.bool? noPublicIp;

  /// Input only.
  ///
  /// If true, the data disk will not be auto deleted when deleting the
  /// instance.
  core.bool? noRemoveDataDisk;

  /// Path to a Bash script that automatically runs after a notebook instance
  /// fully boots up.
  ///
  /// The path must be a URL or Cloud Storage path
  /// (`gs://path-to-file/file-name`).
  core.String? postStartupScript;

  /// The proxy endpoint that is used to access the Jupyter notebook.
  ///
  /// Output only.
  core.String? proxyUri;

  /// The optional reservation affinity.
  ///
  /// Setting this field will apply the specified
  /// [Zonal Compute Reservation](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
  /// to this notebook instance.
  ///
  /// Optional.
  ReservationAffinity? reservationAffinity;

  /// The service account on this instance, giving access to other Google Cloud
  /// services.
  ///
  /// You can use any service account within the same project, but you must have
  /// the service account user permission to use the instance. If not specified,
  /// the
  /// [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account)
  /// is used.
  core.String? serviceAccount;

  /// The URIs of service account scopes to be included in Compute Engine
  /// instances.
  ///
  /// If not specified, the following
  /// [scopes](https://cloud.google.com/compute/docs/access/service-accounts#accesscopesiam)
  /// are defined: - https://www.googleapis.com/auth/cloud-platform -
  /// https://www.googleapis.com/auth/userinfo.email If not using default
  /// scopes, you need at least: https://www.googleapis.com/auth/compute
  ///
  /// Optional.
  core.List<core.String>? serviceAccountScopes;

  /// Shielded VM configuration.
  ///
  /// [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
  ///
  /// Optional.
  ShieldedInstanceConfig? shieldedInstanceConfig;

  /// The state of this instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "STARTING" : The control logic is starting the instance.
  /// - "PROVISIONING" : The control logic is installing required frameworks and
  /// registering the instance with notebook proxy
  /// - "ACTIVE" : The instance is running.
  /// - "STOPPING" : The control logic is stopping the instance.
  /// - "STOPPED" : The instance is stopped.
  /// - "DELETED" : The instance is deleted.
  /// - "UPGRADING" : The instance is upgrading.
  /// - "INITIALIZING" : The instance is being created.
  /// - "REGISTERING" : The instance is getting registered.
  /// - "SUSPENDING" : The instance is suspending.
  /// - "SUSPENDED" : The instance is suspended.
  core.String? state;

  /// The name of the subnet that this instance is in.
  ///
  /// Format:
  /// `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  core.String? subnet;

  /// The Compute Engine tags to add to runtime (see
  /// [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  ///
  /// Optional.
  core.List<core.String>? tags;

  /// Instance update time.
  ///
  /// Output only.
  core.String? updateTime;

  /// The upgrade history of this instance.
  core.List<UpgradeHistoryEntry>? upgradeHistory;

  /// Use a Compute Engine VM image to start the notebook instance.
  VmImage? vmImage;

  Instance({
    this.acceleratorConfig,
    this.bootDiskSizeGb,
    this.bootDiskType,
    this.canIpForward,
    this.containerImage,
    this.createTime,
    this.creator,
    this.customGpuDriverPath,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.diskEncryption,
    this.disks,
    this.installGpuDriver,
    this.instanceMigrationEligibility,
    this.instanceOwners,
    this.kmsKey,
    this.labels,
    this.machineType,
    this.metadata,
    this.migrated,
    this.name,
    this.network,
    this.nicType,
    this.noProxyAccess,
    this.noPublicIp,
    this.noRemoveDataDisk,
    this.postStartupScript,
    this.proxyUri,
    this.reservationAffinity,
    this.serviceAccount,
    this.serviceAccountScopes,
    this.shieldedInstanceConfig,
    this.state,
    this.subnet,
    this.tags,
    this.updateTime,
    this.upgradeHistory,
    this.vmImage,
  });

  Instance.fromJson(core.Map json_)
      : this(
          acceleratorConfig: json_.containsKey('acceleratorConfig')
              ? AcceleratorConfig.fromJson(json_['acceleratorConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bootDiskSizeGb: json_.containsKey('bootDiskSizeGb')
              ? json_['bootDiskSizeGb'] as core.String
              : null,
          bootDiskType: json_.containsKey('bootDiskType')
              ? json_['bootDiskType'] as core.String
              : null,
          canIpForward: json_.containsKey('canIpForward')
              ? json_['canIpForward'] as core.bool
              : null,
          containerImage: json_.containsKey('containerImage')
              ? ContainerImage.fromJson(json_['containerImage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? json_['creator'] as core.String
              : null,
          customGpuDriverPath: json_.containsKey('customGpuDriverPath')
              ? json_['customGpuDriverPath'] as core.String
              : null,
          dataDiskSizeGb: json_.containsKey('dataDiskSizeGb')
              ? json_['dataDiskSizeGb'] as core.String
              : null,
          dataDiskType: json_.containsKey('dataDiskType')
              ? json_['dataDiskType'] as core.String
              : null,
          diskEncryption: json_.containsKey('diskEncryption')
              ? json_['diskEncryption'] as core.String
              : null,
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => Disk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          installGpuDriver: json_.containsKey('installGpuDriver')
              ? json_['installGpuDriver'] as core.bool
              : null,
          instanceMigrationEligibility:
              json_.containsKey('instanceMigrationEligibility')
                  ? InstanceMigrationEligibility.fromJson(
                      json_['instanceMigrationEligibility']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          instanceOwners: json_.containsKey('instanceOwners')
              ? (json_['instanceOwners'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          migrated: json_.containsKey('migrated')
              ? json_['migrated'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          nicType: json_.containsKey('nicType')
              ? json_['nicType'] as core.String
              : null,
          noProxyAccess: json_.containsKey('noProxyAccess')
              ? json_['noProxyAccess'] as core.bool
              : null,
          noPublicIp: json_.containsKey('noPublicIp')
              ? json_['noPublicIp'] as core.bool
              : null,
          noRemoveDataDisk: json_.containsKey('noRemoveDataDisk')
              ? json_['noRemoveDataDisk'] as core.bool
              : null,
          postStartupScript: json_.containsKey('postStartupScript')
              ? json_['postStartupScript'] as core.String
              : null,
          proxyUri: json_.containsKey('proxyUri')
              ? json_['proxyUri'] as core.String
              : null,
          reservationAffinity: json_.containsKey('reservationAffinity')
              ? ReservationAffinity.fromJson(json_['reservationAffinity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          serviceAccountScopes: json_.containsKey('serviceAccountScopes')
              ? (json_['serviceAccountScopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          shieldedInstanceConfig: json_.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(json_['shieldedInstanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          subnet: json_.containsKey('subnet')
              ? json_['subnet'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          upgradeHistory: json_.containsKey('upgradeHistory')
              ? (json_['upgradeHistory'] as core.List)
                  .map((value) => UpgradeHistoryEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vmImage: json_.containsKey('vmImage')
              ? VmImage.fromJson(
                  json_['vmImage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorConfig != null) 'acceleratorConfig': acceleratorConfig!,
        if (bootDiskSizeGb != null) 'bootDiskSizeGb': bootDiskSizeGb!,
        if (bootDiskType != null) 'bootDiskType': bootDiskType!,
        if (canIpForward != null) 'canIpForward': canIpForward!,
        if (containerImage != null) 'containerImage': containerImage!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (customGpuDriverPath != null)
          'customGpuDriverPath': customGpuDriverPath!,
        if (dataDiskSizeGb != null) 'dataDiskSizeGb': dataDiskSizeGb!,
        if (dataDiskType != null) 'dataDiskType': dataDiskType!,
        if (diskEncryption != null) 'diskEncryption': diskEncryption!,
        if (disks != null) 'disks': disks!,
        if (installGpuDriver != null) 'installGpuDriver': installGpuDriver!,
        if (instanceMigrationEligibility != null)
          'instanceMigrationEligibility': instanceMigrationEligibility!,
        if (instanceOwners != null) 'instanceOwners': instanceOwners!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (labels != null) 'labels': labels!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (migrated != null) 'migrated': migrated!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (nicType != null) 'nicType': nicType!,
        if (noProxyAccess != null) 'noProxyAccess': noProxyAccess!,
        if (noPublicIp != null) 'noPublicIp': noPublicIp!,
        if (noRemoveDataDisk != null) 'noRemoveDataDisk': noRemoveDataDisk!,
        if (postStartupScript != null) 'postStartupScript': postStartupScript!,
        if (proxyUri != null) 'proxyUri': proxyUri!,
        if (reservationAffinity != null)
          'reservationAffinity': reservationAffinity!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (serviceAccountScopes != null)
          'serviceAccountScopes': serviceAccountScopes!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (state != null) 'state': state!,
        if (subnet != null) 'subnet': subnet!,
        if (tags != null) 'tags': tags!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (upgradeHistory != null) 'upgradeHistory': upgradeHistory!,
        if (vmImage != null) 'vmImage': vmImage!,
      };
}

/// Notebook instance configurations that can be updated.
class InstanceConfig {
  /// Verifies core internal services are running.
  core.bool? enableHealthMonitoring;

  /// Cron expression in UTC timezone, used to schedule instance auto upgrade.
  ///
  /// Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  core.String? notebookUpgradeSchedule;

  InstanceConfig({
    this.enableHealthMonitoring,
    this.notebookUpgradeSchedule,
  });

  InstanceConfig.fromJson(core.Map json_)
      : this(
          enableHealthMonitoring: json_.containsKey('enableHealthMonitoring')
              ? json_['enableHealthMonitoring'] as core.bool
              : null,
          notebookUpgradeSchedule: json_.containsKey('notebookUpgradeSchedule')
              ? json_['notebookUpgradeSchedule'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableHealthMonitoring != null)
          'enableHealthMonitoring': enableHealthMonitoring!,
        if (notebookUpgradeSchedule != null)
          'notebookUpgradeSchedule': notebookUpgradeSchedule!,
      };
}

/// InstanceMigrationEligibility represents the feasibility information of a
/// migration from UmN to WbI.
class InstanceMigrationEligibility {
  /// Certain configurations make the UmN ineligible for an automatic migration.
  ///
  /// A manual migration is required.
  ///
  /// Output only.
  core.List<core.String>? errors;

  /// Certain configurations will be defaulted during the migration.
  ///
  /// Output only.
  core.List<core.String>? warnings;

  InstanceMigrationEligibility({
    this.errors,
    this.warnings,
  });

  InstanceMigrationEligibility.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// Response for checking if a notebook instance is upgradeable.
typedef IsInstanceUpgradeableResponse = $Response;

/// Response for listing environments.
class ListEnvironmentsResponse {
  /// A list of returned environments.
  core.List<Environment>? environments;

  /// A page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListEnvironmentsResponse({
    this.environments,
    this.nextPageToken,
    this.unreachable,
  });

  ListEnvironmentsResponse.fromJson(core.Map json_)
      : this(
          environments: json_.containsKey('environments')
              ? (json_['environments'] as core.List)
                  .map((value) => Environment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environments != null) 'environments': environments!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for listing scheduled notebook executions
class ListExecutionsResponse {
  /// A list of returned instances.
  core.List<Execution>? executions;

  /// Page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String? nextPageToken;

  /// Executions IDs that could not be reached.
  ///
  /// For example:
  /// \['projects/{project_id}/location/{location}/executions/imagenet_test1',
  /// 'projects/{project_id}/location/{location}/executions/classifier_train1'\]
  core.List<core.String>? unreachable;

  ListExecutionsResponse({
    this.executions,
    this.nextPageToken,
    this.unreachable,
  });

  ListExecutionsResponse.fromJson(core.Map json_)
      : this(
          executions: json_.containsKey('executions')
              ? (json_['executions'] as core.List)
                  .map((value) => Execution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executions != null) 'executions': executions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for listing notebook instances.
class ListInstancesResponse {
  /// A list of returned instances.
  core.List<Instance>? instances;

  /// Page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// For example, `['us-west1-a', 'us-central1-b']`. A ListInstancesResponse
  /// will only contain either instances or unreachables,
  core.List<core.String>? unreachable;

  ListInstancesResponse({
    this.instances,
    this.nextPageToken,
    this.unreachable,
  });

  ListInstancesResponse.fromJson(core.Map json_)
      : this(
          instances: json_.containsKey('instances')
              ? (json_['instances'] as core.List)
                  .map((value) => Instance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response for listing Managed Notebook Runtimes.
class ListRuntimesResponse {
  /// Page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String? nextPageToken;

  /// A list of returned Runtimes.
  core.List<Runtime>? runtimes;

  /// Locations that could not be reached.
  ///
  /// For example, `['us-west1', 'us-central1']`. A ListRuntimesResponse will
  /// only contain either runtimes or unreachables,
  core.List<core.String>? unreachable;

  ListRuntimesResponse({
    this.nextPageToken,
    this.runtimes,
    this.unreachable,
  });

  ListRuntimesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          runtimes: json_.containsKey('runtimes')
              ? (json_['runtimes'] as core.List)
                  .map((value) => Runtime.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (runtimes != null) 'runtimes': runtimes!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response for listing scheduled notebook job.
class ListSchedulesResponse {
  /// Page token that can be used to continue listing from the last result in
  /// the next list call.
  core.String? nextPageToken;

  /// A list of returned instances.
  core.List<Schedule>? schedules;

  /// Schedules that could not be reached.
  ///
  /// For example:
  /// \['projects/{project_id}/location/{location}/schedules/monthly_digest',
  /// 'projects/{project_id}/location/{location}/schedules/weekly_sentiment'\]
  core.List<core.String>? unreachable;

  ListSchedulesResponse({
    this.nextPageToken,
    this.schedules,
    this.unreachable,
  });

  ListSchedulesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          schedules: json_.containsKey('schedules')
              ? (json_['schedules'] as core.List)
                  .map((value) => Schedule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (schedules != null) 'schedules': schedules!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A Local attached disk resource.
class LocalDisk {
  /// Specifies whether the disk will be auto-deleted when the instance is
  /// deleted (but not when the disk is detached from the instance).
  ///
  /// Optional. Output only.
  core.bool? autoDelete;

  /// Indicates that this is a boot disk.
  ///
  /// The virtual machine will use the first partition of the disk for its root
  /// filesystem.
  ///
  /// Optional. Output only.
  core.bool? boot;

  /// Specifies a unique device name of your choice that is reflected into the
  /// `/dev/disk/by-id/google-*` tree of a Linux operating system running within
  /// the instance.
  ///
  /// This name can be used to reference the device for mounting, resizing, and
  /// so on, from within the instance. If not specified, the server chooses a
  /// default device name to apply to this disk, in the form persistent-disk-x,
  /// where x is a number assigned by Google Compute Engine. This field is only
  /// applicable for persistent disks.
  ///
  /// Optional. Output only.
  core.String? deviceName;

  /// Indicates a list of features to enable on the guest operating system.
  ///
  /// Applicable only for bootable images. Read Enabling guest operating system
  /// features to see a list of available options.
  ///
  /// Output only.
  core.List<RuntimeGuestOsFeature>? guestOsFeatures;

  /// A zero-based index to this disk, where 0 is reserved for the boot disk.
  ///
  /// If you have many disks attached to an instance, each disk would have a
  /// unique index number.
  ///
  /// Output only.
  core.int? index;

  /// Input only.
  ///
  /// Specifies the parameters for a new disk that will be created alongside the
  /// new instance. Use initialization parameters to create boot disks or local
  /// SSDs attached to the new instance. This property is mutually exclusive
  /// with the source property; you can only define one or the other, but not
  /// both.
  LocalDiskInitializeParams? initializeParams;

  /// Specifies the disk interface to use for attaching this disk, which is
  /// either SCSI or NVME.
  ///
  /// The default is SCSI. Persistent disks must always use SCSI and the request
  /// will fail if you attempt to attach a persistent disk in any other format
  /// than SCSI. Local SSDs can use either NVME or SCSI. For performance
  /// characteristics of SCSI over NVMe, see Local SSD performance. Valid
  /// values: * `NVME` * `SCSI`
  core.String? interface;

  /// Type of the resource.
  ///
  /// Always compute#attachedDisk for attached disks.
  ///
  /// Output only.
  core.String? kind;

  /// Any valid publicly visible licenses.
  ///
  /// Output only.
  core.List<core.String>? licenses;

  /// The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`.
  ///
  /// If not specified, the default is to attach the disk in `READ_WRITE` mode.
  /// Valid values: * `READ_ONLY` * `READ_WRITE`
  core.String? mode;

  /// Specifies a valid partial or full URL to an existing Persistent Disk
  /// resource.
  core.String? source;

  /// Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`.
  ///
  /// If not specified, the default is `PERSISTENT`. Valid values: *
  /// `PERSISTENT` * `SCRATCH`
  core.String? type;

  LocalDisk({
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.guestOsFeatures,
    this.index,
    this.initializeParams,
    this.interface,
    this.kind,
    this.licenses,
    this.mode,
    this.source,
    this.type,
  });

  LocalDisk.fromJson(core.Map json_)
      : this(
          autoDelete: json_.containsKey('autoDelete')
              ? json_['autoDelete'] as core.bool
              : null,
          boot: json_.containsKey('boot') ? json_['boot'] as core.bool : null,
          deviceName: json_.containsKey('deviceName')
              ? json_['deviceName'] as core.String
              : null,
          guestOsFeatures: json_.containsKey('guestOsFeatures')
              ? (json_['guestOsFeatures'] as core.List)
                  .map((value) => RuntimeGuestOsFeature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          initializeParams: json_.containsKey('initializeParams')
              ? LocalDiskInitializeParams.fromJson(json_['initializeParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          interface: json_.containsKey('interface')
              ? json_['interface'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          licenses: json_.containsKey('licenses')
              ? (json_['licenses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mode: json_.containsKey('mode') ? json_['mode'] as core.String : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoDelete != null) 'autoDelete': autoDelete!,
        if (boot != null) 'boot': boot!,
        if (deviceName != null) 'deviceName': deviceName!,
        if (guestOsFeatures != null) 'guestOsFeatures': guestOsFeatures!,
        if (index != null) 'index': index!,
        if (initializeParams != null) 'initializeParams': initializeParams!,
        if (interface != null) 'interface': interface!,
        if (kind != null) 'kind': kind!,
        if (licenses != null) 'licenses': licenses!,
        if (mode != null) 'mode': mode!,
        if (source != null) 'source': source!,
        if (type != null) 'type': type!,
      };
}

/// Input only.
///
/// Specifies the parameters for a new disk that will be created alongside the
/// new instance. Use initialization parameters to create boot disks or local
/// SSDs attached to the new runtime. This property is mutually exclusive with
/// the source property; you can only define one or the other, but not both.
class LocalDiskInitializeParams {
  /// Provide this property when creating the disk.
  ///
  /// Optional.
  core.String? description;

  /// Specifies the disk name.
  ///
  /// If not specified, the default is to use the name of the instance. If the
  /// disk with the instance name exists already in the given zone/region, a new
  /// name will be automatically generated.
  ///
  /// Optional.
  core.String? diskName;

  /// Specifies the size of the disk in base-2 GB.
  ///
  /// If not specified, the disk will be the same size as the image (usually
  /// 10GB). If specified, the size must be equal to or larger than 10GB.
  /// Default 100 GB.
  ///
  /// Optional.
  core.String? diskSizeGb;

  /// Input only.
  ///
  /// The type of the boot disk attached to this instance, defaults to standard
  /// persistent disk (`PD_STANDARD`).
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Disk type not set.
  /// - "PD_STANDARD" : Standard persistent disk type.
  /// - "PD_SSD" : SSD persistent disk type.
  /// - "PD_BALANCED" : Balanced persistent disk type.
  /// - "PD_EXTREME" : Extreme persistent disk type.
  core.String? diskType;

  /// Labels to apply to this disk.
  ///
  /// These can be later modified by the disks.setLabels method. This field is
  /// only applicable for persistent disks.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  LocalDiskInitializeParams({
    this.description,
    this.diskName,
    this.diskSizeGb,
    this.diskType,
    this.labels,
  });

  LocalDiskInitializeParams.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          diskName: json_.containsKey('diskName')
              ? json_['diskName'] as core.String
              : null,
          diskSizeGb: json_.containsKey('diskSizeGb')
              ? json_['diskSizeGb'] as core.String
              : null,
          diskType: json_.containsKey('diskType')
              ? json_['diskType'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (diskName != null) 'diskName': diskName!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (labels != null) 'labels': labels!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Request for migrating a User-Managed Notebook to Workbench Instances.
class MigrateInstanceRequest {
  /// Specifies the behavior of post startup script during migration.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "POST_STARTUP_SCRIPT_OPTION_UNSPECIFIED" : Post startup script option is
  /// not specified. Default is POST_STARTUP_SCRIPT_OPTION_SKIP.
  /// - "POST_STARTUP_SCRIPT_OPTION_SKIP" : Not migrate the post startup script
  /// to the new Workbench Instance.
  /// - "POST_STARTUP_SCRIPT_OPTION_RERUN" : Redownload and rerun the same post
  /// startup script as the User-Managed Notebook.
  core.String? postStartupScriptOption;

  MigrateInstanceRequest({
    this.postStartupScriptOption,
  });

  MigrateInstanceRequest.fromJson(core.Map json_)
      : this(
          postStartupScriptOption: json_.containsKey('postStartupScriptOption')
              ? json_['postStartupScriptOption'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (postStartupScriptOption != null)
          'postStartupScriptOption': postStartupScriptOption!,
      };
}

/// Request for migrating a Runtime to a Workbench Instance.
class MigrateRuntimeRequest {
  /// Name of the VPC that the new Instance is in.
  ///
  /// This is required if the Runtime uses google-managed network. If the
  /// Runtime uses customer-owned network, it will reuse the same VPC, and this
  /// field must be empty. Format:
  /// `projects/{project_id}/global/networks/{network_id}`
  ///
  /// Optional.
  core.String? network;

  /// Specifies the behavior of post startup script during migration.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "POST_STARTUP_SCRIPT_OPTION_UNSPECIFIED" : Post startup script option is
  /// not specified. Default is POST_STARTUP_SCRIPT_OPTION_SKIP.
  /// - "POST_STARTUP_SCRIPT_OPTION_SKIP" : Not migrate the post startup script
  /// to the new Workbench Instance.
  /// - "POST_STARTUP_SCRIPT_OPTION_RERUN" : Redownload and rerun the same post
  /// startup script as the Google-Managed Notebook.
  core.String? postStartupScriptOption;

  /// Idempotent request UUID.
  ///
  /// Optional.
  core.String? requestId;

  /// The service account to be included in the Compute Engine instance of the
  /// new Workbench Instance when the Runtime uses "single user only" mode for
  /// permission.
  ///
  /// If not specified, the
  /// [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account)
  /// is used. When the Runtime uses service account mode for permission, it
  /// will reuse the same service account, and this field must be empty.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Name of the subnet that the new Instance is in.
  ///
  /// This is required if the Runtime uses google-managed network. If the
  /// Runtime uses customer-owned network, it will reuse the same subnet, and
  /// this field must be empty. Format:
  /// `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  ///
  /// Optional.
  core.String? subnet;

  MigrateRuntimeRequest({
    this.network,
    this.postStartupScriptOption,
    this.requestId,
    this.serviceAccount,
    this.subnet,
  });

  MigrateRuntimeRequest.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          postStartupScriptOption: json_.containsKey('postStartupScriptOption')
              ? json_['postStartupScriptOption'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? json_['serviceAccount'] as core.String
              : null,
          subnet: json_.containsKey('subnet')
              ? json_['subnet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (postStartupScriptOption != null)
          'postStartupScriptOption': postStartupScriptOption!,
        if (requestId != null) 'requestId': requestId!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (subnet != null) 'subnet': subnet!,
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
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
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
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Request for getting a new access token.
typedef RefreshRuntimeTokenInternalRequest = $Request09;

/// Response with a new access token.
class RefreshRuntimeTokenInternalResponse {
  /// The OAuth 2.0 access token.
  core.String? accessToken;

  /// Token expiration time.
  ///
  /// Output only.
  core.String? expireTime;

  RefreshRuntimeTokenInternalResponse({
    this.accessToken,
    this.expireTime,
  });

  RefreshRuntimeTokenInternalResponse.fromJson(core.Map json_)
      : this(
          accessToken: json_.containsKey('accessToken')
              ? json_['accessToken'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (expireTime != null) 'expireTime': expireTime!,
      };
}

/// Request for registering a notebook instance.
class RegisterInstanceRequest {
  /// User defined unique ID of this instance.
  ///
  /// The `instance_id` must be 1 to 63 characters long and contain only
  /// lowercase letters, numeric characters, and dashes. The first character
  /// must be a lowercase letter and the last character cannot be a dash.
  ///
  /// Required.
  core.String? instanceId;

  RegisterInstanceRequest({
    this.instanceId,
  });

  RegisterInstanceRequest.fromJson(core.Map json_)
      : this(
          instanceId: json_.containsKey('instanceId')
              ? json_['instanceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceId != null) 'instanceId': instanceId!,
      };
}

/// Request for reporting a Managed Notebook Event.
class ReportInstanceEventRequest {
  /// The Event to be reported.
  ///
  /// Required.
  Event? event;

  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String? vmId;

  ReportInstanceEventRequest({
    this.event,
    this.vmId,
  });

  ReportInstanceEventRequest.fromJson(core.Map json_)
      : this(
          event: json_.containsKey('event')
              ? Event.fromJson(
                  json_['event'] as core.Map<core.String, core.dynamic>)
              : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (event != null) 'event': event!,
        if (vmId != null) 'vmId': vmId!,
      };
}

/// Request for notebook instances to report information to Notebooks API.
class ReportInstanceInfoRequest {
  /// The metadata reported to Notebooks API.
  ///
  /// This will be merged to the instance metadata store
  core.Map<core.String, core.String>? metadata;

  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String? vmId;

  ReportInstanceInfoRequest({
    this.metadata,
    this.vmId,
  });

  ReportInstanceInfoRequest.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (vmId != null) 'vmId': vmId!,
      };
}

/// Request for reporting a Managed Notebook Event.
class ReportRuntimeEventRequest {
  /// The Event to be reported.
  ///
  /// Required.
  Event? event;

  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String? vmId;

  ReportRuntimeEventRequest({
    this.event,
    this.vmId,
  });

  ReportRuntimeEventRequest.fromJson(core.Map json_)
      : this(
          event: json_.containsKey('event')
              ? Event.fromJson(
                  json_['event'] as core.Map<core.String, core.dynamic>)
              : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (event != null) 'event': event!,
        if (vmId != null) 'vmId': vmId!,
      };
}

/// Reservation Affinity for consuming Zonal reservation.
class ReservationAffinity {
  /// Type of reservation to consume
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default type.
  /// - "NO_RESERVATION" : Do not consume from any allocated capacity.
  /// - "ANY_RESERVATION" : Consume any reservation available.
  /// - "SPECIFIC_RESERVATION" : Must consume from a specific reservation. Must
  /// specify key value fields for specifying the reservations.
  core.String? consumeReservationType;

  /// Corresponds to the label key of reservation resource.
  ///
  /// Optional.
  core.String? key;

  /// Corresponds to the label values of reservation resource.
  ///
  /// Optional.
  core.List<core.String>? values;

  ReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  ReservationAffinity.fromJson(core.Map json_)
      : this(
          consumeReservationType: json_.containsKey('consumeReservationType')
              ? json_['consumeReservationType'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumeReservationType != null)
          'consumeReservationType': consumeReservationType!,
        if (key != null) 'key': key!,
        if (values != null) 'values': values!,
      };
}

/// Request for resetting a notebook instance
typedef ResetInstanceRequest = $Empty;

/// Request for resetting a Managed Notebook Runtime.
typedef ResetRuntimeRequest = $RuntimeRequest;

/// Request for rollbacking a notebook instance
class RollbackInstanceRequest {
  /// The snapshot for rollback.
  ///
  /// Example: `projects/test-project/global/snapshots/krwlzipynril`.
  ///
  /// Required.
  core.String? targetSnapshot;

  RollbackInstanceRequest({
    this.targetSnapshot,
  });

  RollbackInstanceRequest.fromJson(core.Map json_)
      : this(
          targetSnapshot: json_.containsKey('targetSnapshot')
              ? json_['targetSnapshot'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetSnapshot != null) 'targetSnapshot': targetSnapshot!,
      };
}

/// The definition of a Runtime for a managed notebook instance.
class Runtime {
  /// The config settings for accessing runtime.
  RuntimeAccessConfig? accessConfig;

  /// Runtime creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Runtime health_state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HEALTH_STATE_UNSPECIFIED" : The runtime substate is unknown.
  /// - "HEALTHY" : The runtime is known to be in an healthy state (for example,
  /// critical daemons are running) Applies to ACTIVE state.
  /// - "UNHEALTHY" : The runtime is known to be in an unhealthy state (for
  /// example, critical daemons are not running) Applies to ACTIVE state.
  /// - "AGENT_NOT_INSTALLED" : The runtime has not installed health monitoring
  /// agent. Applies to ACTIVE state.
  /// - "AGENT_NOT_RUNNING" : The runtime health monitoring agent is not
  /// running. Applies to ACTIVE state.
  core.String? healthState;

  /// The labels to associate with this Managed Notebook or Runtime.
  ///
  /// Label **keys** must contain 1 to 63 characters, and must conform to
  /// [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must conform
  /// to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32
  /// labels can be associated with a cluster.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Contains Runtime daemon metrics such as Service status and JupyterLab
  /// stats.
  ///
  /// Output only.
  RuntimeMetrics? metrics;

  /// Bool indicating whether this notebook has been migrated to a Workbench
  /// Instance
  ///
  /// Output only.
  core.bool? migrated;

  /// The resource name of the runtime.
  ///
  /// Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  ///
  /// Output only.
  core.String? name;

  /// Checks how feasible a migration from GmN to WbI is.
  ///
  /// Output only.
  RuntimeMigrationEligibility? runtimeMigrationEligibility;

  /// The config settings for software inside the runtime.
  RuntimeSoftwareConfig? softwareConfig;

  /// Runtime state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "STARTING" : The compute layer is starting the runtime. It is not ready
  /// for use.
  /// - "PROVISIONING" : The compute layer is installing required frameworks and
  /// registering the runtime with notebook proxy. It cannot be used.
  /// - "ACTIVE" : The runtime is currently running. It is ready for use.
  /// - "STOPPING" : The control logic is stopping the runtime. It cannot be
  /// used.
  /// - "STOPPED" : The runtime is stopped. It cannot be used.
  /// - "DELETING" : The runtime is being deleted. It cannot be used.
  /// - "UPGRADING" : The runtime is upgrading. It cannot be used.
  /// - "INITIALIZING" : The runtime is being created and set up. It is not
  /// ready for use.
  core.String? state;

  /// Runtime update time.
  ///
  /// Output only.
  core.String? updateTime;

  /// Use a Compute Engine VM image to start the managed notebook instance.
  VirtualMachine? virtualMachine;

  Runtime({
    this.accessConfig,
    this.createTime,
    this.healthState,
    this.labels,
    this.metrics,
    this.migrated,
    this.name,
    this.runtimeMigrationEligibility,
    this.softwareConfig,
    this.state,
    this.updateTime,
    this.virtualMachine,
  });

  Runtime.fromJson(core.Map json_)
      : this(
          accessConfig: json_.containsKey('accessConfig')
              ? RuntimeAccessConfig.fromJson(
                  json_['accessConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          healthState: json_.containsKey('healthState')
              ? json_['healthState'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          metrics: json_.containsKey('metrics')
              ? RuntimeMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>)
              : null,
          migrated: json_.containsKey('migrated')
              ? json_['migrated'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          runtimeMigrationEligibility:
              json_.containsKey('runtimeMigrationEligibility')
                  ? RuntimeMigrationEligibility.fromJson(
                      json_['runtimeMigrationEligibility']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          softwareConfig: json_.containsKey('softwareConfig')
              ? RuntimeSoftwareConfig.fromJson(json_['softwareConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          virtualMachine: json_.containsKey('virtualMachine')
              ? VirtualMachine.fromJson(json_['virtualMachine']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessConfig != null) 'accessConfig': accessConfig!,
        if (createTime != null) 'createTime': createTime!,
        if (healthState != null) 'healthState': healthState!,
        if (labels != null) 'labels': labels!,
        if (metrics != null) 'metrics': metrics!,
        if (migrated != null) 'migrated': migrated!,
        if (name != null) 'name': name!,
        if (runtimeMigrationEligibility != null)
          'runtimeMigrationEligibility': runtimeMigrationEligibility!,
        if (softwareConfig != null) 'softwareConfig': softwareConfig!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (virtualMachine != null) 'virtualMachine': virtualMachine!,
      };
}

/// Definition of the types of hardware accelerators that can be used.
///
/// See
/// [Compute Engine AcceleratorTypes](https://cloud.google.com/compute/docs/reference/beta/acceleratorTypes).
/// Examples: * `nvidia-tesla-k80` * `nvidia-tesla-p100` * `nvidia-tesla-v100` *
/// `nvidia-tesla-p4` * `nvidia-tesla-t4` * `nvidia-tesla-a100`
class RuntimeAcceleratorConfig {
  /// Count of cores of this accelerator.
  core.String? coreCount;

  /// Accelerator model.
  /// Possible string values are:
  /// - "ACCELERATOR_TYPE_UNSPECIFIED" : Accelerator type is not specified.
  /// - "NVIDIA_TESLA_K80" : Accelerator type is Nvidia Tesla K80.
  /// - "NVIDIA_TESLA_P100" : Accelerator type is Nvidia Tesla P100.
  /// - "NVIDIA_TESLA_V100" : Accelerator type is Nvidia Tesla V100.
  /// - "NVIDIA_TESLA_P4" : Accelerator type is Nvidia Tesla P4.
  /// - "NVIDIA_TESLA_T4" : Accelerator type is Nvidia Tesla T4.
  /// - "NVIDIA_TESLA_A100" : Accelerator type is Nvidia Tesla A100 - 40GB.
  /// - "NVIDIA_L4" : Accelerator type is Nvidia L4.
  /// - "TPU_V2" : (Coming soon) Accelerator type is TPU V2.
  /// - "TPU_V3" : (Coming soon) Accelerator type is TPU V3.
  /// - "NVIDIA_TESLA_T4_VWS" : Accelerator type is NVIDIA Tesla T4 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P100_VWS" : Accelerator type is NVIDIA Tesla P100 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P4_VWS" : Accelerator type is NVIDIA Tesla P4 Virtual
  /// Workstations.
  core.String? type;

  RuntimeAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  RuntimeAcceleratorConfig.fromJson(core.Map json_)
      : this(
          coreCount: json_.containsKey('coreCount')
              ? json_['coreCount'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coreCount != null) 'coreCount': coreCount!,
        if (type != null) 'type': type!,
      };
}

/// Specifies the login configuration for Runtime
class RuntimeAccessConfig {
  /// The type of access mode this instance.
  /// Possible string values are:
  /// - "RUNTIME_ACCESS_TYPE_UNSPECIFIED" : Unspecified access.
  /// - "SINGLE_USER" : Single user login.
  /// - "SERVICE_ACCOUNT" : Service Account mode. In Service Account mode,
  /// Runtime creator will specify a SA that exists in the consumer project.
  /// Using Runtime Service Account field. Users accessing the Runtime need
  /// ActAs (Service Account User) permission.
  core.String? accessType;

  /// The proxy endpoint that is used to access the runtime.
  ///
  /// Output only.
  core.String? proxyUri;

  /// The owner of this runtime after creation.
  ///
  /// Format: `alias@example.com` Currently supports one owner only.
  core.String? runtimeOwner;

  RuntimeAccessConfig({
    this.accessType,
    this.proxyUri,
    this.runtimeOwner,
  });

  RuntimeAccessConfig.fromJson(core.Map json_)
      : this(
          accessType: json_.containsKey('accessType')
              ? json_['accessType'] as core.String
              : null,
          proxyUri: json_.containsKey('proxyUri')
              ? json_['proxyUri'] as core.String
              : null,
          runtimeOwner: json_.containsKey('runtimeOwner')
              ? json_['runtimeOwner'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessType != null) 'accessType': accessType!,
        if (proxyUri != null) 'proxyUri': proxyUri!,
        if (runtimeOwner != null) 'runtimeOwner': runtimeOwner!,
      };
}

/// A list of features to enable on the guest operating system.
///
/// Applicable only for bootable images. Read
/// [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features)
/// to see a list of available options. Guest OS features for boot disk.
///
/// Optional.
class RuntimeGuestOsFeature {
  /// The ID of a supported feature.
  ///
  /// Read
  /// [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features)
  /// to see a list of available options. Valid values: *
  /// `FEATURE_TYPE_UNSPECIFIED` * `MULTI_IP_SUBNET` * `SECURE_BOOT` *
  /// `UEFI_COMPATIBLE` * `VIRTIO_SCSI_MULTIQUEUE` * `WINDOWS`
  core.String? type;

  RuntimeGuestOsFeature({
    this.type,
  });

  RuntimeGuestOsFeature.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Contains runtime daemon metrics, such as OS and kernels and sessions stats.
class RuntimeMetrics {
  /// The system metrics.
  ///
  /// Output only.
  core.Map<core.String, core.String>? systemMetrics;

  RuntimeMetrics({
    this.systemMetrics,
  });

  RuntimeMetrics.fromJson(core.Map json_)
      : this(
          systemMetrics: json_.containsKey('systemMetrics')
              ? (json_['systemMetrics'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (systemMetrics != null) 'systemMetrics': systemMetrics!,
      };
}

/// RuntimeMigrationEligibility represents the feasibility information of a
/// migration from GmN to WbI.
class RuntimeMigrationEligibility {
  /// Certain configurations make the GmN ineligible for an automatic migration.
  ///
  /// A manual migration is required.
  ///
  /// Output only.
  core.List<core.String>? errors;

  /// Certain configurations will be defaulted during the migration.
  ///
  /// Output only.
  core.List<core.String>? warnings;

  RuntimeMigrationEligibility({
    this.errors,
    this.warnings,
  });

  RuntimeMigrationEligibility.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null) 'errors': errors!,
        if (warnings != null) 'warnings': warnings!,
      };
}

/// A set of Shielded Instance options.
///
/// See
/// [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
/// Not all combinations are valid.
typedef RuntimeShieldedInstanceConfig = $ShieldedInstanceConfig;

/// Specifies the selection and configuration of software inside the runtime.
///
/// The properties to set on runtime. Properties keys are specified in
/// `key:value` format, for example: * `idle_shutdown: true` *
/// `idle_shutdown_timeout: 180` * `enable_health_monitoring: true`
class RuntimeSoftwareConfig {
  /// Specify a custom Cloud Storage path where the GPU driver is stored.
  ///
  /// If not specified, we'll automatically choose from official GPU drivers.
  core.String? customGpuDriverPath;

  /// Bool indicating whether JupyterLab terminal will be available or not.
  ///
  /// Default: False
  core.bool? disableTerminal;

  /// Verifies core internal services are running.
  ///
  /// Default: True
  core.bool? enableHealthMonitoring;

  /// Runtime will automatically shutdown after idle_shutdown_time.
  ///
  /// Default: True
  core.bool? idleShutdown;

  /// Time in minutes to wait before shutting down runtime.
  ///
  /// Default: 180 minutes
  core.int? idleShutdownTimeout;

  /// Install Nvidia Driver automatically.
  ///
  /// Default: True
  core.bool? installGpuDriver;

  /// Use a list of container images to use as Kernels in the notebook instance.
  ///
  /// Optional.
  core.List<ContainerImage>? kernels;

  /// Bool indicating whether mixer client should be disabled.
  ///
  /// Default: False
  core.bool? mixerDisabled;

  /// Cron expression in UTC timezone, used to schedule instance auto upgrade.
  ///
  /// Please follow the [cron format](https://en.wikipedia.org/wiki/Cron).
  core.String? notebookUpgradeSchedule;

  /// Path to a Bash script that automatically runs after a notebook instance
  /// fully boots up.
  ///
  /// The path must be a URL or Cloud Storage path
  /// (`gs://path-to-file/file-name`).
  core.String? postStartupScript;

  /// Behavior for the post startup script.
  /// Possible string values are:
  /// - "POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED" : Unspecified post startup
  /// script behavior. Will run only once at creation.
  /// - "RUN_EVERY_START" : Runs the post startup script provided during
  /// creation at every start.
  /// - "DOWNLOAD_AND_RUN_EVERY_START" : Downloads and runs the provided post
  /// startup script at every start.
  core.String? postStartupScriptBehavior;

  /// Bool indicating whether an newer image is available in an image family.
  ///
  /// Output only.
  core.bool? upgradeable;

  /// version of boot image such as M100, from release label of the image.
  ///
  /// Output only.
  core.String? version;

  RuntimeSoftwareConfig({
    this.customGpuDriverPath,
    this.disableTerminal,
    this.enableHealthMonitoring,
    this.idleShutdown,
    this.idleShutdownTimeout,
    this.installGpuDriver,
    this.kernels,
    this.mixerDisabled,
    this.notebookUpgradeSchedule,
    this.postStartupScript,
    this.postStartupScriptBehavior,
    this.upgradeable,
    this.version,
  });

  RuntimeSoftwareConfig.fromJson(core.Map json_)
      : this(
          customGpuDriverPath: json_.containsKey('customGpuDriverPath')
              ? json_['customGpuDriverPath'] as core.String
              : null,
          disableTerminal: json_.containsKey('disableTerminal')
              ? json_['disableTerminal'] as core.bool
              : null,
          enableHealthMonitoring: json_.containsKey('enableHealthMonitoring')
              ? json_['enableHealthMonitoring'] as core.bool
              : null,
          idleShutdown: json_.containsKey('idleShutdown')
              ? json_['idleShutdown'] as core.bool
              : null,
          idleShutdownTimeout: json_.containsKey('idleShutdownTimeout')
              ? json_['idleShutdownTimeout'] as core.int
              : null,
          installGpuDriver: json_.containsKey('installGpuDriver')
              ? json_['installGpuDriver'] as core.bool
              : null,
          kernels: json_.containsKey('kernels')
              ? (json_['kernels'] as core.List)
                  .map((value) => ContainerImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mixerDisabled: json_.containsKey('mixerDisabled')
              ? json_['mixerDisabled'] as core.bool
              : null,
          notebookUpgradeSchedule: json_.containsKey('notebookUpgradeSchedule')
              ? json_['notebookUpgradeSchedule'] as core.String
              : null,
          postStartupScript: json_.containsKey('postStartupScript')
              ? json_['postStartupScript'] as core.String
              : null,
          postStartupScriptBehavior:
              json_.containsKey('postStartupScriptBehavior')
                  ? json_['postStartupScriptBehavior'] as core.String
                  : null,
          upgradeable: json_.containsKey('upgradeable')
              ? json_['upgradeable'] as core.bool
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customGpuDriverPath != null)
          'customGpuDriverPath': customGpuDriverPath!,
        if (disableTerminal != null) 'disableTerminal': disableTerminal!,
        if (enableHealthMonitoring != null)
          'enableHealthMonitoring': enableHealthMonitoring!,
        if (idleShutdown != null) 'idleShutdown': idleShutdown!,
        if (idleShutdownTimeout != null)
          'idleShutdownTimeout': idleShutdownTimeout!,
        if (installGpuDriver != null) 'installGpuDriver': installGpuDriver!,
        if (kernels != null) 'kernels': kernels!,
        if (mixerDisabled != null) 'mixerDisabled': mixerDisabled!,
        if (notebookUpgradeSchedule != null)
          'notebookUpgradeSchedule': notebookUpgradeSchedule!,
        if (postStartupScript != null) 'postStartupScript': postStartupScript!,
        if (postStartupScriptBehavior != null)
          'postStartupScriptBehavior': postStartupScriptBehavior!,
        if (upgradeable != null) 'upgradeable': upgradeable!,
        if (version != null) 'version': version!,
      };
}

/// The definition of a schedule.
class Schedule {
  /// Time the schedule was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Cron-tab formatted schedule by which the job will execute.
  ///
  /// Format: minute, hour, day of month, month, day of week, e.g. `0 0 * * WED`
  /// = every Wednesday More examples: https://crontab.guru/examples.html
  core.String? cronSchedule;

  /// A brief description of this environment.
  core.String? description;

  /// Display name used for UI purposes.
  ///
  /// Name can only contain alphanumeric characters, hyphens `-`, and
  /// underscores `_`.
  ///
  /// Output only.
  core.String? displayName;

  /// Notebook Execution Template corresponding to this schedule.
  ExecutionTemplate? executionTemplate;

  /// The name of this schedule.
  ///
  /// Format:
  /// `projects/{project_id}/locations/{location}/schedules/{schedule_id}`
  ///
  /// Output only.
  core.String? name;

  /// The most recent execution names triggered from this schedule and their
  /// corresponding states.
  ///
  /// Output only.
  core.List<Execution>? recentExecutions;

  ///
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "ENABLED" : The job is executing normally.
  /// - "PAUSED" : The job is paused by the user. It will not execute. A user
  /// can intentionally pause the job using PauseJobRequest.
  /// - "DISABLED" : The job is disabled by the system due to error. The user
  /// cannot directly set a job to be disabled.
  /// - "UPDATE_FAILED" : The job state resulting from a failed
  /// CloudScheduler.UpdateJob operation. To recover a job from this state,
  /// retry CloudScheduler.UpdateJob until a successful response is received.
  /// - "INITIALIZING" : The schedule resource is being created.
  /// - "DELETING" : The schedule resource is being deleted.
  core.String? state;

  /// Timezone on which the cron_schedule.
  ///
  /// The value of this field must be a time zone name from the tz database. TZ
  /// Database: https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  /// Note that some time zones include a provision for daylight savings time.
  /// The rules for daylight saving time are determined by the chosen tz. For
  /// UTC use the string "utc". If a time zone is not specified, the default
  /// will be in UTC (also known as GMT).
  core.String? timeZone;

  /// Time the schedule was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Schedule({
    this.createTime,
    this.cronSchedule,
    this.description,
    this.displayName,
    this.executionTemplate,
    this.name,
    this.recentExecutions,
    this.state,
    this.timeZone,
    this.updateTime,
  });

  Schedule.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          cronSchedule: json_.containsKey('cronSchedule')
              ? json_['cronSchedule'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          executionTemplate: json_.containsKey('executionTemplate')
              ? ExecutionTemplate.fromJson(json_['executionTemplate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          recentExecutions: json_.containsKey('recentExecutions')
              ? (json_['recentExecutions'] as core.List)
                  .map((value) => Execution.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (cronSchedule != null) 'cronSchedule': cronSchedule!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (executionTemplate != null) 'executionTemplate': executionTemplate!,
        if (name != null) 'name': name!,
        if (recentExecutions != null) 'recentExecutions': recentExecutions!,
        if (state != null) 'state': state!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Definition of a hardware accelerator.
///
/// Note that not all combinations of `type` and `core_count` are valid. See
/// [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus) to find
/// a valid combination. TPUs are not supported.
class SchedulerAcceleratorConfig {
  /// Count of cores of this accelerator.
  core.String? coreCount;

  /// Type of this accelerator.
  /// Possible string values are:
  /// - "SCHEDULER_ACCELERATOR_TYPE_UNSPECIFIED" : Unspecified accelerator type.
  /// Default to no GPU.
  /// - "NVIDIA_TESLA_K80" : Nvidia Tesla K80 GPU.
  /// - "NVIDIA_TESLA_P100" : Nvidia Tesla P100 GPU.
  /// - "NVIDIA_TESLA_V100" : Nvidia Tesla V100 GPU.
  /// - "NVIDIA_TESLA_P4" : Nvidia Tesla P4 GPU.
  /// - "NVIDIA_TESLA_T4" : Nvidia Tesla T4 GPU.
  /// - "NVIDIA_TESLA_A100" : Nvidia Tesla A100 GPU.
  /// - "TPU_V2" : TPU v2.
  /// - "TPU_V3" : TPU v3.
  core.String? type;

  SchedulerAcceleratorConfig({
    this.coreCount,
    this.type,
  });

  SchedulerAcceleratorConfig.fromJson(core.Map json_)
      : this(
          coreCount: json_.containsKey('coreCount')
              ? json_['coreCount'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coreCount != null) 'coreCount': coreCount!,
        if (type != null) 'type': type!,
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

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
      };
}

/// Request for setting instance accelerator.
class SetInstanceAcceleratorRequest {
  /// Count of cores of this accelerator.
  ///
  /// Note that not all combinations of `type` and `core_count` are valid. See
  /// [GPUs on Compute Engine](https://cloud.google.com/compute/docs/gpus/#gpus-list)
  /// to find a valid combination. TPUs are not supported.
  ///
  /// Required.
  core.String? coreCount;

  /// Type of this accelerator.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACCELERATOR_TYPE_UNSPECIFIED" : Accelerator type is not specified.
  /// - "NVIDIA_TESLA_K80" : Accelerator type is Nvidia Tesla K80.
  /// - "NVIDIA_TESLA_P100" : Accelerator type is Nvidia Tesla P100.
  /// - "NVIDIA_TESLA_V100" : Accelerator type is Nvidia Tesla V100.
  /// - "NVIDIA_TESLA_P4" : Accelerator type is Nvidia Tesla P4.
  /// - "NVIDIA_TESLA_T4" : Accelerator type is Nvidia Tesla T4.
  /// - "NVIDIA_TESLA_A100" : Accelerator type is Nvidia Tesla A100.
  /// - "NVIDIA_L4" : Accelerator type is Nvidia Tesla L4.
  /// - "NVIDIA_TESLA_T4_VWS" : Accelerator type is NVIDIA Tesla T4 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P100_VWS" : Accelerator type is NVIDIA Tesla P100 Virtual
  /// Workstations.
  /// - "NVIDIA_TESLA_P4_VWS" : Accelerator type is NVIDIA Tesla P4 Virtual
  /// Workstations.
  /// - "TPU_V2" : (Coming soon) Accelerator type is TPU V2.
  /// - "TPU_V3" : (Coming soon) Accelerator type is TPU V3.
  core.String? type;

  SetInstanceAcceleratorRequest({
    this.coreCount,
    this.type,
  });

  SetInstanceAcceleratorRequest.fromJson(core.Map json_)
      : this(
          coreCount: json_.containsKey('coreCount')
              ? json_['coreCount'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coreCount != null) 'coreCount': coreCount!,
        if (type != null) 'type': type!,
      };
}

/// Request for setting instance labels.
class SetInstanceLabelsRequest {
  /// Labels to apply to this instance.
  ///
  /// These can be later modified by the setLabels method
  core.Map<core.String, core.String>? labels;

  SetInstanceLabelsRequest({
    this.labels,
  });

  SetInstanceLabelsRequest.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
      };
}

/// Request for setting instance machine type.
class SetInstanceMachineTypeRequest {
  /// The
  /// [Compute Engine machine type](https://cloud.google.com/compute/docs/machine-types).
  ///
  /// Required.
  core.String? machineType;

  SetInstanceMachineTypeRequest({
    this.machineType,
  });

  SetInstanceMachineTypeRequest.fromJson(core.Map json_)
      : this(
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (machineType != null) 'machineType': machineType!,
      };
}

/// A set of Shielded Instance options.
///
/// See
/// [Images using supported Shielded VM features](https://cloud.google.com/compute/docs/instances/modifying-shielded-vm).
/// Not all combinations are valid.
typedef ShieldedInstanceConfig = $ShieldedInstanceConfig;

/// Request for starting a notebook instance
typedef StartInstanceRequest = $Empty;

/// Request for starting a Managed Notebook Runtime.
typedef StartRuntimeRequest = $RuntimeRequest;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request for stopping a notebook instance
typedef StopInstanceRequest = $Empty;

/// Request for stopping a Managed Notebook Runtime.
typedef StopRuntimeRequest = $RuntimeRequest;

/// Request for switching a Managed Notebook Runtime.
class SwitchRuntimeRequest {
  /// accelerator config.
  RuntimeAcceleratorConfig? acceleratorConfig;

  /// machine type.
  core.String? machineType;

  /// Idempotent request UUID.
  core.String? requestId;

  SwitchRuntimeRequest({
    this.acceleratorConfig,
    this.machineType,
    this.requestId,
  });

  SwitchRuntimeRequest.fromJson(core.Map json_)
      : this(
          acceleratorConfig: json_.containsKey('acceleratorConfig')
              ? RuntimeAcceleratorConfig.fromJson(json_['acceleratorConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorConfig != null) 'acceleratorConfig': acceleratorConfig!,
        if (machineType != null) 'machineType': machineType!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Request for created scheduled notebooks
typedef TriggerScheduleRequest = $Empty;

/// Request for updating instance configurations.
class UpdateInstanceConfigRequest {
  /// The instance configurations to be updated.
  InstanceConfig? config;

  UpdateInstanceConfigRequest({
    this.config,
  });

  UpdateInstanceConfigRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? InstanceConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
      };
}

/// Request for adding/changing metadata items for an instance.
class UpdateInstanceMetadataItemsRequest {
  /// Metadata items to add/update for the instance.
  core.Map<core.String, core.String>? items;

  UpdateInstanceMetadataItemsRequest({
    this.items,
  });

  UpdateInstanceMetadataItemsRequest.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// Response for adding/changing metadata items for an instance.
class UpdateInstanceMetadataItemsResponse {
  /// Map of items that were added/updated to/in the metadata.
  core.Map<core.String, core.String>? items;

  UpdateInstanceMetadataItemsResponse({
    this.items,
  });

  UpdateInstanceMetadataItemsResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// Request for updating the Shielded Instance config for a notebook instance.
///
/// You can only use this method on a stopped instance
class UpdateShieldedInstanceConfigRequest {
  /// ShieldedInstance configuration to be updated.
  ShieldedInstanceConfig? shieldedInstanceConfig;

  UpdateShieldedInstanceConfigRequest({
    this.shieldedInstanceConfig,
  });

  UpdateShieldedInstanceConfigRequest.fromJson(core.Map json_)
      : this(
          shieldedInstanceConfig: json_.containsKey('shieldedInstanceConfig')
              ? ShieldedInstanceConfig.fromJson(json_['shieldedInstanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
      };
}

/// The entry of VM image upgrade history.
class UpgradeHistoryEntry {
  /// Action.
  ///
  /// Rolloback or Upgrade.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : Operation is not specified.
  /// - "UPGRADE" : Upgrade.
  /// - "ROLLBACK" : Rollback.
  core.String? action;

  /// The container image before this instance upgrade.
  core.String? containerImage;

  /// The time that this instance upgrade history entry is created.
  core.String? createTime;

  /// The framework of this notebook instance.
  core.String? framework;

  /// The snapshot of the boot disk of this notebook instance before upgrade.
  core.String? snapshot;

  /// The state of this instance upgrade history entry.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State is not specified.
  /// - "STARTED" : The instance upgrade is started.
  /// - "SUCCEEDED" : The instance upgrade is succeeded.
  /// - "FAILED" : The instance upgrade is failed.
  core.String? state;

  /// Target VM Image.
  ///
  /// Format: `ainotebooks-vm/project/image-name/name`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? targetImage;

  /// Target VM Version, like m63.
  core.String? targetVersion;

  /// The version of the notebook instance before this upgrade.
  core.String? version;

  /// The VM image before this instance upgrade.
  core.String? vmImage;

  UpgradeHistoryEntry({
    this.action,
    this.containerImage,
    this.createTime,
    this.framework,
    this.snapshot,
    this.state,
    this.targetImage,
    this.targetVersion,
    this.version,
    this.vmImage,
  });

  UpgradeHistoryEntry.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          containerImage: json_.containsKey('containerImage')
              ? json_['containerImage'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          framework: json_.containsKey('framework')
              ? json_['framework'] as core.String
              : null,
          snapshot: json_.containsKey('snapshot')
              ? json_['snapshot'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          targetImage: json_.containsKey('targetImage')
              ? json_['targetImage'] as core.String
              : null,
          targetVersion: json_.containsKey('targetVersion')
              ? json_['targetVersion'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
          vmImage: json_.containsKey('vmImage')
              ? json_['vmImage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (containerImage != null) 'containerImage': containerImage!,
        if (createTime != null) 'createTime': createTime!,
        if (framework != null) 'framework': framework!,
        if (snapshot != null) 'snapshot': snapshot!,
        if (state != null) 'state': state!,
        if (targetImage != null) 'targetImage': targetImage!,
        if (targetVersion != null) 'targetVersion': targetVersion!,
        if (version != null) 'version': version!,
        if (vmImage != null) 'vmImage': vmImage!,
      };
}

/// Request for upgrading a notebook instance from within the VM
class UpgradeInstanceInternalRequest {
  /// The optional UpgradeType.
  ///
  /// Setting this field will search for additional compute images to upgrade
  /// this instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UPGRADE_TYPE_UNSPECIFIED" : Upgrade type is not specified.
  /// - "UPGRADE_FRAMEWORK" : Upgrade ML framework.
  /// - "UPGRADE_OS" : Upgrade Operating System.
  /// - "UPGRADE_CUDA" : Upgrade CUDA.
  /// - "UPGRADE_ALL" : Upgrade All (OS, Framework and CUDA).
  core.String? type;

  /// The VM hardware token for authenticating the VM.
  ///
  /// https://cloud.google.com/compute/docs/instances/verifying-instance-identity
  ///
  /// Required.
  core.String? vmId;

  UpgradeInstanceInternalRequest({
    this.type,
    this.vmId,
  });

  UpgradeInstanceInternalRequest.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          vmId: json_.containsKey('vmId') ? json_['vmId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (vmId != null) 'vmId': vmId!,
      };
}

/// Request for upgrading a notebook instance
class UpgradeInstanceRequest {
  /// The optional UpgradeType.
  ///
  /// Setting this field will search for additional compute images to upgrade
  /// this instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UPGRADE_TYPE_UNSPECIFIED" : Upgrade type is not specified.
  /// - "UPGRADE_FRAMEWORK" : Upgrade ML framework.
  /// - "UPGRADE_OS" : Upgrade Operating System.
  /// - "UPGRADE_CUDA" : Upgrade CUDA.
  /// - "UPGRADE_ALL" : Upgrade All (OS, Framework and CUDA).
  core.String? type;

  UpgradeInstanceRequest({
    this.type,
  });

  UpgradeInstanceRequest.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Request for upgrading a Managed Notebook Runtime to the latest version.
///
/// option (google.api.message_visibility).restriction =
/// "TRUSTED_TESTER,SPECIAL_TESTER";
typedef UpgradeRuntimeRequest = $RuntimeRequest;

/// Parameters used in Vertex AI JobType executions.
class VertexAIParameters {
  /// Environment variables.
  ///
  /// At most 100 environment variables can be specified and unique. Example:
  /// `GCP_BUCKET=gs://my-bucket/samples/`
  core.Map<core.String, core.String>? env;

  /// The full name of the Compute Engine
  /// [network](https://cloud.google.com/compute/docs/networks-and-firewalls#networks)
  /// to which the Job should be peered.
  ///
  /// For example, `projects/12345/global/networks/myVPC`.
  /// [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert)
  /// is of the form `projects/{project}/global/networks/{network}`. Where
  /// `{project}` is a project number, as in `12345`, and `{network}` is a
  /// network name. Private services access must already be configured for the
  /// network. If left unspecified, the job is not peered with any network.
  core.String? network;

  VertexAIParameters({
    this.env,
    this.network,
  });

  VertexAIParameters.fromJson(core.Map json_)
      : this(
          env: json_.containsKey('env')
              ? (json_['env'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (env != null) 'env': env!,
        if (network != null) 'network': network!,
      };
}

/// Runtime using Virtual Machine for computing.
class VirtualMachine {
  /// The unique identifier of the Managed Compute Engine instance.
  ///
  /// Output only.
  core.String? instanceId;

  /// The user-friendly name of the Managed Compute Engine instance.
  ///
  /// Output only.
  core.String? instanceName;

  /// Virtual Machine configuration settings.
  VirtualMachineConfig? virtualMachineConfig;

  VirtualMachine({
    this.instanceId,
    this.instanceName,
    this.virtualMachineConfig,
  });

  VirtualMachine.fromJson(core.Map json_)
      : this(
          instanceId: json_.containsKey('instanceId')
              ? json_['instanceId'] as core.String
              : null,
          instanceName: json_.containsKey('instanceName')
              ? json_['instanceName'] as core.String
              : null,
          virtualMachineConfig: json_.containsKey('virtualMachineConfig')
              ? VirtualMachineConfig.fromJson(json_['virtualMachineConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceId != null) 'instanceId': instanceId!,
        if (instanceName != null) 'instanceName': instanceName!,
        if (virtualMachineConfig != null)
          'virtualMachineConfig': virtualMachineConfig!,
      };
}

/// The config settings for virtual machine.
class VirtualMachineConfig {
  /// The Compute Engine accelerator configuration for this runtime.
  ///
  /// Optional.
  RuntimeAcceleratorConfig? acceleratorConfig;

  /// Boot image metadata used for runtime upgradeability.
  ///
  /// Optional.
  BootImage? bootImage;

  /// Use a list of container images to use as Kernels in the notebook instance.
  ///
  /// Optional.
  core.List<ContainerImage>? containerImages;

  /// Data disk option configuration settings.
  ///
  /// Required.
  LocalDisk? dataDisk;

  /// Encryption settings for virtual machine data disk.
  ///
  /// Optional.
  EncryptionConfig? encryptionConfig;

  /// The Compute Engine guest attributes.
  ///
  /// (see
  /// [Project and instance guest attributes](https://cloud.google.com/compute/docs/storing-retrieving-metadata#guest_attributes)).
  ///
  /// Output only.
  core.Map<core.String, core.String>? guestAttributes;

  /// If true, runtime will only have internal IP addresses.
  ///
  /// By default, runtimes are not restricted to internal IP addresses, and will
  /// have ephemeral external IP addresses assigned to each vm. This
  /// `internal_ip_only` restriction can only be enabled for subnetwork enabled
  /// networks, and all dependencies must be configured to be accessible without
  /// external IP addresses.
  ///
  /// Optional.
  core.bool? internalIpOnly;

  /// The labels to associate with this runtime.
  ///
  /// Label **keys** must contain 1 to 63 characters, and must conform to
  /// [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must conform
  /// to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32
  /// labels can be associated with a cluster.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The Compute Engine machine type used for runtimes.
  ///
  /// Short name is valid. Examples: * `n1-standard-2` * `e2-standard-8`
  ///
  /// Required.
  core.String? machineType;

  /// The Compute Engine metadata entries to add to virtual machine.
  ///
  /// (see
  /// [Project and instance metadata](https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// The Compute Engine network to be used for machine communications.
  ///
  /// Cannot be specified with subnetwork. If neither `network` nor `subnet` is
  /// specified, the "default" network of the project is used, if it exists. A
  /// full URL or partial URI. Examples: *
  /// `https://www.googleapis.com/compute/v1/projects/[project_id]/global/networks/default`
  /// * `projects/[project_id]/global/networks/default` Runtimes are managed
  /// resources inside Google Infrastructure. Runtimes support the following
  /// network configurations: * Google Managed Network (Network & subnet are
  /// empty) * Consumer Project VPC (network & subnet are required). Requires
  /// configuring Private Service Access. * Shared VPC (network & subnet are
  /// required). Requires configuring Private Service Access.
  ///
  /// Optional.
  core.String? network;

  /// The type of vNIC to be used on this interface.
  ///
  /// This may be gVNIC or VirtioNet.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "UNSPECIFIED_NIC_TYPE" : No type specified.
  /// - "VIRTIO_NET" : VIRTIO
  /// - "GVNIC" : GVNIC
  core.String? nicType;

  /// Reserved IP Range name is used for VPC Peering.
  ///
  /// The subnetwork allocation will use the range *name* if it's assigned.
  /// Example: managed-notebooks-range-c
  /// PEERING_RANGE_NAME_3=managed-notebooks-range-c gcloud compute addresses
  /// create $PEERING_RANGE_NAME_3 \ --global \ --prefix-length=24 \
  /// --description="Google Cloud Managed Notebooks Range 24 c" \
  /// --network=$NETWORK \ --addresses=192.168.0.0 \ --purpose=VPC_PEERING Field
  /// value will be: `managed-notebooks-range-c`
  ///
  /// Optional.
  core.String? reservedIpRange;

  /// Shielded VM Instance configuration settings.
  ///
  /// Optional.
  RuntimeShieldedInstanceConfig? shieldedInstanceConfig;

  /// The Compute Engine subnetwork to be used for machine communications.
  ///
  /// Cannot be specified with network. A full URL or partial URI are valid.
  /// Examples: *
  /// `https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0`
  /// * `projects/[project_id]/regions/us-east1/subnetworks/sub0`
  ///
  /// Optional.
  core.String? subnet;

  /// The Compute Engine tags to add to runtime (see
  /// [Tagging instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  ///
  /// Optional.
  core.List<core.String>? tags;

  /// The zone where the virtual machine is located.
  ///
  /// If using regional request, the notebooks service will pick a location in
  /// the corresponding runtime region. On a get request, zone will always be
  /// present. Example: * `us-central1-b`
  ///
  /// Output only.
  core.String? zone;

  VirtualMachineConfig({
    this.acceleratorConfig,
    this.bootImage,
    this.containerImages,
    this.dataDisk,
    this.encryptionConfig,
    this.guestAttributes,
    this.internalIpOnly,
    this.labels,
    this.machineType,
    this.metadata,
    this.network,
    this.nicType,
    this.reservedIpRange,
    this.shieldedInstanceConfig,
    this.subnet,
    this.tags,
    this.zone,
  });

  VirtualMachineConfig.fromJson(core.Map json_)
      : this(
          acceleratorConfig: json_.containsKey('acceleratorConfig')
              ? RuntimeAcceleratorConfig.fromJson(json_['acceleratorConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bootImage: json_.containsKey('bootImage')
              ? BootImage.fromJson(
                  json_['bootImage'] as core.Map<core.String, core.dynamic>)
              : null,
          containerImages: json_.containsKey('containerImages')
              ? (json_['containerImages'] as core.List)
                  .map((value) => ContainerImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dataDisk: json_.containsKey('dataDisk')
              ? LocalDisk.fromJson(
                  json_['dataDisk'] as core.Map<core.String, core.dynamic>)
              : null,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          guestAttributes: json_.containsKey('guestAttributes')
              ? (json_['guestAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          internalIpOnly: json_.containsKey('internalIpOnly')
              ? json_['internalIpOnly'] as core.bool
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          nicType: json_.containsKey('nicType')
              ? json_['nicType'] as core.String
              : null,
          reservedIpRange: json_.containsKey('reservedIpRange')
              ? json_['reservedIpRange'] as core.String
              : null,
          shieldedInstanceConfig: json_.containsKey('shieldedInstanceConfig')
              ? RuntimeShieldedInstanceConfig.fromJson(
                  json_['shieldedInstanceConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          subnet: json_.containsKey('subnet')
              ? json_['subnet'] as core.String
              : null,
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorConfig != null) 'acceleratorConfig': acceleratorConfig!,
        if (bootImage != null) 'bootImage': bootImage!,
        if (containerImages != null) 'containerImages': containerImages!,
        if (dataDisk != null) 'dataDisk': dataDisk!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (guestAttributes != null) 'guestAttributes': guestAttributes!,
        if (internalIpOnly != null) 'internalIpOnly': internalIpOnly!,
        if (labels != null) 'labels': labels!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (network != null) 'network': network!,
        if (nicType != null) 'nicType': nicType!,
        if (reservedIpRange != null) 'reservedIpRange': reservedIpRange!,
        if (shieldedInstanceConfig != null)
          'shieldedInstanceConfig': shieldedInstanceConfig!,
        if (subnet != null) 'subnet': subnet!,
        if (tags != null) 'tags': tags!,
        if (zone != null) 'zone': zone!,
      };
}

/// Definition of a custom Compute Engine virtual machine image for starting a
/// notebook instance with the environment installed directly on the VM.
class VmImage {
  /// Use this VM image family to find the image; the newest image in this
  /// family will be used.
  core.String? imageFamily;

  /// Use VM image name to find the image.
  core.String? imageName;

  /// The name of the Google Cloud project that this VM image belongs to.
  ///
  /// Format: `{project_id}`
  ///
  /// Required.
  core.String? project;

  VmImage({
    this.imageFamily,
    this.imageName,
    this.project,
  });

  VmImage.fromJson(core.Map json_)
      : this(
          imageFamily: json_.containsKey('imageFamily')
              ? json_['imageFamily'] as core.String
              : null,
          imageName: json_.containsKey('imageName')
              ? json_['imageName'] as core.String
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageFamily != null) 'imageFamily': imageFamily!,
        if (imageName != null) 'imageName': imageName!,
        if (project != null) 'project': project!,
      };
}
