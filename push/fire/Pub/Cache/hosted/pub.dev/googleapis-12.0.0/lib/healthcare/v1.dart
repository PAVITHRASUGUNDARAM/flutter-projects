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

/// Cloud Healthcare API - v1
///
/// Manage, store, and access healthcare data in Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/healthcare>
///
/// Create an instance of [CloudHealthcareApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDatasetsResource]
///       - [ProjectsLocationsDatasetsConsentStoresResource]
/// - [ProjectsLocationsDatasetsConsentStoresAttributeDefinitionsResource]
///         - [ProjectsLocationsDatasetsConsentStoresConsentArtifactsResource]
///         - [ProjectsLocationsDatasetsConsentStoresConsentsResource]
///         - [ProjectsLocationsDatasetsConsentStoresUserDataMappingsResource]
///       - [ProjectsLocationsDatasetsDicomStoresResource]
///         - [ProjectsLocationsDatasetsDicomStoresDicomWebResource]
///           - [ProjectsLocationsDatasetsDicomStoresDicomWebStudiesResource]
/// - [ProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesResource]
///         - [ProjectsLocationsDatasetsDicomStoresStudiesResource]
///           - [ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource]
/// - [ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource]
/// - [ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource]
///       - [ProjectsLocationsDatasetsFhirStoresResource]
///         - [ProjectsLocationsDatasetsFhirStoresFhirResource]
///       - [ProjectsLocationsDatasetsHl7V2StoresResource]
///         - [ProjectsLocationsDatasetsHl7V2StoresMessagesResource]
///       - [ProjectsLocationsDatasetsOperationsResource]
///     - [ProjectsLocationsServicesResource]
///       - [ProjectsLocationsServicesNlpResource]
library healthcare_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manage, store, and access healthcare data in Google Cloud Platform.
class CloudHealthcareApi {
  /// Read, write and manage healthcare data
  static const cloudHealthcareScope =
      'https://www.googleapis.com/auth/cloud-healthcare';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudHealthcareApi(http.Client client,
      {core.String rootUrl = 'https://healthcare.googleapis.com/',
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

  ProjectsLocationsDatasetsResource get datasets =>
      ProjectsLocationsDatasetsResource(_requester);
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);

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

class ProjectsLocationsDatasetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsConsentStoresResource get consentStores =>
      ProjectsLocationsDatasetsConsentStoresResource(_requester);
  ProjectsLocationsDatasetsDicomStoresResource get dicomStores =>
      ProjectsLocationsDatasetsDicomStoresResource(_requester);
  ProjectsLocationsDatasetsFhirStoresResource get fhirStores =>
      ProjectsLocationsDatasetsFhirStoresResource(_requester);
  ProjectsLocationsDatasetsHl7V2StoresResource get hl7V2Stores =>
      ProjectsLocationsDatasetsHl7V2StoresResource(_requester);
  ProjectsLocationsDatasetsOperationsResource get operations =>
      ProjectsLocationsDatasetsOperationsResource(_requester);

  ProjectsLocationsDatasetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new health dataset.
  ///
  /// Results are returned through the Operation interface which returns either
  /// an `Operation.response` which contains a Dataset or `Operation.error`. The
  /// metadata field type is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project where the server creates the dataset.
  /// For example, `projects/{project_id}/locations/{location_id}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [datasetId] - The ID of the dataset that is being created. The string must
  /// match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
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
    Dataset request,
    core.String parent, {
    core.String? datasetId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (datasetId != null) 'datasetId': [datasetId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/datasets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new dataset containing de-identified data from the source
  /// dataset.
  ///
  /// The metadata field type is OperationMetadata. If the request is
  /// successful, the response field type is DeidentifySummary. If errors occur,
  /// error is set. The LRO result may still be successful if de-identification
  /// fails for some DICOM instances. The new de-identified dataset will not
  /// contain these failed resources. Failed resource totals are tracked in
  /// Operation.metadata. Error details are also logged to Cloud Logging. For
  /// more information, see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceDataset] - Source dataset resource name. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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
  async.Future<Operation> deidentify(
    DeidentifyDatasetRequest request,
    core.String sourceDataset, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$sourceDataset') + ':deidentify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified health dataset and all data contained in the
  /// dataset.
  ///
  /// Deleting a dataset does not affect the sources from which the dataset was
  /// imported (if any).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the dataset to delete. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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

  /// Gets any metadata associated with a dataset.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the dataset to read. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> get(
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
    return Dataset.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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

  /// Lists the health datasets in the current project.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the project whose datasets should be listed. For
  /// example, `projects/{project_id}/locations/{location_id}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. If not specified, 100
  /// is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatasetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatasetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/datasets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDatasetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates dataset metadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the dataset, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Dataset].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Dataset> patch(
    Dataset request,
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
    return Dataset.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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

class ProjectsLocationsDatasetsConsentStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsConsentStoresAttributeDefinitionsResource
      get attributeDefinitions =>
          ProjectsLocationsDatasetsConsentStoresAttributeDefinitionsResource(
              _requester);
  ProjectsLocationsDatasetsConsentStoresConsentArtifactsResource
      get consentArtifacts =>
          ProjectsLocationsDatasetsConsentStoresConsentArtifactsResource(
              _requester);
  ProjectsLocationsDatasetsConsentStoresConsentsResource get consents =>
      ProjectsLocationsDatasetsConsentStoresConsentsResource(_requester);
  ProjectsLocationsDatasetsConsentStoresUserDataMappingsResource
      get userDataMappings =>
          ProjectsLocationsDatasetsConsentStoresUserDataMappingsResource(
              _requester);

  ProjectsLocationsDatasetsConsentStoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Checks if a particular data_id of a User data mapping in the specified
  /// consent store is consented for the specified use.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [consentStore] - Required. Name of the consent store where the requested
  /// data_id is stored, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckDataAccessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckDataAccessResponse> checkDataAccess(
    CheckDataAccessRequest request,
    core.String consentStore, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$consentStore') + ':checkDataAccess';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CheckDataAccessResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new consent store in the parent dataset.
  ///
  /// Attempting to create a consent store with the same ID as an existing store
  /// fails with an ALREADY_EXISTS error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the dataset this consent store belongs
  /// to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [consentStoreId] - Required. The ID of the consent store to create. The
  /// string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`. Cannot
  /// be changed after creation.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConsentStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConsentStore> create(
    ConsentStore request,
    core.String parent, {
    core.String? consentStoreId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (consentStoreId != null) 'consentStoreId': [consentStoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/consentStores';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ConsentStore.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified consent store and removes all the consent store's
  /// data.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the consent store to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
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

  /// Evaluates the user's Consents for all matching User data mappings.
  ///
  /// Note: User data mappings are indexed asynchronously, which can cause a
  /// slight delay between the time mappings are created or updated and when
  /// they are included in EvaluateUserConsents results.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [consentStore] - Required. Name of the consent store to retrieve User data
  /// mappings from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EvaluateUserConsentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EvaluateUserConsentsResponse> evaluateUserConsents(
    EvaluateUserConsentsRequest request,
    core.String consentStore, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$consentStore') + ':evaluateUserConsents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EvaluateUserConsentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified consent store.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the consent store to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConsentStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConsentStore> get(
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
    return ConsentStore.fromJson(
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
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

  /// Lists the consent stores in the specified dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the dataset.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Optional. Restricts the stores returned to those matching a
  /// filter. Only filtering on labels is supported. For example,
  /// `filter=labels.key=value`.
  ///
  /// [pageSize] - Optional. Limit on the number of consent stores to return in
  /// a single response. If not specified, 100 is used. May not be larger than
  /// 1000.
  ///
  /// [pageToken] - Optional. Token to retrieve the next page of results, or
  /// empty to get the first page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConsentStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConsentStoresResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/consentStores';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConsentStoresResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified consent store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the consent store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`.
  /// Cannot be changed after creation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask that applies to the resource. For
  /// the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  /// Only the `labels`, `default_consent_ttl`, and
  /// `enable_consent_create_on_update` fields are allowed to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConsentStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConsentStore> patch(
    ConsentStore request,
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
    return ConsentStore.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Queries all data_ids that are consented for a specified use in the given
  /// consent store and writes them to a specified destination.
  ///
  /// The returned Operation includes a progress counter for the number of User
  /// data mappings processed. If the request is successful, a detailed response
  /// is returned of type QueryAccessibleDataResponse, contained in the response
  /// field when the operation finishes. The metadata field type is
  /// OperationMetadata. Errors are logged to Cloud Logging (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  /// For example, the following sample log entry shows a `failed to evaluate
  /// consent policy` error that occurred during a QueryAccessibleData call to
  /// consent store
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`.
  /// ```json jsonPayload: { @type:
  /// "type.googleapis.com/google.cloud.healthcare.logging.QueryAccessibleDataLogEntry"
  /// error: { code: 9 message: "failed to evaluate consent policy" }
  /// resourceName:
  /// "projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}"
  /// } logName:
  /// "projects/{project_id}/logs/healthcare.googleapis.com%2Fquery_accessible_data"
  /// operation: { id:
  /// "projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/operations/{operation_id}"
  /// producer: "healthcare.googleapis.com/QueryAccessibleData" }
  /// receiveTimestamp: "TIMESTAMP" resource: { labels: { consent_store_id:
  /// "{consent_store_id}" dataset_id: "{dataset_id}" location: "{location_id}"
  /// project_id: "{project_id}" } type: "healthcare_consent_store" } severity:
  /// "ERROR" timestamp: "TIMESTAMP" ```
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [consentStore] - Required. Name of the consent store to retrieve User data
  /// mappings from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
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
  async.Future<Operation> queryAccessibleData(
    QueryAccessibleDataRequest request,
    core.String consentStore, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$consentStore') + ':queryAccessibleData';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
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

class ProjectsLocationsDatasetsConsentStoresAttributeDefinitionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsConsentStoresAttributeDefinitionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Attribute definition in the parent consent store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the consent store that this Attribute
  /// definition belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [attributeDefinitionId] - Required. The ID of the Attribute definition to
  /// create. The string must match the following regex: `_a-zA-Z{0,255}` and
  /// must not be a reserved keyword within the Common Expression Language as
  /// listed on https://github.com/google/cel-spec/blob/master/doc/langdef.md.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AttributeDefinition].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AttributeDefinition> create(
    AttributeDefinition request,
    core.String parent, {
    core.String? attributeDefinitionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (attributeDefinitionId != null)
        'attributeDefinitionId': [attributeDefinitionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/attributeDefinitions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AttributeDefinition.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Attribute definition.
  ///
  /// Fails if the Attribute definition is referenced by any User data mapping,
  /// or the latest revision of any Consent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Attribute definition to
  /// delete. To preserve referential integrity, Attribute definitions
  /// referenced by a User data mapping or the latest revision of a Consent
  /// cannot be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/attributeDefinitions/\[^/\]+$`.
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

  /// Gets the specified Attribute definition.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Attribute definition to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/attributeDefinitions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AttributeDefinition].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AttributeDefinition> get(
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
    return AttributeDefinition.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Attribute definitions in the specified consent store.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the consent store to retrieve Attribute
  /// definitions from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [filter] - Optional. Restricts the attributes returned to those matching a
  /// filter. The only field available for filtering is `category`. For example,
  /// `filter=category=\"REQUEST\"`.
  ///
  /// [pageSize] - Optional. Limit on the number of Attribute definitions to
  /// return in a single response. If not specified, 100 is used. May not be
  /// larger than 1000.
  ///
  /// [pageToken] - Optional. Token to retrieve the next page of results or
  /// empty to get the first page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttributeDefinitionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttributeDefinitionsResponse> list(
    core.String parent, {
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/attributeDefinitions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAttributeDefinitionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified Attribute definition.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the Attribute definition, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`.
  /// Cannot be changed after creation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/attributeDefinitions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask that applies to the resource. For
  /// the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  /// Only the `description`, `allowed_values`, `consent_default_values` and
  /// `data_mapping_default_value` fields can be updated. The updated
  /// `allowed_values` must contain all values from the previous
  /// `allowed_values`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AttributeDefinition].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AttributeDefinition> patch(
    AttributeDefinition request,
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
    return AttributeDefinition.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsConsentStoresConsentArtifactsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsConsentStoresConsentArtifactsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Consent artifact in the parent consent store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the consent store this Consent artifact
  /// belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConsentArtifact].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConsentArtifact> create(
    ConsentArtifact request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/consentArtifacts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ConsentArtifact.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Consent artifact.
  ///
  /// Fails if the artifact is referenced by the latest revision of any Consent.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent artifact to delete. To
  /// preserve referential integrity, Consent artifacts referenced by the latest
  /// revision of a Consent cannot be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consentArtifacts/\[^/\]+$`.
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

  /// Gets the specified Consent artifact.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent artifact to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consentArtifacts/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConsentArtifact].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConsentArtifact> get(
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
    return ConsentArtifact.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Consent artifacts in the specified consent store.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the consent store to retrieve consent
  /// artifacts from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [filter] - Optional. Restricts the artifacts returned to those matching a
  /// filter. The following syntax is available: * A string field value can be
  /// written as text inside quotation marks, for example `"query text"`. The
  /// only valid relational operation for text fields is equality (`=`), where
  /// text is searched within the field, rather than having the field be equal
  /// to the text. For example, `"Comment = great"` returns messages with
  /// `great` in the comment field. * A number field value can be written as an
  /// integer, a decimal, or an exponential. The valid relational operators for
  /// number fields are the equality operator (`=`), along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * A date field value must be written in
  /// `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
  /// Leading zeros are required for one-digit months and days. The valid
  /// relational operators for date fields are the equality operator (`=`) ,
  /// along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
  /// Note that there is no inequality (`!=`) operator. You can prepend the
  /// `NOT` operator to an expression to negate it. * Multiple field query
  /// expressions can be combined in one query by adding `AND` or `OR` operators
  /// between the expressions. If a boolean operator appears within a quoted
  /// string, it is not treated as special, it's just another part of the
  /// character string to be matched. You can prepend the `NOT` operator to an
  /// expression to negate it. The fields available for filtering are: -
  /// user_id. For example, `filter=user_id=\"user123\"`. -
  /// consent_content_version - metadata. For example,
  /// `filter=Metadata(\"testkey\")=\"value\"` or
  /// `filter=HasMetadata(\"testkey\")`.
  ///
  /// [pageSize] - Optional. Limit on the number of consent artifacts to return
  /// in a single response. If not specified, 100 is used. May not be larger
  /// than 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from the
  /// previous List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConsentArtifactsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConsentArtifactsResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/consentArtifacts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConsentArtifactsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsConsentStoresConsentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsConsentStoresConsentsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Activates the latest revision of the specified Consent by committing a new
  /// revision with `state` updated to `ACTIVE`.
  ///
  /// If the latest revision of the specified Consent is in the `ACTIVE` state,
  /// no new revision is committed. A FAILED_PRECONDITION error occurs if the
  /// latest revision of the specified Consent is in the `REJECTED` or `REVOKED`
  /// state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent to activate, of the
  /// form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  /// An INVALID_ARGUMENT error occurs if `revision_id` is specified in the
  /// name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Consent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Consent> activate(
    ActivateConsentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':activate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Consent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Consent in the parent consent store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the consent store.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Consent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Consent> create(
    Consent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/consents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Consent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the Consent and its revisions.
  ///
  /// To keep a record of the Consent but mark it inactive, see
  /// \[RevokeConsent\]. To delete a revision of a Consent, see
  /// \[DeleteConsentRevision\]. This operation does not delete the related
  /// Consent artifact.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent to delete, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  /// An INVALID_ARGUMENT error occurs if `revision_id` is specified in the
  /// name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consents/\[^/\]+$`.
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

  /// Deletes the specified revision of a Consent.
  ///
  /// An INVALID_ARGUMENT error occurs if the specified revision is the latest
  /// revision.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent revision to delete, of
  /// the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}@{revision_id}`.
  /// An INVALID_ARGUMENT error occurs if `revision_id` is not specified in the
  /// name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consents/\[^/\]+$`.
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
  async.Future<Empty> deleteRevision(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deleteRevision';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified revision of a Consent, or the latest revision if
  /// `revision_id` is not specified in the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent to retrieve, of the
  /// form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  /// In order to retrieve a previous revision of the Consent, also provide the
  /// revision ID:
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}@{revision_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Consent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Consent> get(
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
    return Consent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Consent in the given consent store, returning each Consent's
  /// latest revision.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the consent store to retrieve Consents from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [filter] - Optional. Restricts the Consents returned to those matching a
  /// filter. The following syntax is available: * A string field value can be
  /// written as text inside quotation marks, for example `"query text"`. The
  /// only valid relational operation for text fields is equality (`=`), where
  /// text is searched within the field, rather than having the field be equal
  /// to the text. For example, `"Comment = great"` returns messages with
  /// `great` in the comment field. * A number field value can be written as an
  /// integer, a decimal, or an exponential. The valid relational operators for
  /// number fields are the equality operator (`=`), along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * A date field value must be written in
  /// `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
  /// Leading zeros are required for one-digit months and days. The valid
  /// relational operators for date fields are the equality operator (`=`) ,
  /// along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
  /// Note that there is no inequality (`!=`) operator. You can prepend the
  /// `NOT` operator to an expression to negate it. * Multiple field query
  /// expressions can be combined in one query by adding `AND` or `OR` operators
  /// between the expressions. If a boolean operator appears within a quoted
  /// string, it is not treated as special, it's just another part of the
  /// character string to be matched. You can prepend the `NOT` operator to an
  /// expression to negate it. The fields available for filtering are: -
  /// user_id. For example, `filter='user_id="user123"'`. - consent_artifact -
  /// state - revision_create_time - metadata. For example,
  /// `filter=Metadata(\"testkey\")=\"value\"` or
  /// `filter=HasMetadata(\"testkey\")`.
  ///
  /// [pageSize] - Optional. Limit on the number of Consents to return in a
  /// single response. If not specified, 100 is used. May not be larger than
  /// 1000.
  ///
  /// [pageToken] - Optional. The next_page_token value returned from the
  /// previous List request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConsentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConsentsResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/consents';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConsentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the revisions of the specified Consent in reverse chronological
  /// order.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent to retrieve revisions
  /// for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consents/\[^/\]+$`.
  ///
  /// [filter] - Optional. Restricts the revisions returned to those matching a
  /// filter. The following syntax is available: * A string field value can be
  /// written as text inside quotation marks, for example `"query text"`. The
  /// only valid relational operation for text fields is equality (`=`), where
  /// text is searched within the field, rather than having the field be equal
  /// to the text. For example, `"Comment = great"` returns messages with
  /// `great` in the comment field. * A number field value can be written as an
  /// integer, a decimal, or an exponential. The valid relational operators for
  /// number fields are the equality operator (`=`), along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * A date field value must be written in
  /// `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
  /// Leading zeros are required for one-digit months and days. The valid
  /// relational operators for date fields are the equality operator (`=`) ,
  /// along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
  /// Note that there is no inequality (`!=`) operator. You can prepend the
  /// `NOT` operator to an expression to negate it. * Multiple field query
  /// expressions can be combined in one query by adding `AND` or `OR` operators
  /// between the expressions. If a boolean operator appears within a quoted
  /// string, it is not treated as special, it's just another part of the
  /// character string to be matched. You can prepend the `NOT` operator to an
  /// expression to negate it. Fields available for filtering are: - user_id.
  /// For example, `filter='user_id="user123"'`. - consent_artifact - state -
  /// revision_create_time - metadata. For example,
  /// `filter=Metadata(\"testkey\")=\"value\"` or
  /// `filter=HasMetadata(\"testkey\")`.
  ///
  /// [pageSize] - Optional. Limit on the number of revisions to return in a
  /// single response. If not specified, 100 is used. May not be larger than
  /// 1000.
  ///
  /// [pageToken] - Optional. Token to retrieve the next page of results or
  /// empty if there are no more results in the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConsentRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConsentRevisionsResponse> listRevisions(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':listRevisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConsentRevisionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the latest revision of the specified Consent by committing a new
  /// revision with the changes.
  ///
  /// A FAILED_PRECONDITION error occurs if the latest revision of the specified
  /// Consent is in the `REJECTED` or `REVOKED` state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the Consent, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  /// Cannot be changed after creation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consents/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask to apply to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  /// Only the `user_id`, `policies`, `consent_artifact`, and `metadata` fields
  /// can be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Consent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Consent> patch(
    Consent request,
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
    return Consent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rejects the latest revision of the specified Consent by committing a new
  /// revision with `state` updated to `REJECTED`.
  ///
  /// If the latest revision of the specified Consent is in the `REJECTED`
  /// state, no new revision is committed. A FAILED_PRECONDITION error occurs if
  /// the latest revision of the specified Consent is in the `ACTIVE` or
  /// `REVOKED` state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent to reject, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  /// An INVALID_ARGUMENT error occurs if `revision_id` is specified in the
  /// name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Consent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Consent> reject(
    RejectConsentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Consent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Revokes the latest revision of the specified Consent by committing a new
  /// revision with `state` updated to `REVOKED`.
  ///
  /// If the latest revision of the specified Consent is in the `REVOKED` state,
  /// no new revision is committed. A FAILED_PRECONDITION error occurs if the
  /// latest revision of the given consent is in `DRAFT` or `REJECTED` state.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Consent to revoke, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  /// An INVALID_ARGUMENT error occurs if `revision_id` is specified in the
  /// name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/consents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Consent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Consent> revoke(
    RevokeConsentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':revoke';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Consent.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsConsentStoresUserDataMappingsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsConsentStoresUserDataMappingsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Archives the specified User data mapping.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the User data mapping to archive.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/userDataMappings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ArchiveUserDataMappingResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ArchiveUserDataMappingResponse> archive(
    ArchiveUserDataMappingRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':archive';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ArchiveUserDataMappingResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new User data mapping in the parent consent store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the consent store.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserDataMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserDataMapping> create(
    UserDataMapping request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userDataMappings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UserDataMapping.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified User data mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the User data mapping to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/userDataMappings/\[^/\]+$`.
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

  /// Gets the specified User data mapping.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the User data mapping to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/userDataMappings/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserDataMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserDataMapping> get(
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
    return UserDataMapping.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the User data mappings in the specified consent store.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the consent store to retrieve User data
  /// mappings from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+$`.
  ///
  /// [filter] - Optional. Restricts the User data mappings returned to those
  /// matching a filter. The following syntax is available: * A string field
  /// value can be written as text inside quotation marks, for example `"query
  /// text"`. The only valid relational operation for text fields is equality
  /// (`=`), where text is searched within the field, rather than having the
  /// field be equal to the text. For example, `"Comment = great"` returns
  /// messages with `great` in the comment field. * A number field value can be
  /// written as an integer, a decimal, or an exponential. The valid relational
  /// operators for number fields are the equality operator (`=`), along with
  /// the less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that
  /// there is no inequality (`!=`) operator. You can prepend the `NOT` operator
  /// to an expression to negate it. * A date field value must be written in
  /// `yyyy-mm-dd` form. Fields with date and time use the RFC3339 time format.
  /// Leading zeros are required for one-digit months and days. The valid
  /// relational operators for date fields are the equality operator (`=`) ,
  /// along with the less than/greater than operators (`<`, `<=`, `>`, `>=`).
  /// Note that there is no inequality (`!=`) operator. You can prepend the
  /// `NOT` operator to an expression to negate it. * Multiple field query
  /// expressions can be combined in one query by adding `AND` or `OR` operators
  /// between the expressions. If a boolean operator appears within a quoted
  /// string, it is not treated as special, it's just another part of the
  /// character string to be matched. You can prepend the `NOT` operator to an
  /// expression to negate it. The fields available for filtering are: - data_id
  /// - user_id. For example, `filter=user_id=\"user123\"`. - archived -
  /// archive_time
  ///
  /// [pageSize] - Optional. Limit on the number of User data mappings to return
  /// in a single response. If not specified, 100 is used. May not be larger
  /// than 1000.
  ///
  /// [pageToken] - Optional. Token to retrieve the next page of results, or
  /// empty to get the first page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserDataMappingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserDataMappingsResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userDataMappings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListUserDataMappingsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified User data mapping.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the User data mapping, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/consentStores/\[^/\]+/userDataMappings/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The update mask that applies to the resource. For
  /// the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  /// Only the `data_id`, `user_id` and `resource_attributes` fields can be
  /// updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserDataMapping].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserDataMapping> patch(
    UserDataMapping request,
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
    return UserDataMapping.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresDicomWebResource get dicomWeb =>
      ProjectsLocationsDatasetsDicomStoresDicomWebResource(_requester);
  ProjectsLocationsDatasetsDicomStoresStudiesResource get studies =>
      ProjectsLocationsDatasetsDicomStoresStudiesResource(_requester);

  ProjectsLocationsDatasetsDicomStoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new DICOM store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this DICOM store belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [dicomStoreId] - The ID of the DICOM store that is being created. Any
  /// string value up to 256 characters in length.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DicomStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DicomStore> create(
    DicomStore request,
    core.String parent, {
    core.String? dicomStoreId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dicomStoreId != null) 'dicomStoreId': [dicomStoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dicomStores';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return DicomStore.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// De-identifies data from the source store and writes it to the destination
  /// store.
  ///
  /// The metadata field type is OperationMetadata. If the request is
  /// successful, the response field type is DeidentifyDicomStoreSummary. If
  /// errors occur, error is set. The LRO result may still be successful if
  /// de-identification fails for some DICOM instances. The output DICOM store
  /// will not contain these failed resources. Failed resource totals are
  /// tracked in Operation.metadata. Error details are also logged to Cloud
  /// Logging (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceStore] - Source DICOM store resource name. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
  async.Future<Operation> deidentify(
    DeidentifyDicomStoreRequest request,
    core.String sourceStore, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$sourceStore') + ':deidentify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified DICOM store and removes all images that are
  /// contained within it.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the DICOM store to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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

  /// Exports data to the specified destination by copying it from the DICOM
  /// store.
  ///
  /// Errors are also logged to Cloud Logging. For more information, see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).
  /// The metadata field type is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The DICOM store resource name from which to export the data. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
  async.Future<Operation> export(
    ExportDicomDataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified DICOM store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the DICOM store to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DicomStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DicomStore> get(
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
    return DicomStore.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metrics associated with the DICOM store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the DICOM store to get metrics for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DicomStoreMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DicomStoreMetrics> getDICOMStoreMetrics(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getDICOMStoreMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DicomStoreMetrics.fromJson(
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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

  /// Imports data into the DICOM store by copying it from the specified source.
  ///
  /// Errors are logged to Cloud Logging. For more information, see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging).
  /// The metadata field type is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the DICOM store resource into which the data is
  /// imported. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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
  async.Future<Operation> import(
    ImportDicomDataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the DICOM stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Restricts stores returned to those matching a filter. The
  /// following syntax is available: * A string field value can be written as
  /// text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in `yyyy-mm-dd` form.
  /// Fields with date and time use the RFC3339 time format. Leading zeros are
  /// required for one-digit months and days. The valid relational operators for
  /// date fields are the equality operator (`=`) , along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, it's just another part of the character string to
  /// be matched. You can prepend the `NOT` operator to an expression to negate
  /// it. Only filtering on labels is supported. For example,
  /// `labels.key=value`.
  ///
  /// [pageSize] - Limit on the number of DICOM stores to return in a single
  /// response. If not specified, 100 is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDicomStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDicomStoresResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dicomStores';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDicomStoresResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified DICOM store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the DICOM store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DicomStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DicomStore> patch(
    DicomStore request,
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
    return DicomStore.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// SearchForInstances returns a list of matching instances.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForInstances, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForInstances, see
  /// [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request. For example, `instances`, `series/{series_uid}/instances`, or
  /// `studies/{study_uid}/instances`.
  /// Value must have pattern `^instances$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForInstances(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// SearchForSeries returns a list of matching series.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForSeries, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForSeries, see
  /// [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForSeries DICOMweb request. For
  /// example, `series` or `studies/{study_uid}/series`.
  /// Value must have pattern `^series$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForSeries(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// SearchForStudies returns a list of matching studies.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForStudies, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForStudies, see
  /// [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForStudies DICOMweb request. For
  /// example, `studies`.
  /// Value must have pattern `^studies$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForStudies(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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

  /// StoreInstances stores DICOM instances associated with study instance
  /// unique identifiers (SUID).
  ///
  /// See
  /// [Store Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5).
  /// For details on the implementation of StoreInstances, see
  /// [Store transaction](https://cloud.google.com/healthcare/docs/dicom#store_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call StoreInstances, see
  /// [Store DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#store-dicom).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the StoreInstances DICOMweb request. For
  /// example, `studies/[{study_uid}]`. Note that the `study_uid` is optional.
  /// Value must have pattern `^studies$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> storeInstances(
    HttpBody request,
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
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

class ProjectsLocationsDatasetsDicomStoresDicomWebResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresDicomWebStudiesResource get studies =>
      ProjectsLocationsDatasetsDicomStoresDicomWebStudiesResource(_requester);

  ProjectsLocationsDatasetsDicomStoresDicomWebResource(
      commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsDatasetsDicomStoresDicomWebStudiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesResource
      get series =>
          ProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesResource(
              _requester);

  ProjectsLocationsDatasetsDicomStoresDicomWebStudiesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// GetStudyMetrics returns metrics for a study.
  ///
  /// Request parameters:
  ///
  /// [study] - The study resource path. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}/dicomWeb/studies/{study_uid}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+/dicomWeb/studies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StudyMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StudyMetrics> getStudyMetrics(
    core.String study, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$study') + ':getStudyMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return StudyMetrics.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresDicomWebStudiesSeriesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// GetSeriesMetrics returns metrics for a series.
  ///
  /// Request parameters:
  ///
  /// [series] - The series resource path. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}/dicomWeb/studies/{study_uid}/series/{series_uid}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+/dicomWeb/studies/\[^/\]+/series/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SeriesMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SeriesMetrics> getSeriesMetrics(
    core.String series, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$series') + ':getSeriesMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SeriesMetrics.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource get series =>
      ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource(_requester);

  ProjectsLocationsDatasetsDicomStoresStudiesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteStudy deletes all instances within the given study.
  ///
  /// Delete requests are equivalent to the GET requests specified in the
  /// Retrieve transaction. The method returns an Operation which will be marked
  /// successful when the deletion is complete. Warning: Instances cannot be
  /// inserted into a study that is being deleted by an operation until the
  /// operation completes. For samples that show how to call DeleteStudy, see
  /// [Delete a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#delete-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the DeleteStudy request. For example,
  /// `studies/{study_uid}`.
  /// Value must have pattern `^studies/\[^/\]+$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveStudyMetadata returns instance associated with the given study
  /// presented as metadata with the bulk data removed.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveStudyMetadata, see
  /// [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveStudyMetadata, see
  /// [Retrieve metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-metadata).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveStudyMetadata DICOMweb request.
  /// For example, `studies/{study_uid}/metadata`.
  /// Value must have pattern `^studies/\[^/\]+/metadata$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveMetadata(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveStudy returns all instances within the given study.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveStudy, see
  /// [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveStudy, see
  /// [Retrieve DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveStudy DICOMweb request. For
  /// example, `studies/{study_uid}`.
  /// Value must have pattern `^studies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveStudy(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// SearchForInstances returns a list of matching instances.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForInstances, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForInstances, see
  /// [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request. For example, `instances`, `series/{series_uid}/instances`, or
  /// `studies/{study_uid}/instances`.
  /// Value must have pattern `^studies/\[^/\]+/instances$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForInstances(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// SearchForSeries returns a list of matching series.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForSeries, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForSeries, see
  /// [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForSeries DICOMweb request. For
  /// example, `series` or `studies/{study_uid}/series`.
  /// Value must have pattern `^studies/\[^/\]+/series$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForSeries(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// StoreInstances stores DICOM instances associated with study instance
  /// unique identifiers (SUID).
  ///
  /// See
  /// [Store Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.5).
  /// For details on the implementation of StoreInstances, see
  /// [Store transaction](https://cloud.google.com/healthcare/docs/dicom#store_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call StoreInstances, see
  /// [Store DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#store-dicom).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the StoreInstances DICOMweb request. For
  /// example, `studies/[{study_uid}]`. Note that the `study_uid` is optional.
  /// Value must have pattern `^studies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> storeInstances(
    HttpBody request,
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource
      get instances =>
          ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource(
              _requester);

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteSeries deletes all instances within the given study and series.
  ///
  /// Delete requests are equivalent to the GET requests specified in the
  /// Retrieve transaction. The method returns an Operation which will be marked
  /// successful when the deletion is complete. Warning: Instances cannot be
  /// inserted into a series that is being deleted by an operation until the
  /// operation completes. For samples that show how to call DeleteSeries, see
  /// [Delete a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#delete-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the DeleteSeries request. For example,
  /// `studies/{study_uid}/series/{series_uid}`.
  /// Value must have pattern `^studies/\[^/\]+/series/\[^/\]+$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveSeriesMetadata returns instance associated with the given study
  /// and series, presented as metadata with the bulk data removed.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveSeriesMetadata, see
  /// [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveSeriesMetadata, see
  /// [Retrieve metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-metadata).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveSeriesMetadata DICOMweb request.
  /// For example, `studies/{study_uid}/series/{series_uid}/metadata`.
  /// Value must have pattern `^studies/\[^/\]+/series/\[^/\]+/metadata$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveMetadata(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveSeries returns all instances within the given study and series.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveSeries, see
  /// [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveSeries, see
  /// [Retrieve DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveSeries DICOMweb request. For
  /// example, `studies/{study_uid}/series/{series_uid}`.
  /// Value must have pattern `^studies/\[^/\]+/series/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveSeries(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// SearchForInstances returns a list of matching instances.
  ///
  /// See
  /// [Search Transaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.6).
  /// For details on the implementation of SearchForInstances, see
  /// [Search transaction](https://cloud.google.com/healthcare/docs/dicom#search_transaction)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call SearchForInstances, see
  /// [Search for DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#search-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the SearchForInstancesRequest DICOMweb
  /// request. For example, `instances`, `series/{series_uid}/instances`, or
  /// `studies/{study_uid}/instances`.
  /// Value must have pattern `^studies/\[^/\]+/series/\[^/\]+/instances$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchForInstances(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource
      get frames =>
          ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource(
              _requester);

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// DeleteInstance deletes an instance associated with the given study,
  /// series, and SOP Instance UID.
  ///
  /// Delete requests are equivalent to the GET requests specified in the
  /// Retrieve transaction. Study and series search results can take a few
  /// seconds to be updated after an instance is deleted using DeleteInstance.
  /// For samples that show how to call DeleteInstance, see
  /// [Delete a study, series, or instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#delete-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the DeleteInstance request. For example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+$`.
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
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveInstance returns instance associated with the given study, series,
  /// and SOP Instance UID.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveInstance, see
  /// [DICOM study/series/instances](https://cloud.google.com/healthcare/docs/dicom#dicom_studyseriesinstances)
  /// and
  /// [DICOM instances](https://cloud.google.com/healthcare/docs/dicom#dicom_instances)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveInstance, see
  /// [Retrieve an instance](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-instance).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveInstance DICOMweb request. For
  /// example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveInstance(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveInstanceMetadata returns instance associated with the given study,
  /// series, and SOP Instance UID presented as metadata with the bulk data
  /// removed.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveInstanceMetadata, see
  /// [Metadata resources](https://cloud.google.com/healthcare/docs/dicom#metadata_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveInstanceMetadata, see
  /// [Retrieve metadata](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-metadata).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveInstanceMetadata DICOMweb
  /// request. For example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/metadata`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+/metadata$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveMetadata(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveRenderedInstance returns instance associated with the given study,
  /// series, and SOP Instance UID in an acceptable Rendered Media Type.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveRenderedInstance, see
  /// [Rendered resources](https://cloud.google.com/healthcare/docs/dicom#rendered_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveRenderedInstance, see
  /// [Retrieve consumer image formats](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-consumer).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveRenderedInstance DICOMweb
  /// request. For example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/rendered`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+/rendered$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveRendered(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsDicomStoresStudiesSeriesInstancesFramesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// RetrieveFrames returns instances associated with the given study, series,
  /// SOP Instance UID and frame numbers.
  ///
  /// See
  /// \[RetrieveTransaction\](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4}.
  /// For details on the implementation of RetrieveFrames, see
  /// [DICOM frames](https://cloud.google.com/healthcare/docs/dicom#dicom_frames)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveFrames, see
  /// [Retrieve DICOM data](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-dicom).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveFrames DICOMweb request. For
  /// example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/frames/{frame_list}`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+/frames/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveFrames(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// RetrieveRenderedFrames returns instances associated with the given study,
  /// series, SOP Instance UID and frame numbers in an acceptable Rendered Media
  /// Type.
  ///
  /// See
  /// [RetrieveTransaction](http://dicom.nema.org/medical/dicom/current/output/html/part18.html#sect_10.4).
  /// For details on the implementation of RetrieveRenderedFrames, see
  /// [Rendered resources](https://cloud.google.com/healthcare/docs/dicom#rendered_resources)
  /// in the Cloud Healthcare API conformance statement. For samples that show
  /// how to call RetrieveRenderedFrames, see
  /// [Retrieve consumer image formats](https://cloud.google.com/healthcare/docs/how-tos/dicomweb#retrieve-consumer).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the DICOM store that is being accessed. For
  /// example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/dicomStores/\[^/\]+$`.
  ///
  /// [dicomWebPath] - The path of the RetrieveRenderedFrames DICOMweb request.
  /// For example,
  /// `studies/{study_uid}/series/{series_uid}/instances/{instance_uid}/frames/{frame_list}/rendered`.
  /// Value must have pattern
  /// `^studies/\[^/\]+/series/\[^/\]+/instances/\[^/\]+/frames/\[^/\]+/rendered$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> retrieveRendered(
    core.String parent,
    core.String dicomWebPath, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/dicomWeb/' +
        core.Uri.encodeFull('$dicomWebPath');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsFhirStoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsFhirStoresFhirResource get fhir =>
      ProjectsLocationsDatasetsFhirStoresFhirResource(_requester);

  ProjectsLocationsDatasetsFhirStoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new FHIR store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this FHIR store belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [fhirStoreId] - The ID of the FHIR store that is being created. The string
  /// must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FhirStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FhirStore> create(
    FhirStore request,
    core.String parent, {
    core.String? fhirStoreId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (fhirStoreId != null) 'fhirStoreId': [fhirStoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fhirStores';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FhirStore.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// De-identifies data from the source store and writes it to the destination
  /// store.
  ///
  /// The metadata field type is OperationMetadata. If the request is
  /// successful, the response field type is DeidentifyFhirStoreSummary. If
  /// errors occur, error is set. Error details are also logged to Cloud Logging
  /// (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [sourceStore] - Source FHIR store resource name. For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
  async.Future<Operation> deidentify(
    DeidentifyFhirStoreRequest request,
    core.String sourceStore, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$sourceStore') + ':deidentify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified FHIR store and removes all resources within it.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FHIR store to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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

  /// Export resources from the FHIR store to the specified destination.
  ///
  /// This method returns an Operation that can be used to track the status of
  /// the export by calling GetOperation. Immediate fatal errors appear in the
  /// error field, errors are also logged to Cloud Logging (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  /// Otherwise, when the operation finishes, a detailed response of type
  /// ExportResourcesResponse is returned in the response field. The metadata
  /// field type for this operation is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the FHIR store to export resource from, in the format
  /// of
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
  async.Future<Operation> export(
    ExportResourcesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the configuration of the specified FHIR store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FHIR store to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FhirStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FhirStore> get(
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
    return FhirStore.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metrics associated with the FHIR store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the FHIR store to get metrics for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FhirStoreMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FhirStoreMetrics> getFHIRStoreMetrics(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getFHIRStoreMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FhirStoreMetrics.fromJson(
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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

  /// Imports resources to the FHIR store by loading data from the specified
  /// sources.
  ///
  /// This method is optimized to load large quantities of data using import
  /// semantics that ignore some FHIR store configuration options and are not
  /// suitable for all use cases. It is primarily intended to load data into an
  /// empty FHIR store that is not being used by other clients. In cases where
  /// this method is not appropriate, consider using ExecuteBundle to load data.
  /// Every resource in the input must contain a client-supplied ID. Each
  /// resource is stored using the supplied ID regardless of the
  /// enable_update_create setting on the FHIR store. It is strongly advised not
  /// to include or encode any sensitive data such as patient identifiers in
  /// client-specified resource IDs. Those IDs are part of the FHIR resource
  /// path recorded in Cloud Audit Logs and Cloud Pub/Sub notifications. Those
  /// IDs can also be contained in reference fields within other resources. The
  /// import process does not enforce referential integrity, regardless of the
  /// disable_referential_integrity setting on the FHIR store. This allows the
  /// import of resources with arbitrary interdependencies without considering
  /// grouping or ordering, but if the input data contains invalid references or
  /// if some resources fail to be imported, the FHIR store might be left in a
  /// state that violates referential integrity. The import process does not
  /// trigger Pub/Sub notification or BigQuery streaming update, regardless of
  /// how those are configured on the FHIR store. If a resource with the
  /// specified ID already exists, the most recent version of the resource is
  /// overwritten without creating a new historical version, regardless of the
  /// disable_resource_versioning setting on the FHIR store. If transient
  /// failures occur during the import, it's possible that successfully imported
  /// resources will be overwritten more than once. The import operation is
  /// idempotent unless the input data contains multiple valid resources with
  /// the same ID but different contents. In that case, after the import
  /// completes, the store contains exactly one resource with that ID but there
  /// is no ordering guarantee on which version of the contents it will have.
  /// The operation result counters do not count duplicate IDs as an error and
  /// count one success for each resource in the input, which might result in a
  /// success count larger than the number of resources in the FHIR store. This
  /// often occurs when importing data organized in bundles produced by
  /// Patient-everything where each bundle contains its own copy of a resource
  /// such as Practitioner that might be referred to by many patients. If some
  /// resources fail to import, for example due to parsing errors, successfully
  /// imported resources are not rolled back. The location and format of the
  /// input data is specified by the parameters in ImportResourcesRequest. Note
  /// that if no format is specified, this method assumes the `BUNDLE` format.
  /// When using the `BUNDLE` format this method ignores the `Bundle.type`
  /// field, except that `history` bundles are rejected, and does not apply any
  /// of the bundle processing semantics for batch or transaction bundles.
  /// Unlike in ExecuteBundle, transaction bundles are not executed as a single
  /// transaction and bundle-internal references are not rewritten. The bundle
  /// is treated as a collection of resources to be written as provided in
  /// `Bundle.entry.resource`, ignoring `Bundle.entry.request`. As an example,
  /// this allows the import of `searchset` bundles produced by a FHIR search or
  /// Patient-everything operation. This method returns an Operation that can be
  /// used to track the status of the import by calling GetOperation. Immediate
  /// fatal errors appear in the error field, errors are also logged to Cloud
  /// Logging (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  /// Otherwise, when the operation finishes, a detailed response of type
  /// ImportResourcesResponse is returned in the response field. The metadata
  /// field type for this operation is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the FHIR store to import FHIR resources to, in the
  /// format of
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
  async.Future<Operation> import(
    ImportResourcesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the FHIR stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Restricts stores returned to those matching a filter. The
  /// following syntax is available: * A string field value can be written as
  /// text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in `yyyy-mm-dd` form.
  /// Fields with date and time use the RFC3339 time format. Leading zeros are
  /// required for one-digit months and days. The valid relational operators for
  /// date fields are the equality operator (`=`) , along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, it's just another part of the character string to
  /// be matched. You can prepend the `NOT` operator to an expression to negate
  /// it. Only filtering on labels is supported, for example `labels.key=value`.
  ///
  /// [pageSize] - Limit on the number of FHIR stores to return in a single
  /// response. If not specified, 100 is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListFhirStoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListFhirStoresResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fhirStores';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListFhirStoresResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the configuration of the specified FHIR store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the FHIR store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FhirStore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FhirStore> patch(
    FhirStore request,
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
    return FhirStore.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
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

class ProjectsLocationsDatasetsFhirStoresFhirResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsFhirStoresFhirResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a Patient resource and resources related to that patient.
  ///
  /// Implements the FHIR extended operation Patient-everything
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/patient-operations.html#everything),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/patient-operations.html#everything),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/patient-operations.html#everything)).
  /// On success, the response body contains a JSON-encoded representation of a
  /// `Bundle` resource of type `searchset`, containing the results of the
  /// operation. Errors generated by the FHIR store contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead. The resources in scope for the
  /// response are: * The patient resource itself. * All the resources directly
  /// referenced by the patient resource. * Resources directly referencing the
  /// patient resource that meet the inclusion criteria. The inclusion criteria
  /// are based on the membership rules in the patient compartment definition
  /// ([DSTU2](http://hl7.org/fhir/DSTU2/compartment-patient.html),
  /// [STU3](http://www.hl7.org/fhir/stu3/compartmentdefinition-patient.html),
  /// [R4](http://hl7.org/fhir/R4/compartmentdefinition-patient.html)), which
  /// details the eligible resource types and referencing search parameters. For
  /// samples that show how to call `Patient-everything`, see
  /// [Getting all patient compartment resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_all_patient_compartment_resources).
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the `Patient` resource for which the information is
  /// required.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/Patient/\[^/\]+$`.
  ///
  /// [P_count] - Maximum number of resources in a page. If not specified, 100
  /// is used. May not be larger than 1000.
  ///
  /// [P_pageToken] - Used to retrieve the next or previous page of results when
  /// using pagination. Set `_page_token` to the value of _page_token set in
  /// next or previous page links' url. Next and previous page are returned in
  /// the response bundle's links field, where `link.relation` is "previous" or
  /// "next". Omit `_page_token` if no previous request has been made.
  ///
  /// [P_since] - If provided, only resources updated after this time are
  /// returned. The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For
  /// example, `2015-02-07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The
  /// time must be specified to the second and include a time zone.
  ///
  /// [P_type] - String of comma-delimited FHIR resource types. If provided,
  /// only resources of the specified resource type(s) are returned. Specifying
  /// multiple `_type` parameters isn't supported. For example, the result of
  /// `_type=Observation&_type=Encounter` is undefined. Use
  /// `_type=Observation,Encounter` instead.
  ///
  /// [end] - The response includes records prior to the end date. The date uses
  /// the format YYYY-MM-DD. If no end date is provided, all records subsequent
  /// to the start date are in scope.
  ///
  /// [start] - The response includes records subsequent to the start date. The
  /// date uses the format YYYY-MM-DD. If no start date is provided, all records
  /// prior to the end date are in scope.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> PatientEverything(
    core.String name, {
    core.int? P_count,
    core.String? P_pageToken,
    core.String? P_since,
    core.String? P_type,
    core.String? end,
    core.String? start,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (P_count != null) '_count': ['${P_count}'],
      if (P_pageToken != null) '_page_token': [P_pageToken],
      if (P_since != null) '_since': [P_since],
      if (P_type != null) '_type': [P_type],
      if (end != null) 'end': [end],
      if (start != null) 'start': [start],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/\$everything';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes all the historical versions of a resource (excluding the current
  /// version) from the FHIR store.
  ///
  /// To remove all versions of a resource, first delete the current version and
  /// then call this method. This is not a FHIR standard operation. For samples
  /// that show how to call `Resource-purge`, see
  /// [Deleting historical versions of a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#deleting_historical_versions_of_a_fhir_resource).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to purge.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
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
  async.Future<Empty> ResourcePurge(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/\$purge';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Validates an input FHIR resource's conformance to its profiles and the
  /// profiles configured on the FHIR store.
  ///
  /// Implements the FHIR extended operation $validate
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resource-operations.html#validate),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/resource-operations.html#validate),
  /// or
  /// [R4](http://hl7.org/implement/standards/fhir/R4/resource-operation-validate.html)).
  /// The request body must contain a JSON-encoded FHIR resource, and the
  /// request headers must contain `Content-Type: application/fhir+json`. The
  /// `Parameters` input syntax is not supported. The `profile` query parameter
  /// can be used to request that the resource only be validated against a
  /// specific profile. If a profile with the given URL cannot be found in the
  /// FHIR store then an error is returned. Errors generated by validation
  /// contain a JSON-encoded `OperationOutcome` resource describing the reason
  /// for the error. If the request cannot be mapped to a valid API method on a
  /// FHIR store, a generic GCP error might be returned instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store that holds the profiles being used
  /// for validation.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [type] - The FHIR resource type of the resource being validated. For a
  /// complete list, see the FHIR Resource Index
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html), or
  /// [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)). Must
  /// match the resource type in the provided content.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [profile] - The canonical URL of a profile that this resource should be
  /// validated against. For example, to validate a Patient resource against the
  /// US Core Patient profile this parameter would be
  /// `http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient`. A
  /// StructureDefinition with this canonical URL must exist in the FHIR store.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> ResourceValidate(
    HttpBody request,
    core.String parent,
    core.String type, {
    core.String? profile,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (profile != null) 'profile': [profile],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/fhir/' +
        core.Uri.encodeFull('$type') +
        '/\$validate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the FHIR capability statement
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/capabilitystatement.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/capabilitystatement.html)),
  /// or the
  /// [conformance statement](http://hl7.org/implement/standards/fhir/DSTU2/conformance.html)
  /// in the DSTU2 case for the store, which contains a description of
  /// functionality supported by the server.
  ///
  /// Implements the FHIR standard capabilities interaction
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#capabilities),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#capabilities)),
  /// or the
  /// [conformance interaction](http://hl7.org/implement/standards/fhir/DSTU2/http.html#conformance)
  /// in the DSTU2 case. On success, the response body contains a JSON-encoded
  /// representation of a `CapabilityStatement` resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the FHIR store to retrieve the capabilities for.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> capabilities(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/fhir/metadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a FHIR resource that match an identifier search query.
  ///
  /// Implements the FHIR standard conditional delete interaction, limited to
  /// searching by resource identifier. If multiple resources match, 412
  /// Precondition Failed error will be returned. Search term for identifier
  /// should be in the pattern `identifier=system|value` or `identifier=value` -
  /// similar to the `search` method on resources with a specific identifier.
  /// Note: Unless resource versioning is disabled by setting the
  /// disable_resource_versioning flag on the FHIR store, the deleted resource
  /// is moved to a history repository that can still be retrieved through vread
  /// and related methods, unless they are removed by the purge method. For
  /// samples that show how to call `conditionalDelete`, see
  /// [Conditionally deleting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#conditionally_deleting_a_fhir_resource).
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [type] - The FHIR resource type to delete, such as Patient or Observation.
  /// For a complete list, see the FHIR Resource Index
  /// ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](https://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](https://hl7.org/implement/standards/fhir/R4/resourcelist.html)).
  /// Value must have pattern `^\[^/\]+$`.
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
  async.Future<Empty> conditionalDelete(
    core.String parent,
    core.String type, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/fhir/' +
        core.Uri.encodeFull('$type');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// If a resource is found with the identifier specified in the query
  /// parameters, updates part of that resource by applying the operations
  /// specified in a [JSON Patch](http://jsonpatch.com/) document.
  ///
  /// Implements the FHIR standard conditional patch interaction, limited to
  /// searching by resource identifier. DSTU2 doesn't define a conditional patch
  /// method, but the server supports it in the same way it supports STU3.
  /// Search term for identifier should be in the pattern
  /// `identifier=system|value` or `identifier=value` - similar to the `search`
  /// method on resources with a specific identifier. If the search criteria
  /// identify more than one match, the request returns a `412 Precondition
  /// Failed` error. The request body must contain a JSON Patch document, and
  /// the request headers must contain `Content-Type:
  /// application/json-patch+json`. On success, the response body contains a
  /// JSON-encoded representation of the updated resource, including the
  /// server-assigned version ID. Errors generated by the FHIR store contain a
  /// JSON-encoded `OperationOutcome` resource describing the reason for the
  /// error. If the request cannot be mapped to a valid API method on a FHIR
  /// store, a generic GCP error might be returned instead. For samples that
  /// show how to call `conditionalPatch`, see
  /// [Conditionally patching a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#conditionally_patching_a_fhir_resource).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [type] - The FHIR resource type to update, such as Patient or Observation.
  /// For a complete list, see the FHIR Resource Index
  /// ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](https://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](https://hl7.org/implement/standards/fhir/R4/resourcelist.html)).
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> conditionalPatch(
    HttpBody request,
    core.String parent,
    core.String type, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/fhir/' +
        core.Uri.encodeFull('$type');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// If a resource is found with the identifier specified in the query
  /// parameters, updates the entire contents of that resource.
  ///
  /// Implements the FHIR standard conditional update interaction, limited to
  /// searching by resource identifier. Search term for identifier should be in
  /// the pattern `identifier=system|value` or `identifier=value` - similar to
  /// the `search` method on resources with a specific identifier. If the search
  /// criteria identify more than one match, the request returns a `412
  /// Precondition Failed` error. If the search criteria identify zero matches,
  /// and the supplied resource body contains an `id`, and the FHIR store has
  /// enable_update_create set, creates the resource with the client-specified
  /// ID. It is strongly advised not to include or encode any sensitive data
  /// such as patient identifiers in client-specified resource IDs. Those IDs
  /// are part of the FHIR resource path recorded in Cloud Audit Logs and
  /// Pub/Sub notifications. Those IDs can also be contained in reference fields
  /// within other resources. If the search criteria identify zero matches, and
  /// the supplied resource body does not contain an `id`, the resource is
  /// created with a server-assigned ID as per the create method. The request
  /// body must contain a JSON-encoded FHIR resource, and the request headers
  /// must contain `Content-Type: application/fhir+json`. On success, the
  /// response body contains a JSON-encoded representation of the updated
  /// resource, including the server-assigned version ID. Errors generated by
  /// the FHIR store contain a JSON-encoded `OperationOutcome` resource
  /// describing the reason for the error. If the request cannot be mapped to a
  /// valid API method on a FHIR store, a generic GCP error might be returned
  /// instead. For samples that show how to call `conditionalUpdate`, see
  /// [Conditionally updating a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#conditionally_updating_a_fhir_resource).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [type] - The FHIR resource type to update, such as Patient or Observation.
  /// For a complete list, see the FHIR Resource Index
  /// ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](https://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](https://hl7.org/implement/standards/fhir/R4/resourcelist.html)). Must
  /// match the resource type in the provided content.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> conditionalUpdate(
    HttpBody request,
    core.String parent,
    core.String type, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/fhir/' +
        core.Uri.encodeFull('$type');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a FHIR resource.
  ///
  /// Implements the FHIR standard create interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#create),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#create),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#create)), which
  /// creates a new resource with a server-assigned resource ID. Also supports
  /// the FHIR standard conditional create interaction
  /// ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#ccreate),
  /// [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#ccreate),
  /// [R4](https://hl7.org/implement/standards/fhir/R4/http.html#ccreate)),
  /// specified by supplying an `If-None-Exist` header containing a FHIR search
  /// query, limited to searching by resource identifier. If no resources match
  /// this search query, the server processes the create operation as normal.
  /// When using conditional create, the search term for identifier should be in
  /// the pattern `identifier=system|value` or `identifier=value` - similar to
  /// the `search` method on resources with a specific identifier. The request
  /// body must contain a JSON-encoded FHIR resource, and the request headers
  /// must contain `Content-Type: application/fhir+json`. On success, the
  /// response body contains a JSON-encoded representation of the resource as it
  /// was created on the server, including the server-assigned resource ID and
  /// version ID. Errors generated by the FHIR store contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead. For samples that show how to call
  /// `create`, see
  /// [Creating a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#creating_a_fhir_resource).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the FHIR store this resource belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [type] - The FHIR resource type to create, such as Patient or Observation.
  /// For a complete list, see the FHIR Resource Index
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)). Must
  /// match the resource type in the provided content.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> create(
    HttpBody request,
    core.String parent,
    core.String type, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/fhir/' +
        core.Uri.encodeFull('$type');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a FHIR resource.
  ///
  /// Implements the FHIR standard delete interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#delete),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#delete),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#delete)). Note:
  /// Unless resource versioning is disabled by setting the
  /// disable_resource_versioning flag on the FHIR store, the deleted resources
  /// will be moved to a history repository that can still be retrieved through
  /// vread and related methods, unless they are removed by the purge method.
  /// For samples that show how to call `delete`, see
  /// [Deleting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#deleting_a_fhir_resource).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> delete(
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
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Executes all the requests in the given Bundle.
  ///
  /// Implements the FHIR standard batch/transaction interaction
  /// ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#transaction),
  /// [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#transaction),
  /// [R4](https://hl7.org/implement/standards/fhir/R4/http.html#transaction)).
  /// Supports all interactions within a bundle, except search. This method
  /// accepts Bundles of type `batch` and `transaction`, processing them
  /// according to the batch processing rules
  /// ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.1),
  /// [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.1),
  /// [R4](https://hl7.org/implement/standards/fhir/R4/http.html#brules)) and
  /// transaction processing rules
  /// ([DSTU2](https://hl7.org/implement/standards/fhir/DSTU2/http.html#2.1.0.16.2),
  /// [STU3](https://hl7.org/implement/standards/fhir/STU3/http.html#2.21.0.17.2),
  /// [R4](https://hl7.org/implement/standards/fhir/R4/http.html#trules)). The
  /// request body must contain a JSON-encoded FHIR `Bundle` resource, and the
  /// request headers must contain `Content-Type: application/fhir+json`. For a
  /// batch bundle or a successful transaction, the response body contains a
  /// JSON-encoded representation of a `Bundle` resource of type
  /// `batch-response` or `transaction-response` containing one entry for each
  /// entry in the request, with the outcome of processing the entry. In the
  /// case of an error for a transaction bundle, the response body contains a
  /// JSON-encoded `OperationOutcome` resource describing the reason for the
  /// error. If the request cannot be mapped to a valid API method on a FHIR
  /// store, a generic GCP error might be returned instead. This method checks
  /// permissions for each request in the bundle. The `executeBundle` permission
  /// is required to call this method, but you must also grant sufficient
  /// permissions to execute the individual requests in the bundle. For example,
  /// if the bundle contains a request to create a FHIR resource, the caller
  /// must also have been granted the `healthcare.fhirResources.create`
  /// permission. You can use audit logs to view the permissions for
  /// `executeBundle` and each request in the bundle. For more information, see
  /// [Viewing Cloud Audit logs](https://cloud.google.com/healthcare-api/docs/how-tos/audit-logging).
  /// For samples that show how to call `executeBundle`, see
  /// [Managing FHIR resources using FHIR bundles](https://cloud.google.com/healthcare/docs/how-tos/fhir-bundles).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store in which this bundle will be executed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> executeBundle(
    HttpBody request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fhir';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the versions of a resource (including the current version and
  /// deleted versions) from the FHIR store.
  ///
  /// Implements the per-resource form of the FHIR standard history interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#history),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#history),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#history)). On
  /// success, the response body contains a JSON-encoded representation of a
  /// `Bundle` resource of type `history`, containing the version history sorted
  /// from most recent to oldest versions. Errors generated by the FHIR store
  /// contain a JSON-encoded `OperationOutcome` resource describing the reason
  /// for the error. If the request cannot be mapped to a valid API method on a
  /// FHIR store, a generic GCP error might be returned instead. For samples
  /// that show how to call `history`, see
  /// [Listing FHIR resource versions](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#listing_fhir_resource_versions).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
  ///
  /// [P_at] - Only include resource versions that were current at some point
  /// during the time period specified in the date time value. The date
  /// parameter format is yyyy-mm-ddThh:mm:ss\[Z|(+|-)hh:mm\] Clients may
  /// specify any of the following: * An entire year: `_at=2019` * An entire
  /// month: `_at=2019-01` * A specific day: `_at=2019-01-20` * A specific
  /// second: `_at=2018-12-31T23:59:58Z`
  ///
  /// [P_count] - The maximum number of search results on a page. If not
  /// specified, 100 is used. May not be larger than 1000.
  ///
  /// [P_pageToken] - Used to retrieve the first, previous, next, or last page
  /// of resource versions when using pagination. Value should be set to the
  /// value of `_page_token` set in next or previous page links' URLs. Next and
  /// previous page are returned in the response bundle's links field, where
  /// `link.relation` is "previous" or "next". Omit `_page_token` if no previous
  /// request has been made.
  ///
  /// [P_since] - Only include resource versions that were created at or after
  /// the given instant in time. The instant in time uses the format
  /// YYYY-MM-DDThh:mm:ss.sss+zz:zz (for example 2015-02-07T13:28:17.239+02:00
  /// or 2017-01-01T00:00:00Z). The time must be specified to the second and
  /// include a time zone.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> history(
    core.String name, {
    core.String? P_at,
    core.int? P_count,
    core.String? P_pageToken,
    core.String? P_since,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (P_at != null) '_at': [P_at],
      if (P_count != null) '_count': ['${P_count}'],
      if (P_pageToken != null) '_page_token': [P_pageToken],
      if (P_since != null) '_since': [P_since],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/_history';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates part of an existing resource by applying the operations specified
  /// in a [JSON Patch](http://jsonpatch.com/) document.
  ///
  /// Implements the FHIR standard patch interaction
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#patch),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#patch)). DSTU2
  /// doesn't define a patch method, but the server supports it in the same way
  /// it supports STU3. The request body must contain a JSON Patch document, and
  /// the request headers must contain `Content-Type:
  /// application/json-patch+json`. On success, the response body contains a
  /// JSON-encoded representation of the updated resource, including the
  /// server-assigned version ID. Errors generated by the FHIR store contain a
  /// JSON-encoded `OperationOutcome` resource describing the reason for the
  /// error. If the request cannot be mapped to a valid API method on a FHIR
  /// store, a generic GCP error might be returned instead. For samples that
  /// show how to call `patch`, see
  /// [Patching a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#patching_a_fhir_resource).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to update.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> patch(
    HttpBody request,
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
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the contents of a FHIR resource.
  ///
  /// Implements the FHIR standard read interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#read),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#read),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#read)). Also
  /// supports the FHIR standard conditional read interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#cread),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#cread),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#cread))
  /// specified by supplying an `If-Modified-Since` header with a date/time
  /// value or an `If-None-Match` header with an ETag value. On success, the
  /// response body contains a JSON-encoded representation of the resource.
  /// Errors generated by the FHIR store contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead. For samples that show how to call
  /// `read`, see
  /// [Getting a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#getting_a_fhir_resource).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> read(
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
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches for resources in the given FHIR store according to criteria
  /// specified as query parameters.
  ///
  /// Implements the FHIR standard search interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#search),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#search),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#search)) using
  /// the search semantics described in the FHIR Search specification
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/search.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/search.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/search.html)). Supports
  /// four methods of search defined by the specification: * `GET
  /// [base]?[parameters]` to search across all resources. * `GET
  /// [base]/[type]?[parameters]` to search resources of a specified type. *
  /// `POST [base]/_search?[parameters]` as an alternate form having the same
  /// semantics as the `GET` method across all resources. * `POST
  /// [base]/[type]/_search?[parameters]` as an alternate form having the same
  /// semantics as the `GET` method for the specified type. The `GET` and `POST`
  /// methods do not support compartment searches. The `POST` method does not
  /// support `application/x-www-form-urlencoded` search parameters. On success,
  /// the response body contains a JSON-encoded representation of a `Bundle`
  /// resource of type `searchset`, containing the results of the search. Errors
  /// generated by the FHIR store contain a JSON-encoded `OperationOutcome`
  /// resource describing the reason for the error. If the request cannot be
  /// mapped to a valid API method on a FHIR store, a generic GCP error might be
  /// returned instead. The server's capability statement, retrieved through
  /// capabilities, indicates what search parameters are supported on each FHIR
  /// resource. A list of all search parameters defined by the specification can
  /// be found in the FHIR Search Parameter Registry
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html)).
  /// FHIR search parameters for DSTU2 can be found on each resource's
  /// definition page. Supported search modifiers: `:missing`, `:exact`,
  /// `:contains`, `:text`, `:in`, `:not-in`, `:above`, `:below`, `:[type]`,
  /// `:not`, and `recurse` (DSTU2 and STU3) or `:iterate` (R4). Supported
  /// search result parameters: `_sort`, `_count`, `_include`, `_revinclude`,
  /// `_summary=text`, `_summary=data`, and `_elements`. The maximum number of
  /// search results returned defaults to 100, which can be overridden by the
  /// `_count` parameter up to a maximum limit of 1000. The server might return
  /// fewer resources than requested to prevent excessively large responses. If
  /// there are additional results, the returned `Bundle` contains a link of
  /// `relation` "next", which has a `_page_token` parameter for an opaque
  /// pagination token that can be used to retrieve the next page. Resources
  /// with a total size larger than 5MB or a field count larger than 50,000
  /// might not be fully searchable as the server might trim its generated
  /// search index in those cases. Note: FHIR resources are indexed
  /// asynchronously, so there might be a slight delay between the time a
  /// resource is created or changed, and the time when the change reflects in
  /// search results. The only exception is resource identifier data, which is
  /// indexed synchronously as a special index. As a result, searching using
  /// resource identifier is not subject to indexing delay. To use the special
  /// synchronous index, the search term for identifier should be in the pattern
  /// `identifier=[system]|[value]` or `identifier=[value]`, and any of the
  /// following search result parameters can be used: * `_count` * `_include` *
  /// `_revinclude` * `_summary` * `_elements` If your query contains any other
  /// search parameters, the standard asynchronous index will be used instead.
  /// Note that searching against the special index is optimized for resolving a
  /// small number of matches. The search isn't optimized if your identifier
  /// search criteria matches a large number (i.e. more than 2,000) of
  /// resources. For a search query that will match a large number of resources,
  /// you can avoiding using the special synchronous index by including an
  /// additional `_sort` parameter in your query. Use `_sort=-_lastUpdated` if
  /// you want to keep the default sorting order. Note: The special synchronous
  /// identifier index are currently disabled for DocumentReference and
  /// DocumentManifest searches. For samples and detailed information, see
  /// [Searching for FHIR resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-search)
  /// and
  /// [Advanced FHIR search features](https://cloud.google.com/healthcare/docs/how-tos/fhir-advanced-search).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store to retrieve resources from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> search(
    SearchResourcesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fhir/_search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches for resources in the given FHIR store according to criteria
  /// specified as query parameters.
  ///
  /// Implements the FHIR standard search interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#search),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#search),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#search)) using
  /// the search semantics described in the FHIR Search specification
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/search.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/search.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/search.html)). Supports
  /// four methods of search defined by the specification: * `GET
  /// [base]?[parameters]` to search across all resources. * `GET
  /// [base]/[type]?[parameters]` to search resources of a specified type. *
  /// `POST [base]/_search?[parameters]` as an alternate form having the same
  /// semantics as the `GET` method across all resources. * `POST
  /// [base]/[type]/_search?[parameters]` as an alternate form having the same
  /// semantics as the `GET` method for the specified type. The `GET` and `POST`
  /// methods do not support compartment searches. The `POST` method does not
  /// support `application/x-www-form-urlencoded` search parameters. On success,
  /// the response body contains a JSON-encoded representation of a `Bundle`
  /// resource of type `searchset`, containing the results of the search. Errors
  /// generated by the FHIR store contain a JSON-encoded `OperationOutcome`
  /// resource describing the reason for the error. If the request cannot be
  /// mapped to a valid API method on a FHIR store, a generic GCP error might be
  /// returned instead. The server's capability statement, retrieved through
  /// capabilities, indicates what search parameters are supported on each FHIR
  /// resource. A list of all search parameters defined by the specification can
  /// be found in the FHIR Search Parameter Registry
  /// ([STU3](http://hl7.org/implement/standards/fhir/STU3/searchparameter-registry.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/searchparameter-registry.html)).
  /// FHIR search parameters for DSTU2 can be found on each resource's
  /// definition page. Supported search modifiers: `:missing`, `:exact`,
  /// `:contains`, `:text`, `:in`, `:not-in`, `:above`, `:below`, `:[type]`,
  /// `:not`, and `recurse` (DSTU2 and STU3) or `:iterate` (R4). Supported
  /// search result parameters: `_sort`, `_count`, `_include`, `_revinclude`,
  /// `_summary=text`, `_summary=data`, and `_elements`. The maximum number of
  /// search results returned defaults to 100, which can be overridden by the
  /// `_count` parameter up to a maximum limit of 1000. The server might return
  /// fewer resources than requested to prevent excessively large responses. If
  /// there are additional results, the returned `Bundle` contains a link of
  /// `relation` "next", which has a `_page_token` parameter for an opaque
  /// pagination token that can be used to retrieve the next page. Resources
  /// with a total size larger than 5MB or a field count larger than 50,000
  /// might not be fully searchable as the server might trim its generated
  /// search index in those cases. Note: FHIR resources are indexed
  /// asynchronously, so there might be a slight delay between the time a
  /// resource is created or changed, and the time when the change reflects in
  /// search results. The only exception is resource identifier data, which is
  /// indexed synchronously as a special index. As a result, searching using
  /// resource identifier is not subject to indexing delay. To use the special
  /// synchronous index, the search term for identifier should be in the pattern
  /// `identifier=[system]|[value]` or `identifier=[value]`, and any of the
  /// following search result parameters can be used: * `_count` * `_include` *
  /// `_revinclude` * `_summary` * `_elements` If your query contains any other
  /// search parameters, the standard asynchronous index will be used instead.
  /// Note that searching against the special index is optimized for resolving a
  /// small number of matches. The search isn't optimized if your identifier
  /// search criteria matches a large number (i.e. more than 2,000) of
  /// resources. For a search query that will match a large number of resources,
  /// you can avoiding using the special synchronous index by including an
  /// additional `_sort` parameter in your query. Use `_sort=-_lastUpdated` if
  /// you want to keep the default sorting order. Note: The special synchronous
  /// identifier index are currently disabled for DocumentReference and
  /// DocumentManifest searches. For samples and detailed information, see
  /// [Searching for FHIR resources](https://cloud.google.com/healthcare/docs/how-tos/fhir-search)
  /// and
  /// [Advanced FHIR search features](https://cloud.google.com/healthcare/docs/how-tos/fhir-advanced-search).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the FHIR store to retrieve resources from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+$`.
  ///
  /// [resourceType] - The FHIR resource type to search, such as Patient or
  /// Observation. For a complete list, see the FHIR Resource Index
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> searchType(
    SearchResourcesRequest request,
    core.String parent,
    core.String resourceType, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/fhir/' +
        commons.escapeVariable('$resourceType') +
        '/_search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the entire contents of a resource.
  ///
  /// Implements the FHIR standard update interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#update),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#update),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#update)). If the
  /// specified resource does not exist and the FHIR store has
  /// enable_update_create set, creates the resource with the client-specified
  /// ID. It is strongly advised not to include or encode any sensitive data
  /// such as patient identifiers in client-specified resource IDs. Those IDs
  /// are part of the FHIR resource path recorded in Cloud Audit Logs and
  /// Pub/Sub notifications. Those IDs can also be contained in reference fields
  /// within other resources. The request body must contain a JSON-encoded FHIR
  /// resource, and the request headers must contain `Content-Type:
  /// application/fhir+json`. The resource must contain an `id` element having
  /// an identical value to the ID in the REST path of the request. On success,
  /// the response body contains a JSON-encoded representation of the updated
  /// resource, including the server-assigned version ID. Errors generated by
  /// the FHIR store contain a JSON-encoded `OperationOutcome` resource
  /// describing the reason for the error. If the request cannot be mapped to a
  /// valid API method on a FHIR store, a generic GCP error might be returned
  /// instead. For samples that show how to call `update`, see
  /// [Updating a FHIR resource](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#updating_a_fhir_resource).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource to update.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> update(
    HttpBody request,
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
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the contents of a version (current or historical) of a FHIR resource
  /// by version ID.
  ///
  /// Implements the FHIR standard vread interaction
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/http.html#vread),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/http.html#vread),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/http.html#vread)). On
  /// success, the response body contains a JSON-encoded representation of the
  /// resource. Errors generated by the FHIR store contain a JSON-encoded
  /// `OperationOutcome` resource describing the reason for the error. If the
  /// request cannot be mapped to a valid API method on a FHIR store, a generic
  /// GCP error might be returned instead. For samples that show how to call
  /// `vread`, see
  /// [Retrieving a FHIR resource version](https://cloud.google.com/healthcare/docs/how-tos/fhir-resources#retrieving_a_fhir_resource_version).
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the resource version to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/fhirStores/\[^/\]+/fhir/\[^/\]+/\[^/\]+/_history/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [HttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<HttpBody> vread(
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
    return HttpBody.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsHl7V2StoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsHl7V2StoresMessagesResource get messages =>
      ProjectsLocationsDatasetsHl7V2StoresMessagesResource(_requester);

  ProjectsLocationsDatasetsHl7V2StoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new HL7v2 store within the parent dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the dataset this HL7v2 store belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [hl7V2StoreId] - The ID of the HL7v2 store that is being created. The
  /// string must match the following regex: `[\p{L}\p{N}_\-\.]{1,256}`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hl7V2Store].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hl7V2Store> create(
    Hl7V2Store request,
    core.String parent, {
    core.String? hl7V2StoreId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (hl7V2StoreId != null) 'hl7V2StoreId': [hl7V2StoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hl7V2Stores';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Hl7V2Store.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified HL7v2 store and removes all messages that it
  /// contains.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 store to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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

  /// Exports the messages to a destination.
  ///
  /// To filter messages to be exported, define a filter using the start and end
  /// time, relative to the message generation time (MSH.7). This API returns an
  /// Operation that can be used to track the status of the job by calling
  /// GetOperation. Immediate fatal errors appear in the error field. Otherwise,
  /// when the operation finishes, a detailed response of type
  /// ExportMessagesResponse is returned in the response field. The metadata
  /// field type for this operation is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the source HL7v2 store, in the format
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7v2Stores/{hl7v2_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
  async.Future<Operation> export(
    ExportMessagesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified HL7v2 store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 store to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hl7V2Store].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hl7V2Store> get(
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
    return Hl7V2Store.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets metrics associated with the HL7v2 store.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 store to get metrics for, in the
  /// format
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hl7V2StoreMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hl7V2StoreMetrics> getHL7v2StoreMetrics(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getHL7v2StoreMetrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Hl7V2StoreMetrics.fromJson(
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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

  /// Import messages to the HL7v2 store by loading data from the specified
  /// sources.
  ///
  /// This method is optimized to load large quantities of data using import
  /// semantics that ignore some HL7v2 store configuration options and are not
  /// suitable for all use cases. It is primarily intended to load data into an
  /// empty HL7v2 store that is not being used by other clients. An existing
  /// message will be overwritten if a duplicate message is imported. A
  /// duplicate message is a message with the same raw bytes as a message that
  /// already exists in this HL7v2 store. When a message is overwritten, its
  /// labels will also be overwritten. The import operation is idempotent unless
  /// the input data contains multiple valid messages with the same raw bytes
  /// but different labels. In that case, after the import completes, the store
  /// contains exactly one message with those raw bytes but there is no ordering
  /// guarantee on which version of the labels it has. The operation result
  /// counters do not count duplicated raw bytes as an error and count one
  /// success for each message in the input, which might result in a success
  /// count larger than the number of messages in the HL7v2 store. If some
  /// messages fail to import, for example due to parsing errors, successfully
  /// imported messages are not rolled back. This method returns an Operation
  /// that can be used to track the status of the import by calling
  /// GetOperation. Immediate fatal errors appear in the error field, errors are
  /// also logged to Cloud Logging (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  /// Otherwise, when the operation finishes, a response of type
  /// ImportMessagesResponse is returned in the response field. The metadata
  /// field type for this operation is OperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the target HL7v2 store, in the format
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7v2Stores/{hl7v2_store_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
  async.Future<Operation> import(
    ImportMessagesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the HL7v2 stores in the given dataset.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the dataset.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
  ///
  /// [filter] - Restricts stores returned to those matching a filter. The
  /// following syntax is available: * A string field value can be written as
  /// text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in `yyyy-mm-dd` form.
  /// Fields with date and time use the RFC3339 time format. Leading zeros are
  /// required for one-digit months and days. The valid relational operators for
  /// date fields are the equality operator (`=`) , along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, it's just another part of the character string to
  /// be matched. You can prepend the `NOT` operator to an expression to negate
  /// it. Only filtering on labels is supported. For example,
  /// `labels.key=value`.
  ///
  /// [pageSize] - Limit on the number of HL7v2 stores to return in a single
  /// response. If not specified, 100 is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListHl7V2StoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListHl7V2StoresResponse> list(
    core.String parent, {
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/hl7V2Stores';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListHl7V2StoresResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the HL7v2 store.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the HL7v2 store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Hl7V2Store].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Hl7V2Store> patch(
    Hl7V2Store request,
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
    return Hl7V2Store.fromJson(
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
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

class ProjectsLocationsDatasetsHl7V2StoresMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsHl7V2StoresMessagesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Parses and stores an HL7v2 message.
  ///
  /// This method triggers an asynchronous notification to any Pub/Sub topic
  /// configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches
  /// the message. If an MLLP adapter is configured to listen to a Pub/Sub
  /// topic, the adapter transmits the message when a notification is received.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the HL7v2 store this message belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> create(
    CreateMessageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/messages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an HL7v2 message.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 message to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+/messages/\[^/\]+$`.
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

  /// Gets an HL7v2 message.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the HL7v2 message to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [view] - Specifies which parts of the Message resource to return in the
  /// response. When unspecified, equivalent to FULL.
  /// Possible string values are:
  /// - "MESSAGE_VIEW_UNSPECIFIED" : Not specified, equivalent to FULL.
  /// - "RAW_ONLY" : Server responses include all the message fields except
  /// parsed_data field, and schematized_data fields.
  /// - "PARSED_ONLY" : Server responses include all the message fields except
  /// data field, and schematized_data fields.
  /// - "FULL" : Server responses include all the message fields.
  /// - "SCHEMATIZED_ONLY" : Server responses include all the message fields
  /// except data and parsed_data fields.
  /// - "BASIC" : Server responses include only the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> get(
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
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Parses and stores an HL7v2 message.
  ///
  /// This method triggers an asynchronous notification to any Pub/Sub topic
  /// configured in Hl7V2Store.Hl7V2NotificationConfig, if the filtering matches
  /// the message. If an MLLP adapter is configured to listen to a Pub/Sub
  /// topic, the adapter transmits the message when a notification is received.
  /// If the method is successful, it generates a response containing an HL7v2
  /// acknowledgment (`ACK`) message. If the method encounters an error, it
  /// returns a negative acknowledgment (`NACK`) message. This behavior is
  /// suitable for replying to HL7v2 interface systems that expect these
  /// acknowledgments.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the HL7v2 store this message belongs to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IngestMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IngestMessageResponse> ingest(
    IngestMessageRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/messages:ingest';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return IngestMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the messages in the given HL7v2 store with support for
  /// filtering.
  ///
  /// Note: HL7v2 messages are indexed asynchronously, so there might be a
  /// slight delay between the time a message is created and when it can be
  /// found through a filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Name of the HL7v2 store to retrieve messages from.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+$`.
  ///
  /// [filter] - Restricts messages returned to those matching a filter. The
  /// following syntax is available: * A string field value can be written as
  /// text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in `yyyy-mm-dd` form.
  /// Fields with date and time use the RFC3339 time format. Leading zeros are
  /// required for one-digit months and days. The valid relational operators for
  /// date fields are the equality operator (`=`) , along with the less
  /// than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there is no
  /// inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, it's just another part of the character string to
  /// be matched. You can prepend the `NOT` operator to an expression to negate
  /// it. Fields/functions available for filtering are: * `message_type`, from
  /// the MSH-9.1 field. For example, `NOT message_type = "ADT"`. * `send_date`
  /// or `sendDate`, the YYYY-MM-DD date the message was sent in the dataset's
  /// time_zone, from the MSH-7 segment. For example, `send_date <
  /// "2017-01-02"`. * `send_time`, the timestamp when the message was sent,
  /// using the RFC3339 time format for comparisons, from the MSH-7 segment. For
  /// example, `send_time < "2017-01-02T00:00:00-05:00"`. * `create_time`, the
  /// timestamp when the message was created in the HL7v2 store. Use the RFC3339
  /// time format for comparisons. For example, `create_time <
  /// "2017-01-02T00:00:00-05:00"`. * `send_facility`, the care center that the
  /// message came from, from the MSH-4 segment. For example, `send_facility =
  /// "ABC"`. * `PatientId(value, type)`, which matches if the message lists a
  /// patient having an ID of the given value and type in the PID-2, PID-3, or
  /// PID-4 segments. For example, `PatientId("123456", "MRN")`. * `labels.x`, a
  /// string value of the label with key `x` as set using the Message.labels
  /// map. For example, `labels."priority"="high"`. The operator `:*` can be
  /// used to assert the existence of a label. For example,
  /// `labels."priority":*`.
  ///
  /// [orderBy] - Orders messages returned by the specified order_by clause.
  /// Syntax: https://cloud.google.com/apis/design/design_patterns#sorting_order
  /// Fields available for ordering are: * `send_time`
  ///
  /// [pageSize] - Limit on the number of messages to return in a single
  /// response. If not specified, 100 is used. May not be larger than 1000.
  ///
  /// [pageToken] - The next_page_token value returned from the previous List
  /// request, if any.
  ///
  /// [view] - Specifies the parts of the Message to return in the response.
  /// When unspecified, equivalent to BASIC. Setting this to anything other than
  /// BASIC with a `page_size` larger than the default can generate a large
  /// response, which impacts the performance of this method.
  /// Possible string values are:
  /// - "MESSAGE_VIEW_UNSPECIFIED" : Not specified, equivalent to FULL.
  /// - "RAW_ONLY" : Server responses include all the message fields except
  /// parsed_data field, and schematized_data fields.
  /// - "PARSED_ONLY" : Server responses include all the message fields except
  /// data field, and schematized_data fields.
  /// - "FULL" : Server responses include all the message fields.
  /// - "SCHEMATIZED_ONLY" : Server responses include all the message fields
  /// except data and parsed_data fields.
  /// - "BASIC" : Server responses include only the name field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMessagesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/messages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMessagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the message.
  ///
  /// The contents of the message in Message.data and data extracted from the
  /// contents such as Message.create_time cannot be altered. Only the
  /// Message.labels field is allowed to be updated. The labels in the request
  /// are merged with the existing set of labels. Existing labels with the same
  /// keys are updated.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name of the Message, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`.
  /// Assigned by the server.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/hl7V2Stores/\[^/\]+/messages/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask applies to the resource. For the
  /// `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Message].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Message> patch(
    Message request,
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
    return Message.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDatasetsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatasetsOperationsResource(commons.ApiRequester client)
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/operations/\[^/\]+$`.
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+/operations/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/datasets/\[^/\]+$`.
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

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesNlpResource get nlp =>
      ProjectsLocationsServicesNlpResource(_requester);

  ProjectsLocationsServicesResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsServicesNlpResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesNlpResource(commons.ApiRequester client)
      : _requester = client;

  /// Analyze heathcare entity in a document.
  ///
  /// Its response includes the recognized entity mentions and the relationships
  /// between them. AnalyzeEntities uses context aware models to detect
  /// entities.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [nlpService] - The resource name of the service of the form:
  /// "projects/{project_id}/locations/{location_id}/services/nlp".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/nlp$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AnalyzeEntitiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AnalyzeEntitiesResponse> analyzeEntities(
    AnalyzeEntitiesRequest request,
    core.String nlpService, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$nlpService') + ':analyzeEntities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return AnalyzeEntitiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Activates the latest revision of the specified Consent by committing a new
/// revision with `state` updated to `ACTIVE`.
///
/// If the latest revision of the given Consent is in the `ACTIVE` state, no new
/// revision is committed. A FAILED_PRECONDITION error occurs if the latest
/// revision of the given consent is in the `REJECTED` or `REVOKED` state.
class ActivateConsentRequest {
  /// The resource name of the Consent artifact that contains documentation of
  /// the user's consent, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  ///
  /// If the draft Consent had a Consent artifact, this Consent artifact
  /// overwrites it.
  ///
  /// Required.
  core.String? consentArtifact;

  /// Timestamp in UTC of when this Consent is considered expired.
  core.String? expireTime;

  /// The time to live for this Consent from when it is marked as active.
  core.String? ttl;

  ActivateConsentRequest({
    this.consentArtifact,
    this.expireTime,
    this.ttl,
  });

  ActivateConsentRequest.fromJson(core.Map json_)
      : this(
          consentArtifact: json_.containsKey('consentArtifact')
              ? json_['consentArtifact'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentArtifact != null) 'consentArtifact': consentArtifact!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// The request to analyze healthcare entities in a document.
class AnalyzeEntitiesRequest {
  /// Alternative output format to be generated based on the results of
  /// analysis.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ALTERNATIVE_OUTPUT_FORMAT_UNSPECIFIED" : No alternative output format
  /// is specified.
  /// - "FHIR_BUNDLE" : FHIR bundle output.
  core.String? alternativeOutputFormat;

  /// document_content is a document to be annotated.
  core.String? documentContent;

  /// A list of licensed vocabularies to use in the request, in addition to the
  /// default unlicensed vocabularies.
  core.List<core.String>? licensedVocabularies;

  AnalyzeEntitiesRequest({
    this.alternativeOutputFormat,
    this.documentContent,
    this.licensedVocabularies,
  });

  AnalyzeEntitiesRequest.fromJson(core.Map json_)
      : this(
          alternativeOutputFormat: json_.containsKey('alternativeOutputFormat')
              ? json_['alternativeOutputFormat'] as core.String
              : null,
          documentContent: json_.containsKey('documentContent')
              ? json_['documentContent'] as core.String
              : null,
          licensedVocabularies: json_.containsKey('licensedVocabularies')
              ? (json_['licensedVocabularies'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternativeOutputFormat != null)
          'alternativeOutputFormat': alternativeOutputFormat!,
        if (documentContent != null) 'documentContent': documentContent!,
        if (licensedVocabularies != null)
          'licensedVocabularies': licensedVocabularies!,
      };
}

/// Includes recognized entity mentions and relationships between them.
class AnalyzeEntitiesResponse {
  /// The union of all the candidate entities that the entity_mentions in this
  /// response could link to.
  ///
  /// These are UMLS concepts or normalized mention content.
  core.List<Entity>? entities;

  /// The `entity_mentions` field contains all the annotated medical entities
  /// that were mentioned in the provided document.
  core.List<EntityMention>? entityMentions;

  /// The FHIR bundle (\[`R4`\](http://hl7.org/fhir/R4/bundle.html)) that
  /// includes all the entities, the entity mentions, and the relationships in
  /// JSON format.
  core.String? fhirBundle;

  /// relationships contains all the binary relationships that were identified
  /// between entity mentions within the provided document.
  core.List<EntityMentionRelationship>? relationships;

  AnalyzeEntitiesResponse({
    this.entities,
    this.entityMentions,
    this.fhirBundle,
    this.relationships,
  });

  AnalyzeEntitiesResponse.fromJson(core.Map json_)
      : this(
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) => Entity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityMentions: json_.containsKey('entityMentions')
              ? (json_['entityMentions'] as core.List)
                  .map((value) => EntityMention.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fhirBundle: json_.containsKey('fhirBundle')
              ? json_['fhirBundle'] as core.String
              : null,
          relationships: json_.containsKey('relationships')
              ? (json_['relationships'] as core.List)
                  .map((value) => EntityMentionRelationship.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (entityMentions != null) 'entityMentions': entityMentions!,
        if (fhirBundle != null) 'fhirBundle': fhirBundle!,
        if (relationships != null) 'relationships': relationships!,
      };
}

/// Archives the specified User data mapping.
typedef ArchiveUserDataMappingRequest = $Empty;

/// Archives the specified User data mapping.
typedef ArchiveUserDataMappingResponse = $Empty;

/// An attribute value for a Consent or User data mapping.
///
/// Each Attribute must have a corresponding AttributeDefinition in the consent
/// store that defines the default and allowed values.
class Attribute {
  /// Indicates the name of an attribute defined in the consent store.
  core.String? attributeDefinitionId;

  /// The value of the attribute.
  ///
  /// Must be an acceptable value as defined in the consent store. For example,
  /// if the consent store defines "data type" with acceptable values
  /// "questionnaire" and "step-count", when the attribute name is data type,
  /// this field must contain one of those values.
  ///
  /// Required.
  core.List<core.String>? values;

  Attribute({
    this.attributeDefinitionId,
    this.values,
  });

  Attribute.fromJson(core.Map json_)
      : this(
          attributeDefinitionId: json_.containsKey('attributeDefinitionId')
              ? json_['attributeDefinitionId'] as core.String
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeDefinitionId != null)
          'attributeDefinitionId': attributeDefinitionId!,
        if (values != null) 'values': values!,
      };
}

/// A client-defined consent attribute.
class AttributeDefinition {
  /// Possible values for the attribute.
  ///
  /// The number of allowed values must not exceed 500. An empty list is
  /// invalid. The list can only be expanded after creation.
  ///
  /// Required.
  core.List<core.String>? allowedValues;

  /// The category of the attribute.
  ///
  /// The value of this field cannot be changed after creation.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CATEGORY_UNSPECIFIED" : No category specified. This option is invalid.
  /// - "RESOURCE" : Specify this category when this attribute describes the
  /// properties of resources. For example, data anonymity or data type.
  /// - "REQUEST" : Specify this category when this attribute describes the
  /// properties of requests. For example, requester's role or requester's
  /// organization.
  core.String? category;

  /// Default values of the attribute in Consents.
  ///
  /// If no default values are specified, it defaults to an empty value.
  ///
  /// Optional.
  core.List<core.String>? consentDefaultValues;

  /// Default value of the attribute in User data mappings.
  ///
  /// If no default value is specified, it defaults to an empty value. This
  /// field is only applicable to attributes of the category `RESOURCE`.
  ///
  /// Optional.
  core.String? dataMappingDefaultValue;

  /// A description of the attribute.
  ///
  /// Optional.
  core.String? description;

  /// Resource name of the Attribute definition, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`.
  ///
  /// Cannot be changed after creation.
  core.String? name;

  AttributeDefinition({
    this.allowedValues,
    this.category,
    this.consentDefaultValues,
    this.dataMappingDefaultValue,
    this.description,
    this.name,
  });

  AttributeDefinition.fromJson(core.Map json_)
      : this(
          allowedValues: json_.containsKey('allowedValues')
              ? (json_['allowedValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          consentDefaultValues: json_.containsKey('consentDefaultValues')
              ? (json_['consentDefaultValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dataMappingDefaultValue: json_.containsKey('dataMappingDefaultValue')
              ? json_['dataMappingDefaultValue'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedValues != null) 'allowedValues': allowedValues!,
        if (category != null) 'category': category!,
        if (consentDefaultValues != null)
          'consentDefaultValues': consentDefaultValues!,
        if (dataMappingDefaultValue != null)
          'dataMappingDefaultValue': dataMappingDefaultValue!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Mask a string by replacing its characters with a fixed character.
class CharacterMaskConfig {
  /// Character to mask the sensitive values.
  ///
  /// If not supplied, defaults to "*".
  core.String? maskingCharacter;

  CharacterMaskConfig({
    this.maskingCharacter,
  });

  CharacterMaskConfig.fromJson(core.Map json_)
      : this(
          maskingCharacter: json_.containsKey('maskingCharacter')
              ? json_['maskingCharacter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maskingCharacter != null) 'maskingCharacter': maskingCharacter!,
      };
}

/// Checks if a particular data_id of a User data mapping in the given consent
/// store is consented for a given use.
class CheckDataAccessRequest {
  /// Specific Consents to evaluate the access request against.
  ///
  /// These Consents must have the same `user_id` as the evaluated User data
  /// mapping, must exist in the current `consent_store`, and have a `state` of
  /// either `ACTIVE` or `DRAFT`. A maximum of 100 Consents can be provided
  /// here. If no selection is specified, the access request is evaluated
  /// against all `ACTIVE` unexpired Consents with the same `user_id` as the
  /// evaluated User data mapping.
  ///
  /// Optional.
  ConsentList? consentList;

  /// The unique identifier of the resource to check access for.
  ///
  /// This identifier must correspond to a User data mapping in the given
  /// consent store.
  ///
  /// Required.
  core.String? dataId;

  /// The values of request attributes associated with this access request.
  core.Map<core.String, core.String>? requestAttributes;

  /// The view for CheckDataAccessResponse.
  ///
  /// If unspecified, defaults to `BASIC` and returns `consented` as `TRUE` or
  /// `FALSE`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RESPONSE_VIEW_UNSPECIFIED" : No response view specified. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Only the `consented` field is populated in
  /// CheckDataAccessResponse.
  /// - "FULL" : All fields within CheckDataAccessResponse are populated. When
  /// set to `FULL`, all `ACTIVE` Consents are evaluated even if a matching
  /// policy is found during evaluation.
  core.String? responseView;

  CheckDataAccessRequest({
    this.consentList,
    this.dataId,
    this.requestAttributes,
    this.responseView,
  });

  CheckDataAccessRequest.fromJson(core.Map json_)
      : this(
          consentList: json_.containsKey('consentList')
              ? ConsentList.fromJson(
                  json_['consentList'] as core.Map<core.String, core.dynamic>)
              : null,
          dataId: json_.containsKey('dataId')
              ? json_['dataId'] as core.String
              : null,
          requestAttributes: json_.containsKey('requestAttributes')
              ? (json_['requestAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          responseView: json_.containsKey('responseView')
              ? json_['responseView'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentList != null) 'consentList': consentList!,
        if (dataId != null) 'dataId': dataId!,
        if (requestAttributes != null) 'requestAttributes': requestAttributes!,
        if (responseView != null) 'responseView': responseView!,
      };
}

/// Checks if a particular data_id of a User data mapping in the given consent
/// store is consented for a given use.
class CheckDataAccessResponse {
  /// The resource names of all evaluated Consents mapped to their evaluation.
  core.Map<core.String, ConsentEvaluation>? consentDetails;

  /// Whether the requested resource is consented for the given use.
  core.bool? consented;

  CheckDataAccessResponse({
    this.consentDetails,
    this.consented,
  });

  CheckDataAccessResponse.fromJson(core.Map json_)
      : this(
          consentDetails: json_.containsKey('consentDetails')
              ? (json_['consentDetails'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    ConsentEvaluation.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          consented: json_.containsKey('consented')
              ? json_['consented'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentDetails != null) 'consentDetails': consentDetails!,
        if (consented != null) 'consented': consented!,
      };
}

/// Represents a user's consent.
class Consent {
  /// The resource name of the Consent artifact that contains proof of the end
  /// user's consent, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  ///
  /// Required.
  core.String? consentArtifact;

  /// Timestamp in UTC of when this Consent is considered expired.
  core.String? expireTime;

  /// User-supplied key-value pairs used to organize Consent resources.
  ///
  /// Metadata keys must: - be between 1 and 63 characters long - have a UTF-8
  /// encoding of maximum 128 bytes - begin with a letter - consist of up to 63
  /// characters including lowercase letters, numeric characters, underscores,
  /// and dashes Metadata values must be: - be between 1 and 63 characters long
  /// - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63
  /// characters including lowercase letters, numeric characters, underscores,
  /// and dashes No more than 64 metadata entries can be associated with a given
  /// consent.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// Resource name of the Consent, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  ///
  /// Cannot be changed after creation.
  core.String? name;

  /// Represents a user's consent in terms of the resources that can be accessed
  /// and under what conditions.
  ///
  /// Optional.
  core.List<GoogleCloudHealthcareV1ConsentPolicy>? policies;

  /// The timestamp that the revision was created.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The revision ID of the Consent.
  ///
  /// The format is an 8-character hexadecimal string. Refer to a specific
  /// revision of a Consent by appending `@{revision_id}` to the Consent's
  /// resource name.
  ///
  /// Output only.
  core.String? revisionId;

  /// Indicates the current state of this Consent.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : No state specified. Treated as ACTIVE only at the
  /// time of resource creation.
  /// - "ACTIVE" : The Consent is active and is considered when evaluating a
  /// user's consent on resources.
  /// - "ARCHIVED" : The archived state is currently not being used.
  /// - "REVOKED" : A revoked Consent is not considered when evaluating a user's
  /// consent on resources.
  /// - "DRAFT" : A draft Consent is not considered when evaluating a user's
  /// consent on resources unless explicitly specified.
  /// - "REJECTED" : When a draft Consent is rejected by a user, it is set to a
  /// rejected state. A rejected Consent is not considered when evaluating a
  /// user's consent on resources.
  core.String? state;

  /// Input only.
  ///
  /// The time to live for this Consent from when it is created.
  core.String? ttl;

  /// User's UUID provided by the client.
  ///
  /// Required.
  core.String? userId;

  Consent({
    this.consentArtifact,
    this.expireTime,
    this.metadata,
    this.name,
    this.policies,
    this.revisionCreateTime,
    this.revisionId,
    this.state,
    this.ttl,
    this.userId,
  });

  Consent.fromJson(core.Map json_)
      : this(
          consentArtifact: json_.containsKey('consentArtifact')
              ? json_['consentArtifact'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          policies: json_.containsKey('policies')
              ? (json_['policies'] as core.List)
                  .map((value) => GoogleCloudHealthcareV1ConsentPolicy.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisionCreateTime: json_.containsKey('revisionCreateTime')
              ? json_['revisionCreateTime'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentArtifact != null) 'consentArtifact': consentArtifact!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (policies != null) 'policies': policies!,
        if (revisionCreateTime != null)
          'revisionCreateTime': revisionCreateTime!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (state != null) 'state': state!,
        if (ttl != null) 'ttl': ttl!,
        if (userId != null) 'userId': userId!,
      };
}

/// Documentation of a user's consent.
class ConsentArtifact {
  /// Screenshots, PDFs, or other binary information documenting the user's
  /// consent.
  ///
  /// Optional.
  core.List<Image>? consentContentScreenshots;

  /// An string indicating the version of the consent information shown to the
  /// user.
  ///
  /// Optional.
  core.String? consentContentVersion;

  /// A signature from a guardian.
  ///
  /// Optional.
  Signature? guardianSignature;

  /// Metadata associated with the Consent artifact.
  ///
  /// For example, the consent locale or user agent version.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// Resource name of the Consent artifact, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  ///
  /// Cannot be changed after creation.
  core.String? name;

  /// User's UUID provided by the client.
  ///
  /// Required.
  core.String? userId;

  /// User's signature.
  ///
  /// Optional.
  Signature? userSignature;

  /// A signature from a witness.
  ///
  /// Optional.
  Signature? witnessSignature;

  ConsentArtifact({
    this.consentContentScreenshots,
    this.consentContentVersion,
    this.guardianSignature,
    this.metadata,
    this.name,
    this.userId,
    this.userSignature,
    this.witnessSignature,
  });

  ConsentArtifact.fromJson(core.Map json_)
      : this(
          consentContentScreenshots:
              json_.containsKey('consentContentScreenshots')
                  ? (json_['consentContentScreenshots'] as core.List)
                      .map((value) => Image.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          consentContentVersion: json_.containsKey('consentContentVersion')
              ? json_['consentContentVersion'] as core.String
              : null,
          guardianSignature: json_.containsKey('guardianSignature')
              ? Signature.fromJson(json_['guardianSignature']
                  as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
          userSignature: json_.containsKey('userSignature')
              ? Signature.fromJson(
                  json_['userSignature'] as core.Map<core.String, core.dynamic>)
              : null,
          witnessSignature: json_.containsKey('witnessSignature')
              ? Signature.fromJson(json_['witnessSignature']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentContentScreenshots != null)
          'consentContentScreenshots': consentContentScreenshots!,
        if (consentContentVersion != null)
          'consentContentVersion': consentContentVersion!,
        if (guardianSignature != null) 'guardianSignature': guardianSignature!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (userId != null) 'userId': userId!,
        if (userSignature != null) 'userSignature': userSignature!,
        if (witnessSignature != null) 'witnessSignature': witnessSignature!,
      };
}

/// The detailed evaluation of a particular Consent.
class ConsentEvaluation {
  /// The evaluation result.
  /// Possible string values are:
  /// - "EVALUATION_RESULT_UNSPECIFIED" : No evaluation result specified. This
  /// option is invalid.
  /// - "NOT_APPLICABLE" : The Consent is not applicable to the requested access
  /// determination. For example, the Consent does not apply to the user for
  /// which the access determination is requested, or it has a `state` of
  /// `REVOKED`, or it has expired.
  /// - "NO_MATCHING_POLICY" : The Consent does not have a policy that matches
  /// the `resource_attributes` of the evaluated resource.
  /// - "NO_SATISFIED_POLICY" : The Consent has at least one policy that matches
  /// the `resource_attributes` of the evaluated resource, but no
  /// `authorization_rule` was satisfied.
  /// - "HAS_SATISFIED_POLICY" : The Consent has at least one policy that
  /// matches the `resource_attributes` of the evaluated resource, and at least
  /// one `authorization_rule` was satisfied.
  core.String? evaluationResult;

  ConsentEvaluation({
    this.evaluationResult,
  });

  ConsentEvaluation.fromJson(core.Map json_)
      : this(
          evaluationResult: json_.containsKey('evaluationResult')
              ? json_['evaluationResult'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationResult != null) 'evaluationResult': evaluationResult!,
      };
}

/// List of resource names of Consent resources.
class ConsentList {
  /// The resource names of the Consents to evaluate against, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`.
  core.List<core.String>? consents;

  ConsentList({
    this.consents,
  });

  ConsentList.fromJson(core.Map json_)
      : this(
          consents: json_.containsKey('consents')
              ? (json_['consents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consents != null) 'consents': consents!,
      };
}

/// Represents a consent store.
class ConsentStore {
  /// Default time to live for Consents created in this store.
  ///
  /// Must be at least 24 hours. Updating this field will not affect the
  /// expiration time of existing consents.
  ///
  /// Optional.
  core.String? defaultConsentTtl;

  /// If `true`, UpdateConsent creates the Consent if it does not already exist.
  ///
  /// If unspecified, defaults to `false`.
  ///
  /// Optional.
  core.bool? enableConsentCreateOnUpdate;

  /// User-supplied key-value pairs used to organize consent stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62}. Label values must be between 1 and 63
  /// characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63}. No more than 64 labels can be associated
  /// with a given store. For more information:
  /// https://cloud.google.com/healthcare/docs/how-tos/labeling-resources
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Resource name of the consent store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}`.
  ///
  /// Cannot be changed after creation.
  core.String? name;

  ConsentStore({
    this.defaultConsentTtl,
    this.enableConsentCreateOnUpdate,
    this.labels,
    this.name,
  });

  ConsentStore.fromJson(core.Map json_)
      : this(
          defaultConsentTtl: json_.containsKey('defaultConsentTtl')
              ? json_['defaultConsentTtl'] as core.String
              : null,
          enableConsentCreateOnUpdate:
              json_.containsKey('enableConsentCreateOnUpdate')
                  ? json_['enableConsentCreateOnUpdate'] as core.bool
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
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultConsentTtl != null) 'defaultConsentTtl': defaultConsentTtl!,
        if (enableConsentCreateOnUpdate != null)
          'enableConsentCreateOnUpdate': enableConsentCreateOnUpdate!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
      };
}

/// Creates a new message.
class CreateMessageRequest {
  /// HL7v2 message.
  Message? message;

  CreateMessageRequest({
    this.message,
  });

  CreateMessageRequest.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
      };
}

/// Pseudonymization method that generates surrogates via cryptographic hashing.
///
/// Uses SHA-256. Outputs a base64-encoded representation of the hashed output
/// (for example, `L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=`).
class CryptoHashConfig {
  /// An AES 128/192/256 bit key.
  ///
  /// Causes the hash to be computed based on this key. A default key is
  /// generated for each Deidentify operation and is used when neither
  /// `crypto_key` nor `kms_wrapped` is specified. Must not be set if
  /// `kms_wrapped` is set.
  core.String? cryptoKey;
  core.List<core.int> get cryptoKeyAsBytes => convert.base64.decode(cryptoKey!);

  set cryptoKeyAsBytes(core.List<core.int> bytes_) {
    cryptoKey =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// KMS wrapped key.
  ///
  /// Must not be set if `crypto_key` is set.
  KmsWrappedCryptoKey? kmsWrapped;

  CryptoHashConfig({
    this.cryptoKey,
    this.kmsWrapped,
  });

  CryptoHashConfig.fromJson(core.Map json_)
      : this(
          cryptoKey: json_.containsKey('cryptoKey')
              ? json_['cryptoKey'] as core.String
              : null,
          kmsWrapped: json_.containsKey('kmsWrapped')
              ? KmsWrappedCryptoKey.fromJson(
                  json_['kmsWrapped'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cryptoKey != null) 'cryptoKey': cryptoKey!,
        if (kmsWrapped != null) 'kmsWrapped': kmsWrapped!,
      };
}

/// A message representing a health dataset.
///
/// A health dataset represents a collection of healthcare data pertaining to
/// one or more patients. This may include multiple modalities of healthcare
/// data, such as electronic medical records or medical imaging data.
class Dataset {
  /// Resource name of the dataset, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}`.
  core.String? name;

  /// The default timezone used by this dataset.
  ///
  /// Must be a either a valid IANA time zone name such as "America/New_York" or
  /// empty, which defaults to UTC. This is used for parsing times in resources,
  /// such as HL7 messages, where no explicit timezone is specified.
  core.String? timeZone;

  Dataset({
    this.name,
    this.timeZone,
  });

  Dataset.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Shift a date forward or backward in time by a random amount which is
/// consistent for a given patient and crypto key combination.
class DateShiftConfig {
  /// An AES 128/192/256 bit key.
  ///
  /// The date shift is computed based on this key and the patient ID. If the
  /// patient ID is empty for a DICOM resource, the date shift is computed based
  /// on this key and the study instance UID. If `crypto_key` is not set, then
  /// `kms_wrapped` is used to calculate the date shift. If neither is set, a
  /// default key is generated for each de-identify operation. Must not be set
  /// if `kms_wrapped` is set.
  core.String? cryptoKey;
  core.List<core.int> get cryptoKeyAsBytes => convert.base64.decode(cryptoKey!);

  set cryptoKeyAsBytes(core.List<core.int> bytes_) {
    cryptoKey =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// KMS wrapped key.
  ///
  /// If `kms_wrapped` is not set, then `crypto_key` is used to calculate the
  /// date shift. If neither is set, a default key is generated for each
  /// de-identify operation. Must not be set if `crypto_key` is set.
  KmsWrappedCryptoKey? kmsWrapped;

  DateShiftConfig({
    this.cryptoKey,
    this.kmsWrapped,
  });

  DateShiftConfig.fromJson(core.Map json_)
      : this(
          cryptoKey: json_.containsKey('cryptoKey')
              ? json_['cryptoKey'] as core.String
              : null,
          kmsWrapped: json_.containsKey('kmsWrapped')
              ? KmsWrappedCryptoKey.fromJson(
                  json_['kmsWrapped'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cryptoKey != null) 'cryptoKey': cryptoKey!,
        if (kmsWrapped != null) 'kmsWrapped': kmsWrapped!,
      };
}

/// Contains configuration for streaming de-identified FHIR export.
class DeidentifiedStoreDestination {
  /// The configuration to use when de-identifying resources that are added to
  /// this store.
  DeidentifyConfig? config;

  /// The full resource name of a Cloud Healthcare FHIR store, for example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  core.String? store;

  DeidentifiedStoreDestination({
    this.config,
    this.store,
  });

  DeidentifiedStoreDestination.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? DeidentifyConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          store:
              json_.containsKey('store') ? json_['store'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (store != null) 'store': store!,
      };
}

/// Configures de-id options specific to different types of content.
///
/// Each submessage customizes the handling of an
/// https://tools.ietf.org/html/rfc6838 media type or subtype. Configs are
/// applied in a nested manner at runtime.
class DeidentifyConfig {
  /// Configures de-id of application/DICOM content.
  DicomConfig? dicom;

  /// Configures de-id of application/FHIR content.
  FhirConfig? fhir;

  /// Configures de-identification of image pixels wherever they are found in
  /// the source_dataset.
  ImageConfig? image;

  /// Configures de-identification of text wherever it is found in the
  /// source_dataset.
  TextConfig? text;

  /// Ensures in-flight data remains in the region of origin during
  /// de-identification.
  ///
  /// Using this option results in a significant reduction of throughput, and is
  /// not compatible with `LOCATION` or `ORGANIZATION_NAME` infoTypes.
  /// `LOCATION` must be excluded within TextConfig, and must also be excluded
  /// within ImageConfig if image redaction is required.
  core.bool? useRegionalDataProcessing;

  DeidentifyConfig({
    this.dicom,
    this.fhir,
    this.image,
    this.text,
    this.useRegionalDataProcessing,
  });

  DeidentifyConfig.fromJson(core.Map json_)
      : this(
          dicom: json_.containsKey('dicom')
              ? DicomConfig.fromJson(
                  json_['dicom'] as core.Map<core.String, core.dynamic>)
              : null,
          fhir: json_.containsKey('fhir')
              ? FhirConfig.fromJson(
                  json_['fhir'] as core.Map<core.String, core.dynamic>)
              : null,
          image: json_.containsKey('image')
              ? ImageConfig.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? TextConfig.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
          useRegionalDataProcessing:
              json_.containsKey('useRegionalDataProcessing')
                  ? json_['useRegionalDataProcessing'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dicom != null) 'dicom': dicom!,
        if (fhir != null) 'fhir': fhir!,
        if (image != null) 'image': image!,
        if (text != null) 'text': text!,
        if (useRegionalDataProcessing != null)
          'useRegionalDataProcessing': useRegionalDataProcessing!,
      };
}

/// Redacts identifying information from the specified dataset.
class DeidentifyDatasetRequest {
  /// Deidentify configuration.
  ///
  /// Only one of `config` and `gcs_config_uri` can be specified.
  DeidentifyConfig? config;

  /// The name of the dataset resource to create and write the redacted data to.
  ///
  /// * The destination dataset must not exist. * The destination dataset must
  /// be in the same location as the source dataset. De-identifying data across
  /// multiple locations is not supported.
  core.String? destinationDataset;

  /// Cloud Storage location to read the JSON
  /// cloud.healthcare.deidentify.DeidentifyConfig from, overriding the default
  /// config.
  ///
  /// Must be of the form `gs://{bucket_id}/path/to/object`. The Cloud Storage
  /// location must grant the Cloud IAM role `roles/storage.objectViewer` to the
  /// project's Cloud Healthcare Service Agent service account. Only one of
  /// `config` and `gcs_config_uri` can be specified.
  core.String? gcsConfigUri;

  DeidentifyDatasetRequest({
    this.config,
    this.destinationDataset,
    this.gcsConfigUri,
  });

  DeidentifyDatasetRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? DeidentifyConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          destinationDataset: json_.containsKey('destinationDataset')
              ? json_['destinationDataset'] as core.String
              : null,
          gcsConfigUri: json_.containsKey('gcsConfigUri')
              ? json_['gcsConfigUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (destinationDataset != null)
          'destinationDataset': destinationDataset!,
        if (gcsConfigUri != null) 'gcsConfigUri': gcsConfigUri!,
      };
}

/// Creates a new DICOM store with sensitive information de-identified.
class DeidentifyDicomStoreRequest {
  /// Deidentify configuration.
  ///
  /// Only one of `config` and `gcs_config_uri` can be specified.
  DeidentifyConfig? config;

  /// The name of the DICOM store to create and write the redacted data to.
  ///
  /// For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  /// * The destination dataset must exist. * The source dataset and destination
  /// dataset must both reside in the same location. De-identifying data across
  /// multiple locations is not supported. * The destination DICOM store must
  /// not exist. * The caller must have the necessary permissions to create the
  /// destination DICOM store.
  core.String? destinationStore;

  /// Filter configuration.
  DicomFilterConfig? filterConfig;

  /// Cloud Storage location to read the JSON
  /// cloud.healthcare.deidentify.DeidentifyConfig from, overriding the default
  /// config.
  ///
  /// Must be of the form `gs://{bucket_id}/path/to/object`. The Cloud Storage
  /// location must grant the Cloud IAM role `roles/storage.objectViewer` to the
  /// project's Cloud Healthcare Service Agent service account. Only one of
  /// `config` and `gcs_config_uri` can be specified.
  core.String? gcsConfigUri;

  DeidentifyDicomStoreRequest({
    this.config,
    this.destinationStore,
    this.filterConfig,
    this.gcsConfigUri,
  });

  DeidentifyDicomStoreRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? DeidentifyConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          destinationStore: json_.containsKey('destinationStore')
              ? json_['destinationStore'] as core.String
              : null,
          filterConfig: json_.containsKey('filterConfig')
              ? DicomFilterConfig.fromJson(
                  json_['filterConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsConfigUri: json_.containsKey('gcsConfigUri')
              ? json_['gcsConfigUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (destinationStore != null) 'destinationStore': destinationStore!,
        if (filterConfig != null) 'filterConfig': filterConfig!,
        if (gcsConfigUri != null) 'gcsConfigUri': gcsConfigUri!,
      };
}

/// Creates a new FHIR store with sensitive information de-identified.
class DeidentifyFhirStoreRequest {
  /// Deidentify configuration.
  ///
  /// Only one of `config` and `gcs_config_uri` can be specified.
  DeidentifyConfig? config;

  /// The name of the FHIR store to create and write the redacted data to.
  ///
  /// For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  /// * The destination dataset must exist. * The source dataset and destination
  /// dataset must both reside in the same location. De-identifying data across
  /// multiple locations is not supported. * The destination FHIR store must
  /// exist. * The caller must have the healthcare.fhirResources.update
  /// permission to write to the destination FHIR store.
  core.String? destinationStore;

  /// Cloud Storage location to read the JSON
  /// cloud.healthcare.deidentify.DeidentifyConfig from, overriding the default
  /// config.
  ///
  /// Must be of the form `gs://{bucket_id}/path/to/object`. The Cloud Storage
  /// location must grant the Cloud IAM role `roles/storage.objectViewer` to the
  /// project's Cloud Healthcare Service Agent service account. Only one of
  /// `config` and `gcs_config_uri` can be specified.
  core.String? gcsConfigUri;

  /// A filter specifying the resources to include in the output.
  ///
  /// If not specified, all resources are included in the output.
  FhirFilter? resourceFilter;

  /// If true, skips resources that are created or modified after the
  /// de-identify operation is created.
  core.bool? skipModifiedResources;

  DeidentifyFhirStoreRequest({
    this.config,
    this.destinationStore,
    this.gcsConfigUri,
    this.resourceFilter,
    this.skipModifiedResources,
  });

  DeidentifyFhirStoreRequest.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? DeidentifyConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          destinationStore: json_.containsKey('destinationStore')
              ? json_['destinationStore'] as core.String
              : null,
          gcsConfigUri: json_.containsKey('gcsConfigUri')
              ? json_['gcsConfigUri'] as core.String
              : null,
          resourceFilter: json_.containsKey('resourceFilter')
              ? FhirFilter.fromJson(json_['resourceFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skipModifiedResources: json_.containsKey('skipModifiedResources')
              ? json_['skipModifiedResources'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (destinationStore != null) 'destinationStore': destinationStore!,
        if (gcsConfigUri != null) 'gcsConfigUri': gcsConfigUri!,
        if (resourceFilter != null) 'resourceFilter': resourceFilter!,
        if (skipModifiedResources != null)
          'skipModifiedResources': skipModifiedResources!,
      };
}

/// Specifies the parameters needed for de-identification of DICOM stores.
class DicomConfig {
  /// Tag filtering profile that determines which tags to keep/remove.
  /// Possible string values are:
  /// - "TAG_FILTER_PROFILE_UNSPECIFIED" : No tag filtration profile provided.
  /// Same as KEEP_ALL_PROFILE.
  /// - "MINIMAL_KEEP_LIST_PROFILE" : Keep only tags required to produce valid
  /// DICOM.
  /// - "ATTRIBUTE_CONFIDENTIALITY_BASIC_PROFILE" : Remove tags based on DICOM
  /// Standard's Attribute Confidentiality Basic Profile (DICOM Standard Edition
  /// 2018e)
  /// http://dicom.nema.org/medical/dicom/2018e/output/chtml/part15/chapter_E.html.
  /// - "KEEP_ALL_PROFILE" : Keep all tags.
  /// - "DEIDENTIFY_TAG_CONTENTS" : Inspects within tag contents and replaces
  /// sensitive text. The process can be configured using the TextConfig.
  /// Applies to all tags with the following Value Representation names: AE, LO,
  /// LT, PN, SH, ST, UC, UT, DA, DT, AS
  core.String? filterProfile;

  /// List of tags to keep.
  ///
  /// Remove all other tags.
  TagFilterList? keepList;

  /// List of tags to remove.
  ///
  /// Keep all other tags.
  TagFilterList? removeList;

  /// If true, skip replacing StudyInstanceUID, SeriesInstanceUID,
  /// SOPInstanceUID, and MediaStorageSOPInstanceUID and leave them untouched.
  ///
  /// The Cloud Healthcare API regenerates these UIDs by default based on the
  /// DICOM Standard's reasoning: "Whilst these UIDs cannot be mapped directly
  /// to an individual out of context, given access to the original images, or
  /// to a database of the original images containing the UIDs, it would be
  /// possible to recover the individual's identity."
  /// http://dicom.nema.org/medical/dicom/current/output/chtml/part15/sect_E.3.9.html
  core.bool? skipIdRedaction;

  DicomConfig({
    this.filterProfile,
    this.keepList,
    this.removeList,
    this.skipIdRedaction,
  });

  DicomConfig.fromJson(core.Map json_)
      : this(
          filterProfile: json_.containsKey('filterProfile')
              ? json_['filterProfile'] as core.String
              : null,
          keepList: json_.containsKey('keepList')
              ? TagFilterList.fromJson(
                  json_['keepList'] as core.Map<core.String, core.dynamic>)
              : null,
          removeList: json_.containsKey('removeList')
              ? TagFilterList.fromJson(
                  json_['removeList'] as core.Map<core.String, core.dynamic>)
              : null,
          skipIdRedaction: json_.containsKey('skipIdRedaction')
              ? json_['skipIdRedaction'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filterProfile != null) 'filterProfile': filterProfile!,
        if (keepList != null) 'keepList': keepList!,
        if (removeList != null) 'removeList': removeList!,
        if (skipIdRedaction != null) 'skipIdRedaction': skipIdRedaction!,
      };
}

/// Specifies the filter configuration for DICOM resources.
class DicomFilterConfig {
  /// The Cloud Storage location of the filter configuration file.
  ///
  /// The `gcs_uri` must be in the format `gs://bucket/path/to/object`. The
  /// filter configuration file must contain a list of resource paths separated
  /// by newline characters (\n or \r\n). Each resource path must be in the
  /// format
  /// "/studies/{studyUID}\[/series/{seriesUID}\[/instances/{instanceUID}\]\]"
  /// The Cloud Healthcare API service account must have the
  /// `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage
  /// location.
  core.String? resourcePathsGcsUri;

  DicomFilterConfig({
    this.resourcePathsGcsUri,
  });

  DicomFilterConfig.fromJson(core.Map json_)
      : this(
          resourcePathsGcsUri: json_.containsKey('resourcePathsGcsUri')
              ? json_['resourcePathsGcsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourcePathsGcsUri != null)
          'resourcePathsGcsUri': resourcePathsGcsUri!,
      };
}

/// Represents a DICOM store.
class DicomStore {
  /// User-supplied key-value pairs used to organize DICOM stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between
  /// 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
  /// must conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} No more than 64 labels can be associated
  /// with a given store.
  core.Map<core.String, core.String>? labels;

  /// Resource name of the DICOM store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  core.String? name;

  /// Notification destination for new DICOM instances.
  ///
  /// Supplied by the client.
  NotificationConfig? notificationConfig;

  /// A list of streaming configs used to configure the destination of streaming
  /// exports for every DICOM instance insertion in this DICOM store.
  ///
  /// After a new config is added to `stream_configs`, DICOM instance insertions
  /// are streamed to the new destination. When a config is removed from
  /// `stream_configs`, the server stops streaming to that destination. Each
  /// config must contain a unique destination.
  ///
  /// Optional.
  core.List<GoogleCloudHealthcareV1DicomStreamConfig>? streamConfigs;

  DicomStore({
    this.labels,
    this.name,
    this.notificationConfig,
    this.streamConfigs,
  });

  DicomStore.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notificationConfig: json_.containsKey('notificationConfig')
              ? NotificationConfig.fromJson(json_['notificationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamConfigs: json_.containsKey('streamConfigs')
              ? (json_['streamConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudHealthcareV1DicomStreamConfig.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (notificationConfig != null)
          'notificationConfig': notificationConfig!,
        if (streamConfigs != null) 'streamConfigs': streamConfigs!,
      };
}

/// DicomStoreMetrics contains metrics describing a DICOM store.
class DicomStoreMetrics {
  /// Total blob storage bytes for all instances in the store.
  core.String? blobStorageSizeBytes;

  /// Number of instances in the store.
  core.String? instanceCount;

  /// Resource name of the DICOM store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}`.
  core.String? name;

  /// Number of series in the store.
  core.String? seriesCount;

  /// Total structured storage bytes for all instances in the store.
  core.String? structuredStorageSizeBytes;

  /// Number of studies in the store.
  core.String? studyCount;

  DicomStoreMetrics({
    this.blobStorageSizeBytes,
    this.instanceCount,
    this.name,
    this.seriesCount,
    this.structuredStorageSizeBytes,
    this.studyCount,
  });

  DicomStoreMetrics.fromJson(core.Map json_)
      : this(
          blobStorageSizeBytes: json_.containsKey('blobStorageSizeBytes')
              ? json_['blobStorageSizeBytes'] as core.String
              : null,
          instanceCount: json_.containsKey('instanceCount')
              ? json_['instanceCount'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          seriesCount: json_.containsKey('seriesCount')
              ? json_['seriesCount'] as core.String
              : null,
          structuredStorageSizeBytes:
              json_.containsKey('structuredStorageSizeBytes')
                  ? json_['structuredStorageSizeBytes'] as core.String
                  : null,
          studyCount: json_.containsKey('studyCount')
              ? json_['studyCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobStorageSizeBytes != null)
          'blobStorageSizeBytes': blobStorageSizeBytes!,
        if (instanceCount != null) 'instanceCount': instanceCount!,
        if (name != null) 'name': name!,
        if (seriesCount != null) 'seriesCount': seriesCount!,
        if (structuredStorageSizeBytes != null)
          'structuredStorageSizeBytes': structuredStorageSizeBytes!,
        if (studyCount != null) 'studyCount': studyCount!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The candidate entities that an entity mention could link to.
class Entity {
  /// entity_id is a first class field entity_id uniquely identifies this
  /// concept and its meta-vocabulary.
  ///
  /// For example, "UMLS/C0000970".
  core.String? entityId;

  /// preferred_term is the preferred term for this concept.
  ///
  /// For example, "Acetaminophen". For ad hoc entities formed by normalization,
  /// this is the most popular unnormalized string.
  core.String? preferredTerm;

  /// Vocabulary codes are first-class fields and differentiated from the
  /// concept unique identifier (entity_id).
  ///
  /// vocabulary_codes contains the representation of this concept in particular
  /// vocabularies, such as ICD-10, SNOMED-CT and RxNORM. These are prefixed by
  /// the name of the vocabulary, followed by the unique code within that
  /// vocabulary. For example, "RXNORM/A10334543".
  core.List<core.String>? vocabularyCodes;

  Entity({
    this.entityId,
    this.preferredTerm,
    this.vocabularyCodes,
  });

  Entity.fromJson(core.Map json_)
      : this(
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
          preferredTerm: json_.containsKey('preferredTerm')
              ? json_['preferredTerm'] as core.String
              : null,
          vocabularyCodes: json_.containsKey('vocabularyCodes')
              ? (json_['vocabularyCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityId != null) 'entityId': entityId!,
        if (preferredTerm != null) 'preferredTerm': preferredTerm!,
        if (vocabularyCodes != null) 'vocabularyCodes': vocabularyCodes!,
      };
}

/// An entity mention in the document.
class EntityMention {
  /// The certainty assessment of the entity mention.
  ///
  /// Its value is one of: LIKELY, SOMEWHAT_LIKELY, UNCERTAIN,
  /// SOMEWHAT_UNLIKELY, UNLIKELY, CONDITIONAL
  Feature? certaintyAssessment;

  /// The model's confidence in this entity mention annotation.
  ///
  /// A number between 0 and 1.
  core.double? confidence;

  /// linked_entities are candidate ontological concepts that this entity
  /// mention may refer to.
  ///
  /// They are sorted by decreasing confidence.
  core.List<LinkedEntity>? linkedEntities;

  /// mention_id uniquely identifies each entity mention in a single response.
  core.String? mentionId;

  /// The subject this entity mention relates to.
  ///
  /// Its value is one of: PATIENT, FAMILY_MEMBER, OTHER
  Feature? subject;

  /// How this entity mention relates to the subject temporally.
  ///
  /// Its value is one of: CURRENT, CLINICAL_HISTORY, FAMILY_HISTORY, UPCOMING,
  /// ALLERGY
  Feature? temporalAssessment;

  /// text is the location of the entity mention in the document.
  TextSpan? text;

  /// The semantic type of the entity: UNKNOWN_ENTITY_TYPE, ALONE,
  /// ANATOMICAL_STRUCTURE, ASSISTED_LIVING, BF_RESULT, BM_RESULT, BM_UNIT,
  /// BM_VALUE, BODY_FUNCTION, BODY_MEASUREMENT, COMPLIANT, DOESNOT_FOLLOWUP,
  /// FAMILY, FOLLOWSUP, LABORATORY_DATA, LAB_RESULT, LAB_UNIT, LAB_VALUE,
  /// MEDICAL_DEVICE, MEDICINE, MED_DOSE, MED_DURATION, MED_FORM, MED_FREQUENCY,
  /// MED_ROUTE, MED_STATUS, MED_STRENGTH, MED_TOTALDOSE, MED_UNIT,
  /// NON_COMPLIANT, OTHER_LIVINGSTATUS, PROBLEM, PROCEDURE, PROCEDURE_RESULT,
  /// PROC_METHOD, REASON_FOR_NONCOMPLIANCE, SEVERITY, SUBSTANCE_ABUSE,
  /// UNCLEAR_FOLLOWUP.
  core.String? type;

  EntityMention({
    this.certaintyAssessment,
    this.confidence,
    this.linkedEntities,
    this.mentionId,
    this.subject,
    this.temporalAssessment,
    this.text,
    this.type,
  });

  EntityMention.fromJson(core.Map json_)
      : this(
          certaintyAssessment: json_.containsKey('certaintyAssessment')
              ? Feature.fromJson(json_['certaintyAssessment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          linkedEntities: json_.containsKey('linkedEntities')
              ? (json_['linkedEntities'] as core.List)
                  .map((value) => LinkedEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mentionId: json_.containsKey('mentionId')
              ? json_['mentionId'] as core.String
              : null,
          subject: json_.containsKey('subject')
              ? Feature.fromJson(
                  json_['subject'] as core.Map<core.String, core.dynamic>)
              : null,
          temporalAssessment: json_.containsKey('temporalAssessment')
              ? Feature.fromJson(json_['temporalAssessment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text')
              ? TextSpan.fromJson(
                  json_['text'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certaintyAssessment != null)
          'certaintyAssessment': certaintyAssessment!,
        if (confidence != null) 'confidence': confidence!,
        if (linkedEntities != null) 'linkedEntities': linkedEntities!,
        if (mentionId != null) 'mentionId': mentionId!,
        if (subject != null) 'subject': subject!,
        if (temporalAssessment != null)
          'temporalAssessment': temporalAssessment!,
        if (text != null) 'text': text!,
        if (type != null) 'type': type!,
      };
}

/// Defines directed relationship from one entity mention to another.
class EntityMentionRelationship {
  /// The model's confidence in this annotation.
  ///
  /// A number between 0 and 1.
  core.double? confidence;

  /// object_id is the id of the object entity mention.
  core.String? objectId;

  /// subject_id is the id of the subject entity mention.
  core.String? subjectId;

  EntityMentionRelationship({
    this.confidence,
    this.objectId,
    this.subjectId,
  });

  EntityMentionRelationship.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          subjectId: json_.containsKey('subjectId')
              ? json_['subjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (objectId != null) 'objectId': objectId!,
        if (subjectId != null) 'subjectId': subjectId!,
      };
}

/// Evaluate a user's Consents for all matching User data mappings.
///
/// Note: User data mappings are indexed asynchronously, causing slight delays
/// between the time mappings are created or updated and when they are included
/// in EvaluateUserConsents results.
class EvaluateUserConsentsRequest {
  /// Specific Consents to evaluate the access request against.
  ///
  /// These Consents must have the same `user_id` as the User data mappings
  /// being evalauted, must exist in the current `consent_store`, and must have
  /// a `state` of either `ACTIVE` or `DRAFT`. A maximum of 100 Consents can be
  /// provided here. If unspecified, all `ACTIVE` unexpired Consents in the
  /// current `consent_store` will be evaluated.
  ///
  /// Optional.
  ConsentList? consentList;

  /// Limit on the number of User data mappings to return in a single response.
  ///
  /// If not specified, 100 is used. May not be larger than 1000.
  ///
  /// Optional.
  core.int? pageSize;

  /// Token to retrieve the next page of results, or empty to get the first
  /// page.
  ///
  /// Optional.
  core.String? pageToken;

  /// The values of request attributes associated with this access request.
  ///
  /// Required.
  core.Map<core.String, core.String>? requestAttributes;

  /// The values of resource attributes associated with the resources being
  /// requested.
  ///
  /// If no values are specified, then all resources are queried.
  ///
  /// Optional.
  core.Map<core.String, core.String>? resourceAttributes;

  /// The view for EvaluateUserConsentsResponse.
  ///
  /// If unspecified, defaults to `BASIC` and returns `consented` as `TRUE` or
  /// `FALSE`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "RESPONSE_VIEW_UNSPECIFIED" : No response view specified. The API will
  /// default to the BASIC view.
  /// - "BASIC" : Only the `data_id` and `consented` fields are populated in the
  /// response.
  /// - "FULL" : All fields within the response are populated. When set to
  /// `FULL`, all `ACTIVE` Consents are evaluated even if a matching policy is
  /// found during evaluation.
  core.String? responseView;

  /// User ID to evaluate consents for.
  ///
  /// Required.
  core.String? userId;

  EvaluateUserConsentsRequest({
    this.consentList,
    this.pageSize,
    this.pageToken,
    this.requestAttributes,
    this.resourceAttributes,
    this.responseView,
    this.userId,
  });

  EvaluateUserConsentsRequest.fromJson(core.Map json_)
      : this(
          consentList: json_.containsKey('consentList')
              ? ConsentList.fromJson(
                  json_['consentList'] as core.Map<core.String, core.dynamic>)
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          requestAttributes: json_.containsKey('requestAttributes')
              ? (json_['requestAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          resourceAttributes: json_.containsKey('resourceAttributes')
              ? (json_['resourceAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          responseView: json_.containsKey('responseView')
              ? json_['responseView'] as core.String
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentList != null) 'consentList': consentList!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (requestAttributes != null) 'requestAttributes': requestAttributes!,
        if (resourceAttributes != null)
          'resourceAttributes': resourceAttributes!,
        if (responseView != null) 'responseView': responseView!,
        if (userId != null) 'userId': userId!,
      };
}

class EvaluateUserConsentsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  ///
  /// This token is valid for 72 hours after it is created.
  core.String? nextPageToken;

  /// The consent evaluation result for each `data_id`.
  core.List<Result>? results;

  EvaluateUserConsentsResponse({
    this.nextPageToken,
    this.results,
  });

  EvaluateUserConsentsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => Result.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (results != null) 'results': results!,
      };
}

/// Exports data from the specified DICOM store.
///
/// If a given resource, such as a DICOM object with the same SOPInstance UID,
/// already exists in the output, it is overwritten with the version in the
/// source dataset. Exported DICOM data persists when the DICOM store from which
/// it was exported is deleted.
class ExportDicomDataRequest {
  /// The BigQuery output destination.
  ///
  /// You can only export to a BigQuery dataset that's in the same project as
  /// the DICOM store you're exporting from. The Cloud Healthcare Service Agent
  /// requires two IAM roles on the BigQuery location:
  /// `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`.
  GoogleCloudHealthcareV1DicomBigQueryDestination? bigqueryDestination;

  /// The Cloud Storage output destination.
  ///
  /// The Cloud Healthcare Service Agent requires the
  /// `roles/storage.objectAdmin` Cloud IAM roles on the Cloud Storage location.
  GoogleCloudHealthcareV1DicomGcsDestination? gcsDestination;

  ExportDicomDataRequest({
    this.bigqueryDestination,
    this.gcsDestination,
  });

  ExportDicomDataRequest.fromJson(core.Map json_)
      : this(
          bigqueryDestination: json_.containsKey('bigqueryDestination')
              ? GoogleCloudHealthcareV1DicomBigQueryDestination.fromJson(
                  json_['bigqueryDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsDestination: json_.containsKey('gcsDestination')
              ? GoogleCloudHealthcareV1DicomGcsDestination.fromJson(
                  json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination!,
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
      };
}

/// Request to schedule an export.
class ExportMessagesRequest {
  /// The end of the range in `send_time` (MSH.7,
  /// https://www.hl7.org/documentcenter/public_temp_2E58C1F9-1C23-BA17-0C6126475344DA9D/wg/conf/HL7MSH.htm)
  /// to process.
  ///
  /// If not specified, the time when the export is scheduled is used. This
  /// value has to come after the `start_time` defined below. Only messages
  /// whose `send_time` lies in the range `start_time` (inclusive) to `end_time`
  /// (exclusive) are exported.
  core.String? endTime;

  /// Restricts messages exported to those matching a filter, only applicable to
  /// PubsubDestination.
  ///
  /// The following syntax is available: * A string field value can be written
  /// as text inside quotation marks, for example `"query text"`. The only valid
  /// relational operation for text fields is equality (`=`), where text is
  /// searched within the field, rather than having the field be equal to the
  /// text. For example, `"Comment = great"` returns messages with `great` in
  /// the comment field. * A number field value can be written as an integer, a
  /// decimal, or an exponential. The valid relational operators for number
  /// fields are the equality operator (`=`), along with the less than/greater
  /// than operators (`<`, `<=`, `>`, `>=`). Note that there is no inequality
  /// (`!=`) operator. You can prepend the `NOT` operator to an expression to
  /// negate it. * A date field value must be written in the `yyyy-mm-dd`
  /// format. Fields with date and time use the RFC3339 time format. Leading
  /// zeros are required for one-digit months and days. The valid relational
  /// operators for date fields are the equality operator (`=`) , along with the
  /// less than/greater than operators (`<`, `<=`, `>`, `>=`). Note that there
  /// is no inequality (`!=`) operator. You can prepend the `NOT` operator to an
  /// expression to negate it. * Multiple field query expressions can be
  /// combined in one query by adding `AND` or `OR` operators between the
  /// expressions. If a boolean operator appears within a quoted string, it is
  /// not treated as special, and is just another part of the character string
  /// to be matched. You can prepend the `NOT` operator to an expression to
  /// negate it. The following fields and functions are available for filtering:
  /// * `message_type`, from the MSH-9.1 field. For example, `NOT message_type =
  /// "ADT"`. * `send_date` or `sendDate`, the `yyyy-mm-dd` date the message was
  /// sent in the dataset's time_zone, from the MSH-7 segment. For example,
  /// `send_date < "2017-01-02"`. * `send_time`, the timestamp when the message
  /// was sent, using the RFC3339 time format for comparisons, from the MSH-7
  /// segment. For example, `send_time < "2017-01-02T00:00:00-05:00"`. *
  /// `create_time`, the timestamp when the message was created in the HL7v2
  /// store. Use the RFC3339 time format for comparisons. For example,
  /// `create_time < "2017-01-02T00:00:00-05:00"`. * `send_facility`, the care
  /// center that the message came from, from the MSH-4 segment. For example,
  /// `send_facility = "ABC"`. Note: The filter will be applied to every message
  /// in the HL7v2 store whose `send_time` lies in the range defined by the
  /// `start_time` and the `end_time`. Even if the filter only matches a small
  /// set of messages, the export operation can still take a long time to finish
  /// when a lot of messages are between the specified `start_time` and
  /// `end_time` range.
  core.String? filter;

  /// Export to a Cloud Storage destination.
  GcsDestination? gcsDestination;

  /// Export messages to a Pub/Sub topic.
  PubsubDestination? pubsubDestination;

  /// The start of the range in `send_time` (MSH.7,
  /// https://www.hl7.org/documentcenter/public_temp_2E58C1F9-1C23-BA17-0C6126475344DA9D/wg/conf/HL7MSH.htm)
  /// to process.
  ///
  /// If not specified, the UNIX epoch (1970-01-01T00:00:00Z) is used. This
  /// value has to come before the `end_time` defined below. Only messages whose
  /// `send_time` lies in the range `start_time` (inclusive) to `end_time`
  /// (exclusive) are exported.
  core.String? startTime;

  ExportMessagesRequest({
    this.endTime,
    this.filter,
    this.gcsDestination,
    this.pubsubDestination,
    this.startTime,
  });

  ExportMessagesRequest.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          gcsDestination: json_.containsKey('gcsDestination')
              ? GcsDestination.fromJson(json_['gcsDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          pubsubDestination: json_.containsKey('pubsubDestination')
              ? PubsubDestination.fromJson(json_['pubsubDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (filter != null) 'filter': filter!,
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
        if (pubsubDestination != null) 'pubsubDestination': pubsubDestination!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Request to export resources.
class ExportResourcesRequest {
  /// If provided, only resources updated after this time are exported.
  ///
  /// The time uses the format YYYY-MM-DDThh:mm:ss.sss+zz:zz. For example,
  /// `2015-02-07T13:28:17.239+02:00` or `2017-01-01T00:00:00Z`. The time must
  /// be specified to the second and include a time zone.
  core.String? P_since;

  /// String of comma-delimited FHIR resource types.
  ///
  /// If provided, only resources of the specified resource type(s) are
  /// exported.
  core.String? P_type;

  /// The BigQuery output destination.
  ///
  /// The Cloud Healthcare Service Agent requires two IAM roles on the BigQuery
  /// location: `roles/bigquery.dataEditor` and `roles/bigquery.jobUser`. The
  /// output is one BigQuery table per resource type. Unlike when setting
  /// `BigQueryDestination` for `StreamConfig`, `ExportResources` does not
  /// create BigQuery views.
  GoogleCloudHealthcareV1FhirBigQueryDestination? bigqueryDestination;

  /// The Cloud Storage output destination.
  ///
  /// The Healthcare Service Agent account requires the
  /// `roles/storage.objectAdmin` role on the Cloud Storage location. The
  /// exported outputs are organized by FHIR resource types. The server creates
  /// one object per resource type. Each object contains newline delimited JSON,
  /// and each line is a FHIR resource.
  GoogleCloudHealthcareV1FhirGcsDestination? gcsDestination;

  ExportResourcesRequest({
    this.P_since,
    this.P_type,
    this.bigqueryDestination,
    this.gcsDestination,
  });

  ExportResourcesRequest.fromJson(core.Map json_)
      : this(
          P_since: json_.containsKey('_since')
              ? json_['_since'] as core.String
              : null,
          P_type:
              json_.containsKey('_type') ? json_['_type'] as core.String : null,
          bigqueryDestination: json_.containsKey('bigqueryDestination')
              ? GoogleCloudHealthcareV1FhirBigQueryDestination.fromJson(
                  json_['bigqueryDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsDestination: json_.containsKey('gcsDestination')
              ? GoogleCloudHealthcareV1FhirGcsDestination.fromJson(
                  json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (P_since != null) '_since': P_since!,
        if (P_type != null) '_type': P_type!,
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination!,
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
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

/// A feature of an entity mention.
class Feature {
  /// The model's confidence in this feature annotation.
  ///
  /// A number between 0 and 1.
  core.double? confidence;

  /// The value of this feature annotation.
  ///
  /// Its range depends on the type of the feature.
  core.String? value;

  Feature({
    this.confidence,
    this.value,
  });

  Feature.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (value != null) 'value': value!,
      };
}

/// Specifies how to handle de-identification of a FHIR store.
class FhirConfig {
  /// The behaviour for handling FHIR extensions that aren't otherwise specified
  /// for de-identification.
  ///
  /// If true, all extensions are preserved during de-identification by default.
  /// If false or unspecified, all extensions are removed during
  /// de-identification by default.
  core.bool? defaultKeepExtensions;

  /// Specifies FHIR paths to match and how to transform them.
  ///
  /// Any field that is not matched by a FieldMetadata is passed through to the
  /// output dataset unmodified. All extensions will be processed according to
  /// `default_keep_extensions`.
  core.List<FieldMetadata>? fieldMetadataList;

  FhirConfig({
    this.defaultKeepExtensions,
    this.fieldMetadataList,
  });

  FhirConfig.fromJson(core.Map json_)
      : this(
          defaultKeepExtensions: json_.containsKey('defaultKeepExtensions')
              ? json_['defaultKeepExtensions'] as core.bool
              : null,
          fieldMetadataList: json_.containsKey('fieldMetadataList')
              ? (json_['fieldMetadataList'] as core.List)
                  .map((value) => FieldMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultKeepExtensions != null)
          'defaultKeepExtensions': defaultKeepExtensions!,
        if (fieldMetadataList != null) 'fieldMetadataList': fieldMetadataList!,
      };
}

/// Filter configuration.
class FhirFilter {
  /// List of resources to include in the output.
  ///
  /// If this list is empty or not specified, all resources are included in the
  /// output.
  Resources? resources;

  FhirFilter({
    this.resources,
  });

  FhirFilter.fromJson(core.Map json_)
      : this(
          resources: json_.containsKey('resources')
              ? Resources.fromJson(
                  json_['resources'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resources != null) 'resources': resources!,
      };
}

/// Contains the configuration for FHIR notifications.
class FhirNotificationConfig {
  /// The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that
  /// notifications of changes are published on.
  ///
  /// Supplied by the client. The notification is a `PubsubMessage` with the
  /// following fields: * `PubsubMessage.Data` contains the resource name. *
  /// `PubsubMessage.MessageId` is the ID of this notification. It is guaranteed
  /// to be unique within the topic. * `PubsubMessage.PublishTime` is the time
  /// when the message was published. Note that notifications are only sent if
  /// the topic is non-empty.
  /// [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be
  /// scoped to a project. The Cloud Healthcare API service account,
  /// service-@gcp-sa-healthcare.iam.gserviceaccount.com, must have publisher
  /// permissions on the given Pub/Sub topic. Not having adequate permissions
  /// causes the calls that send notifications to fail
  /// (https://cloud.google.com/healthcare-api/docs/permissions-healthcare-api-gcp-products#dicom_fhir_and_hl7v2_store_cloud_pubsub_permissions).
  /// If a notification can't be published to Pub/Sub, errors are logged to
  /// Cloud Logging. For more information, see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare-api/docs/how-tos/logging).
  core.String? pubsubTopic;

  /// Whether to send full FHIR resource to this Pub/Sub topic.
  core.bool? sendFullResource;

  /// Whether to send full FHIR resource to this Pub/Sub topic for deleting FHIR
  /// resource.
  ///
  /// Note that setting this to true does not guarantee that all previous
  /// resources will be sent in the format of full FHIR resource. When a
  /// resource change is too large or during heavy traffic, only the resource
  /// name will be sent. Clients should always check the "payloadType" label
  /// from a Pub/Sub message to determine whether it needs to fetch the full
  /// previous resource as a separate operation.
  core.bool? sendPreviousResourceOnDelete;

  FhirNotificationConfig({
    this.pubsubTopic,
    this.sendFullResource,
    this.sendPreviousResourceOnDelete,
  });

  FhirNotificationConfig.fromJson(core.Map json_)
      : this(
          pubsubTopic: json_.containsKey('pubsubTopic')
              ? json_['pubsubTopic'] as core.String
              : null,
          sendFullResource: json_.containsKey('sendFullResource')
              ? json_['sendFullResource'] as core.bool
              : null,
          sendPreviousResourceOnDelete:
              json_.containsKey('sendPreviousResourceOnDelete')
                  ? json_['sendPreviousResourceOnDelete'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
        if (sendFullResource != null) 'sendFullResource': sendFullResource!,
        if (sendPreviousResourceOnDelete != null)
          'sendPreviousResourceOnDelete': sendPreviousResourceOnDelete!,
      };
}

/// Represents a FHIR store.
class FhirStore {
  /// Enable parsing of references within complex FHIR data types such as
  /// Extensions.
  ///
  /// If this value is set to ENABLED, then features like referential integrity
  /// and Bundle reference rewriting apply to all references. If this flag has
  /// not been specified the behavior of the FHIR store will not change,
  /// references in complex data types will not be parsed. New stores will have
  /// this value set to ENABLED after a notification period. Warning: turning on
  /// this flag causes processing existing resources to fail if they contain
  /// references to non-existent resources.
  /// Possible string values are:
  /// - "COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED" : No parsing behavior
  /// specified. This is the same as DISABLED for backwards compatibility.
  /// - "DISABLED" : References in complex data types are ignored.
  /// - "ENABLED" : References in complex data types are parsed.
  core.String? complexDataTypeReferenceParsing;

  /// If true, overrides the default search behavior for this FHIR store to
  /// `handling=strict` which returns an error for unrecognized search
  /// parameters.
  ///
  /// If false, uses the FHIR specification default `handling=lenient` which
  /// ignores unrecognized search parameters. The handling can always be changed
  /// from the default on an individual API call by setting the HTTP header
  /// `Prefer: handling=strict` or `Prefer: handling=lenient`.
  core.bool? defaultSearchHandlingStrict;

  /// Whether to disable referential integrity in this FHIR store.
  ///
  /// This field is immutable after FHIR store creation. The default value is
  /// false, meaning that the API enforces referential integrity and fails the
  /// requests that result in inconsistent state in the FHIR store. When this
  /// field is set to true, the API skips referential integrity checks.
  /// Consequently, operations that rely on references, such as
  /// GetPatientEverything, do not return all the results if broken references
  /// exist.
  ///
  /// Immutable.
  core.bool? disableReferentialIntegrity;

  /// Whether to disable resource versioning for this FHIR store.
  ///
  /// This field can not be changed after the creation of FHIR store. If set to
  /// false, which is the default behavior, all write operations cause
  /// historical versions to be recorded automatically. The historical versions
  /// can be fetched through the history APIs, but cannot be updated. If set to
  /// true, no historical versions are kept. The server sends errors for
  /// attempts to read the historical versions.
  ///
  /// Immutable.
  core.bool? disableResourceVersioning;

  /// Whether this FHIR store has the
  /// [updateCreate capability](https://www.hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.updateCreate).
  ///
  /// This determines if the client can use an Update operation to create a new
  /// resource with a client-specified ID. If false, all IDs are server-assigned
  /// through the Create operation and attempts to update a non-existent
  /// resource return errors. It is strongly advised not to include or encode
  /// any sensitive data such as patient identifiers in client-specified
  /// resource IDs. Those IDs are part of the FHIR resource path recorded in
  /// Cloud audit logs and Pub/Sub notifications. Those IDs can also be
  /// contained in reference fields within other resources.
  core.bool? enableUpdateCreate;

  /// User-supplied key-value pairs used to organize FHIR stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between
  /// 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
  /// must conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} No more than 64 labels can be associated
  /// with a given store.
  core.Map<core.String, core.String>? labels;

  /// Resource name of the FHIR store, of the form
  /// `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  ///
  /// Output only.
  core.String? name;

  /// Use `notification_configs` instead.
  ///
  /// If non-empty, publish all resource modifications of this FHIR store to
  /// this destination. The Pub/Sub message attributes contain a map with a
  /// string describing the action that has triggered the notification. For
  /// example, "action":"CreateResource".
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  NotificationConfig? notificationConfig;

  /// Specifies where and whether to send notifications upon changes to a FHIR
  /// store.
  core.List<FhirNotificationConfig>? notificationConfigs;

  /// A list of streaming configs that configure the destinations of streaming
  /// export for every resource mutation in this FHIR store.
  ///
  /// Each store is allowed to have up to 10 streaming configs. After a new
  /// config is added, the next resource mutation is streamed to the new
  /// location in addition to the existing ones. When a location is removed from
  /// the list, the server stops streaming to that location. Before adding a new
  /// config, you must add the required
  /// \[`bigquery.dataEditor`\](https://cloud.google.com/bigquery/docs/access-control#bigquery.dataEditor)
  /// role to your project's **Cloud Healthcare Service Agent**
  /// [service account](https://cloud.google.com/iam/docs/service-accounts).
  /// Some lag (typically on the order of dozens of seconds) is expected before
  /// the results show up in the streaming destination.
  core.List<StreamConfig>? streamConfigs;

  /// Configuration for how to validate incoming FHIR resources against
  /// configured profiles.
  ValidationConfig? validationConfig;

  /// The FHIR specification version that this FHIR store supports natively.
  ///
  /// This field is immutable after store creation. Requests are rejected if
  /// they contain FHIR resources of a different version. Version is required
  /// for every FHIR store.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "VERSION_UNSPECIFIED" : Users must specify a version on store creation
  /// or an error is returned.
  /// - "DSTU2" : Draft Standard for Trial Use,
  /// [Release 2](https://www.hl7.org/fhir/DSTU2)
  /// - "STU3" : Standard for Trial Use,
  /// [Release 3](https://www.hl7.org/fhir/STU3)
  /// - "R4" : [Release 4](https://www.hl7.org/fhir/R4)
  core.String? version;

  FhirStore({
    this.complexDataTypeReferenceParsing,
    this.defaultSearchHandlingStrict,
    this.disableReferentialIntegrity,
    this.disableResourceVersioning,
    this.enableUpdateCreate,
    this.labels,
    this.name,
    this.notificationConfig,
    this.notificationConfigs,
    this.streamConfigs,
    this.validationConfig,
    this.version,
  });

  FhirStore.fromJson(core.Map json_)
      : this(
          complexDataTypeReferenceParsing:
              json_.containsKey('complexDataTypeReferenceParsing')
                  ? json_['complexDataTypeReferenceParsing'] as core.String
                  : null,
          defaultSearchHandlingStrict:
              json_.containsKey('defaultSearchHandlingStrict')
                  ? json_['defaultSearchHandlingStrict'] as core.bool
                  : null,
          disableReferentialIntegrity:
              json_.containsKey('disableReferentialIntegrity')
                  ? json_['disableReferentialIntegrity'] as core.bool
                  : null,
          disableResourceVersioning:
              json_.containsKey('disableResourceVersioning')
                  ? json_['disableResourceVersioning'] as core.bool
                  : null,
          enableUpdateCreate: json_.containsKey('enableUpdateCreate')
              ? json_['enableUpdateCreate'] as core.bool
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
          notificationConfig: json_.containsKey('notificationConfig')
              ? NotificationConfig.fromJson(json_['notificationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          notificationConfigs: json_.containsKey('notificationConfigs')
              ? (json_['notificationConfigs'] as core.List)
                  .map((value) => FhirNotificationConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          streamConfigs: json_.containsKey('streamConfigs')
              ? (json_['streamConfigs'] as core.List)
                  .map((value) => StreamConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          validationConfig: json_.containsKey('validationConfig')
              ? ValidationConfig.fromJson(json_['validationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (complexDataTypeReferenceParsing != null)
          'complexDataTypeReferenceParsing': complexDataTypeReferenceParsing!,
        if (defaultSearchHandlingStrict != null)
          'defaultSearchHandlingStrict': defaultSearchHandlingStrict!,
        if (disableReferentialIntegrity != null)
          'disableReferentialIntegrity': disableReferentialIntegrity!,
        if (disableResourceVersioning != null)
          'disableResourceVersioning': disableResourceVersioning!,
        if (enableUpdateCreate != null)
          'enableUpdateCreate': enableUpdateCreate!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (notificationConfig != null)
          'notificationConfig': notificationConfig!,
        if (notificationConfigs != null)
          'notificationConfigs': notificationConfigs!,
        if (streamConfigs != null) 'streamConfigs': streamConfigs!,
        if (validationConfig != null) 'validationConfig': validationConfig!,
        if (version != null) 'version': version!,
      };
}

/// Count of resources and total storage size by type for a given FHIR store.
class FhirStoreMetric {
  /// The total count of FHIR resources in the store of this resource type.
  core.String? count;

  /// The FHIR resource type this metric applies to.
  core.String? resourceType;

  /// The total amount of structured storage used by FHIR resources of this
  /// resource type in the store.
  core.String? structuredStorageSizeBytes;

  FhirStoreMetric({
    this.count,
    this.resourceType,
    this.structuredStorageSizeBytes,
  });

  FhirStoreMetric.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
          structuredStorageSizeBytes:
              json_.containsKey('structuredStorageSizeBytes')
                  ? json_['structuredStorageSizeBytes'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (structuredStorageSizeBytes != null)
          'structuredStorageSizeBytes': structuredStorageSizeBytes!,
      };
}

/// List of metrics for a given FHIR store.
class FhirStoreMetrics {
  /// List of FhirStoreMetric by resource type.
  core.List<FhirStoreMetric>? metrics;

  /// The resource name of the FHIR store to get metrics for, in the format
  /// `projects/{project_id}/datasets/{dataset_id}/fhirStores/{fhir_store_id}`.
  core.String? name;

  FhirStoreMetrics({
    this.metrics,
    this.name,
  });

  FhirStoreMetrics.fromJson(core.Map json_)
      : this(
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => FhirStoreMetric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
        if (name != null) 'name': name!,
      };
}

/// A (sub) field of a type.
class Field {
  /// The maximum number of times this field can be repeated.
  ///
  /// 0 or -1 means unbounded.
  core.int? maxOccurs;

  /// The minimum number of times this field must be present/repeated.
  core.int? minOccurs;

  /// The name of the field.
  ///
  /// For example, "PID-1" or just "1".
  core.String? name;

  /// The HL7v2 table this field refers to.
  ///
  /// For example, PID-15 (Patient's Primary Language) usually refers to table
  /// "0296".
  core.String? table;

  /// The type of this field.
  ///
  /// A Type with this name must be defined in an Hl7TypesConfig.
  core.String? type;

  Field({
    this.maxOccurs,
    this.minOccurs,
    this.name,
    this.table,
    this.type,
  });

  Field.fromJson(core.Map json_)
      : this(
          maxOccurs: json_.containsKey('maxOccurs')
              ? json_['maxOccurs'] as core.int
              : null,
          minOccurs: json_.containsKey('minOccurs')
              ? json_['minOccurs'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          table:
              json_.containsKey('table') ? json_['table'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxOccurs != null) 'maxOccurs': maxOccurs!,
        if (minOccurs != null) 'minOccurs': minOccurs!,
        if (name != null) 'name': name!,
        if (table != null) 'table': table!,
        if (type != null) 'type': type!,
      };
}

/// Specifies FHIR paths to match, and how to handle de-identification of
/// matching fields.
class FieldMetadata {
  /// Deidentify action for one field.
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED" : No action specified.
  /// - "TRANSFORM" : Transform the entire field.
  /// - "INSPECT_AND_TRANSFORM" : Inspect and transform any found PHI.
  /// - "DO_NOT_TRANSFORM" : Do not transform.
  core.String? action;

  /// List of paths to FHIR fields to be redacted.
  ///
  /// Each path is a period-separated list where each component is either a
  /// field name or FHIR type name, for example: Patient, HumanName. For
  /// "choice" types (those defined in the FHIR spec with the form: field\[x\])
  /// we use two separate components. For example, "deceasedAge.unit" is matched
  /// by "Deceased.Age.unit". Supported types are: AdministrativeGenderCode,
  /// Base64Binary, Boolean, Code, Date, DateTime, Decimal, HumanName, Id,
  /// Instant, Integer, LanguageCode, Markdown, Oid, PositiveInt, String,
  /// UnsignedInt, Uri, Uuid, Xhtml.
  core.List<core.String>? paths;

  FieldMetadata({
    this.action,
    this.paths,
  });

  FieldMetadata.fromJson(core.Map json_)
      : this(
          action: json_.containsKey('action')
              ? json_['action'] as core.String
              : null,
          paths: json_.containsKey('paths')
              ? (json_['paths'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (paths != null) 'paths': paths!,
      };
}

/// The Cloud Storage output destination.
///
/// The Cloud Healthcare Service Agent requires the `roles/storage.objectAdmin`
/// Cloud IAM roles on the Cloud Storage location.
class GcsDestination {
  /// The format of the exported HL7v2 message files.
  /// Possible string values are:
  /// - "CONTENT_STRUCTURE_UNSPECIFIED" : If the content structure is not
  /// specified, the default value `MESSAGE_JSON` will be used.
  /// - "MESSAGE_JSON" : Messages are printed using the JSON format returned
  /// from the `GetMessage` API. Messages are delimited with newlines.
  core.String? contentStructure;

  /// Specifies the parts of the Message resource to include in the export.
  ///
  /// If not specified, FULL is used.
  /// Possible string values are:
  /// - "MESSAGE_VIEW_UNSPECIFIED" : Not specified, equivalent to FULL.
  /// - "RAW_ONLY" : Server responses include all the message fields except
  /// parsed_data field, and schematized_data fields.
  /// - "PARSED_ONLY" : Server responses include all the message fields except
  /// data field, and schematized_data fields.
  /// - "FULL" : Server responses include all the message fields.
  /// - "SCHEMATIZED_ONLY" : Server responses include all the message fields
  /// except data and parsed_data fields.
  /// - "BASIC" : Server responses include only the name field.
  core.String? messageView;

  /// URI of an existing Cloud Storage directory where the server writes result
  /// files, in the format `gs://{bucket-id}/{path/to/destination/dir}`.
  ///
  /// If there is no trailing slash, the service appends one when composing the
  /// object path.
  core.String? uriPrefix;

  GcsDestination({
    this.contentStructure,
    this.messageView,
    this.uriPrefix,
  });

  GcsDestination.fromJson(core.Map json_)
      : this(
          contentStructure: json_.containsKey('contentStructure')
              ? json_['contentStructure'] as core.String
              : null,
          messageView: json_.containsKey('messageView')
              ? json_['messageView'] as core.String
              : null,
          uriPrefix: json_.containsKey('uriPrefix')
              ? json_['uriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentStructure != null) 'contentStructure': contentStructure!,
        if (messageView != null) 'messageView': messageView!,
        if (uriPrefix != null) 'uriPrefix': uriPrefix!,
      };
}

/// Specifies the configuration for importing data from Cloud Storage.
typedef GcsSource = $GcsSource;

/// The Cloud Storage location for export.
class GoogleCloudHealthcareV1ConsentGcsDestination {
  /// URI for a Cloud Storage directory where the server writes result files, in
  /// the format `gs://{bucket-id}/{path/to/destination/dir}`.
  ///
  /// If there is no trailing slash, the service appends one when composing the
  /// object path. The user is responsible for creating the Cloud Storage bucket
  /// and directory referenced in `uri_prefix`.
  core.String? uriPrefix;

  GoogleCloudHealthcareV1ConsentGcsDestination({
    this.uriPrefix,
  });

  GoogleCloudHealthcareV1ConsentGcsDestination.fromJson(core.Map json_)
      : this(
          uriPrefix: json_.containsKey('uriPrefix')
              ? json_['uriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uriPrefix != null) 'uriPrefix': uriPrefix!,
      };
}

/// Represents a user's consent in terms of the resources that can be accessed
/// and under what conditions.
class GoogleCloudHealthcareV1ConsentPolicy {
  /// The request conditions to meet to grant access.
  ///
  /// In addition to any supported comparison operators, authorization rules may
  /// have `IN` operator as well as at most 10 logical operators that are
  /// limited to `AND` (`&&`), `OR` (`||`).
  ///
  /// Required.
  Expr? authorizationRule;

  /// The resources that this policy applies to.
  ///
  /// A resource is a match if it matches all the attributes listed here. If
  /// empty, this policy applies to all User data mappings for the given user.
  core.List<Attribute>? resourceAttributes;

  GoogleCloudHealthcareV1ConsentPolicy({
    this.authorizationRule,
    this.resourceAttributes,
  });

  GoogleCloudHealthcareV1ConsentPolicy.fromJson(core.Map json_)
      : this(
          authorizationRule: json_.containsKey('authorizationRule')
              ? Expr.fromJson(json_['authorizationRule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resourceAttributes: json_.containsKey('resourceAttributes')
              ? (json_['resourceAttributes'] as core.List)
                  .map((value) => Attribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizationRule != null) 'authorizationRule': authorizationRule!,
        if (resourceAttributes != null)
          'resourceAttributes': resourceAttributes!,
      };
}

/// The BigQuery table where the server writes the output.
class GoogleCloudHealthcareV1DicomBigQueryDestination {
  /// Use `write_disposition` instead.
  ///
  /// If `write_disposition` is specified, this parameter is ignored.
  /// force=false is equivalent to write_disposition=WRITE_EMPTY and force=true
  /// is equivalent to write_disposition=WRITE_TRUNCATE.
  core.bool? force;

  /// BigQuery URI to a table, up to 2000 characters long, in the format
  /// `bq://projectId.bqDatasetId.tableId`
  core.String? tableUri;

  /// Determines whether the existing table in the destination is to be
  /// overwritten or appended to.
  ///
  /// If a write_disposition is specified, the `force` parameter is ignored.
  /// Possible string values are:
  /// - "WRITE_DISPOSITION_UNSPECIFIED" : Default behavior is the same as
  /// WRITE_EMPTY.
  /// - "WRITE_EMPTY" : Only export data if the destination table is empty.
  /// - "WRITE_TRUNCATE" : Erase all existing data in the destination table
  /// before writing the instances.
  /// - "WRITE_APPEND" : Append data to the destination table.
  core.String? writeDisposition;

  GoogleCloudHealthcareV1DicomBigQueryDestination({
    this.force,
    this.tableUri,
    this.writeDisposition,
  });

  GoogleCloudHealthcareV1DicomBigQueryDestination.fromJson(core.Map json_)
      : this(
          force:
              json_.containsKey('force') ? json_['force'] as core.bool : null,
          tableUri: json_.containsKey('tableUri')
              ? json_['tableUri'] as core.String
              : null,
          writeDisposition: json_.containsKey('writeDisposition')
              ? json_['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (force != null) 'force': force!,
        if (tableUri != null) 'tableUri': tableUri!,
        if (writeDisposition != null) 'writeDisposition': writeDisposition!,
      };
}

/// The Cloud Storage location where the server writes the output and the export
/// configuration.
class GoogleCloudHealthcareV1DicomGcsDestination {
  /// MIME types supported by DICOM spec.
  ///
  /// Each file is written in the following format:
  /// `.../{study_id}/{series_id}/{instance_id}[/{frame_number}].{extension}`
  /// The frame_number component exists only for multi-frame instances.
  /// Supported MIME types are consistent with supported formats in DICOMweb:
  /// https://cloud.google.com/healthcare/docs/dicom#retrieve_transaction.
  /// Specifically, the following are supported: - application/dicom;
  /// transfer-syntax=1.2.840.10008.1.2.1 (uncompressed DICOM) -
  /// application/dicom; transfer-syntax=1.2.840.10008.1.2.4.50 (DICOM with
  /// embedded JPEG Baseline) - application/dicom;
  /// transfer-syntax=1.2.840.10008.1.2.4.90 (DICOM with embedded JPEG 2000
  /// Lossless Only) - application/dicom; transfer-syntax=1.2.840.10008.1.2.4.91
  /// (DICOM with embedded JPEG 2000) - application/dicom; transfer-syntax=*
  /// (DICOM with no transcoding) - application/octet-stream;
  /// transfer-syntax=1.2.840.10008.1.2.1 (raw uncompressed PixelData) -
  /// application/octet-stream; transfer-syntax=* (raw PixelData in whatever
  /// format it was uploaded in) - image/jpeg;
  /// transfer-syntax=1.2.840.10008.1.2.4.50 (Consumer JPEG) - image/png The
  /// following extensions are used for output files: - application/dicom -\>
  /// .dcm - image/jpeg -\> .jpg - image/png -\> .png - application/octet-stream
  /// -\> no extension If unspecified, the instances are exported in the
  /// original DICOM format they were uploaded in.
  core.String? mimeType;

  /// The Cloud Storage destination to export to.
  ///
  /// URI for a Cloud Storage directory where the server writes the result
  /// files, in the format `gs://{bucket-id}/{path/to/destination/dir}`). If
  /// there is no trailing slash, the service appends one when composing the
  /// object path. The user is responsible for creating the Cloud Storage bucket
  /// referenced in `uri_prefix`.
  core.String? uriPrefix;

  GoogleCloudHealthcareV1DicomGcsDestination({
    this.mimeType,
    this.uriPrefix,
  });

  GoogleCloudHealthcareV1DicomGcsDestination.fromJson(core.Map json_)
      : this(
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          uriPrefix: json_.containsKey('uriPrefix')
              ? json_['uriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mimeType != null) 'mimeType': mimeType!,
        if (uriPrefix != null) 'uriPrefix': uriPrefix!,
      };
}

/// Specifies the configuration for importing data from Cloud Storage.
class GoogleCloudHealthcareV1DicomGcsSource {
  /// Points to a Cloud Storage URI containing file(s) with content only.
  ///
  /// The URI must be in the following format: `gs://{bucket_id}/{object_id}`.
  /// The URI can include wildcards in `object_id` and thus identify multiple
  /// files. Supported wildcards: * '*' to match 0 or more non-separator
  /// characters * '**' to match 0 or more characters (including separators).
  /// Must be used at the end of a path and with no other wildcards in the path.
  /// Can also be used with a file extension (such as .dcm), which imports all
  /// files with the extension in the specified directory and its
  /// sub-directories. For example, `gs://my-bucket/my-directory / * *.dcm`
  /// imports all files with .dcm extensions in `my-directory/` and its
  /// sub-directories. * '?' to match 1 character. All other URI formats are
  /// invalid. Files matching the wildcard are expected to contain content only,
  /// no metadata.
  core.String? uri;

  GoogleCloudHealthcareV1DicomGcsSource({
    this.uri,
  });

  GoogleCloudHealthcareV1DicomGcsSource.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// StreamConfig specifies configuration for a streaming DICOM export.
class GoogleCloudHealthcareV1DicomStreamConfig {
  /// Results are appended to this table.
  ///
  /// The server creates a new table in the given BigQuery dataset if the
  /// specified table does not exist. To enable the Cloud Healthcare API to
  /// write to your BigQuery table, you must give the Cloud Healthcare API
  /// service account the bigquery.dataEditor role. The service account is:
  /// `service-{PROJECT_NUMBER}@gcp-sa-healthcare.iam.gserviceaccount.com`. The
  /// PROJECT_NUMBER identifies the project that the DICOM store resides in. To
  /// get the project number, go to the Cloud Console Dashboard. It is
  /// recommended to not have a custom schema in the destination table which
  /// could conflict with the schema created by the Cloud Healthcare API.
  /// Instance deletions are not applied to the destination table. The
  /// destination's table schema will be automatically updated in case a new
  /// instance's data is incompatible with the current schema. The schema should
  /// not be updated manually as this can cause incompatibilies that cannot be
  /// resolved automatically. One resolution in this case is to delete the
  /// incompatible table and let the server recreate one, though the newly
  /// created table only contains data after the table recreation. BigQuery
  /// imposes a 1 MB limit on streaming insert row size, therefore any instance
  /// that generates more than 1 MB of BigQuery data will not be streamed. If an
  /// instance cannot be streamed to BigQuery, errors will be logged to Cloud
  /// Logging (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  GoogleCloudHealthcareV1DicomBigQueryDestination? bigqueryDestination;

  GoogleCloudHealthcareV1DicomStreamConfig({
    this.bigqueryDestination,
  });

  GoogleCloudHealthcareV1DicomStreamConfig.fromJson(core.Map json_)
      : this(
          bigqueryDestination: json_.containsKey('bigqueryDestination')
              ? GoogleCloudHealthcareV1DicomBigQueryDestination.fromJson(
                  json_['bigqueryDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination!,
      };
}

/// The configuration for exporting to BigQuery.
class GoogleCloudHealthcareV1FhirBigQueryDestination {
  /// BigQuery URI to an existing dataset, up to 2000 characters long, in the
  /// format `bq://projectId.bqDatasetId`.
  core.String? datasetUri;

  /// If this flag is `TRUE`, all tables are deleted from the dataset before the
  /// new exported tables are written.
  ///
  /// If the flag is not set and the destination dataset contains tables, the
  /// export call returns an error. If `write_disposition` is specified, this
  /// parameter is ignored. force=false is equivalent to
  /// write_disposition=WRITE_EMPTY and force=true is equivalent to
  /// write_disposition=WRITE_TRUNCATE.
  core.bool? force;

  /// The configuration for the exported BigQuery schema.
  SchemaConfig? schemaConfig;

  /// Determines if existing data in the destination dataset is overwritten,
  /// appended to, or not written if the tables contain data.
  ///
  /// If a write_disposition is specified, the `force` parameter is ignored.
  /// Possible string values are:
  /// - "WRITE_DISPOSITION_UNSPECIFIED" : Default behavior is the same as
  /// WRITE_EMPTY.
  /// - "WRITE_EMPTY" : Only export data if the destination tables are empty.
  /// - "WRITE_TRUNCATE" : Erase all existing data in the destination tables
  /// before writing the FHIR resources.
  /// - "WRITE_APPEND" : Append data to the destination tables.
  core.String? writeDisposition;

  GoogleCloudHealthcareV1FhirBigQueryDestination({
    this.datasetUri,
    this.force,
    this.schemaConfig,
    this.writeDisposition,
  });

  GoogleCloudHealthcareV1FhirBigQueryDestination.fromJson(core.Map json_)
      : this(
          datasetUri: json_.containsKey('datasetUri')
              ? json_['datasetUri'] as core.String
              : null,
          force:
              json_.containsKey('force') ? json_['force'] as core.bool : null,
          schemaConfig: json_.containsKey('schemaConfig')
              ? SchemaConfig.fromJson(
                  json_['schemaConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          writeDisposition: json_.containsKey('writeDisposition')
              ? json_['writeDisposition'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetUri != null) 'datasetUri': datasetUri!,
        if (force != null) 'force': force!,
        if (schemaConfig != null) 'schemaConfig': schemaConfig!,
        if (writeDisposition != null) 'writeDisposition': writeDisposition!,
      };
}

/// The configuration for exporting to Cloud Storage.
class GoogleCloudHealthcareV1FhirGcsDestination {
  /// URI for a Cloud Storage directory where result files should be written, in
  /// the format of `gs://{bucket-id}/{path/to/destination/dir}`.
  ///
  /// If there is no trailing slash, the service appends one when composing the
  /// object path. The user is responsible for creating the Cloud Storage bucket
  /// referenced in `uri_prefix`.
  core.String? uriPrefix;

  GoogleCloudHealthcareV1FhirGcsDestination({
    this.uriPrefix,
  });

  GoogleCloudHealthcareV1FhirGcsDestination.fromJson(core.Map json_)
      : this(
          uriPrefix: json_.containsKey('uriPrefix')
              ? json_['uriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uriPrefix != null) 'uriPrefix': uriPrefix!,
      };
}

/// Specifies the configuration for importing data from Cloud Storage.
typedef GoogleCloudHealthcareV1FhirGcsSource = $GcsSource;

/// Construct representing a logical group or a segment.
class GroupOrSegment {
  SchemaGroup? group;
  SchemaSegment? segment;

  GroupOrSegment({
    this.group,
    this.segment,
  });

  GroupOrSegment.fromJson(core.Map json_)
      : this(
          group: json_.containsKey('group')
              ? SchemaGroup.fromJson(
                  json_['group'] as core.Map<core.String, core.dynamic>)
              : null,
          segment: json_.containsKey('segment')
              ? SchemaSegment.fromJson(
                  json_['segment'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (group != null) 'group': group!,
        if (segment != null) 'segment': segment!,
      };
}

/// Root config message for HL7v2 schema.
///
/// This contains a schema structure of groups and segments, and filters that
/// determine which messages to apply the schema structure to.
class Hl7SchemaConfig {
  /// Map from each HL7v2 message type and trigger event pair, such as ADT_A04,
  /// to its schema configuration root group.
  core.Map<core.String, SchemaGroup>? messageSchemaConfigs;

  /// Each VersionSource is tested and only if they all match is the schema used
  /// for the message.
  core.List<VersionSource>? version;

  Hl7SchemaConfig({
    this.messageSchemaConfigs,
    this.version,
  });

  Hl7SchemaConfig.fromJson(core.Map json_)
      : this(
          messageSchemaConfigs: json_.containsKey('messageSchemaConfigs')
              ? (json_['messageSchemaConfigs']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    SchemaGroup.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          version: json_.containsKey('version')
              ? (json_['version'] as core.List)
                  .map((value) => VersionSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageSchemaConfigs != null)
          'messageSchemaConfigs': messageSchemaConfigs!,
        if (version != null) 'version': version!,
      };
}

/// Root config for HL7v2 datatype definitions for a specific HL7v2 version.
class Hl7TypesConfig {
  /// The HL7v2 type definitions.
  core.List<Type>? type;

  /// The version selectors that this config applies to.
  ///
  /// A message must match ALL version sources to apply.
  core.List<VersionSource>? version;

  Hl7TypesConfig({
    this.type,
    this.version,
  });

  Hl7TypesConfig.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type')
              ? (json_['type'] as core.List)
                  .map((value) => Type.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          version: json_.containsKey('version')
              ? (json_['version'] as core.List)
                  .map((value) => VersionSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (version != null) 'version': version!,
      };
}

/// Specifies where and whether to send notifications upon changes to a data
/// store.
class Hl7V2NotificationConfig {
  /// Restricts notifications sent for messages matching a filter.
  ///
  /// If this is empty, all messages are matched. The following syntax is
  /// available: * A string field value can be written as text inside quotation
  /// marks, for example `"query text"`. The only valid relational operation for
  /// text fields is equality (`=`), where text is searched within the field,
  /// rather than having the field be equal to the text. For example, `"Comment
  /// = great"` returns messages with `great` in the comment field. * A number
  /// field value can be written as an integer, a decimal, or an exponential.
  /// The valid relational operators for number fields are the equality operator
  /// (`=`), along with the less than/greater than operators (`<`, `<=`, `>`,
  /// `>=`). Note that there is no inequality (`!=`) operator. You can prepend
  /// the `NOT` operator to an expression to negate it. * A date field value
  /// must be written in `yyyy-mm-dd` form. Fields with date and time use the
  /// RFC3339 time format. Leading zeros are required for one-digit months and
  /// days. The valid relational operators for date fields are the equality
  /// operator (`=`) , along with the less than/greater than operators (`<`,
  /// `<=`, `>`, `>=`). Note that there is no inequality (`!=`) operator. You
  /// can prepend the `NOT` operator to an expression to negate it. * Multiple
  /// field query expressions can be combined in one query by adding `AND` or
  /// `OR` operators between the expressions. If a boolean operator appears
  /// within a quoted string, it is not treated as special, it's just another
  /// part of the character string to be matched. You can prepend the `NOT`
  /// operator to an expression to negate it. The following fields and functions
  /// are available for filtering: * `message_type`, from the MSH-9.1 field. For
  /// example, `NOT message_type = "ADT"`. * `send_date` or `sendDate`, the
  /// YYYY-MM-DD date the message was sent in the dataset's time_zone, from the
  /// MSH-7 segment. For example, `send_date < "2017-01-02"`. * `send_time`, the
  /// timestamp when the message was sent, using the RFC3339 time format for
  /// comparisons, from the MSH-7 segment. For example, `send_time <
  /// "2017-01-02T00:00:00-05:00"`. * `create_time`, the timestamp when the
  /// message was created in the HL7v2 store. Use the RFC3339 time format for
  /// comparisons. For example, `create_time < "2017-01-02T00:00:00-05:00"`. *
  /// `send_facility`, the care center that the message came from, from the
  /// MSH-4 segment. For example, `send_facility = "ABC"`. * `PatientId(value,
  /// type)`, which matches if the message lists a patient having an ID of the
  /// given value and type in the PID-2, PID-3, or PID-4 segments. For example,
  /// `PatientId("123456", "MRN")`. * `labels.x`, a string value of the label
  /// with key `x` as set using the Message.labels map. For example,
  /// `labels."priority"="high"`. The operator `:*` can be used to assert the
  /// existence of a label. For example, `labels."priority":*`.
  core.String? filter;

  /// The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that
  /// notifications of changes are published on.
  ///
  /// Supplied by the client. The notification is a `PubsubMessage` with the
  /// following fields: * `PubsubMessage.Data` contains the resource name. *
  /// `PubsubMessage.MessageId` is the ID of this notification. It's guaranteed
  /// to be unique within the topic. * `PubsubMessage.PublishTime` is the time
  /// when the message was published. Note that notifications are only sent if
  /// the topic is non-empty.
  /// [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be
  /// scoped to a project. The Cloud Healthcare API service account,
  /// service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com, must
  /// have publisher permissions on the given Pub/Sub topic. Not having adequate
  /// permissions causes the calls that send notifications to fail. If a
  /// notification cannot be published to Pub/Sub, errors are logged to Cloud
  /// Logging. For more information, see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  core.String? pubsubTopic;

  Hl7V2NotificationConfig({
    this.filter,
    this.pubsubTopic,
  });

  Hl7V2NotificationConfig.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          pubsubTopic: json_.containsKey('pubsubTopic')
              ? json_['pubsubTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
      };
}

/// Represents an HL7v2 store.
class Hl7V2Store {
  /// User-supplied key-value pairs used to organize HL7v2 stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between
  /// 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
  /// must conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} No more than 64 labels can be associated
  /// with a given store.
  core.Map<core.String, core.String>? labels;

  /// Resource name of the HL7v2 store, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  core.String? name;

  /// A list of notification configs.
  ///
  /// Each configuration uses a filter to determine whether to publish a message
  /// (both Ingest & Create) on the corresponding notification destination. Only
  /// the message name is sent as part of the notification. Supplied by the
  /// client.
  core.List<Hl7V2NotificationConfig>? notificationConfigs;

  /// The configuration for the parser.
  ///
  /// It determines how the server parses the messages.
  ParserConfig? parserConfig;

  /// Determines whether to reject duplicate messages.
  ///
  /// A duplicate message is a message with the same raw bytes as a message that
  /// has already been ingested/created in this HL7v2 store. The default value
  /// is false, meaning that the store accepts the duplicate messages and it
  /// also returns the same ACK message in the IngestMessageResponse as has been
  /// returned previously. Note that only one resource is created in the store.
  /// When this field is set to true, CreateMessage/IngestMessage requests with
  /// a duplicate message will be rejected by the store, and
  /// IngestMessageErrorDetail returns a NACK message upon rejection.
  core.bool? rejectDuplicateMessage;

  Hl7V2Store({
    this.labels,
    this.name,
    this.notificationConfigs,
    this.parserConfig,
    this.rejectDuplicateMessage,
  });

  Hl7V2Store.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          notificationConfigs: json_.containsKey('notificationConfigs')
              ? (json_['notificationConfigs'] as core.List)
                  .map((value) => Hl7V2NotificationConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parserConfig: json_.containsKey('parserConfig')
              ? ParserConfig.fromJson(
                  json_['parserConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          rejectDuplicateMessage: json_.containsKey('rejectDuplicateMessage')
              ? json_['rejectDuplicateMessage'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (notificationConfigs != null)
          'notificationConfigs': notificationConfigs!,
        if (parserConfig != null) 'parserConfig': parserConfig!,
        if (rejectDuplicateMessage != null)
          'rejectDuplicateMessage': rejectDuplicateMessage!,
      };
}

/// Count of messages and total storage size by type for a given HL7 store.
class Hl7V2StoreMetric {
  /// The total count of HL7v2 messages in the store for the given message type.
  core.String? count;

  /// The Hl7v2 message type this metric applies to, such as `ADT` or `ORU`.
  core.String? messageType;

  /// The total amount of structured storage used by HL7v2 messages of this
  /// message type in the store.
  core.String? structuredStorageSizeBytes;

  Hl7V2StoreMetric({
    this.count,
    this.messageType,
    this.structuredStorageSizeBytes,
  });

  Hl7V2StoreMetric.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          messageType: json_.containsKey('messageType')
              ? json_['messageType'] as core.String
              : null,
          structuredStorageSizeBytes:
              json_.containsKey('structuredStorageSizeBytes')
                  ? json_['structuredStorageSizeBytes'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (messageType != null) 'messageType': messageType!,
        if (structuredStorageSizeBytes != null)
          'structuredStorageSizeBytes': structuredStorageSizeBytes!,
      };
}

/// List of metrics for a given HL7v2 store.
class Hl7V2StoreMetrics {
  /// List of HL7v2 store metrics by message type.
  core.List<Hl7V2StoreMetric>? metrics;

  /// The resource name of the HL7v2 store to get metrics for, in the format
  /// `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  core.String? name;

  Hl7V2StoreMetrics({
    this.metrics,
    this.name,
  });

  Hl7V2StoreMetrics.fromJson(core.Map json_)
      : this(
          metrics: json_.containsKey('metrics')
              ? (json_['metrics'] as core.List)
                  .map((value) => Hl7V2StoreMetric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metrics != null) 'metrics': metrics!,
        if (name != null) 'name': name!,
      };
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef HttpBody = $HttpBody;

/// Raw bytes representing consent artifact content.
class Image {
  /// Input only.
  ///
  /// Points to a Cloud Storage URI containing the consent artifact content. The
  /// URI must be in the following format: `gs://{bucket_id}/{object_id}`. The
  /// Cloud Healthcare API service account must have the
  /// `roles/storage.objectViewer` Cloud IAM role for this Cloud Storage
  /// location. The consent artifact content at this URI is copied to a Cloud
  /// Storage location managed by the Cloud Healthcare API. Responses to
  /// fetching requests return the consent artifact content in raw_bytes.
  core.String? gcsUri;

  /// Consent artifact content represented as a stream of bytes.
  ///
  /// This field is populated when returned in GetConsentArtifact response, but
  /// not included in CreateConsentArtifact and ListConsentArtifact response.
  core.String? rawBytes;
  core.List<core.int> get rawBytesAsBytes => convert.base64.decode(rawBytes!);

  set rawBytesAsBytes(core.List<core.int> bytes_) {
    rawBytes =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  Image({
    this.gcsUri,
    this.rawBytes,
  });

  Image.fromJson(core.Map json_)
      : this(
          gcsUri: json_.containsKey('gcsUri')
              ? json_['gcsUri'] as core.String
              : null,
          rawBytes: json_.containsKey('rawBytes')
              ? json_['rawBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUri != null) 'gcsUri': gcsUri!,
        if (rawBytes != null) 'rawBytes': rawBytes!,
      };
}

/// Specifies how to handle de-identification of image pixels.
class ImageConfig {
  /// Determines how to redact text from image.
  /// Possible string values are:
  /// - "TEXT_REDACTION_MODE_UNSPECIFIED" : No text redaction specified. Same as
  /// REDACT_NO_TEXT.
  /// - "REDACT_ALL_TEXT" : Redact all text.
  /// - "REDACT_SENSITIVE_TEXT" : Redact sensitive text. Uses the set of
  /// [Default DICOM InfoTypes](https://cloud.google.com/healthcare-api/docs/how-tos/dicom-deidentify#default_dicom_infotypes).
  /// - "REDACT_NO_TEXT" : Do not redact text.
  core.String? textRedactionMode;

  ImageConfig({
    this.textRedactionMode,
  });

  ImageConfig.fromJson(core.Map json_)
      : this(
          textRedactionMode: json_.containsKey('textRedactionMode')
              ? json_['textRedactionMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (textRedactionMode != null) 'textRedactionMode': textRedactionMode!,
      };
}

/// Imports data into the specified DICOM store.
///
/// Returns an error if any of the files to import are not DICOM files. This API
/// accepts duplicate DICOM instances by ignoring the newly-pushed instance. It
/// does not overwrite.
class ImportDicomDataRequest {
  /// Cloud Storage source data location and import configuration.
  ///
  /// The Cloud Healthcare Service Agent requires the
  /// `roles/storage.objectViewer` Cloud IAM roles on the Cloud Storage
  /// location.
  GoogleCloudHealthcareV1DicomGcsSource? gcsSource;

  ImportDicomDataRequest({
    this.gcsSource,
  });

  ImportDicomDataRequest.fromJson(core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? GoogleCloudHealthcareV1DicomGcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// Request to import messages.
class ImportMessagesRequest {
  /// Cloud Storage source data location and import configuration.
  ///
  /// The Cloud Healthcare Service Agent requires the
  /// `roles/storage.objectViewer` Cloud IAM roles on the Cloud Storage
  /// location.
  GcsSource? gcsSource;

  ImportMessagesRequest({
    this.gcsSource,
  });

  ImportMessagesRequest.fromJson(core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// Request to import resources.
class ImportResourcesRequest {
  /// The content structure in the source location.
  ///
  /// If not specified, the server treats the input source files as BUNDLE.
  /// Possible string values are:
  /// - "CONTENT_STRUCTURE_UNSPECIFIED" : If the content structure is not
  /// specified, the default value `BUNDLE` is used.
  /// - "BUNDLE" : The source file contains one or more lines of
  /// newline-delimited JSON (ndjson). Each line is a bundle that contains one
  /// or more resources.
  /// - "RESOURCE" : The source file contains one or more lines of
  /// newline-delimited JSON (ndjson). Each line is a single resource.
  /// - "BUNDLE_PRETTY" : The entire file is one JSON bundle. The JSON can span
  /// multiple lines.
  /// - "RESOURCE_PRETTY" : The entire file is one JSON resource. The JSON can
  /// span multiple lines.
  core.String? contentStructure;

  /// Cloud Storage source data location and import configuration.
  ///
  /// The Healthcare Service Agent account requires the
  /// `roles/storage.objectAdmin` role on the Cloud Storage location. Each Cloud
  /// Storage object should be a text file that contains the format specified in
  /// ContentStructure.
  GoogleCloudHealthcareV1FhirGcsSource? gcsSource;

  ImportResourcesRequest({
    this.contentStructure,
    this.gcsSource,
  });

  ImportResourcesRequest.fromJson(core.Map json_)
      : this(
          contentStructure: json_.containsKey('contentStructure')
              ? json_['contentStructure'] as core.String
              : null,
          gcsSource: json_.containsKey('gcsSource')
              ? GoogleCloudHealthcareV1FhirGcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentStructure != null) 'contentStructure': contentStructure!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// A transformation to apply to text that is identified as a specific
/// info_type.
class InfoTypeTransformation {
  /// Config for character mask.
  CharacterMaskConfig? characterMaskConfig;

  /// Config for crypto hash.
  CryptoHashConfig? cryptoHashConfig;

  /// Config for date shift.
  DateShiftConfig? dateShiftConfig;

  /// InfoTypes to apply this transformation to.
  ///
  /// If this is not specified, the transformation applies to any info_type.
  core.List<core.String>? infoTypes;

  /// Config for text redaction.
  RedactConfig? redactConfig;

  /// Config for replace with InfoType.
  ReplaceWithInfoTypeConfig? replaceWithInfoTypeConfig;

  InfoTypeTransformation({
    this.characterMaskConfig,
    this.cryptoHashConfig,
    this.dateShiftConfig,
    this.infoTypes,
    this.redactConfig,
    this.replaceWithInfoTypeConfig,
  });

  InfoTypeTransformation.fromJson(core.Map json_)
      : this(
          characterMaskConfig: json_.containsKey('characterMaskConfig')
              ? CharacterMaskConfig.fromJson(json_['characterMaskConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cryptoHashConfig: json_.containsKey('cryptoHashConfig')
              ? CryptoHashConfig.fromJson(json_['cryptoHashConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dateShiftConfig: json_.containsKey('dateShiftConfig')
              ? DateShiftConfig.fromJson(json_['dateShiftConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          infoTypes: json_.containsKey('infoTypes')
              ? (json_['infoTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          redactConfig: json_.containsKey('redactConfig')
              ? RedactConfig.fromJson(
                  json_['redactConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          replaceWithInfoTypeConfig:
              json_.containsKey('replaceWithInfoTypeConfig')
                  ? ReplaceWithInfoTypeConfig.fromJson(
                      json_['replaceWithInfoTypeConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (characterMaskConfig != null)
          'characterMaskConfig': characterMaskConfig!,
        if (cryptoHashConfig != null) 'cryptoHashConfig': cryptoHashConfig!,
        if (dateShiftConfig != null) 'dateShiftConfig': dateShiftConfig!,
        if (infoTypes != null) 'infoTypes': infoTypes!,
        if (redactConfig != null) 'redactConfig': redactConfig!,
        if (replaceWithInfoTypeConfig != null)
          'replaceWithInfoTypeConfig': replaceWithInfoTypeConfig!,
      };
}

/// Ingests a message into the specified HL7v2 store.
class IngestMessageRequest {
  /// HL7v2 message to ingest.
  Message? message;

  IngestMessageRequest({
    this.message,
  });

  IngestMessageRequest.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
      };
}

/// Acknowledges that a message has been ingested into the specified HL7v2
/// store.
class IngestMessageResponse {
  /// HL7v2 ACK message.
  core.String? hl7Ack;
  core.List<core.int> get hl7AckAsBytes => convert.base64.decode(hl7Ack!);

  set hl7AckAsBytes(core.List<core.int> bytes_) {
    hl7Ack =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Created message resource.
  Message? message;

  IngestMessageResponse({
    this.hl7Ack,
    this.message,
  });

  IngestMessageResponse.fromJson(core.Map json_)
      : this(
          hl7Ack: json_.containsKey('hl7Ack')
              ? json_['hl7Ack'] as core.String
              : null,
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hl7Ack != null) 'hl7Ack': hl7Ack!,
        if (message != null) 'message': message!,
      };
}

/// Include to use an existing data crypto key wrapped by KMS.
///
/// The wrapped key must be a 128-, 192-, or 256-bit key. The key must grant the
/// Cloud IAM permission `cloudkms.cryptoKeyVersions.useToDecrypt` to the
/// project's Cloud Healthcare Service Agent service account. For more
/// information, see
/// [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key).
class KmsWrappedCryptoKey {
  /// The resource name of the KMS CryptoKey to use for unwrapping.
  ///
  /// For example,
  /// `projects/{project_id}/locations/{location_id}/keyRings/{keyring}/cryptoKeys/{key}`.
  ///
  /// Required.
  core.String? cryptoKey;

  /// The wrapped data crypto key.
  ///
  /// Required.
  core.String? wrappedKey;
  core.List<core.int> get wrappedKeyAsBytes =>
      convert.base64.decode(wrappedKey!);

  set wrappedKeyAsBytes(core.List<core.int> bytes_) {
    wrappedKey =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  KmsWrappedCryptoKey({
    this.cryptoKey,
    this.wrappedKey,
  });

  KmsWrappedCryptoKey.fromJson(core.Map json_)
      : this(
          cryptoKey: json_.containsKey('cryptoKey')
              ? json_['cryptoKey'] as core.String
              : null,
          wrappedKey: json_.containsKey('wrappedKey')
              ? json_['wrappedKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cryptoKey != null) 'cryptoKey': cryptoKey!,
        if (wrappedKey != null) 'wrappedKey': wrappedKey!,
      };
}

/// EntityMentions can be linked to multiple entities using a LinkedEntity
/// message lets us add other fields, e.g. confidence.
class LinkedEntity {
  /// entity_id is a concept unique identifier.
  ///
  /// These are prefixed by a string that identifies the entity coding system,
  /// followed by the unique identifier within that system. For example,
  /// "UMLS/C0000970". This also supports ad hoc entities, which are formed by
  /// normalizing entity mention content.
  core.String? entityId;

  LinkedEntity({
    this.entityId,
  });

  LinkedEntity.fromJson(core.Map json_)
      : this(
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entityId != null) 'entityId': entityId!,
      };
}

class ListAttributeDefinitionsResponse {
  /// The returned Attribute definitions.
  ///
  /// The maximum number of attributes returned is determined by the value of
  /// page_size in the ListAttributeDefinitionsRequest.
  core.List<AttributeDefinition>? attributeDefinitions;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListAttributeDefinitionsResponse({
    this.attributeDefinitions,
    this.nextPageToken,
  });

  ListAttributeDefinitionsResponse.fromJson(core.Map json_)
      : this(
          attributeDefinitions: json_.containsKey('attributeDefinitions')
              ? (json_['attributeDefinitions'] as core.List)
                  .map((value) => AttributeDefinition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeDefinitions != null)
          'attributeDefinitions': attributeDefinitions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListConsentArtifactsResponse {
  /// The returned Consent artifacts.
  ///
  /// The maximum number of artifacts returned is determined by the value of
  /// page_size in the ListConsentArtifactsRequest.
  core.List<ConsentArtifact>? consentArtifacts;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListConsentArtifactsResponse({
    this.consentArtifacts,
    this.nextPageToken,
  });

  ListConsentArtifactsResponse.fromJson(core.Map json_)
      : this(
          consentArtifacts: json_.containsKey('consentArtifacts')
              ? (json_['consentArtifacts'] as core.List)
                  .map((value) => ConsentArtifact.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentArtifacts != null) 'consentArtifacts': consentArtifacts!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListConsentRevisionsResponse {
  /// The returned Consent revisions.
  ///
  /// The maximum number of revisions returned is determined by the value of
  /// `page_size` in the ListConsentRevisionsRequest.
  core.List<Consent>? consents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListConsentRevisionsResponse({
    this.consents,
    this.nextPageToken,
  });

  ListConsentRevisionsResponse.fromJson(core.Map json_)
      : this(
          consents: json_.containsKey('consents')
              ? (json_['consents'] as core.List)
                  .map((value) => Consent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consents != null) 'consents': consents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListConsentStoresResponse {
  /// The returned consent stores.
  ///
  /// The maximum number of stores returned is determined by the value of
  /// page_size in the ListConsentStoresRequest.
  core.List<ConsentStore>? consentStores;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListConsentStoresResponse({
    this.consentStores,
    this.nextPageToken,
  });

  ListConsentStoresResponse.fromJson(core.Map json_)
      : this(
          consentStores: json_.containsKey('consentStores')
              ? (json_['consentStores'] as core.List)
                  .map((value) => ConsentStore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentStores != null) 'consentStores': consentStores!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListConsentsResponse {
  /// The returned Consents.
  ///
  /// The maximum number of Consents returned is determined by the value of
  /// page_size in the ListConsentsRequest.
  core.List<Consent>? consents;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListConsentsResponse({
    this.consents,
    this.nextPageToken,
  });

  ListConsentsResponse.fromJson(core.Map json_)
      : this(
          consents: json_.containsKey('consents')
              ? (json_['consents'] as core.List)
                  .map((value) => Consent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consents != null) 'consents': consents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Lists the available datasets.
class ListDatasetsResponse {
  /// The first page of datasets.
  core.List<Dataset>? datasets;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListDatasetsResponse({
    this.datasets,
    this.nextPageToken,
  });

  ListDatasetsResponse.fromJson(core.Map json_)
      : this(
          datasets: json_.containsKey('datasets')
              ? (json_['datasets'] as core.List)
                  .map((value) => Dataset.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasets != null) 'datasets': datasets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Lists the DICOM stores in the given dataset.
class ListDicomStoresResponse {
  /// The returned DICOM stores.
  ///
  /// Won't be more DICOM stores than the value of page_size in the request.
  core.List<DicomStore>? dicomStores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListDicomStoresResponse({
    this.dicomStores,
    this.nextPageToken,
  });

  ListDicomStoresResponse.fromJson(core.Map json_)
      : this(
          dicomStores: json_.containsKey('dicomStores')
              ? (json_['dicomStores'] as core.List)
                  .map((value) => DicomStore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dicomStores != null) 'dicomStores': dicomStores!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Lists the FHIR stores in the given dataset.
class ListFhirStoresResponse {
  /// The returned FHIR stores.
  ///
  /// Won't be more FHIR stores than the value of page_size in the request.
  core.List<FhirStore>? fhirStores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListFhirStoresResponse({
    this.fhirStores,
    this.nextPageToken,
  });

  ListFhirStoresResponse.fromJson(core.Map json_)
      : this(
          fhirStores: json_.containsKey('fhirStores')
              ? (json_['fhirStores'] as core.List)
                  .map((value) => FhirStore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fhirStores != null) 'fhirStores': fhirStores!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Lists the HL7v2 stores in the given dataset.
class ListHl7V2StoresResponse {
  /// The returned HL7v2 stores.
  ///
  /// Won't be more HL7v2 stores than the value of page_size in the request.
  core.List<Hl7V2Store>? hl7V2Stores;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListHl7V2StoresResponse({
    this.hl7V2Stores,
    this.nextPageToken,
  });

  ListHl7V2StoresResponse.fromJson(core.Map json_)
      : this(
          hl7V2Stores: json_.containsKey('hl7V2Stores')
              ? (json_['hl7V2Stores'] as core.List)
                  .map((value) => Hl7V2Store.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hl7V2Stores != null) 'hl7V2Stores': hl7V2Stores!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

/// Lists the messages in the specified HL7v2 store.
class ListMessagesResponse {
  /// The returned Messages.
  ///
  /// Won't be more Messages than the value of page_size in the request. See
  /// view for populated fields.
  core.List<Message>? hl7V2Messages;

  /// Token to retrieve the next page of results or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListMessagesResponse({
    this.hl7V2Messages,
    this.nextPageToken,
  });

  ListMessagesResponse.fromJson(core.Map json_)
      : this(
          hl7V2Messages: json_.containsKey('hl7V2Messages')
              ? (json_['hl7V2Messages'] as core.List)
                  .map((value) => Message.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hl7V2Messages != null) 'hl7V2Messages': hl7V2Messages!,
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

class ListUserDataMappingsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The returned User data mappings.
  ///
  /// The maximum number of User data mappings returned is determined by the
  /// value of page_size in the ListUserDataMappingsRequest.
  core.List<UserDataMapping>? userDataMappings;

  ListUserDataMappingsResponse({
    this.nextPageToken,
    this.userDataMappings,
  });

  ListUserDataMappingsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          userDataMappings: json_.containsKey('userDataMappings')
              ? (json_['userDataMappings'] as core.List)
                  .map((value) => UserDataMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (userDataMappings != null) 'userDataMappings': userDataMappings!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// A complete HL7v2 message.
///
/// See
/// [Introduction to HL7 Standards](https://www.hl7.org/implement/standards/index.cfm?ref=common)
/// for details on the standard.
class Message {
  /// The datetime when the message was created.
  ///
  /// Set by the server.
  ///
  /// Output only.
  core.String? createTime;

  /// Raw message bytes.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// User-supplied key-value pairs used to organize HL7v2 stores.
  ///
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
  /// of maximum 128 bytes, and must conform to the following PCRE regular
  /// expression: \p{Ll}\p{Lo}{0,62} Label values are optional, must be between
  /// 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and
  /// must conform to the following PCRE regular expression:
  /// \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} No more than 64 labels can be associated
  /// with a given store.
  core.Map<core.String, core.String>? labels;

  /// The message type for this message.
  ///
  /// MSH-9.1.
  core.String? messageType;

  /// Resource name of the Message, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`.
  ///
  /// Assigned by the server.
  core.String? name;

  /// The parsed version of the raw message data.
  ///
  /// Output only.
  ParsedData? parsedData;

  /// All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this
  /// message.
  core.List<PatientId>? patientIds;

  /// The parsed version of the raw message data schematized according to this
  /// store's schemas and type definitions.
  SchematizedData? schematizedData;

  /// The hospital that this message came from.
  ///
  /// MSH-4.
  core.String? sendFacility;

  /// The datetime the sending application sent this message.
  ///
  /// MSH-7.
  core.String? sendTime;

  Message({
    this.createTime,
    this.data,
    this.labels,
    this.messageType,
    this.name,
    this.parsedData,
    this.patientIds,
    this.schematizedData,
    this.sendFacility,
    this.sendTime,
  });

  Message.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          messageType: json_.containsKey('messageType')
              ? json_['messageType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          parsedData: json_.containsKey('parsedData')
              ? ParsedData.fromJson(
                  json_['parsedData'] as core.Map<core.String, core.dynamic>)
              : null,
          patientIds: json_.containsKey('patientIds')
              ? (json_['patientIds'] as core.List)
                  .map((value) => PatientId.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schematizedData: json_.containsKey('schematizedData')
              ? SchematizedData.fromJson(json_['schematizedData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sendFacility: json_.containsKey('sendFacility')
              ? json_['sendFacility'] as core.String
              : null,
          sendTime: json_.containsKey('sendTime')
              ? json_['sendTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (data != null) 'data': data!,
        if (labels != null) 'labels': labels!,
        if (messageType != null) 'messageType': messageType!,
        if (name != null) 'name': name!,
        if (parsedData != null) 'parsedData': parsedData!,
        if (patientIds != null) 'patientIds': patientIds!,
        if (schematizedData != null) 'schematizedData': schematizedData!,
        if (sendFacility != null) 'sendFacility': sendFacility!,
        if (sendTime != null) 'sendTime': sendTime!,
      };
}

/// Specifies where to send notifications upon changes to a data store.
class NotificationConfig {
  /// The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that
  /// notifications of changes are published on.
  ///
  /// Supplied by the client. PubsubMessage.Data contains the resource name.
  /// PubsubMessage.MessageId is the ID of this message. It is guaranteed to be
  /// unique within the topic. PubsubMessage.PublishTime is the time at which
  /// the message was published. Notifications are only sent if the topic is
  /// non-empty.
  /// [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be
  /// scoped to a project. Cloud Healthcare API service account must have
  /// publisher permissions on the given Pub/Sub topic. Not having adequate
  /// permissions causes the calls that send notifications to fail. If a
  /// notification can't be published to Pub/Sub, errors are logged to Cloud
  /// Logging (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  /// If the number of errors exceeds a certain rate, some aren't submitted.
  /// Note that not all operations trigger notifications, see
  /// [Configuring Pub/Sub notifications](https://cloud.google.com/healthcare/docs/how-tos/pubsub)
  /// for specific details.
  core.String? pubsubTopic;

  /// Indicates whether or not to send Pub/Sub notifications on bulk import.
  ///
  /// Only supported for DICOM imports.
  core.bool? sendForBulkImport;

  NotificationConfig({
    this.pubsubTopic,
    this.sendForBulkImport,
  });

  NotificationConfig.fromJson(core.Map json_)
      : this(
          pubsubTopic: json_.containsKey('pubsubTopic')
              ? json_['pubsubTopic'] as core.String
              : null,
          sendForBulkImport: json_.containsKey('sendForBulkImport')
              ? json_['sendForBulkImport'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
        if (sendForBulkImport != null) 'sendForBulkImport': sendForBulkImport!,
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

/// The content of a HL7v2 message in a structured format.
class ParsedData {
  core.List<Segment>? segments;

  ParsedData({
    this.segments,
  });

  ParsedData.fromJson(core.Map json_)
      : this(
          segments: json_.containsKey('segments')
              ? (json_['segments'] as core.List)
                  .map((value) => Segment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (segments != null) 'segments': segments!,
      };
}

/// The configuration for the parser.
///
/// It determines how the server parses the messages.
class ParserConfig {
  /// Determines whether messages with no header are allowed.
  core.bool? allowNullHeader;

  /// Schemas used to parse messages in this store, if schematized parsing is
  /// desired.
  SchemaPackage? schema;

  /// Byte(s) to use as the segment terminator.
  ///
  /// If this is unset, '\r' is used as segment terminator, matching the HL7
  /// version 2 specification.
  core.String? segmentTerminator;
  core.List<core.int> get segmentTerminatorAsBytes =>
      convert.base64.decode(segmentTerminator!);

  set segmentTerminatorAsBytes(core.List<core.int> bytes_) {
    segmentTerminator =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Determines the version of both the default parser to be used when `schema`
  /// is not given, as well as the schematized parser used when `schema` is
  /// specified.
  ///
  /// This field is immutable after HL7v2 store creation.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "PARSER_VERSION_UNSPECIFIED" : Unspecified parser version, equivalent to
  /// V1.
  /// - "V1" : The `parsed_data` includes every given non-empty message field
  /// except the Field Separator (MSH-1) field. As a result, the parsed MSH
  /// segment starts with the MSH-2 field and the field numbers are off-by-one
  /// with respect to the HL7 standard.
  /// - "V2" : The `parsed_data` includes every given non-empty message field.
  /// - "V3" : This version is the same as V2, with the following change. The
  /// `parsed_data` contains unescaped escaped field separators, component
  /// separators, sub-component separators, repetition separators, escape
  /// characters, and truncation characters. If `schema` is specified, the
  /// schematized parser uses improved parsing heuristics compared to previous
  /// versions.
  core.String? version;

  ParserConfig({
    this.allowNullHeader,
    this.schema,
    this.segmentTerminator,
    this.version,
  });

  ParserConfig.fromJson(core.Map json_)
      : this(
          allowNullHeader: json_.containsKey('allowNullHeader')
              ? json_['allowNullHeader'] as core.bool
              : null,
          schema: json_.containsKey('schema')
              ? SchemaPackage.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          segmentTerminator: json_.containsKey('segmentTerminator')
              ? json_['segmentTerminator'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowNullHeader != null) 'allowNullHeader': allowNullHeader!,
        if (schema != null) 'schema': schema!,
        if (segmentTerminator != null) 'segmentTerminator': segmentTerminator!,
        if (version != null) 'version': version!,
      };
}

/// A patient identifier and associated type.
class PatientId {
  /// ID type.
  ///
  /// For example, MRN or NHS.
  core.String? type;

  /// The patient's unique identifier.
  core.String? value;

  PatientId({
    this.type,
    this.value,
  });

  PatientId.fromJson(core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
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

/// The Pub/Sub output destination.
///
/// The Cloud Healthcare Service Agent requires the `roles/pubsub.publisher`
/// Cloud IAM role on the Pub/Sub topic.
class PubsubDestination {
  /// The [Pub/Sub](https://cloud.google.com/pubsub/docs/) topic that Pub/Sub
  /// messages are published on.
  ///
  /// Supplied by the client. The `PubsubMessage` contains the following fields:
  /// * `PubsubMessage.Data` contains the resource name. *
  /// `PubsubMessage.MessageId` is the ID of this notification. It is guaranteed
  /// to be unique within the topic. * `PubsubMessage.PublishTime` is the time
  /// when the message was published.
  /// [Topic names](https://cloud.google.com/pubsub/docs/overview#names) must be
  /// scoped to a project. The Cloud Healthcare API service account,
  /// service-PROJECT_NUMBER@gcp-sa-healthcare.iam.gserviceaccount.com, must
  /// have publisher permissions on the given Pub/Sub topic. Not having adequate
  /// permissions causes the calls that send notifications to fail.
  core.String? pubsubTopic;

  PubsubDestination({
    this.pubsubTopic,
  });

  PubsubDestination.fromJson(core.Map json_)
      : this(
          pubsubTopic: json_.containsKey('pubsubTopic')
              ? json_['pubsubTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
      };
}

/// Queries all data_ids that are consented for a given use in the given consent
/// store and writes them to a specified destination.
///
/// The returned Operation includes a progress counter for the number of User
/// data mappings processed. Errors are logged to Cloud Logging (see
/// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)
/// and \[QueryAccessibleData\] for a sample log entry).
class QueryAccessibleDataRequest {
  /// The Cloud Storage destination.
  ///
  /// The Cloud Healthcare API service account must have the
  /// `roles/storage.objectAdmin` Cloud IAM role for this Cloud Storage
  /// location.
  GoogleCloudHealthcareV1ConsentGcsDestination? gcsDestination;

  /// The values of request attributes associated with this access request.
  core.Map<core.String, core.String>? requestAttributes;

  /// The values of resource attributes associated with the type of resources
  /// being requested.
  ///
  /// If no values are specified, then all resource types are included in the
  /// output.
  ///
  /// Optional.
  core.Map<core.String, core.String>? resourceAttributes;

  QueryAccessibleDataRequest({
    this.gcsDestination,
    this.requestAttributes,
    this.resourceAttributes,
  });

  QueryAccessibleDataRequest.fromJson(core.Map json_)
      : this(
          gcsDestination: json_.containsKey('gcsDestination')
              ? GoogleCloudHealthcareV1ConsentGcsDestination.fromJson(
                  json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestAttributes: json_.containsKey('requestAttributes')
              ? (json_['requestAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          resourceAttributes: json_.containsKey('resourceAttributes')
              ? (json_['resourceAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
        if (requestAttributes != null) 'requestAttributes': requestAttributes!,
        if (resourceAttributes != null)
          'resourceAttributes': resourceAttributes!,
      };
}

/// Define how to redact sensitive values.
///
/// Default behaviour is erase. For example, "My name is Jane." becomes "My name
/// is ."
typedef RedactConfig = $Empty;

/// Rejects the latest revision of the specified Consent by committing a new
/// revision with `state` updated to `REJECTED`.
///
/// If the latest revision of the given Consent is in the `REJECTED` state, no
/// new revision is committed.
class RejectConsentRequest {
  /// The resource name of the Consent artifact that contains documentation of
  /// the user's rejection of the draft Consent, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  ///
  /// If the draft Consent had a Consent artifact, this Consent artifact
  /// overwrites it.
  ///
  /// Optional.
  core.String? consentArtifact;

  RejectConsentRequest({
    this.consentArtifact,
  });

  RejectConsentRequest.fromJson(core.Map json_)
      : this(
          consentArtifact: json_.containsKey('consentArtifact')
              ? json_['consentArtifact'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentArtifact != null) 'consentArtifact': consentArtifact!,
      };
}

/// When using the INSPECT_AND_TRANSFORM action, each match is replaced with the
/// name of the info_type.
///
/// For example, "My name is Jane" becomes "My name is \[PERSON_NAME\]." The
/// TRANSFORM action is equivalent to redacting.
typedef ReplaceWithInfoTypeConfig = $Empty;

/// A list of FHIR resources.
class Resources {
  /// List of resources IDs.
  ///
  /// For example, "Patient/1234".
  core.List<core.String>? resources;

  Resources({
    this.resources,
  });

  Resources.fromJson(core.Map json_)
      : this(
          resources: json_.containsKey('resources')
              ? (json_['resources'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resources != null) 'resources': resources!,
      };
}

/// The consent evaluation result for a single `data_id`.
class Result {
  /// The resource names of all evaluated Consents mapped to their evaluation.
  core.Map<core.String, ConsentEvaluation>? consentDetails;

  /// Whether the resource is consented for the given use.
  core.bool? consented;

  /// The unique identifier of the evaluated resource.
  core.String? dataId;

  Result({
    this.consentDetails,
    this.consented,
    this.dataId,
  });

  Result.fromJson(core.Map json_)
      : this(
          consentDetails: json_.containsKey('consentDetails')
              ? (json_['consentDetails'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    ConsentEvaluation.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          consented: json_.containsKey('consented')
              ? json_['consented'] as core.bool
              : null,
          dataId: json_.containsKey('dataId')
              ? json_['dataId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentDetails != null) 'consentDetails': consentDetails!,
        if (consented != null) 'consented': consented!,
        if (dataId != null) 'dataId': dataId!,
      };
}

/// Revokes the latest revision of the specified Consent by committing a new
/// revision with `state` updated to `REVOKED`.
///
/// If the latest revision of the given Consent is in the `REVOKED` state, no
/// new revision is committed.
class RevokeConsentRequest {
  /// The resource name of the Consent artifact that contains proof of the
  /// user's revocation of the Consent, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  ///
  /// Optional.
  core.String? consentArtifact;

  RevokeConsentRequest({
    this.consentArtifact,
  });

  RevokeConsentRequest.fromJson(core.Map json_)
      : this(
          consentArtifact: json_.containsKey('consentArtifact')
              ? json_['consentArtifact'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consentArtifact != null) 'consentArtifact': consentArtifact!,
      };
}

/// Configuration for the FHIR BigQuery schema.
///
/// Determines how the server generates the schema.
class SchemaConfig {
  /// The configuration for exported BigQuery tables to be partitioned by FHIR
  /// resource's last updated time column.
  TimePartitioning? lastUpdatedPartitionConfig;

  /// The depth for all recursive structures in the output analytics schema.
  ///
  /// For example, `concept` in the CodeSystem resource is a recursive
  /// structure; when the depth is 2, the CodeSystem table will have a column
  /// called `concept.concept` but not `concept.concept.concept`. If not
  /// specified or set to 0, the server will use the default value 2. The
  /// maximum depth allowed is 5.
  core.String? recursiveStructureDepth;

  /// Specifies the output schema type.
  ///
  /// Schema type is required.
  /// Possible string values are:
  /// - "SCHEMA_TYPE_UNSPECIFIED" : No schema type specified. This type is
  /// unsupported.
  /// - "ANALYTICS" : Analytics schema defined by the FHIR community. See
  /// https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md. BigQuery
  /// only allows a maximum of 10,000 columns per table. Due to this limitation,
  /// the server will not generate schemas for fields of type `Resource`, which
  /// can hold any resource type. The affected fields are
  /// `Parameters.parameter.resource`, `Bundle.entry.resource`, and
  /// `Bundle.entry.response.outcome`. Analytics schema does not gracefully
  /// handle extensions with one or more occurrences, anaytics schema also does
  /// not handle contained resource.
  /// - "ANALYTICS_V2" : Analytics V2, similar to schema defined by the FHIR
  /// community, with added support for extensions with one or more occurrences
  /// and contained resources in stringified JSON. Analytics V2 uses more space
  /// in the destination table than Analytics V1. It is generally recommended to
  /// use Analytics V2 over Analytics.
  core.String? schemaType;

  SchemaConfig({
    this.lastUpdatedPartitionConfig,
    this.recursiveStructureDepth,
    this.schemaType,
  });

  SchemaConfig.fromJson(core.Map json_)
      : this(
          lastUpdatedPartitionConfig: json_
                  .containsKey('lastUpdatedPartitionConfig')
              ? TimePartitioning.fromJson(json_['lastUpdatedPartitionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          recursiveStructureDepth: json_.containsKey('recursiveStructureDepth')
              ? json_['recursiveStructureDepth'] as core.String
              : null,
          schemaType: json_.containsKey('schemaType')
              ? json_['schemaType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastUpdatedPartitionConfig != null)
          'lastUpdatedPartitionConfig': lastUpdatedPartitionConfig!,
        if (recursiveStructureDepth != null)
          'recursiveStructureDepth': recursiveStructureDepth!,
        if (schemaType != null) 'schemaType': schemaType!,
      };
}

/// An HL7v2 logical group construct.
class SchemaGroup {
  /// True indicates that this is a choice group, meaning that only one of its
  /// segments can exist in a given message.
  core.bool? choice;

  /// The maximum number of times this group can be repeated.
  ///
  /// 0 or -1 means unbounded.
  core.int? maxOccurs;

  /// Nested groups and/or segments.
  core.List<GroupOrSegment>? members;

  /// The minimum number of times this group must be present/repeated.
  core.int? minOccurs;

  /// The name of this group.
  ///
  /// For example, "ORDER_DETAIL".
  core.String? name;

  SchemaGroup({
    this.choice,
    this.maxOccurs,
    this.members,
    this.minOccurs,
    this.name,
  });

  SchemaGroup.fromJson(core.Map json_)
      : this(
          choice:
              json_.containsKey('choice') ? json_['choice'] as core.bool : null,
          maxOccurs: json_.containsKey('maxOccurs')
              ? json_['maxOccurs'] as core.int
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => GroupOrSegment.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          minOccurs: json_.containsKey('minOccurs')
              ? json_['minOccurs'] as core.int
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (choice != null) 'choice': choice!,
        if (maxOccurs != null) 'maxOccurs': maxOccurs!,
        if (members != null) 'members': members!,
        if (minOccurs != null) 'minOccurs': minOccurs!,
        if (name != null) 'name': name!,
      };
}

/// A schema package contains a set of schemas and type definitions.
class SchemaPackage {
  /// Flag to ignore all min_occurs restrictions in the schema.
  ///
  /// This means that incoming messages can omit any group, segment, field,
  /// component, or subcomponent.
  core.bool? ignoreMinOccurs;

  /// Schema configs that are layered based on their VersionSources that match
  /// the incoming message.
  ///
  /// Schema configs present in higher indices override those in lower indices
  /// with the same message type and trigger event if their VersionSources all
  /// match an incoming message.
  core.List<Hl7SchemaConfig>? schemas;

  /// Determines how messages that fail to parse are handled.
  /// Possible string values are:
  /// - "SCHEMATIZED_PARSING_TYPE_UNSPECIFIED" : Unspecified schematized parsing
  /// type, equivalent to `SOFT_FAIL`.
  /// - "SOFT_FAIL" : Messages that fail to parse are still stored and ACKed but
  /// a parser error is stored in place of the schematized data.
  /// - "HARD_FAIL" : Messages that fail to parse are rejected from
  /// ingestion/insertion and return an error code.
  core.String? schematizedParsingType;

  /// Schema type definitions that are layered based on their VersionSources
  /// that match the incoming message.
  ///
  /// Type definitions present in higher indices override those in lower indices
  /// with the same type name if their VersionSources all match an incoming
  /// message.
  core.List<Hl7TypesConfig>? types;

  /// Determines how unexpected segments (segments not matched to the schema)
  /// are handled.
  /// Possible string values are:
  /// - "UNEXPECTED_SEGMENT_HANDLING_MODE_UNSPECIFIED" : Unspecified handling
  /// mode, equivalent to FAIL.
  /// - "FAIL" : Unexpected segments fail to parse and return an error.
  /// - "SKIP" : Unexpected segments do not fail, but are omitted from the
  /// output.
  /// - "PARSE" : Unexpected segments do not fail, but are parsed in place and
  /// added to the current group. If a segment has a type definition, it is
  /// used, otherwise it is parsed as VARIES.
  core.String? unexpectedSegmentHandling;

  SchemaPackage({
    this.ignoreMinOccurs,
    this.schemas,
    this.schematizedParsingType,
    this.types,
    this.unexpectedSegmentHandling,
  });

  SchemaPackage.fromJson(core.Map json_)
      : this(
          ignoreMinOccurs: json_.containsKey('ignoreMinOccurs')
              ? json_['ignoreMinOccurs'] as core.bool
              : null,
          schemas: json_.containsKey('schemas')
              ? (json_['schemas'] as core.List)
                  .map((value) => Hl7SchemaConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          schematizedParsingType: json_.containsKey('schematizedParsingType')
              ? json_['schematizedParsingType'] as core.String
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => Hl7TypesConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unexpectedSegmentHandling:
              json_.containsKey('unexpectedSegmentHandling')
                  ? json_['unexpectedSegmentHandling'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignoreMinOccurs != null) 'ignoreMinOccurs': ignoreMinOccurs!,
        if (schemas != null) 'schemas': schemas!,
        if (schematizedParsingType != null)
          'schematizedParsingType': schematizedParsingType!,
        if (types != null) 'types': types!,
        if (unexpectedSegmentHandling != null)
          'unexpectedSegmentHandling': unexpectedSegmentHandling!,
      };
}

/// An HL7v2 Segment.
class SchemaSegment {
  /// The maximum number of times this segment can be present in this group.
  ///
  /// 0 or -1 means unbounded.
  core.int? maxOccurs;

  /// The minimum number of times this segment can be present in this group.
  core.int? minOccurs;

  /// The Segment type.
  ///
  /// For example, "PID".
  core.String? type;

  SchemaSegment({
    this.maxOccurs,
    this.minOccurs,
    this.type,
  });

  SchemaSegment.fromJson(core.Map json_)
      : this(
          maxOccurs: json_.containsKey('maxOccurs')
              ? json_['maxOccurs'] as core.int
              : null,
          minOccurs: json_.containsKey('minOccurs')
              ? json_['minOccurs'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxOccurs != null) 'maxOccurs': maxOccurs!,
        if (minOccurs != null) 'minOccurs': minOccurs!,
        if (type != null) 'type': type!,
      };
}

/// The content of an HL7v2 message in a structured format as specified by a
/// schema.
class SchematizedData {
  /// JSON output of the parser.
  core.String? data;

  /// The error output of the parser.
  core.String? error;

  SchematizedData({
    this.data,
    this.error,
  });

  SchematizedData.fromJson(core.Map json_)
      : this(
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          error:
              json_.containsKey('error') ? json_['error'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (error != null) 'error': error!,
      };
}

/// Request to search the resources in the specified FHIR store.
class SearchResourcesRequest {
  /// The FHIR resource type to search, such as Patient or Observation.
  ///
  /// For a complete list, see the FHIR Resource Index
  /// ([DSTU2](http://hl7.org/implement/standards/fhir/DSTU2/resourcelist.html),
  /// [STU3](http://hl7.org/implement/standards/fhir/STU3/resourcelist.html),
  /// [R4](http://hl7.org/implement/standards/fhir/R4/resourcelist.html)).
  core.String? resourceType;

  SearchResourcesRequest({
    this.resourceType,
  });

  SearchResourcesRequest.fromJson(core.Map json_)
      : this(
          resourceType: json_.containsKey('resourceType')
              ? json_['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// A segment in a structured format.
class Segment {
  /// A mapping from the positional location to the value.
  ///
  /// The key string uses zero-based indexes separated by dots to identify
  /// Fields, components and sub-components. A bracket notation is also used to
  /// identify different instances of a repeated field. Regex for key:
  /// (\d+)(\[\d+\])?(.\d+)?(.\d+)? Examples of (key, value) pairs: * (0.1,
  /// "hemoglobin") denotes that the first component of Field 0 has the value
  /// "hemoglobin". * (1.1.2, "CBC") denotes that the second sub-component of
  /// the first component of Field 1 has the value "CBC". * (1\[0\].1, "HbA1c")
  /// denotes that the first component of the first Instance of Field 1, which
  /// is repeated, has the value "HbA1c".
  core.Map<core.String, core.String>? fields;

  /// A string that indicates the type of segment.
  ///
  /// For example, EVN or PID.
  core.String? segmentId;

  /// Set ID for segments that can be in a set.
  ///
  /// This can be empty if it's missing or isn't applicable.
  core.String? setId;

  Segment({
    this.fields,
    this.segmentId,
    this.setId,
  });

  Segment.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          segmentId: json_.containsKey('segmentId')
              ? json_['segmentId'] as core.String
              : null,
          setId:
              json_.containsKey('setId') ? json_['setId'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (segmentId != null) 'segmentId': segmentId!,
        if (setId != null) 'setId': setId!,
      };
}

/// SeriesMetrics contains metrics describing a DICOM series.
class SeriesMetrics {
  /// Total blob storage bytes for all instances in the series.
  core.String? blobStorageSizeBytes;

  /// Number of instances in the series.
  core.String? instanceCount;

  /// The series resource path.
  ///
  /// For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}/dicomWeb/studies/{study_uid}/series/{series_uid}`.
  core.String? series;

  /// Total structured storage bytes for all instances in the series.
  core.String? structuredStorageSizeBytes;

  SeriesMetrics({
    this.blobStorageSizeBytes,
    this.instanceCount,
    this.series,
    this.structuredStorageSizeBytes,
  });

  SeriesMetrics.fromJson(core.Map json_)
      : this(
          blobStorageSizeBytes: json_.containsKey('blobStorageSizeBytes')
              ? json_['blobStorageSizeBytes'] as core.String
              : null,
          instanceCount: json_.containsKey('instanceCount')
              ? json_['instanceCount'] as core.String
              : null,
          series: json_.containsKey('series')
              ? json_['series'] as core.String
              : null,
          structuredStorageSizeBytes:
              json_.containsKey('structuredStorageSizeBytes')
                  ? json_['structuredStorageSizeBytes'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobStorageSizeBytes != null)
          'blobStorageSizeBytes': blobStorageSizeBytes!,
        if (instanceCount != null) 'instanceCount': instanceCount!,
        if (series != null) 'series': series!,
        if (structuredStorageSizeBytes != null)
          'structuredStorageSizeBytes': structuredStorageSizeBytes!,
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

/// User signature.
class Signature {
  /// An image of the user's signature.
  ///
  /// Optional.
  Image? image;

  /// Metadata associated with the user's signature.
  ///
  /// For example, the user's name or the user's title.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metadata;

  /// Timestamp of the signature.
  ///
  /// Optional.
  core.String? signatureTime;

  /// User's UUID provided by the client.
  ///
  /// Required.
  core.String? userId;

  Signature({
    this.image,
    this.metadata,
    this.signatureTime,
    this.userId,
  });

  Signature.fromJson(core.Map json_)
      : this(
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? (json_['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          signatureTime: json_.containsKey('signatureTime')
              ? json_['signatureTime'] as core.String
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
        if (metadata != null) 'metadata': metadata!,
        if (signatureTime != null) 'signatureTime': signatureTime!,
        if (userId != null) 'userId': userId!,
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

/// Contains configuration for streaming FHIR export.
class StreamConfig {
  /// The destination BigQuery structure that contains both the dataset location
  /// and corresponding schema config.
  ///
  /// The output is organized in one table per resource type. The server reuses
  /// the existing tables (if any) that are named after the resource types. For
  /// example, "Patient", "Observation". When there is no existing table for a
  /// given resource type, the server attempts to create one. When a table
  /// schema doesn't align with the schema config, either because of existing
  /// incompatible schema or out of band incompatible modification, the server
  /// does not stream in new data. BigQuery imposes a 1 MB limit on streaming
  /// insert row size, therefore any resource mutation that generates more than
  /// 1 MB of BigQuery data is not streamed. One resolution in this case is to
  /// delete the incompatible table and let the server recreate one, though the
  /// newly created table only contains data after the table recreation. Results
  /// are written to BigQuery tables according to the parameters in
  /// BigQueryDestination.WriteDisposition. Different versions of the same
  /// resource are distinguishable by the meta.versionId and meta.lastUpdated
  /// columns. The operation (CREATE/UPDATE/DELETE) that results in the new
  /// version is recorded in the meta.tag. The tables contain all historical
  /// resource versions since streaming was enabled. For query convenience, the
  /// server also creates one view per table of the same name containing only
  /// the current resource version. The streamed data in the BigQuery dataset is
  /// not guaranteed to be completely unique. The combination of the id and
  /// meta.versionId columns should ideally identify a single unique row. But in
  /// rare cases, duplicates may exist. At query time, users may use the SQL
  /// select statement to keep only one of the duplicate rows given an id and
  /// meta.versionId pair. Alternatively, the server created view mentioned
  /// above also filters out duplicates. If a resource mutation cannot be
  /// streamed to BigQuery, errors are logged to Cloud Logging. For more
  /// information, see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  GoogleCloudHealthcareV1FhirBigQueryDestination? bigqueryDestination;

  /// The destination FHIR store for de-identified resources.
  ///
  /// After this field is added, all subsequent creates/updates/patches to the
  /// source store will be de-identified using the provided configuration and
  /// applied to the destination store. Importing resources to the source store
  /// will not trigger the streaming. If the source store already contains
  /// resources when this option is enabled, those resources will not be copied
  /// to the destination store unless they are subsequently updated. This may
  /// result in invalid references in the destination store. Before adding this
  /// config, you must grant the healthcare.fhirResources.update permission on
  /// the destination store to your project's **Cloud Healthcare Service Agent**
  /// [service account](https://cloud.google.com/healthcare/docs/how-tos/permissions-healthcare-api-gcp-products#the_cloud_healthcare_service_agent).
  /// The destination store must set enable_update_create to true. The
  /// destination store must have disable_referential_integrity set to true. If
  /// a resource cannot be de-identified, errors will be logged to Cloud Logging
  /// (see
  /// [Viewing error logs in Cloud Logging](https://cloud.google.com/healthcare/docs/how-tos/logging)).
  DeidentifiedStoreDestination? deidentifiedStoreDestination;

  /// Supply a FHIR resource type (such as "Patient" or "Observation").
  ///
  /// See https://www.hl7.org/fhir/valueset-resource-types.html for a list of
  /// all FHIR resource types. The server treats an empty list as an intent to
  /// stream all the supported resource types in this FHIR store.
  core.List<core.String>? resourceTypes;

  StreamConfig({
    this.bigqueryDestination,
    this.deidentifiedStoreDestination,
    this.resourceTypes,
  });

  StreamConfig.fromJson(core.Map json_)
      : this(
          bigqueryDestination: json_.containsKey('bigqueryDestination')
              ? GoogleCloudHealthcareV1FhirBigQueryDestination.fromJson(
                  json_['bigqueryDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deidentifiedStoreDestination:
              json_.containsKey('deidentifiedStoreDestination')
                  ? DeidentifiedStoreDestination.fromJson(
                      json_['deidentifiedStoreDestination']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          resourceTypes: json_.containsKey('resourceTypes')
              ? (json_['resourceTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigqueryDestination != null)
          'bigqueryDestination': bigqueryDestination!,
        if (deidentifiedStoreDestination != null)
          'deidentifiedStoreDestination': deidentifiedStoreDestination!,
        if (resourceTypes != null) 'resourceTypes': resourceTypes!,
      };
}

/// StudyMetrics contains metrics describing a DICOM study.
class StudyMetrics {
  /// Total blob storage bytes for all instances in the study.
  core.String? blobStorageSizeBytes;

  /// Number of instances in the study.
  core.String? instanceCount;

  /// Number of series in the study.
  core.String? seriesCount;

  /// Total structured storage bytes for all instances in the study.
  core.String? structuredStorageSizeBytes;

  /// The study resource path.
  ///
  /// For example,
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/dicomStores/{dicom_store_id}/dicomWeb/studies/{study_uid}`.
  core.String? study;

  StudyMetrics({
    this.blobStorageSizeBytes,
    this.instanceCount,
    this.seriesCount,
    this.structuredStorageSizeBytes,
    this.study,
  });

  StudyMetrics.fromJson(core.Map json_)
      : this(
          blobStorageSizeBytes: json_.containsKey('blobStorageSizeBytes')
              ? json_['blobStorageSizeBytes'] as core.String
              : null,
          instanceCount: json_.containsKey('instanceCount')
              ? json_['instanceCount'] as core.String
              : null,
          seriesCount: json_.containsKey('seriesCount')
              ? json_['seriesCount'] as core.String
              : null,
          structuredStorageSizeBytes:
              json_.containsKey('structuredStorageSizeBytes')
                  ? json_['structuredStorageSizeBytes'] as core.String
                  : null,
          study:
              json_.containsKey('study') ? json_['study'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobStorageSizeBytes != null)
          'blobStorageSizeBytes': blobStorageSizeBytes!,
        if (instanceCount != null) 'instanceCount': instanceCount!,
        if (seriesCount != null) 'seriesCount': seriesCount!,
        if (structuredStorageSizeBytes != null)
          'structuredStorageSizeBytes': structuredStorageSizeBytes!,
        if (study != null) 'study': study!,
      };
}

/// List of tags to be filtered.
class TagFilterList {
  /// Tags to be filtered.
  ///
  /// Tags must be DICOM Data Elements, File Meta Elements, or Directory
  /// Structuring Elements, as defined at:
  /// http://dicom.nema.org/medical/dicom/current/output/html/part06.html#table_6-1,.
  /// They may be provided by "Keyword" or "Tag". For example "PatientID",
  /// "00100010".
  core.List<core.String>? tags;

  TagFilterList({
    this.tags,
  });

  TagFilterList.fromJson(core.Map json_)
      : this(
          tags: json_.containsKey('tags')
              ? (json_['tags'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tags != null) 'tags': tags!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

class TextConfig {
  /// Transformations to apply to the detected data, overridden by
  /// `exclude_info_types`.
  core.List<InfoTypeTransformation>? additionalTransformations;

  /// InfoTypes to skip transforming, overriding `additional_transformations`.
  core.List<core.String>? excludeInfoTypes;

  /// The transformations to apply to the detected data.
  ///
  /// Deprecated. Use `additional_transformations` instead.
  core.List<InfoTypeTransformation>? transformations;

  TextConfig({
    this.additionalTransformations,
    this.excludeInfoTypes,
    this.transformations,
  });

  TextConfig.fromJson(core.Map json_)
      : this(
          additionalTransformations:
              json_.containsKey('additionalTransformations')
                  ? (json_['additionalTransformations'] as core.List)
                      .map((value) => InfoTypeTransformation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          excludeInfoTypes: json_.containsKey('excludeInfoTypes')
              ? (json_['excludeInfoTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          transformations: json_.containsKey('transformations')
              ? (json_['transformations'] as core.List)
                  .map((value) => InfoTypeTransformation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalTransformations != null)
          'additionalTransformations': additionalTransformations!,
        if (excludeInfoTypes != null) 'excludeInfoTypes': excludeInfoTypes!,
        if (transformations != null) 'transformations': transformations!,
      };
}

/// A span of text in the provided document.
class TextSpan {
  /// The unicode codepoint index of the beginning of this span.
  core.int? beginOffset;

  /// The original text contained in this span.
  core.String? content;

  TextSpan({
    this.beginOffset,
    this.content,
  });

  TextSpan.fromJson(core.Map json_)
      : this(
          beginOffset: json_.containsKey('beginOffset')
              ? json_['beginOffset'] as core.int
              : null,
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (beginOffset != null) 'beginOffset': beginOffset!,
        if (content != null) 'content': content!,
      };
}

/// Configuration for FHIR BigQuery time-partitioned tables.
class TimePartitioning {
  /// Number of milliseconds for which to keep the storage for a partition.
  core.String? expirationMs;

  /// Type of partitioning.
  /// Possible string values are:
  /// - "PARTITION_TYPE_UNSPECIFIED" : Default unknown time.
  /// - "HOUR" : Data partitioned by hour.
  /// - "DAY" : Data partitioned by day.
  /// - "MONTH" : Data partitioned by month.
  /// - "YEAR" : Data partitioned by year.
  core.String? type;

  TimePartitioning({
    this.expirationMs,
    this.type,
  });

  TimePartitioning.fromJson(core.Map json_)
      : this(
          expirationMs: json_.containsKey('expirationMs')
              ? json_['expirationMs'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expirationMs != null) 'expirationMs': expirationMs!,
        if (type != null) 'type': type!,
      };
}

/// A type definition for some HL7v2 type (incl.
///
/// Segments and Datatypes).
class Type {
  /// The (sub) fields this type has (if not primitive).
  core.List<Field>? fields;

  /// The name of this type.
  ///
  /// This would be the segment or datatype name. For example, "PID" or "XPN".
  core.String? name;

  /// If this is a primitive type then this field is the type of the primitive
  /// For example, STRING.
  ///
  /// Leave unspecified for composite types.
  /// Possible string values are:
  /// - "PRIMITIVE_UNSPECIFIED" : Not a primitive.
  /// - "STRING" : String primitive.
  /// - "VARIES" : Element that can have unschematized children.
  /// - "UNESCAPED_STRING" : Like STRING, but all delimiters below this element
  /// are ignored.
  core.String? primitive;

  Type({
    this.fields,
    this.name,
    this.primitive,
  });

  Type.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          primitive: json_.containsKey('primitive')
              ? json_['primitive'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
        if (primitive != null) 'primitive': primitive!,
      };
}

/// Maps a resource to the associated user and Attributes.
class UserDataMapping {
  /// Indicates the time when this mapping was archived.
  ///
  /// Output only.
  core.String? archiveTime;

  /// Indicates whether this mapping is archived.
  ///
  /// Output only.
  core.bool? archived;

  /// A unique identifier for the mapped resource.
  ///
  /// Required.
  core.String? dataId;

  /// Resource name of the User data mapping, of the form
  /// `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  core.String? name;

  /// Attributes of the resource.
  ///
  /// Only explicitly set attributes are displayed here. Attribute definitions
  /// with defaults set implicitly apply to these User data mappings. Attributes
  /// listed here must be single valued, that is, exactly one value is specified
  /// for the field "values" in each Attribute.
  core.List<Attribute>? resourceAttributes;

  /// User's UUID provided by the client.
  ///
  /// Required.
  core.String? userId;

  UserDataMapping({
    this.archiveTime,
    this.archived,
    this.dataId,
    this.name,
    this.resourceAttributes,
    this.userId,
  });

  UserDataMapping.fromJson(core.Map json_)
      : this(
          archiveTime: json_.containsKey('archiveTime')
              ? json_['archiveTime'] as core.String
              : null,
          archived: json_.containsKey('archived')
              ? json_['archived'] as core.bool
              : null,
          dataId: json_.containsKey('dataId')
              ? json_['dataId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resourceAttributes: json_.containsKey('resourceAttributes')
              ? (json_['resourceAttributes'] as core.List)
                  .map((value) => Attribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (archiveTime != null) 'archiveTime': archiveTime!,
        if (archived != null) 'archived': archived!,
        if (dataId != null) 'dataId': dataId!,
        if (name != null) 'name': name!,
        if (resourceAttributes != null)
          'resourceAttributes': resourceAttributes!,
        if (userId != null) 'userId': userId!,
      };
}

/// Contains the configuration for FHIR profiles and validation.
class ValidationConfig {
  /// Whether to disable FHIRPath validation for incoming resources.
  ///
  /// Set this to true to disable checking incoming resources for conformance
  /// against FHIRPath requirement defined in the FHIR specification. This
  /// property only affects resource types that do not have profiles configured
  /// for them, any rules in enabled implementation guides will still be
  /// enforced.
  core.bool? disableFhirpathValidation;

  /// Whether to disable profile validation for this FHIR store.
  ///
  /// Set this to true to disable checking incoming resources for conformance
  /// against structure definitions in this FHIR store.
  core.bool? disableProfileValidation;

  /// Whether to disable reference type validation for incoming resources.
  ///
  /// Set this to true to disable checking incoming resources for conformance
  /// against reference type requirement defined in the FHIR specification. This
  /// property only affects resource types that do not have profiles configured
  /// for them, any rules in enabled implementation guides will still be
  /// enforced.
  core.bool? disableReferenceTypeValidation;

  /// Whether to disable required fields validation for incoming resources.
  ///
  /// Set this to true to disable checking incoming resources for conformance
  /// against required fields requirement defined in the FHIR specification.
  /// This property only affects resource types that do not have profiles
  /// configured for them, any rules in enabled implementation guides will still
  /// be enforced.
  core.bool? disableRequiredFieldValidation;

  /// A list of implementation guide URLs in this FHIR store that are used to
  /// configure the profiles to use for validation.
  ///
  /// For example, to use the US Core profiles for validation, set
  /// `enabled_implementation_guides` to
  /// `["http://hl7.org/fhir/us/core/ImplementationGuide/ig"]`. If
  /// `enabled_implementation_guides` is empty or omitted, then incoming
  /// resources are only required to conform to the base FHIR profiles.
  /// Otherwise, a resource must conform to at least one profile listed in the
  /// `global` property of one of the enabled ImplementationGuides. The Cloud
  /// Healthcare API does not currently enforce all of the rules in a
  /// StructureDefinition. The following rules are supported: - min/max -
  /// minValue/maxValue - maxLength - type - fixed\[x\] - pattern\[x\] on simple
  /// types - slicing, when using "value" as the discriminator type When a URL
  /// cannot be resolved (for example, in a type assertion), the server does not
  /// return an error.
  core.List<core.String>? enabledImplementationGuides;

  ValidationConfig({
    this.disableFhirpathValidation,
    this.disableProfileValidation,
    this.disableReferenceTypeValidation,
    this.disableRequiredFieldValidation,
    this.enabledImplementationGuides,
  });

  ValidationConfig.fromJson(core.Map json_)
      : this(
          disableFhirpathValidation:
              json_.containsKey('disableFhirpathValidation')
                  ? json_['disableFhirpathValidation'] as core.bool
                  : null,
          disableProfileValidation:
              json_.containsKey('disableProfileValidation')
                  ? json_['disableProfileValidation'] as core.bool
                  : null,
          disableReferenceTypeValidation:
              json_.containsKey('disableReferenceTypeValidation')
                  ? json_['disableReferenceTypeValidation'] as core.bool
                  : null,
          disableRequiredFieldValidation:
              json_.containsKey('disableRequiredFieldValidation')
                  ? json_['disableRequiredFieldValidation'] as core.bool
                  : null,
          enabledImplementationGuides:
              json_.containsKey('enabledImplementationGuides')
                  ? (json_['enabledImplementationGuides'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableFhirpathValidation != null)
          'disableFhirpathValidation': disableFhirpathValidation!,
        if (disableProfileValidation != null)
          'disableProfileValidation': disableProfileValidation!,
        if (disableReferenceTypeValidation != null)
          'disableReferenceTypeValidation': disableReferenceTypeValidation!,
        if (disableRequiredFieldValidation != null)
          'disableRequiredFieldValidation': disableRequiredFieldValidation!,
        if (enabledImplementationGuides != null)
          'enabledImplementationGuides': enabledImplementationGuides!,
      };
}

/// Describes a selector for extracting and matching an MSH field to a value.
class VersionSource {
  /// The field to extract from the MSH segment.
  ///
  /// For example, "3.1" or "18\[1\].1".
  core.String? mshField;

  /// The value to match with the field.
  ///
  /// For example, "My Application Name" or "2.3".
  core.String? value;

  VersionSource({
    this.mshField,
    this.value,
  });

  VersionSource.fromJson(core.Map json_)
      : this(
          mshField: json_.containsKey('mshField')
              ? json_['mshField'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mshField != null) 'mshField': mshField!,
        if (value != null) 'value': value!,
      };
}
