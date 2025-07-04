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

/// Cloud Pub/Sub API - v1
///
/// Provides reliable, many-to-many, asynchronous messaging between
/// applications.
///
/// For more information, see <https://cloud.google.com/pubsub/docs>
///
/// Create an instance of [PubsubApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsSchemasResource]
///   - [ProjectsSnapshotsResource]
///   - [ProjectsSubscriptionsResource]
///   - [ProjectsTopicsResource]
///     - [ProjectsTopicsSnapshotsResource]
///     - [ProjectsTopicsSubscriptionsResource]
library pubsub_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Provides reliable, many-to-many, asynchronous messaging between
/// applications.
class PubsubApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage Pub/Sub topics and subscriptions
  static const pubsubScope = 'https://www.googleapis.com/auth/pubsub';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  PubsubApi(http.Client client,
      {core.String rootUrl = 'https://pubsub.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsSchemasResource get schemas => ProjectsSchemasResource(_requester);
  ProjectsSnapshotsResource get snapshots =>
      ProjectsSnapshotsResource(_requester);
  ProjectsSubscriptionsResource get subscriptions =>
      ProjectsSubscriptionsResource(_requester);
  ProjectsTopicsResource get topics => ProjectsTopicsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsSchemasResource(commons.ApiRequester client) : _requester = client;

  /// Commits a new schema revision to an existing schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema we are revising. Format is
  /// `projects/{project}/schemas/{schema}`.
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> commit(
    CommitSchemaRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which to create the
  /// schema. Format is `projects/{project-id}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [schemaId] - The ID to use for the schema, which will become the final
  /// component of the schema's resource name. See
  /// https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names for
  /// resource name constraints.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> create(
    Schema request,
    core.String parent, {
    core.String? schemaId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (schemaId != null) 'schemaId': [schemaId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a schema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the schema to delete. Format is
  /// `projects/{project}/schemas/{schema}`.
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
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

  /// Deletes a specific schema revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema revision to be deleted, with a
  /// revision ID explicitly included. Example:
  /// `projects/123/schemas/my-schema@c7cfa2a8`
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [revisionId] - Optional. This field is deprecated and should not be used
  /// for specifying the revision ID. The revision ID should be specified via
  /// the `name` parameter.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> deleteRevision(
    core.String name, {
    core.String? revisionId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (revisionId != null) 'revisionId': [revisionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deleteRevision';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a schema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema to get. Format is
  /// `projects/{project}/schemas/{schema}`.
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [view] - The set of fields to return in the response. If not set, returns
  /// a Schema with all fields filled out. Set to `BASIC` to omit the
  /// `definition`.
  /// Possible string values are:
  /// - "SCHEMA_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Include the name and type of the schema, but not the
  /// definition.
  /// - "FULL" : Include all Schema object fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
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

  /// Lists schemas in a project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which to list schemas.
  /// Format is `projects/{project-id}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of schemas to return.
  ///
  /// [pageToken] - The value returned by the last `ListSchemasResponse`;
  /// indicates that this is a continuation of a prior `ListSchemas` call, and
  /// that the system should return the next page of data.
  ///
  /// [view] - The set of Schema fields to return in the response. If not set,
  /// returns Schemas with `name` and `type`, but not `definition`. Set to
  /// `FULL` to retrieve all fields.
  /// Possible string values are:
  /// - "SCHEMA_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Include the name and type of the schema, but not the
  /// definition.
  /// - "FULL" : Include all Schema object fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSchemasResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSchemasResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all schema revisions for the named schema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema to list revisions for.
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of revisions to return per page.
  ///
  /// [pageToken] - The page token, received from a previous ListSchemaRevisions
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [view] - The set of Schema fields to return in the response. If not set,
  /// returns Schemas with `name` and `type`, but not `definition`. Set to
  /// `FULL` to retrieve all fields.
  /// Possible string values are:
  /// - "SCHEMA_VIEW_UNSPECIFIED" : The default / unset value. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Include the name and type of the schema, but not the
  /// definition.
  /// - "FULL" : Include all Schema object fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSchemaRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSchemaRevisionsResponse> listRevisions(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':listRevisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSchemaRevisionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new schema revision that is a copy of the provided revision_id.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The schema being rolled back with revision id.
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> rollback(
    RollbackSchemaRequest request,
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
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
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
  /// Value must have pattern `^projects/\[^/\]+/schemas/\[^/\]+$`.
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

  /// Validates a schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which to validate schemas.
  /// Format is `projects/{project-id}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateSchemaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateSchemaResponse> validate(
    ValidateSchemaRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas:validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ValidateSchemaResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates a message against a schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which to validate schemas.
  /// Format is `projects/{project-id}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateMessageResponse> validateMessage(
    ValidateMessageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/schemas:validateMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ValidateMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsSnapshotsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a snapshot from the requested subscription.
  ///
  /// Snapshots are used in
  /// [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
  /// which allow you to manage message acknowledgments in bulk. That is, you
  /// can set the acknowledgment state of messages in an existing subscription
  /// to the state captured by a snapshot. If the snapshot already exists,
  /// returns `ALREADY_EXISTS`. If the requested subscription doesn't exist,
  /// returns `NOT_FOUND`. If the backlog in the subscription is too old -- and
  /// the resulting snapshot would expire in less than 1 hour -- then
  /// `FAILED_PRECONDITION` is returned. See also the `Snapshot.expire_time`
  /// field. If the name is not provided in the request, the server will assign
  /// a random name for this snapshot on the same project as the subscription,
  /// conforming to the
  /// [resource name format](https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).
  /// The generated name is populated in the returned Snapshot object. Note that
  /// for REST API requests, you must specify a name in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. User-provided name for this snapshot. If the name is
  /// not provided in the request, the server will assign a random name for this
  /// snapshot on the same project as the subscription. Note that for REST API
  /// requests, you must specify a name. See the
  /// [resource name rules](https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).
  /// Format is `projects/{project}/snapshots/{snap}`.
  /// Value must have pattern `^projects/\[^/\]+/snapshots/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> create(
    CreateSnapshotRequest request,
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
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes an existing snapshot.
  ///
  /// Snapshots are used in
  /// [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
  /// which allow you to manage message acknowledgments in bulk. That is, you
  /// can set the acknowledgment state of messages in an existing subscription
  /// to the state captured by a snapshot. When the snapshot is deleted, all
  /// messages retained in the snapshot are immediately dropped. After a
  /// snapshot is deleted, a new one may be created with the same name, but the
  /// new one has no association with the old snapshot or its subscription,
  /// unless the same subscription is specified.
  ///
  /// Request parameters:
  ///
  /// [snapshot] - Required. The name of the snapshot to delete. Format is
  /// `projects/{project}/snapshots/{snap}`.
  /// Value must have pattern `^projects/\[^/\]+/snapshots/\[^/\]+$`.
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
    core.String snapshot, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$snapshot');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration details of a snapshot.
  ///
  /// Snapshots are used in
  /// [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
  /// which allow you to manage message acknowledgments in bulk. That is, you
  /// can set the acknowledgment state of messages in an existing subscription
  /// to the state captured by a snapshot.
  ///
  /// Request parameters:
  ///
  /// [snapshot] - Required. The name of the snapshot to get. Format is
  /// `projects/{project}/snapshots/{snap}`.
  /// Value must have pattern `^projects/\[^/\]+/snapshots/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> get(
    core.String snapshot, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$snapshot');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/snapshots/\[^/\]+$`.
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

  /// Lists the existing snapshots.
  ///
  /// Snapshots are used in \[Seek\](
  /// https://cloud.google.com/pubsub/docs/replay-overview) operations, which
  /// allow you to manage message acknowledgments in bulk. That is, you can set
  /// the acknowledgment state of messages in an existing subscription to the
  /// state captured by a snapshot.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The name of the project in which to list snapshots.
  /// Format is `projects/{project-id}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of snapshots to return.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListSnapshotsResponse`; indicates that this is a continuation of a prior
  /// `ListSnapshots` call, and that the system should return the next page of
  /// data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotsResponse> list(
    core.String project, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$project') + '/snapshots';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSnapshotsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing snapshot.
  ///
  /// Snapshots are used in
  /// [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
  /// which allow you to manage message acknowledgments in bulk. That is, you
  /// can set the acknowledgment state of messages in an existing subscription
  /// to the state captured by a snapshot.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The name of the snapshot.
  /// Value must have pattern `^projects/\[^/\]+/snapshots/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> patch(
    UpdateSnapshotRequest request,
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
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/snapshots/\[^/\]+$`.
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
  /// Value must have pattern `^projects/\[^/\]+/snapshots/\[^/\]+$`.
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

class ProjectsSubscriptionsResource {
  final commons.ApiRequester _requester;

  ProjectsSubscriptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Acknowledges the messages associated with the `ack_ids` in the
  /// `AcknowledgeRequest`.
  ///
  /// The Pub/Sub system can remove the relevant messages from the subscription.
  /// Acknowledging a message whose ack deadline has expired may succeed, but
  /// such a message may be redelivered later. Acknowledging a message more than
  /// once will not result in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - Required. The subscription whose message is being
  /// acknowledged. Format is `projects/{project}/subscriptions/{sub}`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
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
  async.Future<Empty> acknowledge(
    AcknowledgeRequest request,
    core.String subscription, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$subscription') + ':acknowledge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a subscription to a given topic.
  ///
  /// See the
  /// [resource name rules](https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).
  /// If the subscription already exists, returns `ALREADY_EXISTS`. If the
  /// corresponding topic doesn't exist, returns `NOT_FOUND`. If the name is not
  /// provided in the request, the server will assign a random name for this
  /// subscription on the same project as the topic, conforming to the
  /// [resource name format](https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).
  /// The generated name is populated in the returned Subscription object. Note
  /// that for REST API requests, you must specify a name in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription. It must have the format
  /// `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must
  /// start with a letter, and contain only letters (`[A-Za-z]`), numbers
  /// (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`),
  /// plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters
  /// in length, and it must not start with `"goog"`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> create(
    Subscription request,
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
    return Subscription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing subscription.
  ///
  /// All messages retained in the subscription are immediately dropped. Calls
  /// to `Pull` after deletion will return `NOT_FOUND`. After a subscription is
  /// deleted, a new one may be created with the same name, but the new one has
  /// no association with the old subscription or its topic unless the same
  /// topic is specified.
  ///
  /// Request parameters:
  ///
  /// [subscription] - Required. The subscription to delete. Format is
  /// `projects/{project}/subscriptions/{sub}`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
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
    core.String subscription, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$subscription');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Detaches a subscription from this topic.
  ///
  /// All messages retained in the subscription are dropped. Subsequent `Pull`
  /// and `StreamingPull` requests will return FAILED_PRECONDITION. If the
  /// subscription is a push subscription, pushes to the endpoint will stop.
  ///
  /// Request parameters:
  ///
  /// [subscription] - Required. The subscription to detach. Format is
  /// `projects/{project}/subscriptions/{subscription}`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DetachSubscriptionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DetachSubscriptionResponse> detach(
    core.String subscription, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$subscription') + ':detach';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return DetachSubscriptionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration details of a subscription.
  ///
  /// Request parameters:
  ///
  /// [subscription] - Required. The name of the subscription to get. Format is
  /// `projects/{project}/subscriptions/{sub}`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> get(
    core.String subscription, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$subscription');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Subscription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
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

  /// Lists matching subscriptions.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The name of the project in which to list
  /// subscriptions. Format is `projects/{project-id}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of subscriptions to return.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListSubscriptionsResponse`; indicates that this is a continuation of a
  /// prior `ListSubscriptions` call, and that the system should return the next
  /// page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSubscriptionsResponse> list(
    core.String project, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$project') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSubscriptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies the ack deadline for a specific message.
  ///
  /// This method is useful to indicate that more time is needed to process a
  /// message by the subscriber, or to make the message available for redelivery
  /// if the processing was interrupted. Note that this does not modify the
  /// subscription-level `ackDeadlineSeconds` used for subsequent messages.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - Required. The name of the subscription. Format is
  /// `projects/{project}/subscriptions/{sub}`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
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
  async.Future<Empty> modifyAckDeadline(
    ModifyAckDeadlineRequest request,
    core.String subscription, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$subscription') + ':modifyAckDeadline';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies the `PushConfig` for a specified subscription.
  ///
  /// This may be used to change a push subscription to a pull one (signified by
  /// an empty `PushConfig`) or vice versa, or change the endpoint URL and other
  /// attributes of a push subscription. Messages will accumulate for delivery
  /// continuously through the call regardless of changes to the `PushConfig`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - Required. The name of the subscription. Format is
  /// `projects/{project}/subscriptions/{sub}`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
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
  async.Future<Empty> modifyPushConfig(
    ModifyPushConfigRequest request,
    core.String subscription, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$subscription') + ':modifyPushConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing subscription.
  ///
  /// Note that certain properties of a subscription, such as its topic, are not
  /// modifiable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the subscription. It must have the format
  /// `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must
  /// start with a letter, and contain only letters (`[A-Za-z]`), numbers
  /// (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`),
  /// plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters
  /// in length, and it must not start with `"goog"`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> patch(
    UpdateSubscriptionRequest request,
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
    return Subscription.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Pulls messages from the server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - Required. The subscription from which messages should be
  /// pulled. Format is `projects/{project}/subscriptions/{sub}`.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PullResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PullResponse> pull(
    PullRequest request,
    core.String subscription, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$subscription') + ':pull';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PullResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Seeks an existing subscription to a point in time or to a given snapshot,
  /// whichever is provided in the request.
  ///
  /// Snapshots are used in
  /// [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
  /// which allow you to manage message acknowledgments in bulk. That is, you
  /// can set the acknowledgment state of messages in an existing subscription
  /// to the state captured by a snapshot. Note that both the subscription and
  /// the snapshot must be on the same topic.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [subscription] - Required. The subscription to affect.
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SeekResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SeekResponse> seek(
    SeekRequest request,
    core.String subscription, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$subscription') + ':seek';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SeekResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
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
  /// Value must have pattern `^projects/\[^/\]+/subscriptions/\[^/\]+$`.
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

class ProjectsTopicsResource {
  final commons.ApiRequester _requester;

  ProjectsTopicsSnapshotsResource get snapshots =>
      ProjectsTopicsSnapshotsResource(_requester);
  ProjectsTopicsSubscriptionsResource get subscriptions =>
      ProjectsTopicsSubscriptionsResource(_requester);

  ProjectsTopicsResource(commons.ApiRequester client) : _requester = client;

  /// Creates the given topic with the given name.
  ///
  /// See the
  /// [resource name rules](https://cloud.google.com/pubsub/docs/pubsub-basics#resource_names).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the topic. It must have the format
  /// `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter,
  /// and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
  /// underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent
  /// signs (`%`). It must be between 3 and 255 characters in length, and it
  /// must not start with `"goog"`.
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> create(
    Topic request,
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
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the topic with the given name.
  ///
  /// Returns `NOT_FOUND` if the topic does not exist. After a topic is deleted,
  /// a new topic may be created with the same name; this is an entirely new
  /// topic with none of the old configuration or subscriptions. Existing
  /// subscriptions to this topic are not deleted, but their `topic` field is
  /// set to `_deleted-topic_`.
  ///
  /// Request parameters:
  ///
  /// [topic] - Required. Name of the topic to delete. Format is
  /// `projects/{project}/topics/{topic}`.
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
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
    core.String topic, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$topic');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration of a topic.
  ///
  /// Request parameters:
  ///
  /// [topic] - Required. The name of the topic to get. Format is
  /// `projects/{project}/topics/{topic}`.
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> get(
    core.String topic, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$topic');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
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

  /// Lists matching topics.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The name of the project in which to list topics.
  /// Format is `projects/{project-id}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of topics to return.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListTopicsResponse`; indicates that this is a continuation of a prior
  /// `ListTopics` call, and that the system should return the next page of
  /// data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTopicsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTopicsResponse> list(
    core.String project, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$project') + '/topics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTopicsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing topic.
  ///
  /// Note that certain properties of a topic are not modifiable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the topic. It must have the format
  /// `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter,
  /// and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`),
  /// underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent
  /// signs (`%`). It must be between 3 and 255 characters in length, and it
  /// must not start with `"goog"`.
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Topic].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Topic> patch(
    UpdateTopicRequest request,
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
    return Topic.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Adds one or more messages to the topic.
  ///
  /// Returns `NOT_FOUND` if the topic does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [topic] - Required. The messages in the request will be published on this
  /// topic. Format is `projects/{project}/topics/{topic}`.
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PublishResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PublishResponse> publish(
    PublishRequest request,
    core.String topic, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$topic') + ':publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PublishResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
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
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
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

class ProjectsTopicsSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsTopicsSnapshotsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the names of the snapshots on this topic.
  ///
  /// Snapshots are used in
  /// [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
  /// which allow you to manage message acknowledgments in bulk. That is, you
  /// can set the acknowledgment state of messages in an existing subscription
  /// to the state captured by a snapshot.
  ///
  /// Request parameters:
  ///
  /// [topic] - Required. The name of the topic that snapshots are attached to.
  /// Format is `projects/{project}/topics/{topic}`.
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of snapshot names to return.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListTopicSnapshotsResponse`; indicates that this is a continuation of a
  /// prior `ListTopicSnapshots` call, and that the system should return the
  /// next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTopicSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTopicSnapshotsResponse> list(
    core.String topic, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$topic') + '/snapshots';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTopicSnapshotsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTopicsSubscriptionsResource {
  final commons.ApiRequester _requester;

  ProjectsTopicsSubscriptionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the names of the attached subscriptions on this topic.
  ///
  /// Request parameters:
  ///
  /// [topic] - Required. The name of the topic that subscriptions are attached
  /// to. Format is `projects/{project}/topics/{topic}`.
  /// Value must have pattern `^projects/\[^/\]+/topics/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. Maximum number of subscription names to return.
  ///
  /// [pageToken] - Optional. The value returned by the last
  /// `ListTopicSubscriptionsResponse`; indicates that this is a continuation of
  /// a prior `ListTopicSubscriptions` call, and that the system should return
  /// the next page of data.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTopicSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTopicSubscriptionsResponse> list(
    core.String topic, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$topic') + '/subscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTopicSubscriptionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request for the Acknowledge method.
class AcknowledgeRequest {
  /// The acknowledgment ID for the messages being acknowledged that was
  /// returned by the Pub/Sub system in the `Pull` response.
  ///
  /// Must not be empty.
  ///
  /// Required.
  core.List<core.String>? ackIds;

  AcknowledgeRequest({
    this.ackIds,
  });

  AcknowledgeRequest.fromJson(core.Map json_)
      : this(
          ackIds: json_.containsKey('ackIds')
              ? (json_['ackIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ackIds != null) 'ackIds': ackIds!,
      };
}

/// Configuration for writing message data in Avro format.
///
/// Message payloads and metadata will be written to files as an Avro binary.
class AvroConfig {
  /// When true, write the subscription name, message_id, publish_time,
  /// attributes, and ordering_key as additional fields in the output.
  ///
  /// The subscription name, message_id, and publish_time fields are put in
  /// their own fields while all other message properties other than data (for
  /// example, an ordering_key, if present) are added as entries in the
  /// attributes map.
  ///
  /// Optional.
  core.bool? writeMetadata;

  AvroConfig({
    this.writeMetadata,
  });

  AvroConfig.fromJson(core.Map json_)
      : this(
          writeMetadata: json_.containsKey('writeMetadata')
              ? json_['writeMetadata'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (writeMetadata != null) 'writeMetadata': writeMetadata!,
      };
}

/// Configuration for a BigQuery subscription.
class BigQueryConfig {
  /// When true and use_topic_schema is true, any fields that are a part of the
  /// topic schema that are not part of the BigQuery table schema are dropped
  /// when writing to BigQuery.
  ///
  /// Otherwise, the schemas must be kept in sync and any messages with extra
  /// fields are not written and remain in the subscription's backlog.
  ///
  /// Optional.
  core.bool? dropUnknownFields;

  /// An output-only field that indicates whether or not the subscription can
  /// receive messages.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The subscription can actively send messages to BigQuery
  /// - "PERMISSION_DENIED" : Cannot write to the BigQuery table because of
  /// permission denied errors. This can happen if - Pub/Sub SA has not been
  /// granted the
  /// [appropriate BigQuery IAM permissions](https://cloud.google.com/pubsub/docs/create-subscription#assign_bigquery_service_account)
  /// - bigquery.googleapis.com API is not enabled for the project
  /// ([instructions](https://cloud.google.com/service-usage/docs/enable-disable))
  /// - "NOT_FOUND" : Cannot write to the BigQuery table because it does not
  /// exist.
  /// - "SCHEMA_MISMATCH" : Cannot write to the BigQuery table due to a schema
  /// mismatch.
  /// - "IN_TRANSIT_LOCATION_RESTRICTION" : Cannot write to the destination
  /// because enforce_in_transit is set to true and the destination locations
  /// are not in the allowed regions.
  core.String? state;

  /// The name of the table to which to write data, of the form
  /// {projectId}.{datasetId}.{tableId}
  ///
  /// Optional.
  core.String? table;

  /// When true, use the topic's schema as the columns to write to in BigQuery,
  /// if it exists.
  ///
  /// Optional.
  core.bool? useTopicSchema;

  /// When true, write the subscription name, message_id, publish_time,
  /// attributes, and ordering_key to additional columns in the table.
  ///
  /// The subscription name, message_id, and publish_time fields are put in
  /// their own columns while all other message properties (other than data) are
  /// written to a JSON object in the attributes column.
  ///
  /// Optional.
  core.bool? writeMetadata;

  BigQueryConfig({
    this.dropUnknownFields,
    this.state,
    this.table,
    this.useTopicSchema,
    this.writeMetadata,
  });

  BigQueryConfig.fromJson(core.Map json_)
      : this(
          dropUnknownFields: json_.containsKey('dropUnknownFields')
              ? json_['dropUnknownFields'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          table:
              json_.containsKey('table') ? json_['table'] as core.String : null,
          useTopicSchema: json_.containsKey('useTopicSchema')
              ? json_['useTopicSchema'] as core.bool
              : null,
          writeMetadata: json_.containsKey('writeMetadata')
              ? json_['writeMetadata'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dropUnknownFields != null) 'dropUnknownFields': dropUnknownFields!,
        if (state != null) 'state': state!,
        if (table != null) 'table': table!,
        if (useTopicSchema != null) 'useTopicSchema': useTopicSchema!,
        if (writeMetadata != null) 'writeMetadata': writeMetadata!,
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

/// Configuration for a Cloud Storage subscription.
class CloudStorageConfig {
  /// If set, message data will be written to Cloud Storage in Avro format.
  ///
  /// Optional.
  AvroConfig? avroConfig;

  /// User-provided name for the Cloud Storage bucket.
  ///
  /// The bucket must be created by the user. The bucket name must be without
  /// any prefix like "gs://". See the
  /// [bucket naming requirements](https://cloud.google.com/storage/docs/buckets#naming).
  ///
  /// Required.
  core.String? bucket;

  /// User-provided prefix for Cloud Storage filename.
  ///
  /// See the
  /// [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  ///
  /// Optional.
  core.String? filenamePrefix;

  /// User-provided suffix for Cloud Storage filename.
  ///
  /// See the
  /// [object naming requirements](https://cloud.google.com/storage/docs/objects#naming).
  /// Must not end in "/".
  ///
  /// Optional.
  core.String? filenameSuffix;

  /// The maximum bytes that can be written to a Cloud Storage file before a new
  /// file is created.
  ///
  /// Min 1 KB, max 10 GiB. The max_bytes limit may be exceeded in cases where
  /// messages are larger than the limit.
  ///
  /// Optional.
  core.String? maxBytes;

  /// The maximum duration that can elapse before a new Cloud Storage file is
  /// created.
  ///
  /// Min 1 minute, max 10 minutes, default 5 minutes. May not exceed the
  /// subscription's acknowledgement deadline.
  ///
  /// Optional.
  core.String? maxDuration;

  /// An output-only field that indicates whether or not the subscription can
  /// receive messages.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The subscription can actively send messages to Cloud Storage.
  /// - "PERMISSION_DENIED" : Cannot write to the Cloud Storage bucket because
  /// of permission denied errors.
  /// - "NOT_FOUND" : Cannot write to the Cloud Storage bucket because it does
  /// not exist.
  /// - "IN_TRANSIT_LOCATION_RESTRICTION" : Cannot write to the destination
  /// because enforce_in_transit is set to true and the destination locations
  /// are not in the allowed regions.
  core.String? state;

  /// If set, message data will be written to Cloud Storage in text format.
  ///
  /// Optional.
  TextConfig? textConfig;

  CloudStorageConfig({
    this.avroConfig,
    this.bucket,
    this.filenamePrefix,
    this.filenameSuffix,
    this.maxBytes,
    this.maxDuration,
    this.state,
    this.textConfig,
  });

  CloudStorageConfig.fromJson(core.Map json_)
      : this(
          avroConfig: json_.containsKey('avroConfig')
              ? AvroConfig.fromJson(
                  json_['avroConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          filenamePrefix: json_.containsKey('filenamePrefix')
              ? json_['filenamePrefix'] as core.String
              : null,
          filenameSuffix: json_.containsKey('filenameSuffix')
              ? json_['filenameSuffix'] as core.String
              : null,
          maxBytes: json_.containsKey('maxBytes')
              ? json_['maxBytes'] as core.String
              : null,
          maxDuration: json_.containsKey('maxDuration')
              ? json_['maxDuration'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          textConfig: json_.containsKey('textConfig')
              ? TextConfig.fromJson(
                  json_['textConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (avroConfig != null) 'avroConfig': avroConfig!,
        if (bucket != null) 'bucket': bucket!,
        if (filenamePrefix != null) 'filenamePrefix': filenamePrefix!,
        if (filenameSuffix != null) 'filenameSuffix': filenameSuffix!,
        if (maxBytes != null) 'maxBytes': maxBytes!,
        if (maxDuration != null) 'maxDuration': maxDuration!,
        if (state != null) 'state': state!,
        if (textConfig != null) 'textConfig': textConfig!,
      };
}

/// Request for CommitSchema method.
class CommitSchemaRequest {
  /// The schema revision to commit.
  ///
  /// Required.
  Schema? schema;

  CommitSchemaRequest({
    this.schema,
  });

  CommitSchemaRequest.fromJson(core.Map json_)
      : this(
          schema: json_.containsKey('schema')
              ? Schema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schema != null) 'schema': schema!,
      };
}

/// Request for the `CreateSnapshot` method.
class CreateSnapshotRequest {
  /// See
  /// [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The subscription whose backlog the snapshot retains.
  ///
  /// Specifically, the created snapshot is guaranteed to retain: (a) The
  /// existing backlog on the subscription. More precisely, this is defined as
  /// the messages in the subscription's backlog that are unacknowledged upon
  /// the successful completion of the `CreateSnapshot` request; as well as: (b)
  /// Any messages published to the subscription's topic following the
  /// successful completion of the CreateSnapshot request. Format is
  /// `projects/{project}/subscriptions/{sub}`.
  ///
  /// Required.
  core.String? subscription;

  CreateSnapshotRequest({
    this.labels,
    this.subscription,
  });

  CreateSnapshotRequest.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          subscription: json_.containsKey('subscription')
              ? json_['subscription'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (subscription != null) 'subscription': subscription!,
      };
}

/// Dead lettering is done on a best effort basis.
///
/// The same message might be dead lettered multiple times. If validation on any
/// of the fields fails at subscription creation/updation, the create/update
/// subscription request will fail.
class DeadLetterPolicy {
  /// The name of the topic to which dead letter messages should be published.
  ///
  /// Format is `projects/{project}/topics/{topic}`.The Pub/Sub service account
  /// associated with the enclosing subscription's parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Publish() to this topic. The operation will fail if the
  /// topic does not exist. Users should ensure that there is a subscription
  /// attached to this topic since messages published to a topic with no
  /// subscriptions are lost.
  ///
  /// Optional.
  core.String? deadLetterTopic;

  /// The maximum number of delivery attempts for any message.
  ///
  /// The value must be between 5 and 100. The number of delivery attempts is
  /// defined as 1 + (the sum of number of NACKs and number of times the
  /// acknowledgement deadline has been exceeded for the message). A NACK is any
  /// call to ModifyAckDeadline with a 0 deadline. Note that client libraries
  /// may automatically extend ack_deadlines. This field will be honored on a
  /// best effort basis. If this parameter is 0, a default value of 5 is used.
  ///
  /// Optional.
  core.int? maxDeliveryAttempts;

  DeadLetterPolicy({
    this.deadLetterTopic,
    this.maxDeliveryAttempts,
  });

  DeadLetterPolicy.fromJson(core.Map json_)
      : this(
          deadLetterTopic: json_.containsKey('deadLetterTopic')
              ? json_['deadLetterTopic'] as core.String
              : null,
          maxDeliveryAttempts: json_.containsKey('maxDeliveryAttempts')
              ? json_['maxDeliveryAttempts'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deadLetterTopic != null) 'deadLetterTopic': deadLetterTopic!,
        if (maxDeliveryAttempts != null)
          'maxDeliveryAttempts': maxDeliveryAttempts!,
      };
}

/// Response for the DetachSubscription method.
///
/// Reserved for future use.
typedef DetachSubscriptionResponse = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A policy that specifies the conditions for resource expiration (i.e.,
/// automatic resource deletion).
class ExpirationPolicy {
  /// Specifies the "time-to-live" duration for an associated resource.
  ///
  /// The resource expires if it is not active for a period of `ttl`. The
  /// definition of "activity" depends on the type of the associated resource.
  /// The minimum and maximum allowed values for `ttl` depend on the type of the
  /// associated resource, as well. If `ttl` is not set, the associated resource
  /// never expires.
  ///
  /// Optional.
  core.String? ttl;

  ExpirationPolicy({
    this.ttl,
  });

  ExpirationPolicy.fromJson(core.Map json_)
      : this(
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ttl != null) 'ttl': ttl!,
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

/// Response for the `ListSchemaRevisions` method.
class ListSchemaRevisionsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The revisions of the schema.
  core.List<Schema>? schemas;

  ListSchemaRevisionsResponse({
    this.nextPageToken,
    this.schemas,
  });

  ListSchemaRevisionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          schemas: json_.containsKey('schemas')
              ? (json_['schemas'] as core.List)
                  .map((value) => Schema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (schemas != null) 'schemas': schemas!,
      };
}

/// Response for the `ListSchemas` method.
class ListSchemasResponse {
  /// If not empty, indicates that there may be more schemas that match the
  /// request; this value should be passed in a new `ListSchemasRequest`.
  core.String? nextPageToken;

  /// The resulting schemas.
  core.List<Schema>? schemas;

  ListSchemasResponse({
    this.nextPageToken,
    this.schemas,
  });

  ListSchemasResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          schemas: json_.containsKey('schemas')
              ? (json_['schemas'] as core.List)
                  .map((value) => Schema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (schemas != null) 'schemas': schemas!,
      };
}

/// Response for the `ListSnapshots` method.
class ListSnapshotsResponse {
  /// If not empty, indicates that there may be more snapshot that match the
  /// request; this value should be passed in a new `ListSnapshotsRequest`.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The resulting snapshots.
  ///
  /// Optional.
  core.List<Snapshot>? snapshots;

  ListSnapshotsResponse({
    this.nextPageToken,
    this.snapshots,
  });

  ListSnapshotsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          snapshots: json_.containsKey('snapshots')
              ? (json_['snapshots'] as core.List)
                  .map((value) => Snapshot.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (snapshots != null) 'snapshots': snapshots!,
      };
}

/// Response for the `ListSubscriptions` method.
class ListSubscriptionsResponse {
  /// If not empty, indicates that there may be more subscriptions that match
  /// the request; this value should be passed in a new
  /// `ListSubscriptionsRequest` to get more subscriptions.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The subscriptions that match the request.
  ///
  /// Optional.
  core.List<Subscription>? subscriptions;

  ListSubscriptionsResponse({
    this.nextPageToken,
    this.subscriptions,
  });

  ListSubscriptionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subscriptions: json_.containsKey('subscriptions')
              ? (json_['subscriptions'] as core.List)
                  .map((value) => Subscription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (subscriptions != null) 'subscriptions': subscriptions!,
      };
}

/// Response for the `ListTopicSnapshots` method.
class ListTopicSnapshotsResponse {
  /// If not empty, indicates that there may be more snapshots that match the
  /// request; this value should be passed in a new `ListTopicSnapshotsRequest`
  /// to get more snapshots.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The names of the snapshots that match the request.
  ///
  /// Optional.
  core.List<core.String>? snapshots;

  ListTopicSnapshotsResponse({
    this.nextPageToken,
    this.snapshots,
  });

  ListTopicSnapshotsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          snapshots: json_.containsKey('snapshots')
              ? (json_['snapshots'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (snapshots != null) 'snapshots': snapshots!,
      };
}

/// Response for the `ListTopicSubscriptions` method.
class ListTopicSubscriptionsResponse {
  /// If not empty, indicates that there may be more subscriptions that match
  /// the request; this value should be passed in a new
  /// `ListTopicSubscriptionsRequest` to get more subscriptions.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The names of subscriptions attached to the topic specified in the request.
  ///
  /// Optional.
  core.List<core.String>? subscriptions;

  ListTopicSubscriptionsResponse({
    this.nextPageToken,
    this.subscriptions,
  });

  ListTopicSubscriptionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          subscriptions: json_.containsKey('subscriptions')
              ? (json_['subscriptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (subscriptions != null) 'subscriptions': subscriptions!,
      };
}

/// Response for the `ListTopics` method.
class ListTopicsResponse {
  /// If not empty, indicates that there may be more topics that match the
  /// request; this value should be passed in a new `ListTopicsRequest`.
  ///
  /// Optional.
  core.String? nextPageToken;

  /// The resulting topics.
  ///
  /// Optional.
  core.List<Topic>? topics;

  ListTopicsResponse({
    this.nextPageToken,
    this.topics,
  });

  ListTopicsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          topics: json_.containsKey('topics')
              ? (json_['topics'] as core.List)
                  .map((value) => Topic.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (topics != null) 'topics': topics!,
      };
}

/// A policy constraining the storage of messages published to the topic.
class MessageStoragePolicy {
  /// A list of IDs of Google Cloud regions where messages that are published to
  /// the topic may be persisted in storage.
  ///
  /// Messages published by publishers running in non-allowed Google Cloud
  /// regions (or running outside of Google Cloud altogether) are routed for
  /// storage in one of the allowed regions. An empty list means that no regions
  /// are allowed, and is not a valid configuration.
  ///
  /// Optional.
  core.List<core.String>? allowedPersistenceRegions;

  /// If true, `allowed_persistence_regions` is also used to enforce in-transit
  /// guarantees for messages.
  ///
  /// That is, Pub/Sub will fail Publish operations on this topic and subscribe
  /// operations on any subscription attached to this topic in any region that
  /// is not in `allowed_persistence_regions`.
  ///
  /// Optional.
  core.bool? enforceInTransit;

  MessageStoragePolicy({
    this.allowedPersistenceRegions,
    this.enforceInTransit,
  });

  MessageStoragePolicy.fromJson(core.Map json_)
      : this(
          allowedPersistenceRegions:
              json_.containsKey('allowedPersistenceRegions')
                  ? (json_['allowedPersistenceRegions'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          enforceInTransit: json_.containsKey('enforceInTransit')
              ? json_['enforceInTransit'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedPersistenceRegions != null)
          'allowedPersistenceRegions': allowedPersistenceRegions!,
        if (enforceInTransit != null) 'enforceInTransit': enforceInTransit!,
      };
}

/// Request for the ModifyAckDeadline method.
class ModifyAckDeadlineRequest {
  /// The new ack deadline with respect to the time this request was sent to the
  /// Pub/Sub system.
  ///
  /// For example, if the value is 10, the new ack deadline will expire 10
  /// seconds after the `ModifyAckDeadline` call was made. Specifying zero might
  /// immediately make the message available for delivery to another subscriber
  /// client. This typically results in an increase in the rate of message
  /// redeliveries (that is, duplicates). The minimum deadline you can specify
  /// is 0 seconds. The maximum deadline you can specify is 600 seconds (10
  /// minutes).
  ///
  /// Required.
  core.int? ackDeadlineSeconds;

  /// List of acknowledgment IDs.
  ///
  /// Required.
  core.List<core.String>? ackIds;

  ModifyAckDeadlineRequest({
    this.ackDeadlineSeconds,
    this.ackIds,
  });

  ModifyAckDeadlineRequest.fromJson(core.Map json_)
      : this(
          ackDeadlineSeconds: json_.containsKey('ackDeadlineSeconds')
              ? json_['ackDeadlineSeconds'] as core.int
              : null,
          ackIds: json_.containsKey('ackIds')
              ? (json_['ackIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ackDeadlineSeconds != null)
          'ackDeadlineSeconds': ackDeadlineSeconds!,
        if (ackIds != null) 'ackIds': ackIds!,
      };
}

/// Request for the ModifyPushConfig method.
class ModifyPushConfigRequest {
  /// The push configuration for future deliveries.
  ///
  /// An empty `pushConfig` indicates that the Pub/Sub system should stop
  /// pushing messages from the given subscription and allow messages to be
  /// pulled and acknowledged - effectively pausing the subscription if `Pull`
  /// or `StreamingPull` is not called.
  ///
  /// Required.
  PushConfig? pushConfig;

  ModifyPushConfigRequest({
    this.pushConfig,
  });

  ModifyPushConfigRequest.fromJson(core.Map json_)
      : this(
          pushConfig: json_.containsKey('pushConfig')
              ? PushConfig.fromJson(
                  json_['pushConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pushConfig != null) 'pushConfig': pushConfig!,
      };
}

/// Sets the `data` field as the HTTP body for delivery.
class NoWrapper {
  /// When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:`
  /// headers of the HTTP request.
  ///
  /// Writes the Pub/Sub message attributes to `:` headers of the HTTP request.
  ///
  /// Optional.
  core.bool? writeMetadata;

  NoWrapper({
    this.writeMetadata,
  });

  NoWrapper.fromJson(core.Map json_)
      : this(
          writeMetadata: json_.containsKey('writeMetadata')
              ? json_['writeMetadata'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (writeMetadata != null) 'writeMetadata': writeMetadata!,
      };
}

/// Contains information needed for generating an
/// [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect).
class OidcToken {
  /// Audience to be used when generating OIDC token.
  ///
  /// The audience claim identifies the recipients that the JWT is intended for.
  /// The audience value is a single case-sensitive string. Having multiple
  /// values (array) for the audience field is not supported. More info about
  /// the OIDC JWT token audience here:
  /// https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified,
  /// the Push endpoint URL will be used.
  ///
  /// Optional.
  core.String? audience;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts)
  /// used for generating the OIDC token.
  ///
  /// For more information on setting up authentication, see
  /// [Push subscriptions](https://cloud.google.com/pubsub/docs/push).
  ///
  /// Optional.
  core.String? serviceAccountEmail;

  OidcToken({
    this.audience,
    this.serviceAccountEmail,
  });

  OidcToken.fromJson(core.Map json_)
      : this(
          audience: json_.containsKey('audience')
              ? json_['audience'] as core.String
              : null,
          serviceAccountEmail: json_.containsKey('serviceAccountEmail')
              ? json_['serviceAccountEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audience != null) 'audience': audience!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
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

/// Request for the Publish method.
class PublishRequest {
  /// The messages to publish.
  ///
  /// Required.
  core.List<PubsubMessage>? messages;

  PublishRequest({
    this.messages,
  });

  PublishRequest.fromJson(core.Map json_)
      : this(
          messages: json_.containsKey('messages')
              ? (json_['messages'] as core.List)
                  .map((value) => PubsubMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messages != null) 'messages': messages!,
      };
}

/// Response for the `Publish` method.
class PublishResponse {
  /// The server-assigned ID of each published message, in the same order as the
  /// messages in the request.
  ///
  /// IDs are guaranteed to be unique within the topic.
  ///
  /// Optional.
  core.List<core.String>? messageIds;

  PublishResponse({
    this.messageIds,
  });

  PublishResponse.fromJson(core.Map json_)
      : this(
          messageIds: json_.containsKey('messageIds')
              ? (json_['messageIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageIds != null) 'messageIds': messageIds!,
      };
}

/// A message that is published by publishers and consumed by subscribers.
///
/// The message must contain either a non-empty data field or at least one
/// attribute. Note that client libraries represent this object differently
/// depending on the language. See the corresponding
/// [client library documentation](https://cloud.google.com/pubsub/docs/reference/libraries)
/// for more information. See
/// [quotas and limits](https://cloud.google.com/pubsub/quotas) for more
/// information about message limits.
typedef PubsubMessage = $PubsubMessage;

/// The payload to the push endpoint is in the form of the JSON representation
/// of a PubsubMessage
/// (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
typedef PubsubWrapper = $Empty;

/// Request for the `Pull` method.
class PullRequest {
  /// The maximum number of messages to return for this request.
  ///
  /// Must be a positive integer. The Pub/Sub system may return fewer than the
  /// number specified.
  ///
  /// Required.
  core.int? maxMessages;

  /// If this field set to true, the system will respond immediately even if it
  /// there are no messages available to return in the `Pull` response.
  ///
  /// Otherwise, the system may wait (for a bounded amount of time) until at
  /// least one message is available, rather than returning no messages.
  /// Warning: setting this field to `true` is discouraged because it adversely
  /// impacts the performance of `Pull` operations. We recommend that users do
  /// not set this field.
  ///
  /// Optional.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? returnImmediately;

  PullRequest({
    this.maxMessages,
    this.returnImmediately,
  });

  PullRequest.fromJson(core.Map json_)
      : this(
          maxMessages: json_.containsKey('maxMessages')
              ? json_['maxMessages'] as core.int
              : null,
          returnImmediately: json_.containsKey('returnImmediately')
              ? json_['returnImmediately'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxMessages != null) 'maxMessages': maxMessages!,
        if (returnImmediately != null) 'returnImmediately': returnImmediately!,
      };
}

/// Response for the `Pull` method.
class PullResponse {
  /// Received Pub/Sub messages.
  ///
  /// The list will be empty if there are no more messages available in the
  /// backlog, or if no messages could be returned before the request timeout.
  /// For JSON, the response can be entirely empty. The Pub/Sub system may
  /// return fewer than the `maxMessages` requested even if there are more
  /// messages available in the backlog.
  ///
  /// Optional.
  core.List<ReceivedMessage>? receivedMessages;

  PullResponse({
    this.receivedMessages,
  });

  PullResponse.fromJson(core.Map json_)
      : this(
          receivedMessages: json_.containsKey('receivedMessages')
              ? (json_['receivedMessages'] as core.List)
                  .map((value) => ReceivedMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (receivedMessages != null) 'receivedMessages': receivedMessages!,
      };
}

/// Configuration for a push delivery endpoint.
class PushConfig {
  /// Endpoint configuration attributes that can be used to control different
  /// aspects of the message delivery.
  ///
  /// The only currently supported attribute is `x-goog-version`, which you can
  /// use to change the format of the pushed message. This attribute indicates
  /// the version of the data expected by the endpoint. This controls the shape
  /// of the pushed message (i.e., its fields and metadata). If not present
  /// during the `CreateSubscription` call, it will default to the version of
  /// the Pub/Sub API used to make such call. If not present in a
  /// `ModifyPushConfig` call, its value will not be changed. `GetSubscription`
  /// calls will always return a valid version, even if the subscription was
  /// created without this attribute. The only supported values for the
  /// `x-goog-version` attribute are: * `v1beta1`: uses the push format defined
  /// in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format
  /// defined in the v1 Pub/Sub API. For example: `attributes {
  /// "x-goog-version": "v1" }`
  ///
  /// Optional.
  core.Map<core.String, core.String>? attributes;

  /// When set, the payload to the push endpoint is not wrapped.
  ///
  /// Optional.
  NoWrapper? noWrapper;

  /// If specified, Pub/Sub will generate and attach an OIDC JWT token as an
  /// `Authorization` header in the HTTP request for every pushed message.
  ///
  /// Optional.
  OidcToken? oidcToken;

  /// When set, the payload to the push endpoint is in the form of the JSON
  /// representation of a PubsubMessage
  /// (https://cloud.google.com/pubsub/docs/reference/rpc/google.pubsub.v1#pubsubmessage).
  ///
  /// Optional.
  PubsubWrapper? pubsubWrapper;

  /// A URL locating the endpoint to which messages should be pushed.
  ///
  /// For example, a Webhook endpoint might use `https://example.com/push`.
  ///
  /// Optional.
  core.String? pushEndpoint;

  PushConfig({
    this.attributes,
    this.noWrapper,
    this.oidcToken,
    this.pubsubWrapper,
    this.pushEndpoint,
  });

  PushConfig.fromJson(core.Map json_)
      : this(
          attributes: json_.containsKey('attributes')
              ? (json_['attributes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          noWrapper: json_.containsKey('noWrapper')
              ? NoWrapper.fromJson(
                  json_['noWrapper'] as core.Map<core.String, core.dynamic>)
              : null,
          oidcToken: json_.containsKey('oidcToken')
              ? OidcToken.fromJson(
                  json_['oidcToken'] as core.Map<core.String, core.dynamic>)
              : null,
          pubsubWrapper: json_.containsKey('pubsubWrapper')
              ? PubsubWrapper.fromJson(
                  json_['pubsubWrapper'] as core.Map<core.String, core.dynamic>)
              : null,
          pushEndpoint: json_.containsKey('pushEndpoint')
              ? json_['pushEndpoint'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (noWrapper != null) 'noWrapper': noWrapper!,
        if (oidcToken != null) 'oidcToken': oidcToken!,
        if (pubsubWrapper != null) 'pubsubWrapper': pubsubWrapper!,
        if (pushEndpoint != null) 'pushEndpoint': pushEndpoint!,
      };
}

/// A message and its corresponding acknowledgment ID.
class ReceivedMessage {
  /// This ID can be used to acknowledge the received message.
  ///
  /// Optional.
  core.String? ackId;

  /// The approximate number of times that Pub/Sub has attempted to deliver the
  /// associated message to a subscriber.
  ///
  /// More precisely, this is 1 + (number of NACKs) + (number of ack_deadline
  /// exceeds) for this message. A NACK is any call to ModifyAckDeadline with a
  /// 0 deadline. An ack_deadline exceeds event is whenever a message is not
  /// acknowledged within ack_deadline. Note that ack_deadline is initially
  /// Subscription.ackDeadlineSeconds, but may get extended automatically by the
  /// client library. Upon the first delivery of a given message,
  /// `delivery_attempt` will have a value of 1. The value is calculated at best
  /// effort and is approximate. If a DeadLetterPolicy is not set on the
  /// subscription, this will be 0.
  ///
  /// Optional.
  core.int? deliveryAttempt;

  /// The message.
  ///
  /// Optional.
  PubsubMessage? message;

  ReceivedMessage({
    this.ackId,
    this.deliveryAttempt,
    this.message,
  });

  ReceivedMessage.fromJson(core.Map json_)
      : this(
          ackId:
              json_.containsKey('ackId') ? json_['ackId'] as core.String : null,
          deliveryAttempt: json_.containsKey('deliveryAttempt')
              ? json_['deliveryAttempt'] as core.int
              : null,
          message: json_.containsKey('message')
              ? PubsubMessage.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ackId != null) 'ackId': ackId!,
        if (deliveryAttempt != null) 'deliveryAttempt': deliveryAttempt!,
        if (message != null) 'message': message!,
      };
}

/// A policy that specifies how Pub/Sub retries message delivery.
///
/// Retry delay will be exponential based on provided minimum and maximum
/// backoffs. https://en.wikipedia.org/wiki/Exponential_backoff. RetryPolicy
/// will be triggered on NACKs or acknowledgement deadline exceeded events for a
/// given message. Retry Policy is implemented on a best effort basis. At times,
/// the delay between consecutive deliveries may not match the configuration.
/// That is, delay can be more or less than configured backoff.
class RetryPolicy {
  /// The maximum delay between consecutive deliveries of a given message.
  ///
  /// Value should be between 0 and 600 seconds. Defaults to 600 seconds.
  ///
  /// Optional.
  core.String? maximumBackoff;

  /// The minimum delay between consecutive deliveries of a given message.
  ///
  /// Value should be between 0 and 600 seconds. Defaults to 10 seconds.
  ///
  /// Optional.
  core.String? minimumBackoff;

  RetryPolicy({
    this.maximumBackoff,
    this.minimumBackoff,
  });

  RetryPolicy.fromJson(core.Map json_)
      : this(
          maximumBackoff: json_.containsKey('maximumBackoff')
              ? json_['maximumBackoff'] as core.String
              : null,
          minimumBackoff: json_.containsKey('minimumBackoff')
              ? json_['minimumBackoff'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maximumBackoff != null) 'maximumBackoff': maximumBackoff!,
        if (minimumBackoff != null) 'minimumBackoff': minimumBackoff!,
      };
}

/// Request for the `RollbackSchema` method.
class RollbackSchemaRequest {
  /// The revision ID to roll back to.
  ///
  /// It must be a revision of the same schema. Example: c7cfa2a8
  ///
  /// Required.
  core.String? revisionId;

  RollbackSchemaRequest({
    this.revisionId,
  });

  RollbackSchemaRequest.fromJson(core.Map json_)
      : this(
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revisionId != null) 'revisionId': revisionId!,
      };
}

/// A schema resource.
class Schema {
  /// The definition of the schema.
  ///
  /// This should contain a string representing the full definition of the
  /// schema that is a valid schema definition of the type specified in `type`.
  core.String? definition;

  /// Name of the schema.
  ///
  /// Format is `projects/{project}/schemas/{schema}`.
  ///
  /// Required.
  core.String? name;

  /// The timestamp that the revision was created.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The revision ID of the schema.
  ///
  /// Output only. Immutable.
  core.String? revisionId;

  /// The type of the schema definition.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "PROTOCOL_BUFFER" : A Protocol Buffer schema definition.
  /// - "AVRO" : An Avro schema definition.
  core.String? type;

  Schema({
    this.definition,
    this.name,
    this.revisionCreateTime,
    this.revisionId,
    this.type,
  });

  Schema.fromJson(core.Map json_)
      : this(
          definition: json_.containsKey('definition')
              ? json_['definition'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          revisionCreateTime: json_.containsKey('revisionCreateTime')
              ? json_['revisionCreateTime'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (definition != null) 'definition': definition!,
        if (name != null) 'name': name!,
        if (revisionCreateTime != null)
          'revisionCreateTime': revisionCreateTime!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (type != null) 'type': type!,
      };
}

/// Settings for validating messages published against a schema.
class SchemaSettings {
  /// The encoding of messages validated against `schema`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : Unspecified
  /// - "JSON" : JSON encoding
  /// - "BINARY" : Binary encoding, as defined by the schema type. For some
  /// schema types, binary encoding may not be available.
  core.String? encoding;

  /// The minimum (inclusive) revision allowed for validating messages.
  ///
  /// If empty or not present, allow any revision to be validated against
  /// last_revision or any revision created before.
  ///
  /// Optional.
  core.String? firstRevisionId;

  /// The maximum (inclusive) revision allowed for validating messages.
  ///
  /// If empty or not present, allow any revision to be validated against
  /// first_revision or any revision created after.
  ///
  /// Optional.
  core.String? lastRevisionId;

  /// The name of the schema that messages published should be validated
  /// against.
  ///
  /// Format is `projects/{project}/schemas/{schema}`. The value of this field
  /// will be `_deleted-schema_` if the schema has been deleted.
  ///
  /// Required.
  core.String? schema;

  SchemaSettings({
    this.encoding,
    this.firstRevisionId,
    this.lastRevisionId,
    this.schema,
  });

  SchemaSettings.fromJson(core.Map json_)
      : this(
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          firstRevisionId: json_.containsKey('firstRevisionId')
              ? json_['firstRevisionId'] as core.String
              : null,
          lastRevisionId: json_.containsKey('lastRevisionId')
              ? json_['lastRevisionId'] as core.String
              : null,
          schema: json_.containsKey('schema')
              ? json_['schema'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encoding != null) 'encoding': encoding!,
        if (firstRevisionId != null) 'firstRevisionId': firstRevisionId!,
        if (lastRevisionId != null) 'lastRevisionId': lastRevisionId!,
        if (schema != null) 'schema': schema!,
      };
}

/// Request for the `Seek` method.
class SeekRequest {
  /// The snapshot to seek to.
  ///
  /// The snapshot's topic must be the same as that of the provided
  /// subscription. Format is `projects/{project}/snapshots/{snap}`.
  ///
  /// Optional.
  core.String? snapshot;

  /// The time to seek to.
  ///
  /// Messages retained in the subscription that were published before this time
  /// are marked as acknowledged, and messages retained in the subscription that
  /// were published after this time are marked as unacknowledged. Note that
  /// this operation affects only those messages retained in the subscription
  /// (configured by the combination of `message_retention_duration` and
  /// `retain_acked_messages`). For example, if `time` corresponds to a point
  /// before the message retention window (or to a point before the system's
  /// notion of the subscription creation time), only retained messages will be
  /// marked as unacknowledged, and already-expunged messages will not be
  /// restored.
  ///
  /// Optional.
  core.String? time;

  SeekRequest({
    this.snapshot,
    this.time,
  });

  SeekRequest.fromJson(core.Map json_)
      : this(
          snapshot: json_.containsKey('snapshot')
              ? json_['snapshot'] as core.String
              : null,
          time: json_.containsKey('time') ? json_['time'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (snapshot != null) 'snapshot': snapshot!,
        if (time != null) 'time': time!,
      };
}

/// Response for the `Seek` method (this response is empty).
typedef SeekResponse = $Empty;

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

/// A snapshot resource.
///
/// Snapshots are used in
/// [Seek](https://cloud.google.com/pubsub/docs/replay-overview) operations,
/// which allow you to manage message acknowledgments in bulk. That is, you can
/// set the acknowledgment state of messages in an existing subscription to the
/// state captured by a snapshot.
class Snapshot {
  /// The snapshot is guaranteed to exist up until this time.
  ///
  /// A newly-created snapshot expires no later than 7 days from the time of its
  /// creation. Its exact lifetime is determined at creation by the existing
  /// backlog in the source subscription. Specifically, the lifetime of the
  /// snapshot is `7 days - (age of oldest unacked message in the
  /// subscription)`. For example, consider a subscription whose oldest unacked
  /// message is 3 days old. If a snapshot is created from this subscription,
  /// the snapshot -- which will always capture this 3-day-old backlog as long
  /// as the snapshot exists -- will expire in 4 days. The service will refuse
  /// to create a snapshot that would expire in less than 1 hour after creation.
  ///
  /// Optional.
  core.String? expireTime;

  /// See
  /// [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The name of the snapshot.
  ///
  /// Optional.
  core.String? name;

  /// The name of the topic from which this snapshot is retaining messages.
  ///
  /// Optional.
  core.String? topic;

  Snapshot({
    this.expireTime,
    this.labels,
    this.name,
    this.topic,
  });

  Snapshot.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (topic != null) 'topic': topic!,
      };
}

/// A subscription resource.
///
/// If none of `push_config`, `bigquery_config`, or `cloud_storage_config` is
/// set, then the subscriber will pull and ack messages using API methods. At
/// most one of these fields may be set.
class Subscription {
  /// The approximate amount of time (on a best-effort basis) Pub/Sub waits for
  /// the subscriber to acknowledge receipt before resending the message.
  ///
  /// In the interval after the message is delivered and before it is
  /// acknowledged, it is considered to be _outstanding_. During that time
  /// period, the message will not be redelivered (on a best-effort basis). For
  /// pull subscriptions, this value is used as the initial value for the ack
  /// deadline. To override this value for a given message, call
  /// `ModifyAckDeadline` with the corresponding `ack_id` if using non-streaming
  /// pull or send the `ack_id` in a `StreamingModifyAckDeadlineRequest` if
  /// using streaming pull. The minimum custom deadline you can specify is 10
  /// seconds. The maximum custom deadline you can specify is 600 seconds (10
  /// minutes). If this parameter is 0, a default value of 10 seconds is used.
  /// For push delivery, this value is also used to set the request timeout for
  /// the call to the push endpoint. If the subscriber never acknowledges the
  /// message, the Pub/Sub system will eventually redeliver the message.
  ///
  /// Optional.
  core.int? ackDeadlineSeconds;

  /// If delivery to BigQuery is used with this subscription, this field is used
  /// to configure it.
  ///
  /// Optional.
  BigQueryConfig? bigqueryConfig;

  /// If delivery to Google Cloud Storage is used with this subscription, this
  /// field is used to configure it.
  ///
  /// Optional.
  CloudStorageConfig? cloudStorageConfig;

  /// A policy that specifies the conditions for dead lettering messages in this
  /// subscription.
  ///
  /// If dead_letter_policy is not set, dead lettering is disabled. The Pub/Sub
  /// service account associated with this subscriptions's parent project (i.e.,
  /// service-{project_number}@gcp-sa-pubsub.iam.gserviceaccount.com) must have
  /// permission to Acknowledge() messages on this subscription.
  ///
  /// Optional.
  DeadLetterPolicy? deadLetterPolicy;

  /// Indicates whether the subscription is detached from its topic.
  ///
  /// Detached subscriptions don't receive messages from their topic and don't
  /// retain any backlog. `Pull` and `StreamingPull` requests will return
  /// FAILED_PRECONDITION. If the subscription is a push subscription, pushes to
  /// the endpoint will not be made.
  ///
  /// Optional.
  core.bool? detached;

  /// If true, Pub/Sub provides the following guarantees for the delivery of a
  /// message with a given value of `message_id` on this subscription: * The
  /// message sent to a subscriber is guaranteed not to be resent before the
  /// message's acknowledgement deadline expires.
  ///
  /// * An acknowledged message will not be resent to a subscriber. Note that
  /// subscribers may still receive multiple copies of a message when
  /// `enable_exactly_once_delivery` is true if the message was published
  /// multiple times by a publisher client. These copies are considered distinct
  /// by Pub/Sub and have distinct `message_id` values.
  ///
  /// Optional.
  core.bool? enableExactlyOnceDelivery;

  /// If true, messages published with the same `ordering_key` in
  /// `PubsubMessage` will be delivered to the subscribers in the order in which
  /// they are received by the Pub/Sub system.
  ///
  /// Otherwise, they may be delivered in any order.
  ///
  /// Optional.
  core.bool? enableMessageOrdering;

  /// A policy that specifies the conditions for this subscription's expiration.
  ///
  /// A subscription is considered active as long as any connected subscriber is
  /// successfully consuming messages from the subscription or is issuing
  /// operations on the subscription. If `expiration_policy` is not set, a
  /// *default policy* with `ttl` of 31 days will be used. The minimum allowed
  /// value for `expiration_policy.ttl` is 1 day. If `expiration_policy` is set,
  /// but `expiration_policy.ttl` is not set, the subscription never expires.
  ///
  /// Optional.
  ExpirationPolicy? expirationPolicy;

  /// An expression written in the Pub/Sub
  /// [filter language](https://cloud.google.com/pubsub/docs/filtering).
  ///
  /// If non-empty, then only `PubsubMessage`s whose `attributes` field matches
  /// the filter are delivered on this subscription. If empty, then no messages
  /// are filtered out.
  ///
  /// Optional.
  core.String? filter;

  /// See
  /// [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// How long to retain unacknowledged messages in the subscription's backlog,
  /// from the moment a message is published.
  ///
  /// If `retain_acked_messages` is true, then this also configures the
  /// retention of acknowledged messages, and thus configures how far back in
  /// time a `Seek` can be done. Defaults to 7 days. Cannot be more than 7 days
  /// or less than 10 minutes.
  ///
  /// Optional.
  core.String? messageRetentionDuration;

  /// The name of the subscription.
  ///
  /// It must have the format
  /// `"projects/{project}/subscriptions/{subscription}"`. `{subscription}` must
  /// start with a letter, and contain only letters (`[A-Za-z]`), numbers
  /// (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`),
  /// plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters
  /// in length, and it must not start with `"goog"`.
  ///
  /// Required.
  core.String? name;

  /// If push delivery is used with this subscription, this field is used to
  /// configure it.
  ///
  /// Optional.
  PushConfig? pushConfig;

  /// Indicates whether to retain acknowledged messages.
  ///
  /// If true, then messages are not expunged from the subscription's backlog,
  /// even if they are acknowledged, until they fall out of the
  /// `message_retention_duration` window. This must be true if you would like
  /// to \[`Seek` to a
  /// timestamp\](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time)
  /// in the past to replay previously-acknowledged messages.
  ///
  /// Optional.
  core.bool? retainAckedMessages;

  /// A policy that specifies how Pub/Sub retries message delivery for this
  /// subscription.
  ///
  /// If not set, the default retry policy is applied. This generally implies
  /// that messages will be retried as soon as possible for healthy subscribers.
  /// RetryPolicy will be triggered on NACKs or acknowledgement deadline
  /// exceeded events for a given message.
  ///
  /// Optional.
  RetryPolicy? retryPolicy;

  /// An output-only field indicating whether or not the subscription can
  /// receive messages.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ACTIVE" : The subscription can actively receive messages
  /// - "RESOURCE_ERROR" : The subscription cannot receive messages because of
  /// an error with the resource to which it pushes messages. See the more
  /// detailed error state in the corresponding configuration.
  core.String? state;

  /// The name of the topic from which this subscription is receiving messages.
  ///
  /// Format is `projects/{project}/topics/{topic}`. The value of this field
  /// will be `_deleted-topic_` if the topic has been deleted.
  ///
  /// Required.
  core.String? topic;

  /// Indicates the minimum duration for which a message is retained after it is
  /// published to the subscription's topic.
  ///
  /// If this field is set, messages published to the subscription's topic in
  /// the last `topic_message_retention_duration` are always available to
  /// subscribers. See the `message_retention_duration` field in `Topic`. This
  /// field is set only in responses from the server; it is ignored if it is set
  /// in any requests.
  ///
  /// Output only.
  core.String? topicMessageRetentionDuration;

  Subscription({
    this.ackDeadlineSeconds,
    this.bigqueryConfig,
    this.cloudStorageConfig,
    this.deadLetterPolicy,
    this.detached,
    this.enableExactlyOnceDelivery,
    this.enableMessageOrdering,
    this.expirationPolicy,
    this.filter,
    this.labels,
    this.messageRetentionDuration,
    this.name,
    this.pushConfig,
    this.retainAckedMessages,
    this.retryPolicy,
    this.state,
    this.topic,
    this.topicMessageRetentionDuration,
  });

  Subscription.fromJson(core.Map json_)
      : this(
          ackDeadlineSeconds: json_.containsKey('ackDeadlineSeconds')
              ? json_['ackDeadlineSeconds'] as core.int
              : null,
          bigqueryConfig: json_.containsKey('bigqueryConfig')
              ? BigQueryConfig.fromJson(json_['bigqueryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cloudStorageConfig: json_.containsKey('cloudStorageConfig')
              ? CloudStorageConfig.fromJson(json_['cloudStorageConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deadLetterPolicy: json_.containsKey('deadLetterPolicy')
              ? DeadLetterPolicy.fromJson(json_['deadLetterPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          detached: json_.containsKey('detached')
              ? json_['detached'] as core.bool
              : null,
          enableExactlyOnceDelivery:
              json_.containsKey('enableExactlyOnceDelivery')
                  ? json_['enableExactlyOnceDelivery'] as core.bool
                  : null,
          enableMessageOrdering: json_.containsKey('enableMessageOrdering')
              ? json_['enableMessageOrdering'] as core.bool
              : null,
          expirationPolicy: json_.containsKey('expirationPolicy')
              ? ExpirationPolicy.fromJson(json_['expirationPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          messageRetentionDuration:
              json_.containsKey('messageRetentionDuration')
                  ? json_['messageRetentionDuration'] as core.String
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pushConfig: json_.containsKey('pushConfig')
              ? PushConfig.fromJson(
                  json_['pushConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          retainAckedMessages: json_.containsKey('retainAckedMessages')
              ? json_['retainAckedMessages'] as core.bool
              : null,
          retryPolicy: json_.containsKey('retryPolicy')
              ? RetryPolicy.fromJson(
                  json_['retryPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
          topicMessageRetentionDuration:
              json_.containsKey('topicMessageRetentionDuration')
                  ? json_['topicMessageRetentionDuration'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ackDeadlineSeconds != null)
          'ackDeadlineSeconds': ackDeadlineSeconds!,
        if (bigqueryConfig != null) 'bigqueryConfig': bigqueryConfig!,
        if (cloudStorageConfig != null)
          'cloudStorageConfig': cloudStorageConfig!,
        if (deadLetterPolicy != null) 'deadLetterPolicy': deadLetterPolicy!,
        if (detached != null) 'detached': detached!,
        if (enableExactlyOnceDelivery != null)
          'enableExactlyOnceDelivery': enableExactlyOnceDelivery!,
        if (enableMessageOrdering != null)
          'enableMessageOrdering': enableMessageOrdering!,
        if (expirationPolicy != null) 'expirationPolicy': expirationPolicy!,
        if (filter != null) 'filter': filter!,
        if (labels != null) 'labels': labels!,
        if (messageRetentionDuration != null)
          'messageRetentionDuration': messageRetentionDuration!,
        if (name != null) 'name': name!,
        if (pushConfig != null) 'pushConfig': pushConfig!,
        if (retainAckedMessages != null)
          'retainAckedMessages': retainAckedMessages!,
        if (retryPolicy != null) 'retryPolicy': retryPolicy!,
        if (state != null) 'state': state!,
        if (topic != null) 'topic': topic!,
        if (topicMessageRetentionDuration != null)
          'topicMessageRetentionDuration': topicMessageRetentionDuration!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Configuration for writing message data in text format.
///
/// Message payloads will be written to files as raw text, separated by a
/// newline.
typedef TextConfig = $Empty;

/// A topic resource.
class Topic {
  /// The resource name of the Cloud KMS CryptoKey to be used to protect access
  /// to messages published on this topic.
  ///
  /// The expected format is `projects / * /locations / * /keyRings / *
  /// /cryptoKeys / * `.
  ///
  /// Optional.
  core.String? kmsKeyName;

  /// See
  /// [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Indicates the minimum duration to retain a message after it is published
  /// to the topic.
  ///
  /// If this field is set, messages published to the topic in the last
  /// `message_retention_duration` are always available to subscribers. For
  /// instance, it allows any attached subscription to
  /// [seek to a timestamp](https://cloud.google.com/pubsub/docs/replay-overview#seek_to_a_time)
  /// that is up to `message_retention_duration` in the past. If this field is
  /// not set, message retention is controlled by settings on individual
  /// subscriptions. Cannot be more than 31 days or less than 10 minutes.
  ///
  /// Optional.
  core.String? messageRetentionDuration;

  /// Policy constraining the set of Google Cloud Platform regions where
  /// messages published to the topic may be stored.
  ///
  /// If not present, then no constraints are in effect.
  ///
  /// Optional.
  MessageStoragePolicy? messageStoragePolicy;

  /// The name of the topic.
  ///
  /// It must have the format `"projects/{project}/topics/{topic}"`. `{topic}`
  /// must start with a letter, and contain only letters (`[A-Za-z]`), numbers
  /// (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`),
  /// plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters
  /// in length, and it must not start with `"goog"`.
  ///
  /// Required.
  core.String? name;

  /// Reserved for future use.
  ///
  /// This field is set only in responses from the server; it is ignored if it
  /// is set in any requests.
  ///
  /// Optional.
  core.bool? satisfiesPzs;

  /// Settings for validating messages published against a schema.
  ///
  /// Optional.
  SchemaSettings? schemaSettings;

  Topic({
    this.kmsKeyName,
    this.labels,
    this.messageRetentionDuration,
    this.messageStoragePolicy,
    this.name,
    this.satisfiesPzs,
    this.schemaSettings,
  });

  Topic.fromJson(core.Map json_)
      : this(
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          messageRetentionDuration:
              json_.containsKey('messageRetentionDuration')
                  ? json_['messageRetentionDuration'] as core.String
                  : null,
          messageStoragePolicy: json_.containsKey('messageStoragePolicy')
              ? MessageStoragePolicy.fromJson(json_['messageStoragePolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          satisfiesPzs: json_.containsKey('satisfiesPzs')
              ? json_['satisfiesPzs'] as core.bool
              : null,
          schemaSettings: json_.containsKey('schemaSettings')
              ? SchemaSettings.fromJson(json_['schemaSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (labels != null) 'labels': labels!,
        if (messageRetentionDuration != null)
          'messageRetentionDuration': messageRetentionDuration!,
        if (messageStoragePolicy != null)
          'messageStoragePolicy': messageStoragePolicy!,
        if (name != null) 'name': name!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (schemaSettings != null) 'schemaSettings': schemaSettings!,
      };
}

/// Request for the UpdateSnapshot method.
class UpdateSnapshotRequest {
  /// The updated snapshot object.
  ///
  /// Required.
  Snapshot? snapshot;

  /// Indicates which fields in the provided snapshot to update.
  ///
  /// Must be specified and non-empty.
  ///
  /// Required.
  core.String? updateMask;

  UpdateSnapshotRequest({
    this.snapshot,
    this.updateMask,
  });

  UpdateSnapshotRequest.fromJson(core.Map json_)
      : this(
          snapshot: json_.containsKey('snapshot')
              ? Snapshot.fromJson(
                  json_['snapshot'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (snapshot != null) 'snapshot': snapshot!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request for the UpdateSubscription method.
class UpdateSubscriptionRequest {
  /// The updated subscription object.
  ///
  /// Required.
  Subscription? subscription;

  /// Indicates which fields in the provided subscription to update.
  ///
  /// Must be specified and non-empty.
  ///
  /// Required.
  core.String? updateMask;

  UpdateSubscriptionRequest({
    this.subscription,
    this.updateMask,
  });

  UpdateSubscriptionRequest.fromJson(core.Map json_)
      : this(
          subscription: json_.containsKey('subscription')
              ? Subscription.fromJson(
                  json_['subscription'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request for the UpdateTopic method.
class UpdateTopicRequest {
  /// The updated topic object.
  ///
  /// Required.
  Topic? topic;

  /// Indicates which fields in the provided topic to update.
  ///
  /// Must be specified and non-empty. Note that if `update_mask` contains
  /// "message_storage_policy" but the `message_storage_policy` is not set in
  /// the `topic` provided above, then the updated value is determined by the
  /// policy configured at the project or organization level.
  ///
  /// Required.
  core.String? updateMask;

  UpdateTopicRequest({
    this.topic,
    this.updateMask,
  });

  UpdateTopicRequest.fromJson(core.Map json_)
      : this(
          topic: json_.containsKey('topic')
              ? Topic.fromJson(
                  json_['topic'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request for the `ValidateMessage` method.
class ValidateMessageRequest {
  /// The encoding expected for messages
  /// Possible string values are:
  /// - "ENCODING_UNSPECIFIED" : Unspecified
  /// - "JSON" : JSON encoding
  /// - "BINARY" : Binary encoding, as defined by the schema type. For some
  /// schema types, binary encoding may not be available.
  core.String? encoding;

  /// Message to validate against the provided `schema_spec`.
  core.String? message;
  core.List<core.int> get messageAsBytes => convert.base64.decode(message!);

  set messageAsBytes(core.List<core.int> bytes_) {
    message =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Name of the schema against which to validate.
  ///
  /// Format is `projects/{project}/schemas/{schema}`.
  core.String? name;

  /// Ad-hoc schema against which to validate
  Schema? schema;

  ValidateMessageRequest({
    this.encoding,
    this.message,
    this.name,
    this.schema,
  });

  ValidateMessageRequest.fromJson(core.Map json_)
      : this(
          encoding: json_.containsKey('encoding')
              ? json_['encoding'] as core.String
              : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          schema: json_.containsKey('schema')
              ? Schema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encoding != null) 'encoding': encoding!,
        if (message != null) 'message': message!,
        if (name != null) 'name': name!,
        if (schema != null) 'schema': schema!,
      };
}

/// Response for the `ValidateMessage` method.
///
/// Empty for now.
typedef ValidateMessageResponse = $Empty;

/// Request for the `ValidateSchema` method.
class ValidateSchemaRequest {
  /// The schema object to validate.
  ///
  /// Required.
  Schema? schema;

  ValidateSchemaRequest({
    this.schema,
  });

  ValidateSchemaRequest.fromJson(core.Map json_)
      : this(
          schema: json_.containsKey('schema')
              ? Schema.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (schema != null) 'schema': schema!,
      };
}

/// Response for the `ValidateSchema` method.
///
/// Empty for now.
typedef ValidateSchemaResponse = $Empty;
