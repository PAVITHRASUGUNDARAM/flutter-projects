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

/// Cloud Talent Solution API - v4
///
/// Cloud Talent Solution provides the capability to create, read, update, and
/// delete job postings, as well as search jobs based on keywords and filters.
///
/// For more information, see
/// <https://cloud.google.com/talent-solution/job-search/docs/>
///
/// Create an instance of [CloudTalentSolutionApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsOperationsResource]
///   - [ProjectsTenantsResource]
///     - [ProjectsTenantsClientEventsResource]
///     - [ProjectsTenantsCompaniesResource]
///     - [ProjectsTenantsJobsResource]
library jobs_v4;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Cloud Talent Solution provides the capability to create, read, update, and
/// delete job postings, as well as search jobs based on keywords and filters.
class CloudTalentSolutionApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage job postings
  static const jobsScope = 'https://www.googleapis.com/auth/jobs';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudTalentSolutionApi(http.Client client,
      {core.String rootUrl = 'https://jobs.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);
  ProjectsTenantsResource get tenants => ProjectsTenantsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsClientEventsResource get clientEvents =>
      ProjectsTenantsClientEventsResource(_requester);
  ProjectsTenantsCompaniesResource get companies =>
      ProjectsTenantsCompaniesResource(_requester);
  ProjectsTenantsJobsResource get jobs =>
      ProjectsTenantsJobsResource(_requester);

  ProjectsTenantsResource(commons.ApiRequester client) : _requester = client;

  /// Completes the specified prefix with keyword suggestions.
  ///
  /// Intended for use by a job search auto-complete search box.
  ///
  /// Request parameters:
  ///
  /// [tenant] - Required. Resource name of tenant the completion is performed
  /// within. The format is "projects/{project_id}/tenants/{tenant_id}", for
  /// example, "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [company] - If provided, restricts completion to specified company. The
  /// format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
  /// example, "projects/foo/tenants/bar/companies/baz".
  ///
  /// [languageCodes] - The list of languages of the query. This is the BCP-47
  /// language code, such as "en-US" or "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). The
  /// maximum number of allowed characters is 255.
  ///
  /// [pageSize] - Required. Completion result count. The maximum allowed page
  /// size is 10.
  ///
  /// [query] - Required. The query used to generate suggestions. The maximum
  /// number of allowed characters is 255.
  ///
  /// [scope] - The scope of the completion. The defaults is
  /// CompletionScope.PUBLIC.
  /// Possible string values are:
  /// - "COMPLETION_SCOPE_UNSPECIFIED" : Default value.
  /// - "TENANT" : Suggestions are based only on the data provided by the
  /// client.
  /// - "PUBLIC" : Suggestions are based on all jobs data in the system that's
  /// visible to the client
  ///
  /// [type] - The completion topic. The default is CompletionType.COMBINED.
  /// Possible string values are:
  /// - "COMPLETION_TYPE_UNSPECIFIED" : Default value.
  /// - "JOB_TITLE" : Suggest job titles for jobs autocomplete. For
  /// CompletionType.JOB_TITLE type, only open jobs with the same language_codes
  /// are returned.
  /// - "COMPANY_NAME" : Suggest company names for jobs autocomplete. For
  /// CompletionType.COMPANY_NAME type, only companies having open jobs with the
  /// same language_codes are returned.
  /// - "COMBINED" : Suggest both job titles and company names for jobs
  /// autocomplete. For CompletionType.COMBINED type, only open jobs with the
  /// same language_codes or companies having open jobs with the same
  /// language_codes are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CompleteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CompleteQueryResponse> completeQuery(
    core.String tenant, {
    core.String? company,
    core.List<core.String>? languageCodes,
    core.int? pageSize,
    core.String? query,
    core.String? scope,
    core.String? type,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (company != null) 'company': [company],
      if (languageCodes != null) 'languageCodes': languageCodes,
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (query != null) 'query': [query],
      if (scope != null) 'scope': [scope],
      if (type != null) 'type': [type],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$tenant') + ':completeQuery';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CompleteQueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new tenant entity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the project under which the tenant
  /// is created. The format is "projects/{project_id}", for example,
  /// "projects/foo".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tenant> create(
    Tenant request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/tenants';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Tenant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes specified tenant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the tenant to be deleted. The
  /// format is "projects/{project_id}/tenants/{tenant_id}", for example,
  /// "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
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

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves specified tenant.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the tenant to be retrieved. The
  /// format is "projects/{project_id}/tenants/{tenant_id}", for example,
  /// "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tenant> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Tenant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all tenants associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the project under which the tenant
  /// is created. The format is "projects/{project_id}", for example,
  /// "projects/foo".
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of tenants to be returned, at most 100.
  /// Default is 100 if a non-positive number is provided.
  ///
  /// [pageToken] - The starting indicator from which to return results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTenantsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTenantsResponse> list(
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

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/tenants';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTenantsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates specified tenant.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required during tenant update. The resource name for a tenant.
  /// This is generated by the service when a tenant is created. The format is
  /// "projects/{project_id}/tenants/{tenant_id}", for example,
  /// "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [updateMask] - Strongly recommended for the best service experience. If
  /// update_mask is provided, only the specified fields in tenant are updated.
  /// Otherwise all the fields are updated. A field mask to specify the tenant
  /// fields to be updated. Only top level fields of Tenant are supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Tenant].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Tenant> patch(
    Tenant request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Tenant.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsClientEventsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsClientEventsResource(commons.ApiRequester client)
      : _requester = client;

  /// Report events issued when end user interacts with customer's application
  /// that uses Cloud Talent Solution.
  ///
  /// You may inspect the created events in
  /// [self service tools](https://console.cloud.google.com/talent-solution/overview).
  /// [Learn more](https://cloud.google.com/talent-solution/docs/management-tools)
  /// about self service tools.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the tenant under which the event is
  /// created. The format is "projects/{project_id}/tenants/{tenant_id}", for
  /// example, "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ClientEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ClientEvent> create(
    ClientEvent request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/clientEvents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ClientEvent.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsCompaniesResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsCompaniesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new company entity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the tenant under which the company
  /// is created. The format is "projects/{project_id}/tenants/{tenant_id}", for
  /// example, "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Company].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Company> create(
    Company request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/companies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Company.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes specified company.
  ///
  /// Prerequisite: The company has no jobs associated with it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the company to be deleted. The
  /// format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
  /// example, "projects/foo/tenants/bar/companies/baz".
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/companies/\[^/\]+$`.
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

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves specified company.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the company to be retrieved. The
  /// format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
  /// example, "projects/api-test-project/tenants/foo/companies/bar".
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/companies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Company].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Company> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Company.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all companies associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the tenant under which the company
  /// is created. The format is "projects/{project_id}/tenants/{tenant_id}", for
  /// example, "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of companies to be returned, at most 100.
  /// Default is 100 if a non-positive number is provided.
  ///
  /// [pageToken] - The starting indicator from which to return results.
  ///
  /// [requireOpenJobs] - Set to true if the companies requested must have open
  /// jobs. Defaults to false. If true, at most page_size of companies are
  /// fetched, among which only those with open jobs are returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCompaniesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCompaniesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.bool? requireOpenJobs,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (requireOpenJobs != null) 'requireOpenJobs': ['${requireOpenJobs}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/companies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCompaniesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates specified company.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required during company update. The resource name for a company.
  /// This is generated by the service when a company is created. The format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
  /// example, "projects/foo/tenants/bar/companies/baz".
  /// Value must have pattern
  /// `^projects/\[^/\]+/tenants/\[^/\]+/companies/\[^/\]+$`.
  ///
  /// [updateMask] - Strongly recommended for the best service experience. If
  /// update_mask is provided, only the specified fields in company are updated.
  /// Otherwise all the fields are updated. A field mask to specify the company
  /// fields to be updated. Only top level fields of Company are supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Company].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Company> patch(
    Company request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Company.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTenantsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsTenantsJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Begins executing a batch create jobs operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the tenant under which the job
  /// is created. The format is "projects/{project_id}/tenants/{tenant_id}". For
  /// example, "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
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
  async.Future<Operation> batchCreate(
    BatchCreateJobsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/jobs:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Begins executing a batch delete jobs operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the tenant under which the job
  /// is created. The format is "projects/{project_id}/tenants/{tenant_id}". For
  /// example, "projects/foo/tenants/bar". The parent of all of the jobs
  /// specified in `names` must match this field.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
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
  async.Future<Operation> batchDelete(
    BatchDeleteJobsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/jobs:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Begins executing a batch update jobs operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the tenant under which the job
  /// is created. The format is "projects/{project_id}/tenants/{tenant_id}". For
  /// example, "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
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
  async.Future<Operation> batchUpdate(
    BatchUpdateJobsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/jobs:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new job.
  ///
  /// Typically, the job becomes searchable within 10 seconds, but it may take
  /// up to 5 minutes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the tenant under which the job
  /// is created. The format is "projects/{project_id}/tenants/{tenant_id}". For
  /// example, "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(
    Job request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified job.
  ///
  /// Typically, the job becomes unsearchable within 10 seconds, but it may take
  /// up to 5 minutes.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the job to be deleted. The format
  /// is "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}". For example,
  /// "projects/foo/tenants/bar/jobs/baz".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+/jobs/\[^/\]+$`.
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

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the specified job, whose status is OPEN or recently EXPIRED
  /// within the last 90 days.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the job to retrieve. The format is
  /// "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}". For example,
  /// "projects/foo/tenants/bar/jobs/baz".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists jobs by filter.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the tenant under which the job
  /// is created. The format is "projects/{project_id}/tenants/{tenant_id}". For
  /// example, "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [filter] - Required. The filter string specifies the jobs to be
  /// enumerated. Supported operator: =, AND The fields eligible for filtering
  /// are: * `companyName` * `requisitionId` * `status` Available values: OPEN,
  /// EXPIRED, ALL. Defaults to OPEN if no value is specified. At least one of
  /// `companyName` and `requisitionId` must present or an INVALID_ARGUMENT
  /// error is thrown. Sample Query: * companyName =
  /// "projects/foo/tenants/bar/companies/baz" * companyName =
  /// "projects/foo/tenants/bar/companies/baz" AND requisitionId = "req-1" *
  /// companyName = "projects/foo/tenants/bar/companies/baz" AND status =
  /// "EXPIRED" * requisitionId = "req-1" * requisitionId = "req-1" AND status =
  /// "EXPIRED"
  ///
  /// [jobView] - The desired job attributes returned for jobs in the search
  /// response. Defaults to JobView.JOB_VIEW_FULL if no value is specified.
  /// Possible string values are:
  /// - "JOB_VIEW_UNSPECIFIED" : Default value.
  /// - "JOB_VIEW_ID_ONLY" : A ID only view of job, with following attributes:
  /// Job.name, Job.requisition_id, Job.language_code.
  /// - "JOB_VIEW_MINIMAL" : A minimal view of the job, with the following
  /// attributes: Job.name, Job.requisition_id, Job.title, Job.company,
  /// Job.DerivedInfo.locations, Job.language_code.
  /// - "JOB_VIEW_SMALL" : A small view of the job, with the following
  /// attributes in the search results: Job.name, Job.requisition_id, Job.title,
  /// Job.company, Job.DerivedInfo.locations, Job.visibility, Job.language_code,
  /// Job.description.
  /// - "JOB_VIEW_FULL" : All available attributes are included in the search
  /// results.
  ///
  /// [pageSize] - The maximum number of jobs to be returned per page of
  /// results. If job_view is set to JobView.JOB_VIEW_ID_ONLY, the maximum
  /// allowed page size is 1000. Otherwise, the maximum allowed page size is
  /// 100. Default is 100 if empty or a number \< 1 is specified.
  ///
  /// [pageToken] - The starting point of a query result.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? jobView,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (jobView != null) 'jobView': [jobView],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates specified job.
  ///
  /// Typically, updated contents become visible in search results within 10
  /// seconds, but it may take up to 5 minutes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required during job update. The resource name for the job. This
  /// is generated by the service when a job is created. The format is
  /// "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}". For example,
  /// "projects/foo/tenants/bar/jobs/baz". Use of this field in job queries and
  /// API calls is preferred over the use of requisition_id since this value is
  /// unique.
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [updateMask] - Strongly recommended for the best service experience. If
  /// update_mask is provided, only the specified fields in job are updated.
  /// Otherwise all the fields are updated. A field mask to restrict the fields
  /// that are updated. Only top level fields of Job are supported.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> patch(
    Job request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches for jobs using the provided SearchJobsRequest.
  ///
  /// This call constrains the visibility of jobs present in the database, and
  /// only returns jobs that the caller has permission to search against.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the tenant to search within. The
  /// format is "projects/{project_id}/tenants/{tenant_id}". For example,
  /// "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchJobsResponse> search(
    SearchJobsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v4/' + core.Uri.encodeFull('$parent') + '/jobs:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches for jobs using the provided SearchJobsRequest.
  ///
  /// This API call is intended for the use case of targeting passive job
  /// seekers (for example, job seekers who have signed up to receive email
  /// alerts about potential job opportunities), it has different algorithmic
  /// adjustments that are designed to specifically target passive job seekers.
  /// This call constrains the visibility of jobs present in the database, and
  /// only returns jobs the caller has permission to search against.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the tenant to search within. The
  /// format is "projects/{project_id}/tenants/{tenant_id}". For example,
  /// "projects/foo/tenants/bar".
  /// Value must have pattern `^projects/\[^/\]+/tenants/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchJobsResponse> searchForAlert(
    SearchJobsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v4/' + core.Uri.encodeFull('$parent') + '/jobs:searchForAlert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SearchJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Application related details of a job posting.
class ApplicationInfo {
  /// Use this field to specify email address(es) to which resumes or
  /// applications can be sent.
  ///
  /// The maximum number of allowed characters for each entry is 255.
  core.List<core.String>? emails;

  /// Use this field to provide instructions, such as "Mail your application to
  /// ...", that a candidate can follow to apply for the job.
  ///
  /// This field accepts and sanitizes HTML input, and also accepts bold,
  /// italic, ordered list, and unordered list markup tags. The maximum number
  /// of allowed characters is 3,000.
  core.String? instruction;

  /// Use this URI field to direct an applicant to a website, for example to
  /// link to an online application form.
  ///
  /// The maximum number of allowed characters for each entry is 2,000.
  core.List<core.String>? uris;

  ApplicationInfo({
    this.emails,
    this.instruction,
    this.uris,
  });

  ApplicationInfo.fromJson(core.Map json_)
      : this(
          emails: json_.containsKey('emails')
              ? (json_['emails'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          instruction: json_.containsKey('instruction')
              ? json_['instruction'] as core.String
              : null,
          uris: json_.containsKey('uris')
              ? (json_['uris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emails != null) 'emails': emails!,
        if (instruction != null) 'instruction': instruction!,
        if (uris != null) 'uris': uris!,
      };
}

/// Request to create a batch of jobs.
class BatchCreateJobsRequest {
  /// The jobs to be created.
  ///
  /// A maximum of 200 jobs can be created in a batch.
  ///
  /// Required.
  core.List<Job>? jobs;

  BatchCreateJobsRequest({
    this.jobs,
  });

  BatchCreateJobsRequest.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
      };
}

/// Request to delete a batch of jobs.
class BatchDeleteJobsRequest {
  /// The names of the jobs to delete.
  ///
  /// The format is "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}".
  /// For example, "projects/foo/tenants/bar/jobs/baz". A maximum of 200 jobs
  /// can be deleted in a batch.
  core.List<core.String>? names;

  BatchDeleteJobsRequest({
    this.names,
  });

  BatchDeleteJobsRequest.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// Request to update a batch of jobs.
class BatchUpdateJobsRequest {
  /// The jobs to be updated.
  ///
  /// A maximum of 200 jobs can be updated in a batch.
  ///
  /// Required.
  core.List<Job>? jobs;

  /// Strongly recommended for the best service experience.
  ///
  /// Be aware that it will also increase latency when checking the status of a
  /// batch operation. If update_mask is provided, only the specified fields in
  /// Job are updated. Otherwise all the fields are updated. A field mask to
  /// restrict the fields that are updated. Only top level fields of Job are
  /// supported. If update_mask is provided, The Job inside JobResult will only
  /// contains fields that is updated, plus the Id of the Job. Otherwise, Job
  /// will include all fields, which can yield a very large response.
  core.String? updateMask;

  BatchUpdateJobsRequest({
    this.jobs,
    this.updateMask,
  });

  BatchUpdateJobsRequest.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// An event issued when an end user interacts with the application that
/// implements Cloud Talent Solution.
///
/// Providing this information improves the quality of results for the API
/// clients, enabling the service to perform optimally. The number of events
/// sent must be consistent with other calls, such as job searches, issued to
/// the service by the client.
class ClientEvent {
  /// The timestamp of the event.
  ///
  /// Required.
  core.String? createTime;

  /// A unique identifier, generated by the client application.
  ///
  /// Required.
  core.String? eventId;

  /// Notes about the event provided by recruiters or other users, for example,
  /// feedback on why a job was bookmarked.
  core.String? eventNotes;

  /// An event issued when a job seeker interacts with the application that
  /// implements Cloud Talent Solution.
  JobEvent? jobEvent;

  /// Strongly recommended for the best service experience.
  ///
  /// A unique ID generated in the API responses. It can be found in
  /// ResponseMetadata.request_id.
  core.String? requestId;

  ClientEvent({
    this.createTime,
    this.eventId,
    this.eventNotes,
    this.jobEvent,
    this.requestId,
  });

  ClientEvent.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          eventId: json_.containsKey('eventId')
              ? json_['eventId'] as core.String
              : null,
          eventNotes: json_.containsKey('eventNotes')
              ? json_['eventNotes'] as core.String
              : null,
          jobEvent: json_.containsKey('jobEvent')
              ? JobEvent.fromJson(
                  json_['jobEvent'] as core.Map<core.String, core.dynamic>)
              : null,
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (eventId != null) 'eventId': eventId!,
        if (eventNotes != null) 'eventNotes': eventNotes!,
        if (jobEvent != null) 'jobEvent': jobEvent!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Parameters needed for commute search.
class CommuteFilter {
  /// If `true`, jobs without street level addresses may also be returned.
  ///
  /// For city level addresses, the city center is used. For state and coarser
  /// level addresses, text matching is used. If this field is set to `false` or
  /// isn't specified, only jobs that include street level addresses will be
  /// returned by commute search.
  core.bool? allowImpreciseAddresses;

  /// The method of transportation to calculate the commute time for.
  ///
  /// Required.
  /// Possible string values are:
  /// - "COMMUTE_METHOD_UNSPECIFIED" : Commute method isn't specified.
  /// - "DRIVING" : Commute time is calculated based on driving time.
  /// - "TRANSIT" : Commute time is calculated based on public transit including
  /// bus, metro, subway, and so on.
  /// - "WALKING" : Commute time is calculated based on walking time.
  /// - "CYCLING" : Commute time is calculated based on biking time.
  /// - "TRANSIT_ACCESSIBLE" : Commute time is calculated based on public
  /// transit that is wheelchair accessible.
  core.String? commuteMethod;

  /// The departure time used to calculate traffic impact, represented as
  /// google.type.TimeOfDay in local time zone.
  ///
  /// Currently traffic model is restricted to hour level resolution.
  TimeOfDay? departureTime;

  /// Specifies the traffic density to use when calculating commute time.
  /// Possible string values are:
  /// - "ROAD_TRAFFIC_UNSPECIFIED" : Road traffic situation isn't specified.
  /// - "TRAFFIC_FREE" : Optimal commute time without considering any traffic
  /// impact.
  /// - "BUSY_HOUR" : Commute time calculation takes in account the peak traffic
  /// impact.
  core.String? roadTraffic;

  /// The latitude and longitude of the location to calculate the commute time
  /// from.
  ///
  /// Required.
  LatLng? startCoordinates;

  /// The maximum travel time in seconds.
  ///
  /// The maximum allowed value is `3600s` (one hour). Format is `123s`.
  ///
  /// Required.
  core.String? travelDuration;

  CommuteFilter({
    this.allowImpreciseAddresses,
    this.commuteMethod,
    this.departureTime,
    this.roadTraffic,
    this.startCoordinates,
    this.travelDuration,
  });

  CommuteFilter.fromJson(core.Map json_)
      : this(
          allowImpreciseAddresses: json_.containsKey('allowImpreciseAddresses')
              ? json_['allowImpreciseAddresses'] as core.bool
              : null,
          commuteMethod: json_.containsKey('commuteMethod')
              ? json_['commuteMethod'] as core.String
              : null,
          departureTime: json_.containsKey('departureTime')
              ? TimeOfDay.fromJson(
                  json_['departureTime'] as core.Map<core.String, core.dynamic>)
              : null,
          roadTraffic: json_.containsKey('roadTraffic')
              ? json_['roadTraffic'] as core.String
              : null,
          startCoordinates: json_.containsKey('startCoordinates')
              ? LatLng.fromJson(json_['startCoordinates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          travelDuration: json_.containsKey('travelDuration')
              ? json_['travelDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowImpreciseAddresses != null)
          'allowImpreciseAddresses': allowImpreciseAddresses!,
        if (commuteMethod != null) 'commuteMethod': commuteMethod!,
        if (departureTime != null) 'departureTime': departureTime!,
        if (roadTraffic != null) 'roadTraffic': roadTraffic!,
        if (startCoordinates != null) 'startCoordinates': startCoordinates!,
        if (travelDuration != null) 'travelDuration': travelDuration!,
      };
}

/// Commute details related to this job.
class CommuteInfo {
  /// Location used as the destination in the commute calculation.
  Location? jobLocation;

  /// The number of seconds required to travel to the job location from the
  /// query location.
  ///
  /// A duration of 0 seconds indicates that the job isn't reachable within the
  /// requested duration, but was returned as part of an expanded query.
  core.String? travelDuration;

  CommuteInfo({
    this.jobLocation,
    this.travelDuration,
  });

  CommuteInfo.fromJson(core.Map json_)
      : this(
          jobLocation: json_.containsKey('jobLocation')
              ? Location.fromJson(
                  json_['jobLocation'] as core.Map<core.String, core.dynamic>)
              : null,
          travelDuration: json_.containsKey('travelDuration')
              ? json_['travelDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobLocation != null) 'jobLocation': jobLocation!,
        if (travelDuration != null) 'travelDuration': travelDuration!,
      };
}

/// A Company resource represents a company in the service.
///
/// A company is the entity that owns job postings, that is, the hiring entity
/// responsible for employing applicants for the job position.
class Company {
  /// The URI to employer's career site or careers page on the employer's web
  /// site, for example, "https://careers.google.com".
  core.String? careerSiteUri;

  /// Derived details about the company.
  ///
  /// Output only.
  CompanyDerivedInfo? derivedInfo;

  /// The display name of the company, for example, "Google LLC".
  ///
  /// Required.
  core.String? displayName;

  /// Equal Employment Opportunity legal disclaimer text to be associated with
  /// all jobs, and typically to be displayed in all roles.
  ///
  /// The maximum number of allowed characters is 500.
  core.String? eeoText;

  /// Client side company identifier, used to uniquely identify the company.
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// Required.
  core.String? externalId;

  /// The street address of the company's main headquarters, which may be
  /// different from the job location.
  ///
  /// The service attempts to geolocate the provided address, and populates a
  /// more specific location wherever possible in
  /// DerivedInfo.headquarters_location.
  core.String? headquartersAddress;

  /// Set to true if it is the hiring agency that post jobs for other employers.
  ///
  /// Defaults to false if not provided.
  core.bool? hiringAgency;

  /// A URI that hosts the employer's company logo.
  core.String? imageUri;

  /// This field is deprecated.
  ///
  /// Please set the searchability of the custom attribute in the
  /// Job.custom_attributes going forward. A list of keys of filterable
  /// Job.custom_attributes, whose corresponding `string_values` are used in
  /// keyword searches. Jobs with `string_values` under these specified field
  /// keys are returned if any of the values match the search keyword. Custom
  /// field values with parenthesis, brackets and special symbols are not
  /// searchable as-is, and those keyword queries must be surrounded by quotes.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? keywordSearchableJobCustomAttributes;

  /// Required during company update.
  ///
  /// The resource name for a company. This is generated by the service when a
  /// company is created. The format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}", for
  /// example, "projects/foo/tenants/bar/companies/baz".
  core.String? name;

  /// The employer's company size.
  /// Possible string values are:
  /// - "COMPANY_SIZE_UNSPECIFIED" : Default value if the size isn't specified.
  /// - "MINI" : The company has less than 50 employees.
  /// - "SMALL" : The company has between 50 and 99 employees.
  /// - "SMEDIUM" : The company has between 100 and 499 employees.
  /// - "MEDIUM" : The company has between 500 and 999 employees.
  /// - "BIG" : The company has between 1,000 and 4,999 employees.
  /// - "BIGGER" : The company has between 5,000 and 9,999 employees.
  /// - "GIANT" : The company has 10,000 or more employees.
  core.String? size;

  /// Indicates whether a company is flagged to be suspended from public
  /// availability by the service when job content appears suspicious, abusive,
  /// or spammy.
  ///
  /// Output only.
  core.bool? suspended;

  /// The URI representing the company's primary web site or home page, for
  /// example, "https://www.google.com".
  ///
  /// The maximum number of allowed characters is 255.
  core.String? websiteUri;

  Company({
    this.careerSiteUri,
    this.derivedInfo,
    this.displayName,
    this.eeoText,
    this.externalId,
    this.headquartersAddress,
    this.hiringAgency,
    this.imageUri,
    this.keywordSearchableJobCustomAttributes,
    this.name,
    this.size,
    this.suspended,
    this.websiteUri,
  });

  Company.fromJson(core.Map json_)
      : this(
          careerSiteUri: json_.containsKey('careerSiteUri')
              ? json_['careerSiteUri'] as core.String
              : null,
          derivedInfo: json_.containsKey('derivedInfo')
              ? CompanyDerivedInfo.fromJson(
                  json_['derivedInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          eeoText: json_.containsKey('eeoText')
              ? json_['eeoText'] as core.String
              : null,
          externalId: json_.containsKey('externalId')
              ? json_['externalId'] as core.String
              : null,
          headquartersAddress: json_.containsKey('headquartersAddress')
              ? json_['headquartersAddress'] as core.String
              : null,
          hiringAgency: json_.containsKey('hiringAgency')
              ? json_['hiringAgency'] as core.bool
              : null,
          imageUri: json_.containsKey('imageUri')
              ? json_['imageUri'] as core.String
              : null,
          keywordSearchableJobCustomAttributes:
              json_.containsKey('keywordSearchableJobCustomAttributes')
                  ? (json_['keywordSearchableJobCustomAttributes'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          size: json_.containsKey('size') ? json_['size'] as core.String : null,
          suspended: json_.containsKey('suspended')
              ? json_['suspended'] as core.bool
              : null,
          websiteUri: json_.containsKey('websiteUri')
              ? json_['websiteUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (careerSiteUri != null) 'careerSiteUri': careerSiteUri!,
        if (derivedInfo != null) 'derivedInfo': derivedInfo!,
        if (displayName != null) 'displayName': displayName!,
        if (eeoText != null) 'eeoText': eeoText!,
        if (externalId != null) 'externalId': externalId!,
        if (headquartersAddress != null)
          'headquartersAddress': headquartersAddress!,
        if (hiringAgency != null) 'hiringAgency': hiringAgency!,
        if (imageUri != null) 'imageUri': imageUri!,
        if (keywordSearchableJobCustomAttributes != null)
          'keywordSearchableJobCustomAttributes':
              keywordSearchableJobCustomAttributes!,
        if (name != null) 'name': name!,
        if (size != null) 'size': size!,
        if (suspended != null) 'suspended': suspended!,
        if (websiteUri != null) 'websiteUri': websiteUri!,
      };
}

/// Derived details about the company.
class CompanyDerivedInfo {
  /// A structured headquarters location of the company, resolved from
  /// Company.headquarters_address if provided.
  Location? headquartersLocation;

  CompanyDerivedInfo({
    this.headquartersLocation,
  });

  CompanyDerivedInfo.fromJson(core.Map json_)
      : this(
          headquartersLocation: json_.containsKey('headquartersLocation')
              ? Location.fromJson(json_['headquartersLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (headquartersLocation != null)
          'headquartersLocation': headquartersLocation!,
      };
}

/// A compensation entry that represents one component of compensation, such as
/// base pay, bonus, or other compensation type.
///
/// Annualization: One compensation entry can be annualized if - it contains
/// valid amount or range. - and its expected_units_per_year is set or can be
/// derived. Its annualized range is determined as (amount or range) times
/// expected_units_per_year.
class CompensationEntry {
  /// Compensation amount.
  Money? amount;

  /// Compensation description.
  ///
  /// For example, could indicate equity terms or provide additional context to
  /// an estimated bonus.
  core.String? description;

  /// Expected number of units paid each year.
  ///
  /// If not specified, when Job.employment_types is FULLTIME, a default value
  /// is inferred based on unit. Default values: - HOURLY: 2080 - DAILY: 260 -
  /// WEEKLY: 52 - MONTHLY: 12 - ANNUAL: 1
  core.double? expectedUnitsPerYear;

  /// Compensation range.
  CompensationRange? range;

  /// Compensation type.
  ///
  /// Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
  /// Possible string values are:
  /// - "COMPENSATION_TYPE_UNSPECIFIED" : Default value.
  /// - "BASE" : Base compensation: Refers to the fixed amount of money paid to
  /// an employee by an employer in return for work performed. Base compensation
  /// does not include benefits, bonuses or any other potential compensation
  /// from an employer.
  /// - "BONUS" : Bonus.
  /// - "SIGNING_BONUS" : Signing bonus.
  /// - "EQUITY" : Equity.
  /// - "PROFIT_SHARING" : Profit sharing.
  /// - "COMMISSIONS" : Commission.
  /// - "TIPS" : Tips.
  /// - "OTHER_COMPENSATION_TYPE" : Other compensation type.
  core.String? type;

  /// Frequency of the specified amount.
  ///
  /// Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
  /// Possible string values are:
  /// - "COMPENSATION_UNIT_UNSPECIFIED" : Default value.
  /// - "HOURLY" : Hourly.
  /// - "DAILY" : Daily.
  /// - "WEEKLY" : Weekly
  /// - "MONTHLY" : Monthly.
  /// - "YEARLY" : Yearly.
  /// - "ONE_TIME" : One time.
  /// - "OTHER_COMPENSATION_UNIT" : Other compensation units.
  core.String? unit;

  CompensationEntry({
    this.amount,
    this.description,
    this.expectedUnitsPerYear,
    this.range,
    this.type,
    this.unit,
  });

  CompensationEntry.fromJson(core.Map json_)
      : this(
          amount: json_.containsKey('amount')
              ? Money.fromJson(
                  json_['amount'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          expectedUnitsPerYear: json_.containsKey('expectedUnitsPerYear')
              ? (json_['expectedUnitsPerYear'] as core.num).toDouble()
              : null,
          range: json_.containsKey('range')
              ? CompensationRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (description != null) 'description': description!,
        if (expectedUnitsPerYear != null)
          'expectedUnitsPerYear': expectedUnitsPerYear!,
        if (range != null) 'range': range!,
        if (type != null) 'type': type!,
        if (unit != null) 'unit': unit!,
      };
}

/// Filter on job compensation type and amount.
class CompensationFilter {
  /// If set to true, jobs with unspecified compensation range fields are
  /// included.
  core.bool? includeJobsWithUnspecifiedCompensationRange;

  /// Compensation range.
  CompensationRange? range;

  /// Type of filter.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FILTER_TYPE_UNSPECIFIED" : Filter type unspecified. Position holder,
  /// INVALID, should never be used.
  /// - "UNIT_ONLY" : Filter by `base compensation entry's` unit. A job is a
  /// match if and only if the job contains a base CompensationEntry and the
  /// base CompensationEntry's unit matches provided units. Populate one or more
  /// units. See CompensationInfo.CompensationEntry for definition of base
  /// compensation entry.
  /// - "UNIT_AND_AMOUNT" : Filter by `base compensation entry's` unit and
  /// amount / range. A job is a match if and only if the job contains a base
  /// CompensationEntry, and the base entry's unit matches provided
  /// CompensationUnit and amount or range overlaps with provided
  /// CompensationRange. See CompensationInfo.CompensationEntry for definition
  /// of base compensation entry. Set exactly one units and populate range.
  /// - "ANNUALIZED_BASE_AMOUNT" : Filter by annualized base compensation amount
  /// and `base compensation entry's` unit. Populate range and zero or more
  /// units.
  /// - "ANNUALIZED_TOTAL_AMOUNT" : Filter by annualized total compensation
  /// amount and `base compensation entry's` unit . Populate range and zero or
  /// more units.
  core.String? type;

  /// Specify desired `base compensation entry's`
  /// CompensationInfo.CompensationUnit.
  ///
  /// Required.
  core.List<core.String>? units;

  CompensationFilter({
    this.includeJobsWithUnspecifiedCompensationRange,
    this.range,
    this.type,
    this.units,
  });

  CompensationFilter.fromJson(core.Map json_)
      : this(
          includeJobsWithUnspecifiedCompensationRange:
              json_.containsKey('includeJobsWithUnspecifiedCompensationRange')
                  ? json_['includeJobsWithUnspecifiedCompensationRange']
                      as core.bool
                  : null,
          range: json_.containsKey('range')
              ? CompensationRange.fromJson(
                  json_['range'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          units: json_.containsKey('units')
              ? (json_['units'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeJobsWithUnspecifiedCompensationRange != null)
          'includeJobsWithUnspecifiedCompensationRange':
              includeJobsWithUnspecifiedCompensationRange!,
        if (range != null) 'range': range!,
        if (type != null) 'type': type!,
        if (units != null) 'units': units!,
      };
}

/// Job compensation details.
class CompensationInfo {
  /// Annualized base compensation range.
  ///
  /// Computed as base compensation entry's CompensationEntry.amount times
  /// CompensationEntry.expected_units_per_year. See CompensationEntry for
  /// explanation on compensation annualization.
  ///
  /// Output only.
  CompensationRange? annualizedBaseCompensationRange;

  /// Annualized total compensation range.
  ///
  /// Computed as all compensation entries' CompensationEntry.amount times
  /// CompensationEntry.expected_units_per_year. See CompensationEntry for
  /// explanation on compensation annualization.
  ///
  /// Output only.
  CompensationRange? annualizedTotalCompensationRange;

  /// Job compensation information.
  ///
  /// At most one entry can be of type CompensationInfo.CompensationType.BASE,
  /// which is referred as **base compensation entry** for the job.
  core.List<CompensationEntry>? entries;

  CompensationInfo({
    this.annualizedBaseCompensationRange,
    this.annualizedTotalCompensationRange,
    this.entries,
  });

  CompensationInfo.fromJson(core.Map json_)
      : this(
          annualizedBaseCompensationRange:
              json_.containsKey('annualizedBaseCompensationRange')
                  ? CompensationRange.fromJson(
                      json_['annualizedBaseCompensationRange']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          annualizedTotalCompensationRange:
              json_.containsKey('annualizedTotalCompensationRange')
                  ? CompensationRange.fromJson(
                      json_['annualizedTotalCompensationRange']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.List)
                  .map((value) => CompensationEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (annualizedBaseCompensationRange != null)
          'annualizedBaseCompensationRange': annualizedBaseCompensationRange!,
        if (annualizedTotalCompensationRange != null)
          'annualizedTotalCompensationRange': annualizedTotalCompensationRange!,
        if (entries != null) 'entries': entries!,
      };
}

/// Compensation range.
class CompensationRange {
  /// The maximum amount of compensation.
  ///
  /// If left empty, the value is set to a maximal compensation value and the
  /// currency code is set to match the currency code of min_compensation.
  Money? maxCompensation;

  /// The minimum amount of compensation.
  ///
  /// If left empty, the value is set to zero and the currency code is set to
  /// match the currency code of max_compensation.
  Money? minCompensation;

  CompensationRange({
    this.maxCompensation,
    this.minCompensation,
  });

  CompensationRange.fromJson(core.Map json_)
      : this(
          maxCompensation: json_.containsKey('maxCompensation')
              ? Money.fromJson(json_['maxCompensation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          minCompensation: json_.containsKey('minCompensation')
              ? Money.fromJson(json_['minCompensation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxCompensation != null) 'maxCompensation': maxCompensation!,
        if (minCompensation != null) 'minCompensation': minCompensation!,
      };
}

/// Response of auto-complete query.
class CompleteQueryResponse {
  /// Results of the matching job/company candidates.
  core.List<CompletionResult>? completionResults;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  CompleteQueryResponse({
    this.completionResults,
    this.metadata,
  });

  CompleteQueryResponse.fromJson(core.Map json_)
      : this(
          completionResults: json_.containsKey('completionResults')
              ? (json_['completionResults'] as core.List)
                  .map((value) => CompletionResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completionResults != null) 'completionResults': completionResults!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Resource that represents completion results.
class CompletionResult {
  /// The URI of the company image for COMPANY_NAME.
  core.String? imageUri;

  /// The suggestion for the query.
  core.String? suggestion;

  /// The completion topic.
  /// Possible string values are:
  /// - "COMPLETION_TYPE_UNSPECIFIED" : Default value.
  /// - "JOB_TITLE" : Suggest job titles for jobs autocomplete. For
  /// CompletionType.JOB_TITLE type, only open jobs with the same language_codes
  /// are returned.
  /// - "COMPANY_NAME" : Suggest company names for jobs autocomplete. For
  /// CompletionType.COMPANY_NAME type, only companies having open jobs with the
  /// same language_codes are returned.
  /// - "COMBINED" : Suggest both job titles and company names for jobs
  /// autocomplete. For CompletionType.COMBINED type, only open jobs with the
  /// same language_codes or companies having open jobs with the same
  /// language_codes are returned.
  core.String? type;

  CompletionResult({
    this.imageUri,
    this.suggestion,
    this.type,
  });

  CompletionResult.fromJson(core.Map json_)
      : this(
          imageUri: json_.containsKey('imageUri')
              ? json_['imageUri'] as core.String
              : null,
          suggestion: json_.containsKey('suggestion')
              ? json_['suggestion'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (imageUri != null) 'imageUri': imageUri!,
        if (suggestion != null) 'suggestion': suggestion!,
        if (type != null) 'type': type!,
      };
}

/// Custom attribute values that are either filterable or non-filterable.
class CustomAttribute {
  /// If the `filterable` flag is true, the custom field values may be used for
  /// custom attribute filters JobQuery.custom_attribute_filter.
  ///
  /// If false, these values may not be used for custom attribute filters.
  /// Default is false.
  core.bool? filterable;

  /// If the `keyword_searchable` flag is true, the keywords in custom fields
  /// are searchable by keyword match.
  ///
  /// If false, the values are not searchable by keyword match. Default is
  /// false.
  core.bool? keywordSearchable;

  /// Exactly one of string_values or long_values must be specified.
  ///
  /// This field is used to perform number range search. (`EQ`, `GT`, `GE`,
  /// `LE`, `LT`) over filterable `long_value`. Currently at most 1 long_values
  /// is supported.
  core.List<core.String>? longValues;

  /// Exactly one of string_values or long_values must be specified.
  ///
  /// This field is used to perform a string match (`CASE_SENSITIVE_MATCH` or
  /// `CASE_INSENSITIVE_MATCH`) search. For filterable `string_value`s, a
  /// maximum total number of 200 values is allowed, with each `string_value`
  /// has a byte size of no more than 500B. For unfilterable `string_values`,
  /// the maximum total byte size of unfilterable `string_values` is 50KB. Empty
  /// string isn't allowed.
  core.List<core.String>? stringValues;

  CustomAttribute({
    this.filterable,
    this.keywordSearchable,
    this.longValues,
    this.stringValues,
  });

  CustomAttribute.fromJson(core.Map json_)
      : this(
          filterable: json_.containsKey('filterable')
              ? json_['filterable'] as core.bool
              : null,
          keywordSearchable: json_.containsKey('keywordSearchable')
              ? json_['keywordSearchable'] as core.bool
              : null,
          longValues: json_.containsKey('longValues')
              ? (json_['longValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          stringValues: json_.containsKey('stringValues')
              ? (json_['stringValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filterable != null) 'filterable': filterable!,
        if (keywordSearchable != null) 'keywordSearchable': keywordSearchable!,
        if (longValues != null) 'longValues': longValues!,
        if (stringValues != null) 'stringValues': stringValues!,
      };
}

/// Custom ranking information for SearchJobsRequest.
class CustomRankingInfo {
  /// Controls over how important the score of
  /// CustomRankingInfo.ranking_expression gets applied to job's final ranking
  /// position.
  ///
  /// An error is thrown if not specified.
  ///
  /// Required.
  /// Possible string values are:
  /// - "IMPORTANCE_LEVEL_UNSPECIFIED" : Default value if the importance level
  /// isn't specified.
  /// - "NONE" : The given ranking expression is of None importance, existing
  /// relevance score (determined by API algorithm) dominates job's final
  /// ranking position.
  /// - "LOW" : The given ranking expression is of Low importance in terms of
  /// job's final ranking position compared to existing relevance score
  /// (determined by API algorithm).
  /// - "MILD" : The given ranking expression is of Mild importance in terms of
  /// job's final ranking position compared to existing relevance score
  /// (determined by API algorithm).
  /// - "MEDIUM" : The given ranking expression is of Medium importance in terms
  /// of job's final ranking position compared to existing relevance score
  /// (determined by API algorithm).
  /// - "HIGH" : The given ranking expression is of High importance in terms of
  /// job's final ranking position compared to existing relevance score
  /// (determined by API algorithm).
  /// - "EXTREME" : The given ranking expression is of Extreme importance, and
  /// dominates job's final ranking position with existing relevance score
  /// (determined by API algorithm) ignored.
  core.String? importanceLevel;

  /// Controls over how job documents get ranked on top of existing relevance
  /// score (determined by API algorithm).
  ///
  /// A combination of the ranking expression and relevance score is used to
  /// determine job's final ranking position. The syntax for this expression is
  /// a subset of Google SQL syntax. Supported operators are: +, -, *, /, where
  /// the left and right side of the operator is either a numeric
  /// Job.custom_attributes key, integer/double value or an expression that can
  /// be evaluated to a number. Parenthesis are supported to adjust calculation
  /// precedence. The expression must be \< 200 characters in length. The
  /// expression is considered invalid for a job if the expression references
  /// custom attributes that are not populated on the job or if the expression
  /// results in a divide by zero. If an expression is invalid for a job, that
  /// job is demoted to the end of the results. Sample ranking expression (year
  /// + 25) * 0.25 - (freshness / 0.5)
  ///
  /// Required.
  core.String? rankingExpression;

  CustomRankingInfo({
    this.importanceLevel,
    this.rankingExpression,
  });

  CustomRankingInfo.fromJson(core.Map json_)
      : this(
          importanceLevel: json_.containsKey('importanceLevel')
              ? json_['importanceLevel'] as core.String
              : null,
          rankingExpression: json_.containsKey('rankingExpression')
              ? json_['rankingExpression'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (importanceLevel != null) 'importanceLevel': importanceLevel!,
        if (rankingExpression != null) 'rankingExpression': rankingExpression!,
      };
}

/// Device information collected from the job seeker, candidate, or other entity
/// conducting the job search.
///
/// Providing this information improves the quality of the search results across
/// devices.
class DeviceInfo {
  /// Type of the device.
  /// Possible string values are:
  /// - "DEVICE_TYPE_UNSPECIFIED" : The device type isn't specified.
  /// - "WEB" : A desktop web browser, such as, Chrome, Firefox, Safari, or
  /// Internet Explorer)
  /// - "MOBILE_WEB" : A mobile device web browser, such as a phone or tablet
  /// with a Chrome browser.
  /// - "ANDROID" : An Android device native application.
  /// - "IOS" : An iOS device native application.
  /// - "BOT" : A bot, as opposed to a device operated by human beings, such as
  /// a web crawler.
  /// - "OTHER" : Other devices types.
  core.String? deviceType;

  /// A device-specific ID.
  ///
  /// The ID must be a unique identifier that distinguishes the device from
  /// other devices.
  core.String? id;

  DeviceInfo({
    this.deviceType,
    this.id,
  });

  DeviceInfo.fromJson(core.Map json_)
      : this(
          deviceType: json_.containsKey('deviceType')
              ? json_['deviceType'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceType != null) 'deviceType': deviceType!,
        if (id != null) 'id': id!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The histogram request.
class HistogramQuery {
  /// An expression specifies a histogram request against matching jobs for
  /// searches.
  ///
  /// See SearchJobsRequest.histogram_queries for details about syntax.
  core.String? histogramQuery;

  HistogramQuery({
    this.histogramQuery,
  });

  HistogramQuery.fromJson(core.Map json_)
      : this(
          histogramQuery: json_.containsKey('histogramQuery')
              ? json_['histogramQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (histogramQuery != null) 'histogramQuery': histogramQuery!,
      };
}

/// Histogram result that matches HistogramQuery specified in searches.
class HistogramQueryResult {
  /// A map from the values of the facet associated with distinct values to the
  /// number of matching entries with corresponding value.
  ///
  /// The key format is: * (for string histogram) string values stored in the
  /// field. * (for named numeric bucket) name specified in `bucket()` function,
  /// like for `bucket(0, MAX, "non-negative")`, the key will be `non-negative`.
  /// * (for anonymous numeric bucket) range formatted as `-`, for example,
  /// `0-1000`, `MIN-0`, and `0-MAX`.
  core.Map<core.String, core.String>? histogram;

  /// Requested histogram expression.
  core.String? histogramQuery;

  HistogramQueryResult({
    this.histogram,
    this.histogramQuery,
  });

  HistogramQueryResult.fromJson(core.Map json_)
      : this(
          histogram: json_.containsKey('histogram')
              ? (json_['histogram'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          histogramQuery: json_.containsKey('histogramQuery')
              ? json_['histogramQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (histogram != null) 'histogram': histogram!,
        if (histogramQuery != null) 'histogramQuery': histogramQuery!,
      };
}

/// A Job resource represents a job posting (also referred to as a "job listing"
/// or "job requisition").
///
/// A job belongs to a Company, which is the hiring entity responsible for the
/// job.
class Job {
  /// Strongly recommended for the best service experience.
  ///
  /// Location(s) where the employer is looking to hire for this job posting.
  /// Specifying the full street address(es) of the hiring location enables
  /// better API results, especially job searches by commute time. At most 50
  /// locations are allowed for best search performance. If a job has more
  /// locations, it is suggested to split it into multiple jobs with unique
  /// requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', and so on.) as
  /// multiple jobs with the same company, language_code and requisition_id are
  /// not allowed. If the original requisition_id must be preserved, a custom
  /// field should be used for storage. It is also suggested to group the
  /// locations that close to each other in the same job for better search
  /// experience. Jobs with multiple addresses must have their addresses with
  /// the same LocationType to allow location filtering to work properly. (For
  /// example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View,
  /// CA, USA" and "London, UK" may not have location filters applied correctly
  /// at search time since the first is a LocationType.STREET_ADDRESS and the
  /// second is a LocationType.LOCALITY.) If a job needs to have multiple
  /// addresses, it is suggested to split it into multiple jobs with same
  /// LocationTypes. The maximum number of allowed characters is 500.
  core.List<core.String>? addresses;

  /// Job application information.
  ApplicationInfo? applicationInfo;

  /// The resource name of the company listing the job.
  ///
  /// The format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}". For
  /// example, "projects/foo/tenants/bar/companies/baz".
  ///
  /// Required.
  core.String? company;

  /// Display name of the company listing the job.
  ///
  /// Output only.
  core.String? companyDisplayName;

  /// Job compensation information (a.k.a. "pay rate") i.e., the compensation
  /// that will paid to the employee.
  CompensationInfo? compensationInfo;

  /// A map of fields to hold both filterable and non-filterable custom job
  /// attributes that are not covered by the provided structured fields.
  ///
  /// The keys of the map are strings up to 64 bytes and must match the pattern:
  /// `a-zA-Z*`. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100
  /// filterable and at most 100 unfilterable keys are supported. For filterable
  /// `string_values`, across all keys at most 200 values are allowed, with each
  /// string no more than 255 characters. For unfilterable `string_values`, the
  /// maximum total size of `string_values` across all keys is 50KB.
  core.Map<core.String, CustomAttribute>? customAttributes;

  /// The desired education degrees for the job, such as Bachelors, Masters.
  core.List<core.String>? degreeTypes;

  /// The department or functional area within the company with the open
  /// position.
  ///
  /// The maximum number of allowed characters is 255.
  core.String? department;

  /// Derived details about the job posting.
  ///
  /// Output only.
  JobDerivedInfo? derivedInfo;

  /// The description of the job, which typically includes a multi-paragraph
  /// description of the company and related information.
  ///
  /// Separate fields are provided on the job object for responsibilities,
  /// qualifications, and other job characteristics. Use of these separate job
  /// fields is recommended. This field accepts and sanitizes HTML input, and
  /// also accepts bold, italic, ordered list, and unordered list markup tags.
  /// The maximum number of allowed characters is 100,000.
  ///
  /// Required.
  core.String? description;

  /// The employment type(s) of a job, for example, full time or part time.
  core.List<core.String>? employmentTypes;

  /// A description of bonus, commission, and other compensation incentives
  /// associated with the job not including salary or pay.
  ///
  /// The maximum number of allowed characters is 10,000.
  core.String? incentives;

  /// The benefits included with the job.
  core.List<core.String>? jobBenefits;

  /// The end timestamp of the job.
  ///
  /// Typically this field is used for contracting engagements. Invalid
  /// timestamps are ignored.
  core.String? jobEndTime;

  /// The experience level associated with the job, such as "Entry Level".
  /// Possible string values are:
  /// - "JOB_LEVEL_UNSPECIFIED" : The default value if the level isn't
  /// specified.
  /// - "ENTRY_LEVEL" : Entry-level individual contributors, typically with less
  /// than 2 years of experience in a similar role. Includes interns.
  /// - "EXPERIENCED" : Experienced individual contributors, typically with 2+
  /// years of experience in a similar role.
  /// - "MANAGER" : Entry- to mid-level managers responsible for managing a team
  /// of people.
  /// - "DIRECTOR" : Senior-level managers responsible for managing teams of
  /// managers.
  /// - "EXECUTIVE" : Executive-level managers and above, including C-level
  /// positions.
  core.String? jobLevel;

  /// The start timestamp of the job in UTC time zone.
  ///
  /// Typically this field is used for contracting engagements. Invalid
  /// timestamps are ignored.
  core.String? jobStartTime;

  /// The language of the posting.
  ///
  /// This field is distinct from any requirements for fluency that are
  /// associated with the job. Language codes must be in BCP-47 format, such as
  /// "en-US" or "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){:
  /// class="external" target="_blank" }. If this field is unspecified and
  /// Job.description is present, detected language code based on
  /// Job.description is assigned, otherwise defaults to 'en_US'.
  core.String? languageCode;

  /// Required during job update.
  ///
  /// The resource name for the job. This is generated by the service when a job
  /// is created. The format is
  /// "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}". For example,
  /// "projects/foo/tenants/bar/jobs/baz". Use of this field in job queries and
  /// API calls is preferred over the use of requisition_id since this value is
  /// unique.
  core.String? name;

  /// The timestamp when this job posting was created.
  ///
  /// Output only.
  core.String? postingCreateTime;

  /// Strongly recommended for the best service experience.
  ///
  /// The expiration timestamp of the job. After this timestamp, the job is
  /// marked as expired, and it no longer appears in search results. The expired
  /// job can't be listed by the ListJobs API, but it can be retrieved with the
  /// GetJob API or updated with the UpdateJob API or deleted with the DeleteJob
  /// API. An expired job can be updated and opened again by using a future
  /// expiration timestamp. Updating an expired job fails if there is another
  /// existing open job with same company, language_code and requisition_id. The
  /// expired jobs are retained in our system for 90 days. However, the overall
  /// expired job count cannot exceed 3 times the maximum number of open jobs
  /// over previous 7 days. If this threshold is exceeded, expired jobs are
  /// cleaned out in order of earliest expire time. Expired jobs are no longer
  /// accessible after they are cleaned out. Invalid timestamps are ignored, and
  /// treated as expire time not provided. If the timestamp is before the
  /// instant request is made, the job is treated as expired immediately on
  /// creation. This kind of job can not be updated. And when creating a job
  /// with past timestamp, the posting_publish_time must be set before
  /// posting_expire_time. The purpose of this feature is to allow other
  /// objects, such as Application, to refer a job that didn't exist in the
  /// system prior to becoming expired. If you want to modify a job that was
  /// expired on creation, delete it and create a new one. If this value isn't
  /// provided at the time of job creation or is invalid, the job posting
  /// expires after 30 days from the job's creation time. For example, if the
  /// job was created on 2017/01/01 13:00AM UTC with an unspecified expiration
  /// date, the job expires after 2017/01/31 13:00AM UTC. If this value isn't
  /// provided on job update, it depends on the field masks set by
  /// UpdateJobRequest.update_mask. If the field masks include job_end_time, or
  /// the masks are empty meaning that every field is updated, the job posting
  /// expires after 30 days from the job's last update time. Otherwise the
  /// expiration date isn't updated.
  core.String? postingExpireTime;

  /// The timestamp this job posting was most recently published.
  ///
  /// The default value is the time the request arrives at the server. Invalid
  /// timestamps are ignored.
  core.String? postingPublishTime;

  /// The job PostingRegion (for example, state, country) throughout which the
  /// job is available.
  ///
  /// If this field is set, a LocationFilter in a search query within the job
  /// region finds this job posting if an exact location match isn't specified.
  /// If this field is set to PostingRegion.NATION or
  /// PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same
  /// location level as this field is strongly recommended.
  /// Possible string values are:
  /// - "POSTING_REGION_UNSPECIFIED" : If the region is unspecified, the job is
  /// only returned if it matches the LocationFilter.
  /// - "ADMINISTRATIVE_AREA" : In addition to exact location matching, job
  /// posting is returned when the LocationFilter in the search query is in the
  /// same administrative area as the returned job posting. For example, if a
  /// `ADMINISTRATIVE_AREA` job is posted in "CA, USA", it's returned if
  /// LocationFilter has "Mountain View". Administrative area refers to
  /// top-level administrative subdivision of this country. For example, US
  /// state, IT region, UK constituent nation and JP prefecture.
  /// - "NATION" : In addition to exact location matching, job is returned when
  /// LocationFilter in search query is in the same country as this job. For
  /// example, if a `NATION_WIDE` job is posted in "USA", it's returned if
  /// LocationFilter has 'Mountain View'.
  /// - "TELECOMMUTE" : Job allows employees to work remotely (telecommute). If
  /// locations are provided with this value, the job is considered as having a
  /// location, but telecommuting is allowed.
  core.String? postingRegion;

  /// The timestamp when this job posting was last updated.
  ///
  /// Output only.
  core.String? postingUpdateTime;

  /// Options for job processing.
  ProcessingOptions? processingOptions;

  /// A promotion value of the job, as determined by the client.
  ///
  /// The value determines the sort order of the jobs returned when searching
  /// for jobs using the featured jobs search call, with higher promotional
  /// values being returned first and ties being resolved by relevance sort.
  /// Only the jobs with a promotionValue \>0 are returned in a
  /// FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated
  /// as 0.
  core.int? promotionValue;

  /// A description of the qualifications required to perform the job.
  ///
  /// The use of this field is recommended as an alternative to using the more
  /// general description field. This field accepts and sanitizes HTML input,
  /// and also accepts bold, italic, ordered list, and unordered list markup
  /// tags. The maximum number of allowed characters is 10,000.
  core.String? qualifications;

  /// The requisition ID, also referred to as the posting ID, is assigned by the
  /// client to identify a job.
  ///
  /// This field is intended to be used by clients for client identification and
  /// tracking of postings. A job isn't allowed to be created if there is
  /// another job with the same company, language_code and requisition_id. The
  /// maximum number of allowed characters is 255.
  ///
  /// Required.
  core.String? requisitionId;

  /// A description of job responsibilities.
  ///
  /// The use of this field is recommended as an alternative to using the more
  /// general description field. This field accepts and sanitizes HTML input,
  /// and also accepts bold, italic, ordered list, and unordered list markup
  /// tags. The maximum number of allowed characters is 10,000.
  core.String? responsibilities;

  /// The title of the job, such as "Software Engineer" The maximum number of
  /// allowed characters is 500.
  ///
  /// Required.
  core.String? title;

  /// The job is only visible to the owner.
  ///
  /// The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not
  /// specified.
  ///
  /// Deprecated.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : Default value.
  /// - "ACCOUNT_ONLY" : The resource is only visible to the GCP account who
  /// owns it.
  /// - "SHARED_WITH_GOOGLE" : The resource is visible to the owner and may be
  /// visible to other applications and processes at Google.
  /// - "SHARED_WITH_PUBLIC" : The resource is visible to the owner and may be
  /// visible to all other API clients.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? visibility;

  Job({
    this.addresses,
    this.applicationInfo,
    this.company,
    this.companyDisplayName,
    this.compensationInfo,
    this.customAttributes,
    this.degreeTypes,
    this.department,
    this.derivedInfo,
    this.description,
    this.employmentTypes,
    this.incentives,
    this.jobBenefits,
    this.jobEndTime,
    this.jobLevel,
    this.jobStartTime,
    this.languageCode,
    this.name,
    this.postingCreateTime,
    this.postingExpireTime,
    this.postingPublishTime,
    this.postingRegion,
    this.postingUpdateTime,
    this.processingOptions,
    this.promotionValue,
    this.qualifications,
    this.requisitionId,
    this.responsibilities,
    this.title,
    this.visibility,
  });

  Job.fromJson(core.Map json_)
      : this(
          addresses: json_.containsKey('addresses')
              ? (json_['addresses'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          applicationInfo: json_.containsKey('applicationInfo')
              ? ApplicationInfo.fromJson(json_['applicationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          company: json_.containsKey('company')
              ? json_['company'] as core.String
              : null,
          companyDisplayName: json_.containsKey('companyDisplayName')
              ? json_['companyDisplayName'] as core.String
              : null,
          compensationInfo: json_.containsKey('compensationInfo')
              ? CompensationInfo.fromJson(json_['compensationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customAttributes: json_.containsKey('customAttributes')
              ? (json_['customAttributes']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    CustomAttribute.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          degreeTypes: json_.containsKey('degreeTypes')
              ? (json_['degreeTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          department: json_.containsKey('department')
              ? json_['department'] as core.String
              : null,
          derivedInfo: json_.containsKey('derivedInfo')
              ? JobDerivedInfo.fromJson(
                  json_['derivedInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          employmentTypes: json_.containsKey('employmentTypes')
              ? (json_['employmentTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          incentives: json_.containsKey('incentives')
              ? json_['incentives'] as core.String
              : null,
          jobBenefits: json_.containsKey('jobBenefits')
              ? (json_['jobBenefits'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jobEndTime: json_.containsKey('jobEndTime')
              ? json_['jobEndTime'] as core.String
              : null,
          jobLevel: json_.containsKey('jobLevel')
              ? json_['jobLevel'] as core.String
              : null,
          jobStartTime: json_.containsKey('jobStartTime')
              ? json_['jobStartTime'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          postingCreateTime: json_.containsKey('postingCreateTime')
              ? json_['postingCreateTime'] as core.String
              : null,
          postingExpireTime: json_.containsKey('postingExpireTime')
              ? json_['postingExpireTime'] as core.String
              : null,
          postingPublishTime: json_.containsKey('postingPublishTime')
              ? json_['postingPublishTime'] as core.String
              : null,
          postingRegion: json_.containsKey('postingRegion')
              ? json_['postingRegion'] as core.String
              : null,
          postingUpdateTime: json_.containsKey('postingUpdateTime')
              ? json_['postingUpdateTime'] as core.String
              : null,
          processingOptions: json_.containsKey('processingOptions')
              ? ProcessingOptions.fromJson(json_['processingOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          promotionValue: json_.containsKey('promotionValue')
              ? json_['promotionValue'] as core.int
              : null,
          qualifications: json_.containsKey('qualifications')
              ? json_['qualifications'] as core.String
              : null,
          requisitionId: json_.containsKey('requisitionId')
              ? json_['requisitionId'] as core.String
              : null,
          responsibilities: json_.containsKey('responsibilities')
              ? json_['responsibilities'] as core.String
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          visibility: json_.containsKey('visibility')
              ? json_['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addresses != null) 'addresses': addresses!,
        if (applicationInfo != null) 'applicationInfo': applicationInfo!,
        if (company != null) 'company': company!,
        if (companyDisplayName != null)
          'companyDisplayName': companyDisplayName!,
        if (compensationInfo != null) 'compensationInfo': compensationInfo!,
        if (customAttributes != null) 'customAttributes': customAttributes!,
        if (degreeTypes != null) 'degreeTypes': degreeTypes!,
        if (department != null) 'department': department!,
        if (derivedInfo != null) 'derivedInfo': derivedInfo!,
        if (description != null) 'description': description!,
        if (employmentTypes != null) 'employmentTypes': employmentTypes!,
        if (incentives != null) 'incentives': incentives!,
        if (jobBenefits != null) 'jobBenefits': jobBenefits!,
        if (jobEndTime != null) 'jobEndTime': jobEndTime!,
        if (jobLevel != null) 'jobLevel': jobLevel!,
        if (jobStartTime != null) 'jobStartTime': jobStartTime!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (postingCreateTime != null) 'postingCreateTime': postingCreateTime!,
        if (postingExpireTime != null) 'postingExpireTime': postingExpireTime!,
        if (postingPublishTime != null)
          'postingPublishTime': postingPublishTime!,
        if (postingRegion != null) 'postingRegion': postingRegion!,
        if (postingUpdateTime != null) 'postingUpdateTime': postingUpdateTime!,
        if (processingOptions != null) 'processingOptions': processingOptions!,
        if (promotionValue != null) 'promotionValue': promotionValue!,
        if (qualifications != null) 'qualifications': qualifications!,
        if (requisitionId != null) 'requisitionId': requisitionId!,
        if (responsibilities != null) 'responsibilities': responsibilities!,
        if (title != null) 'title': title!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// Derived details about the job posting.
class JobDerivedInfo {
  /// Job categories derived from Job.title and Job.description.
  core.List<core.String>? jobCategories;

  /// Structured locations of the job, resolved from Job.addresses.
  ///
  /// locations are exactly matched to Job.addresses in the same order.
  core.List<Location>? locations;

  JobDerivedInfo({
    this.jobCategories,
    this.locations,
  });

  JobDerivedInfo.fromJson(core.Map json_)
      : this(
          jobCategories: json_.containsKey('jobCategories')
              ? (json_['jobCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobCategories != null) 'jobCategories': jobCategories!,
        if (locations != null) 'locations': locations!,
      };
}

/// An event issued when a job seeker interacts with the application that
/// implements Cloud Talent Solution.
class JobEvent {
  /// The job name(s) associated with this event.
  ///
  /// For example, if this is an impression event, this field contains the
  /// identifiers of all jobs shown to the job seeker. If this was a view event,
  /// this field contains the identifier of the viewed job. The format is
  /// "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}", for example,
  /// "projects/foo/tenants/bar/jobs/baz".
  ///
  /// Required.
  core.List<core.String>? jobs;

  /// The type of the event (see JobEventType).
  ///
  /// Required.
  /// Possible string values are:
  /// - "JOB_EVENT_TYPE_UNSPECIFIED" : The event is unspecified by other
  /// provided values.
  /// - "IMPRESSION" : The job seeker or other entity interacting with the
  /// service has had a job rendered in their view, such as in a list of search
  /// results in a compressed or clipped format. This event is typically
  /// associated with the viewing of a jobs list on a single page by a job
  /// seeker.
  /// - "VIEW" : The job seeker, or other entity interacting with the service,
  /// has viewed the details of a job, including the full description. This
  /// event doesn't apply to the viewing a snippet of a job appearing as a part
  /// of the job search results. Viewing a snippet is associated with an
  /// impression).
  /// - "VIEW_REDIRECT" : The job seeker or other entity interacting with the
  /// service performed an action to view a job and was redirected to a
  /// different website for job.
  /// - "APPLICATION_START" : The job seeker or other entity interacting with
  /// the service began the process or demonstrated the intention of applying
  /// for a job.
  /// - "APPLICATION_FINISH" : The job seeker or other entity interacting with
  /// the service submitted an application for a job.
  /// - "APPLICATION_QUICK_SUBMISSION" : The job seeker or other entity
  /// interacting with the service submitted an application for a job with a
  /// single click without entering information. If a job seeker performs this
  /// action, send only this event to the service. Do not also send
  /// JobEventType.APPLICATION_START or JobEventType.APPLICATION_FINISH events.
  /// - "APPLICATION_REDIRECT" : The job seeker or other entity interacting with
  /// the service performed an action to apply to a job and was redirected to a
  /// different website to complete the application.
  /// - "APPLICATION_START_FROM_SEARCH" : The job seeker or other entity
  /// interacting with the service began the process or demonstrated the
  /// intention of applying for a job from the search results page without
  /// viewing the details of the job posting. If sending this event,
  /// JobEventType.VIEW event shouldn't be sent.
  /// - "APPLICATION_REDIRECT_FROM_SEARCH" : The job seeker, or other entity
  /// interacting with the service, performs an action with a single click from
  /// the search results page to apply to a job (without viewing the details of
  /// the job posting), and is redirected to a different website to complete the
  /// application. If a candidate performs this action, send only this event to
  /// the service. Do not also send JobEventType.APPLICATION_START,
  /// JobEventType.APPLICATION_FINISH or JobEventType.VIEW events.
  /// - "APPLICATION_COMPANY_SUBMIT" : This event should be used when a company
  /// submits an application on behalf of a job seeker. This event is intended
  /// for use by staffing agencies attempting to place candidates.
  /// - "BOOKMARK" : The job seeker or other entity interacting with the service
  /// demonstrated an interest in a job by bookmarking or saving it.
  /// - "NOTIFICATION" : The job seeker or other entity interacting with the
  /// service was sent a notification, such as an email alert or device
  /// notification, containing one or more jobs listings generated by the
  /// service.
  /// - "HIRED" : The job seeker or other entity interacting with the service
  /// was employed by the hiring entity (employer). Send this event only if the
  /// job seeker was hired through an application that was initiated by a search
  /// conducted through the Cloud Talent Solution service.
  /// - "SENT_CV" : A recruiter or staffing agency submitted an application on
  /// behalf of the candidate after interacting with the service to identify a
  /// suitable job posting.
  /// - "INTERVIEW_GRANTED" : The entity interacting with the service (for
  /// example, the job seeker), was granted an initial interview by the hiring
  /// entity (employer). This event should only be sent if the job seeker was
  /// granted an interview as part of an application that was initiated by a
  /// search conducted through / recommendation provided by the Cloud Talent
  /// Solution service.
  core.String? type;

  JobEvent({
    this.jobs,
    this.type,
  });

  JobEvent.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (type != null) 'type': type!,
      };
}

/// The query required to perform a search query.
class JobQuery {
  /// Allows filtering jobs by commute time with different travel methods (for
  /// example, driving or public transit).
  ///
  /// Note: This only works when you specify a CommuteMethod. In this case,
  /// location_filters is ignored. Currently we don't support sorting by commute
  /// time.
  CommuteFilter? commuteFilter;

  /// This filter specifies the company entities to search against.
  ///
  /// If a value isn't specified, jobs are searched for against all companies.
  /// If multiple values are specified, jobs are searched against the companies
  /// specified. The format is
  /// "projects/{project_id}/tenants/{tenant_id}/companies/{company_id}". For
  /// example, "projects/foo/tenants/bar/companies/baz". At most 20 company
  /// filters are allowed.
  core.List<core.String>? companies;

  /// This filter specifies the company Company.display_name of the jobs to
  /// search against.
  ///
  /// The company name must match the value exactly. Alternatively, the value
  /// being searched for can be wrapped in different match operators.
  /// `SUBSTRING_MATCH([value])` The company name must contain a case
  /// insensitive substring match of the value. Using this function may increase
  /// latency. Sample Value: `SUBSTRING_MATCH(google)`
  /// `MULTI_WORD_TOKEN_MATCH([value])` The value will be treated as a multi
  /// word token and the company name must contain a case insensitive match of
  /// the value. Using this function may increase latency. Sample Value:
  /// `MULTI_WORD_TOKEN_MATCH(google)` If a value isn't specified, jobs within
  /// the search results are associated with any company. If multiple values are
  /// specified, jobs within the search results may be associated with any of
  /// the specified companies. At most 20 company display name filters are
  /// allowed.
  core.List<core.String>? companyDisplayNames;

  /// This search filter is applied only to Job.compensation_info.
  ///
  /// For example, if the filter is specified as "Hourly job with per-hour
  /// compensation \> $15", only jobs meeting these criteria are searched. If a
  /// filter isn't defined, all open jobs are searched.
  CompensationFilter? compensationFilter;

  /// This filter specifies a structured syntax to match against the
  /// Job.custom_attributes marked as `filterable`.
  ///
  /// The syntax for this expression is a subset of SQL syntax. Supported
  /// operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the left of the
  /// operator is a custom field key and the right of the operator is a number
  /// or a quoted string. You must escape backslash (\\) and quote (\")
  /// characters. Supported functions are `LOWER([field_name])` to perform a
  /// case insensitive match and `EMPTY([field_name])` to filter on the
  /// existence of a key. Boolean expressions (AND/OR/NOT) are supported up to 3
  /// levels of nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a
  /// maximum of 100 comparisons or functions are allowed in the expression. The
  /// expression must be \< 10000 bytes in length. Sample Query:
  /// `(LOWER(driving_license)="class \"a\"" OR EMPTY(driving_license)) AND
  /// driving_years > 10`
  core.String? customAttributeFilter;

  /// This flag controls the spell-check feature.
  ///
  /// If false, the service attempts to correct a misspelled query, for example,
  /// "enginee" is corrected to "engineer". Defaults to false: a spell check is
  /// performed.
  core.bool? disableSpellCheck;

  /// The employment type filter specifies the employment type of jobs to search
  /// against, such as EmploymentType.FULL_TIME.
  ///
  /// If a value isn't specified, jobs in the search results includes any
  /// employment type. If multiple values are specified, jobs in the search
  /// results include any of the specified employment types.
  core.List<core.String>? employmentTypes;

  /// This filter specifies a list of job names to be excluded during search.
  ///
  /// At most 400 excluded job names are allowed.
  core.List<core.String>? excludedJobs;

  /// The category filter specifies the categories of jobs to search against.
  ///
  /// See JobCategory for more information. If a value isn't specified, jobs
  /// from any category are searched against. If multiple values are specified,
  /// jobs from any of the specified categories are searched against.
  core.List<core.String>? jobCategories;

  /// This filter specifies the locale of jobs to search against, for example,
  /// "en-US".
  ///
  /// If a value isn't specified, the search results can contain jobs in any
  /// locale. Language codes should be in BCP-47 format, such as "en-US" or
  /// "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). At
  /// most 10 language code filters are allowed.
  core.List<core.String>? languageCodes;

  /// The location filter specifies geo-regions containing the jobs to search
  /// against.
  ///
  /// See LocationFilter for more information. If a location value isn't
  /// specified, jobs fitting the other search criteria are retrieved regardless
  /// of where they're located. If multiple values are specified, jobs are
  /// retrieved from any of the specified locations. If different values are
  /// specified for the LocationFilter.distance_in_miles parameter, the maximum
  /// provided distance is used for all locations. At most 5 location filters
  /// are allowed.
  core.List<LocationFilter>? locationFilters;

  /// Jobs published within a range specified by this filter are searched
  /// against.
  TimestampRange? publishTimeRange;

  /// The query string that matches against the job title, description, and
  /// location fields.
  ///
  /// The maximum number of allowed characters is 255.
  core.String? query;

  /// The language code of query.
  ///
  /// For example, "en-US". This field helps to better interpret the query. If a
  /// value isn't specified, the query language code is automatically detected,
  /// which may not be accurate. Language code should be in BCP-47 format, such
  /// as "en-US" or "sr-Latn". For more information, see
  /// [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  core.String? queryLanguageCode;

  JobQuery({
    this.commuteFilter,
    this.companies,
    this.companyDisplayNames,
    this.compensationFilter,
    this.customAttributeFilter,
    this.disableSpellCheck,
    this.employmentTypes,
    this.excludedJobs,
    this.jobCategories,
    this.languageCodes,
    this.locationFilters,
    this.publishTimeRange,
    this.query,
    this.queryLanguageCode,
  });

  JobQuery.fromJson(core.Map json_)
      : this(
          commuteFilter: json_.containsKey('commuteFilter')
              ? CommuteFilter.fromJson(
                  json_['commuteFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          companies: json_.containsKey('companies')
              ? (json_['companies'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          companyDisplayNames: json_.containsKey('companyDisplayNames')
              ? (json_['companyDisplayNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          compensationFilter: json_.containsKey('compensationFilter')
              ? CompensationFilter.fromJson(json_['compensationFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customAttributeFilter: json_.containsKey('customAttributeFilter')
              ? json_['customAttributeFilter'] as core.String
              : null,
          disableSpellCheck: json_.containsKey('disableSpellCheck')
              ? json_['disableSpellCheck'] as core.bool
              : null,
          employmentTypes: json_.containsKey('employmentTypes')
              ? (json_['employmentTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          excludedJobs: json_.containsKey('excludedJobs')
              ? (json_['excludedJobs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          jobCategories: json_.containsKey('jobCategories')
              ? (json_['jobCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          languageCodes: json_.containsKey('languageCodes')
              ? (json_['languageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          locationFilters: json_.containsKey('locationFilters')
              ? (json_['locationFilters'] as core.List)
                  .map((value) => LocationFilter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          publishTimeRange: json_.containsKey('publishTimeRange')
              ? TimestampRange.fromJson(json_['publishTimeRange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          queryLanguageCode: json_.containsKey('queryLanguageCode')
              ? json_['queryLanguageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commuteFilter != null) 'commuteFilter': commuteFilter!,
        if (companies != null) 'companies': companies!,
        if (companyDisplayNames != null)
          'companyDisplayNames': companyDisplayNames!,
        if (compensationFilter != null)
          'compensationFilter': compensationFilter!,
        if (customAttributeFilter != null)
          'customAttributeFilter': customAttributeFilter!,
        if (disableSpellCheck != null) 'disableSpellCheck': disableSpellCheck!,
        if (employmentTypes != null) 'employmentTypes': employmentTypes!,
        if (excludedJobs != null) 'excludedJobs': excludedJobs!,
        if (jobCategories != null) 'jobCategories': jobCategories!,
        if (languageCodes != null) 'languageCodes': languageCodes!,
        if (locationFilters != null) 'locationFilters': locationFilters!,
        if (publishTimeRange != null) 'publishTimeRange': publishTimeRange!,
        if (query != null) 'query': query!,
        if (queryLanguageCode != null) 'queryLanguageCode': queryLanguageCode!,
      };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// The List companies response object.
class ListCompaniesResponse {
  /// Companies for the current client.
  core.List<Company>? companies;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  ListCompaniesResponse({
    this.companies,
    this.metadata,
    this.nextPageToken,
  });

  ListCompaniesResponse.fromJson(core.Map json_)
      : this(
          companies: json_.containsKey('companies')
              ? (json_['companies'] as core.List)
                  .map((value) => Company.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (companies != null) 'companies': companies!,
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List jobs response.
class ListJobsResponse {
  /// The Jobs for a given company.
  ///
  /// The maximum number of items returned is based on the limit field provided
  /// in the request.
  core.List<Job>? jobs;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  ListJobsResponse({
    this.jobs,
    this.metadata,
    this.nextPageToken,
  });

  ListJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The List tenants response object.
class ListTenantsResponse {
  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  /// A token to retrieve the next page of results.
  core.String? nextPageToken;

  /// Tenants for the current client.
  core.List<Tenant>? tenants;

  ListTenantsResponse({
    this.metadata,
    this.nextPageToken,
    this.tenants,
  });

  ListTenantsResponse.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          tenants: json_.containsKey('tenants')
              ? (json_['tenants'] as core.List)
                  .map((value) => Tenant.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tenants != null) 'tenants': tenants!,
      };
}

/// A resource that represents a location with full geographic information.
class Location {
  /// An object representing a latitude/longitude pair.
  LatLng? latLng;

  /// The type of a location, which corresponds to the address lines field of
  /// google.type.PostalAddress.
  ///
  /// For example, "Downtown, Atlanta, GA, USA" has a type of
  /// LocationType.NEIGHBORHOOD, and "Kansas City, KS, USA" has a type of
  /// LocationType.LOCALITY.
  /// Possible string values are:
  /// - "LOCATION_TYPE_UNSPECIFIED" : Default value if the type isn't specified.
  /// - "COUNTRY" : A country level location.
  /// - "ADMINISTRATIVE_AREA" : A state or equivalent level location.
  /// - "SUB_ADMINISTRATIVE_AREA" : A county or equivalent level location.
  /// - "LOCALITY" : A city or equivalent level location.
  /// - "POSTAL_CODE" : A postal code level location.
  /// - "SUB_LOCALITY" : A sublocality is a subdivision of a locality, for
  /// example a city borough, ward, or arrondissement. Sublocalities are usually
  /// recognized by a local political authority. For example, Manhattan and
  /// Brooklyn are recognized as boroughs by the City of New York, and are
  /// therefore modeled as sublocalities.
  /// - "SUB_LOCALITY_1" : A district or equivalent level location.
  /// - "SUB_LOCALITY_2" : A smaller district or equivalent level display.
  /// - "NEIGHBORHOOD" : A neighborhood level location.
  /// - "STREET_ADDRESS" : A street address level location.
  core.String? locationType;

  /// Postal address of the location that includes human readable information,
  /// such as postal delivery and payments addresses.
  ///
  /// Given a postal address, a postal service can deliver items to a premises,
  /// P.O. Box, or other delivery location.
  PostalAddress? postalAddress;

  /// Radius in miles of the job location.
  ///
  /// This value is derived from the location bounding box in which a circle
  /// with the specified radius centered from google.type.LatLng covers the area
  /// associated with the job location. For example, currently, "Mountain View,
  /// CA, USA" has a radius of 6.17 miles.
  core.double? radiusMiles;

  Location({
    this.latLng,
    this.locationType,
    this.postalAddress,
    this.radiusMiles,
  });

  Location.fromJson(core.Map json_)
      : this(
          latLng: json_.containsKey('latLng')
              ? LatLng.fromJson(
                  json_['latLng'] as core.Map<core.String, core.dynamic>)
              : null,
          locationType: json_.containsKey('locationType')
              ? json_['locationType'] as core.String
              : null,
          postalAddress: json_.containsKey('postalAddress')
              ? PostalAddress.fromJson(
                  json_['postalAddress'] as core.Map<core.String, core.dynamic>)
              : null,
          radiusMiles: json_.containsKey('radiusMiles')
              ? (json_['radiusMiles'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latLng != null) 'latLng': latLng!,
        if (locationType != null) 'locationType': locationType!,
        if (postalAddress != null) 'postalAddress': postalAddress!,
        if (radiusMiles != null) 'radiusMiles': radiusMiles!,
      };
}

/// Geographic region of the search.
class LocationFilter {
  /// The address name, such as "Mountain View" or "Bay Area".
  core.String? address;

  /// The distance_in_miles is applied when the location being searched for is
  /// identified as a city or smaller.
  ///
  /// This field is ignored if the location being searched for is a state or
  /// larger.
  core.double? distanceInMiles;

  /// The latitude and longitude of the geographic center to search from.
  ///
  /// This field is ignored if `address` is provided.
  LatLng? latLng;

  /// CLDR region code of the country/region.
  ///
  /// This field may be used in two ways: 1) If telecommute preference is not
  /// set, this field is used address ambiguity of the user-input address. For
  /// example, "Liverpool" may refer to "Liverpool, NY, US" or "Liverpool, UK".
  /// This region code biases the address resolution toward a specific country
  /// or territory. If this field is not set, address resolution is biased
  /// toward the United States by default. 2) If telecommute preference is set
  /// to TELECOMMUTE_ALLOWED, the telecommute location filter will be limited to
  /// the region specified in this field. If this field is not set, the
  /// telecommute job locations will not be See
  /// https://unicode-org.github.io/cldr-staging/charts/latest/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  core.String? regionCode;

  /// Allows the client to return jobs without a set location, specifically,
  /// telecommuting jobs (telecommuting is considered by the service as a
  /// special location).
  ///
  /// Job.posting_region indicates if a job permits telecommuting. If this field
  /// is set to TelecommutePreference.TELECOMMUTE_ALLOWED, telecommuting jobs
  /// are searched, and address and lat_lng are ignored. If not set or set to
  /// TelecommutePreference.TELECOMMUTE_EXCLUDED, the telecommute status of the
  /// jobs is ignored. Jobs that have PostingRegion.TELECOMMUTE and have
  /// additional Job.addresses may still be matched based on other location
  /// filters using address or latlng. This filter can be used by itself to
  /// search exclusively for telecommuting jobs, or it can be combined with
  /// another location filter to search for a combination of job locations, such
  /// as "Mountain View" or "telecommuting" jobs. However, when used in
  /// combination with other location filters, telecommuting jobs can be treated
  /// as less relevant than other jobs in the search response. This field is
  /// only used for job search requests.
  /// Possible string values are:
  /// - "TELECOMMUTE_PREFERENCE_UNSPECIFIED" : Default value if the telecommute
  /// preference isn't specified.
  /// - "TELECOMMUTE_EXCLUDED" : Deprecated: Ignore telecommute status of jobs.
  /// Use TELECOMMUTE_JOBS_EXCLUDED if want to exclude telecommute jobs.
  /// - "TELECOMMUTE_ALLOWED" : Allow telecommute jobs.
  /// - "TELECOMMUTE_JOBS_EXCLUDED" : Exclude telecommute jobs.
  core.String? telecommutePreference;

  LocationFilter({
    this.address,
    this.distanceInMiles,
    this.latLng,
    this.regionCode,
    this.telecommutePreference,
  });

  LocationFilter.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? json_['address'] as core.String
              : null,
          distanceInMiles: json_.containsKey('distanceInMiles')
              ? (json_['distanceInMiles'] as core.num).toDouble()
              : null,
          latLng: json_.containsKey('latLng')
              ? LatLng.fromJson(
                  json_['latLng'] as core.Map<core.String, core.dynamic>)
              : null,
          regionCode: json_.containsKey('regionCode')
              ? json_['regionCode'] as core.String
              : null,
          telecommutePreference: json_.containsKey('telecommutePreference')
              ? json_['telecommutePreference'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (distanceInMiles != null) 'distanceInMiles': distanceInMiles!,
        if (latLng != null) 'latLng': latLng!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (telecommutePreference != null)
          'telecommutePreference': telecommutePreference!,
      };
}

/// Job entry with metadata inside SearchJobsResponse.
class MatchingJob {
  /// Commute information which is generated based on specified CommuteFilter.
  CommuteInfo? commuteInfo;

  /// Job resource that matches the specified SearchJobsRequest.
  Job? job;

  /// A summary of the job with core information that's displayed on the search
  /// results listing page.
  core.String? jobSummary;

  /// Contains snippets of text from the Job.title field most closely matching a
  /// search query's keywords, if available.
  ///
  /// The matching query keywords are enclosed in HTML bold tags.
  core.String? jobTitleSnippet;

  /// Contains snippets of text from the Job.description and similar fields that
  /// most closely match a search query's keywords, if available.
  ///
  /// All HTML tags in the original fields are stripped when returned in this
  /// field, and matching query keywords are enclosed in HTML bold tags.
  core.String? searchTextSnippet;

  MatchingJob({
    this.commuteInfo,
    this.job,
    this.jobSummary,
    this.jobTitleSnippet,
    this.searchTextSnippet,
  });

  MatchingJob.fromJson(core.Map json_)
      : this(
          commuteInfo: json_.containsKey('commuteInfo')
              ? CommuteInfo.fromJson(
                  json_['commuteInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          job: json_.containsKey('job')
              ? Job.fromJson(
                  json_['job'] as core.Map<core.String, core.dynamic>)
              : null,
          jobSummary: json_.containsKey('jobSummary')
              ? json_['jobSummary'] as core.String
              : null,
          jobTitleSnippet: json_.containsKey('jobTitleSnippet')
              ? json_['jobTitleSnippet'] as core.String
              : null,
          searchTextSnippet: json_.containsKey('searchTextSnippet')
              ? json_['searchTextSnippet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commuteInfo != null) 'commuteInfo': commuteInfo!,
        if (job != null) 'job': job!,
        if (jobSummary != null) 'jobSummary': jobSummary!,
        if (jobTitleSnippet != null) 'jobTitleSnippet': jobTitleSnippet!,
        if (searchTextSnippet != null) 'searchTextSnippet': searchTextSnippet!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

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

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an
/// internationalization-ready address widget such as
/// https://github.com/google/libaddressinput) - Users should not be presented
/// with UI elements for input or editing of fields outside countries where that
/// field is used. For more guidance on how to use this schema, please see:
/// https://support.google.com/business/answer/6397478
typedef PostalAddress = $PostalAddress;

/// Options for job processing.
class ProcessingOptions {
  /// If set to `true`, the service does not attempt to resolve a more precise
  /// address for the job.
  core.bool? disableStreetAddressResolution;

  /// Option for job HTML content sanitization.
  ///
  /// Applied fields are: * description * applicationInfo.instruction *
  /// incentives * qualifications * responsibilities HTML tags in these fields
  /// may be stripped if sanitiazation isn't disabled. Defaults to
  /// HtmlSanitization.SIMPLE_FORMATTING_ONLY.
  /// Possible string values are:
  /// - "HTML_SANITIZATION_UNSPECIFIED" : Default value.
  /// - "HTML_SANITIZATION_DISABLED" : Disables sanitization on HTML input.
  /// - "SIMPLE_FORMATTING_ONLY" : Sanitizes HTML input, only accepts bold,
  /// italic, ordered list, and unordered list markup tags.
  core.String? htmlSanitization;

  ProcessingOptions({
    this.disableStreetAddressResolution,
    this.htmlSanitization,
  });

  ProcessingOptions.fromJson(core.Map json_)
      : this(
          disableStreetAddressResolution:
              json_.containsKey('disableStreetAddressResolution')
                  ? json_['disableStreetAddressResolution'] as core.bool
                  : null,
          htmlSanitization: json_.containsKey('htmlSanitization')
              ? json_['htmlSanitization'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableStreetAddressResolution != null)
          'disableStreetAddressResolution': disableStreetAddressResolution!,
        if (htmlSanitization != null) 'htmlSanitization': htmlSanitization!,
      };
}

/// Meta information related to the job searcher or entity conducting the job
/// search.
///
/// This information is used to improve the performance of the service.
class RequestMetadata {
  /// Only set when any of domain, session_id and user_id isn't available for
  /// some reason.
  ///
  /// It is highly recommended not to set this field and provide accurate
  /// domain, session_id and user_id for the best service experience.
  core.bool? allowMissingIds;

  /// The type of device used by the job seeker at the time of the call to the
  /// service.
  DeviceInfo? deviceInfo;

  /// Required if allow_missing_ids is unset or `false`.
  ///
  /// The client-defined scope or source of the service call, which typically is
  /// the domain on which the service has been implemented and is currently
  /// being run. For example, if the service is being run by client *Foo, Inc.*,
  /// on job board www.foo.com and career site www.bar.com, then this field is
  /// set to "foo.com" for use on the job board, and "bar.com" for use on the
  /// career site. Note that any improvements to the model for a particular
  /// tenant site rely on this field being set correctly to a unique domain. The
  /// maximum number of allowed characters is 255.
  core.String? domain;

  /// Required if allow_missing_ids is unset or `false`.
  ///
  /// A unique session identification string. A session is defined as the
  /// duration of an end user's interaction with the service over a certain
  /// period. Obfuscate this field for privacy concerns before providing it to
  /// the service. Note that any improvements to the model for a particular
  /// tenant site rely on this field being set correctly to a unique session ID.
  /// The maximum number of allowed characters is 255.
  core.String? sessionId;

  /// Required if allow_missing_ids is unset or `false`.
  ///
  /// A unique user identification string, as determined by the client. To have
  /// the strongest positive impact on search quality make sure the client-level
  /// is unique. Obfuscate this field for privacy concerns before providing it
  /// to the service. Note that any improvements to the model for a particular
  /// tenant site rely on this field being set correctly to a unique user ID.
  /// The maximum number of allowed characters is 255.
  core.String? userId;

  RequestMetadata({
    this.allowMissingIds,
    this.deviceInfo,
    this.domain,
    this.sessionId,
    this.userId,
  });

  RequestMetadata.fromJson(core.Map json_)
      : this(
          allowMissingIds: json_.containsKey('allowMissingIds')
              ? json_['allowMissingIds'] as core.bool
              : null,
          deviceInfo: json_.containsKey('deviceInfo')
              ? DeviceInfo.fromJson(
                  json_['deviceInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          sessionId: json_.containsKey('sessionId')
              ? json_['sessionId'] as core.String
              : null,
          userId: json_.containsKey('userId')
              ? json_['userId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMissingIds != null) 'allowMissingIds': allowMissingIds!,
        if (deviceInfo != null) 'deviceInfo': deviceInfo!,
        if (domain != null) 'domain': domain!,
        if (sessionId != null) 'sessionId': sessionId!,
        if (userId != null) 'userId': userId!,
      };
}

/// Additional information returned to client, such as debugging information.
typedef ResponseMetadata = $ResponseMetadata;

/// The Request body of the `SearchJobs` call.
class SearchJobsRequest {
  /// Controls over how job documents get ranked on top of existing relevance
  /// score (determined by API algorithm).
  CustomRankingInfo? customRankingInfo;

  /// This field is deprecated.
  ///
  /// Please use SearchJobsRequest.keyword_match_mode going forward. To migrate,
  /// disable_keyword_match set to false maps to
  /// KeywordMatchMode.KEYWORD_MATCH_ALL, and disable_keyword_match set to true
  /// maps to KeywordMatchMode.KEYWORD_MATCH_DISABLED. If
  /// SearchJobsRequest.keyword_match_mode is set, this field is ignored.
  /// Controls whether to disable exact keyword match on Job.title,
  /// Job.description, Job.company_display_name, Job.addresses,
  /// Job.qualifications. When disable keyword match is turned off, a keyword
  /// match returns jobs that do not match given category filters when there are
  /// matching keywords. For example, for the query "program manager," a result
  /// is returned even if the job posting has the title "software developer,"
  /// which doesn't fall into "program manager" ontology, but does have "program
  /// manager" appearing in its description. For queries like "cloud" that don't
  /// contain title or location specific ontology, jobs with "cloud" keyword
  /// matches are returned regardless of this flag's value. Use
  /// Company.keyword_searchable_job_custom_attributes if company-specific
  /// globally matched custom field/attribute string values are needed. Enabling
  /// keyword match improves recall of subsequent search requests. Defaults to
  /// false.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? disableKeywordMatch;

  /// Controls whether highly similar jobs are returned next to each other in
  /// the search results.
  ///
  /// Jobs are identified as highly similar based on their titles, job
  /// categories, and locations. Highly similar results are clustered so that
  /// only one representative job of the cluster is displayed to the job seeker
  /// higher up in the results, with the other jobs being displayed lower down
  /// in the results. Defaults to DiversificationLevel.SIMPLE if no value is
  /// specified.
  /// Possible string values are:
  /// - "DIVERSIFICATION_LEVEL_UNSPECIFIED" : The diversification level isn't
  /// specified.
  /// - "DISABLED" : Disables diversification. Jobs that would normally be
  /// pushed to the last page would not have their positions altered. This may
  /// result in highly similar jobs appearing in sequence in the search results.
  /// - "SIMPLE" : Default diversifying behavior. The result list is ordered so
  /// that highly similar results are pushed to the end of the last page of
  /// search results.
  /// - "ONE_PER_COMPANY" : Only one job from the same company will be shown at
  /// once, other jobs under same company are pushed to the end of the last page
  /// of search result.
  /// - "TWO_PER_COMPANY" : Similar to ONE_PER_COMPANY, but it allows at most
  /// two jobs in the same company to be shown at once, the other jobs under
  /// same company are pushed to the end of the last page of search result.
  /// - "MAX_THREE_PER_COMPANY" : Similar to ONE_PER_COMPANY, but it allows at
  /// most three jobs in the same company to be shown at once, the other jobs
  /// under same company are dropped.
  /// - "DIVERSIFY_BY_LOOSER_SIMILARITY" : The result list is ordered such that
  /// somewhat similar results are pushed to the end of the last page of the
  /// search results. This option is recommended if SIMPLE diversification does
  /// not diversify enough.
  core.String? diversificationLevel;

  /// Controls whether to broaden the search when it produces sparse results.
  ///
  /// Broadened queries append results to the end of the matching results list.
  /// Defaults to false.
  core.bool? enableBroadening;

  /// An expression specifies a histogram request against matching jobs.
  ///
  /// Expression syntax is an aggregation function call with histogram facets
  /// and other options. Available aggregation function calls are: *
  /// `count(string_histogram_facet)`: Count the number of matching entities,
  /// for each distinct attribute value. * `count(numeric_histogram_facet, list
  /// of buckets)`: Count the number of matching entities within each bucket. A
  /// maximum of 200 histogram buckets are supported. Data types: * Histogram
  /// facet: facet names with format `a-zA-Z+`. * String: string like "any
  /// string with backslash escape for quote(\")." * Number: whole number and
  /// floating point number like 10, -1 and -0.01. * List: list of elements with
  /// comma(,) separator surrounded by square brackets, for example, \[1, 2, 3\]
  /// and \["one", "two", "three"\]. Built-in constants: * MIN (minimum number
  /// similar to java Double.MIN_VALUE) * MAX (maximum number similar to java
  /// Double.MAX_VALUE) Built-in functions: * bucket(start, end\[, label\]):
  /// bucket built-in function creates a bucket with range of start, end). Note
  /// that the end is exclusive, for example, bucket(1, MAX, "positive number")
  /// or bucket(1, 10). Job histogram facets: * company_display_name: histogram
  /// by \[Job.company_display_name. * employment_type: histogram by
  /// Job.employment_types, for example, "FULL_TIME", "PART_TIME". *
  /// company_size (DEPRECATED): histogram by CompanySize, for example, "SMALL",
  /// "MEDIUM", "BIG". * publish_time_in_day: histogram by the
  /// Job.posting_publish_time in days. Must specify list of numeric buckets in
  /// spec. * publish_time_in_month: histogram by the Job.posting_publish_time
  /// in months. Must specify list of numeric buckets in spec. *
  /// publish_time_in_year: histogram by the Job.posting_publish_time in years.
  /// Must specify list of numeric buckets in spec. * degree_types: histogram by
  /// the Job.degree_types, for example, "Bachelors", "Masters". * job_level:
  /// histogram by the Job.job_level, for example, "Entry Level". * country:
  /// histogram by the country code of jobs, for example, "US", "FR". * admin1:
  /// histogram by the admin1 code of jobs, which is a global placeholder
  /// referring to the state, province, or the particular term a country uses to
  /// define the geographic structure below the country level, for example,
  /// "CA", "IL". * city: histogram by a combination of the "city name, admin1
  /// code". For example, "Mountain View, CA", "New York, NY". * admin1_country:
  /// histogram by a combination of the "admin1 code, country", for example,
  /// "CA, US", "IL, US". * city_coordinate: histogram by the city center's GPS
  /// coordinates (latitude and longitude), for example,
  /// 37.4038522,-122.0987765. Since the coordinates of a city center can
  /// change, customers may need to refresh them periodically. * locale:
  /// histogram by the Job.language_code, for example, "en-US", "fr-FR". *
  /// language: histogram by the language subtag of the Job.language_code, for
  /// example, "en", "fr". * category: histogram by the JobCategory, for
  /// example, "COMPUTER_AND_IT", "HEALTHCARE". * base_compensation_unit:
  /// histogram by the CompensationInfo.CompensationUnit of base salary, for
  /// example, "WEEKLY", "MONTHLY". * base_compensation: histogram by the base
  /// salary. Must specify list of numeric buckets to group results by. *
  /// annualized_base_compensation: histogram by the base annualized salary.
  /// Must specify list of numeric buckets to group results by. *
  /// annualized_total_compensation: histogram by the total annualized salary.
  /// Must specify list of numeric buckets to group results by. *
  /// string_custom_attribute: histogram by string Job.custom_attributes. Values
  /// can be accessed via square bracket notations like
  /// string_custom_attribute\["key1"\]. * numeric_custom_attribute: histogram
  /// by numeric Job.custom_attributes. Values can be accessed via square
  /// bracket notations like numeric_custom_attribute\["key1"\]. Must specify
  /// list of numeric buckets to group results by. Example expressions: *
  /// `count(admin1)` * `count(base_compensation, [bucket(1000, 10000),
  /// bucket(10000, 100000), bucket(100000, MAX)])` *
  /// `count(string_custom_attribute["some-string-custom-attribute"])` *
  /// `count(numeric_custom_attribute["some-numeric-custom-attribute"],
  /// [bucket(MIN, 0, "negative"), bucket(0, MAX, "non-negative")])`
  core.List<HistogramQuery>? histogramQueries;

  /// Query used to search against jobs, such as keyword, location filters, etc.
  JobQuery? jobQuery;

  /// The desired job attributes returned for jobs in the search response.
  ///
  /// Defaults to JobView.JOB_VIEW_SMALL if no value is specified.
  /// Possible string values are:
  /// - "JOB_VIEW_UNSPECIFIED" : Default value.
  /// - "JOB_VIEW_ID_ONLY" : A ID only view of job, with following attributes:
  /// Job.name, Job.requisition_id, Job.language_code.
  /// - "JOB_VIEW_MINIMAL" : A minimal view of the job, with the following
  /// attributes: Job.name, Job.requisition_id, Job.title, Job.company,
  /// Job.DerivedInfo.locations, Job.language_code.
  /// - "JOB_VIEW_SMALL" : A small view of the job, with the following
  /// attributes in the search results: Job.name, Job.requisition_id, Job.title,
  /// Job.company, Job.DerivedInfo.locations, Job.visibility, Job.language_code,
  /// Job.description.
  /// - "JOB_VIEW_FULL" : All available attributes are included in the search
  /// results.
  core.String? jobView;

  /// Controls what keyword match options to use.
  ///
  /// If both keyword_match_mode and disable_keyword_match are set,
  /// keyword_match_mode will take precedence. Defaults to
  /// KeywordMatchMode.KEYWORD_MATCH_ALL if no value is specified.
  /// Possible string values are:
  /// - "KEYWORD_MATCH_MODE_UNSPECIFIED" : The keyword match option isn't
  /// specified. Defaults to KeywordMatchMode.KEYWORD_MATCH_ALL behavior.
  /// - "KEYWORD_MATCH_DISABLED" : Disables keyword matching.
  /// - "KEYWORD_MATCH_ALL" : Enable keyword matching over Job.title,
  /// Job.description, Job.company_display_name, Job.addresses,
  /// Job.qualifications, and keyword searchable Job.custom_attributes fields.
  /// - "KEYWORD_MATCH_TITLE_ONLY" : Only enable keyword matching over
  /// Job.title.
  core.String? keywordMatchMode;

  /// A limit on the number of jobs returned in the search results.
  ///
  /// Increasing this value above the default value of 10 can increase search
  /// response time. The value can be between 1 and 100.
  core.int? maxPageSize;

  /// An integer that specifies the current offset (that is, starting result
  /// location, amongst the jobs deemed by the API as relevant) in search
  /// results.
  ///
  /// This field is only considered if page_token is unset. The maximum allowed
  /// value is 5000. Otherwise an error is thrown. For example, 0 means to
  /// return results starting from the first matching job, and 10 means to
  /// return from the 11th job. This can be used for pagination, (for example,
  /// pageSize = 10 and offset = 10 means to return from the second page).
  core.int? offset;

  /// The criteria determining how search results are sorted.
  ///
  /// Default is `"relevance desc"`. Supported options are: * `"relevance
  /// desc"`: By relevance descending, as determined by the API algorithms.
  /// Relevance thresholding of query results is only available with this
  /// ordering. * `"posting_publish_time desc"`: By Job.posting_publish_time
  /// descending. * `"posting_update_time desc"`: By Job.posting_update_time
  /// descending. * `"title"`: By Job.title ascending. * `"title desc"`: By
  /// Job.title descending. * `"annualized_base_compensation"`: By job's
  /// CompensationInfo.annualized_base_compensation_range ascending. Jobs whose
  /// annualized base compensation is unspecified are put at the end of search
  /// results. * `"annualized_base_compensation desc"`: By job's
  /// CompensationInfo.annualized_base_compensation_range descending. Jobs whose
  /// annualized base compensation is unspecified are put at the end of search
  /// results. * `"annualized_total_compensation"`: By job's
  /// CompensationInfo.annualized_total_compensation_range ascending. Jobs whose
  /// annualized base compensation is unspecified are put at the end of search
  /// results. * `"annualized_total_compensation desc"`: By job's
  /// CompensationInfo.annualized_total_compensation_range descending. Jobs
  /// whose annualized base compensation is unspecified are put at the end of
  /// search results. * `"custom_ranking desc"`: By the relevance score adjusted
  /// to the SearchJobsRequest.CustomRankingInfo.ranking_expression with weight
  /// factor assigned by SearchJobsRequest.CustomRankingInfo.importance_level in
  /// descending order. * Location sorting: Use the special syntax to order jobs
  /// by distance: `"distance_from('Hawaii')"`: Order by distance from Hawaii.
  /// `"distance_from(19.89, 155.5)"`: Order by distance from a coordinate.
  /// `"distance_from('Hawaii'), distance_from('Puerto Rico')"`: Order by
  /// multiple locations. See details below. `"distance_from('Hawaii'),
  /// distance_from(19.89, 155.5)"`: Order by multiple locations. See details
  /// below. The string can have a maximum of 256 characters. When multiple
  /// distance centers are provided, a job that is close to any of the distance
  /// centers would have a high rank. When a job has multiple locations, the job
  /// location closest to one of the distance centers will be used. Jobs that
  /// don't have locations will be ranked at the bottom. Distance is calculated
  /// with a precision of 11.3 meters (37.4 feet). Diversification strategy is
  /// still applied unless explicitly disabled in diversification_level.
  core.String? orderBy;

  /// The token specifying the current offset within search results.
  ///
  /// See SearchJobsResponse.next_page_token for an explanation of how to obtain
  /// the next set of query results.
  core.String? pageToken;

  /// The meta information collected about the job searcher, used to improve the
  /// search quality of the service.
  ///
  /// The identifiers (such as `user_id`) are provided by users, and must be
  /// unique and consistent.
  ///
  /// Required.
  RequestMetadata? requestMetadata;

  /// Mode of a search.
  ///
  /// Defaults to SearchMode.JOB_SEARCH.
  /// Possible string values are:
  /// - "SEARCH_MODE_UNSPECIFIED" : The mode of the search method isn't
  /// specified. The default search behavior is identical to JOB_SEARCH search
  /// behavior.
  /// - "JOB_SEARCH" : The job search matches against all jobs, and featured
  /// jobs (jobs with promotionValue \> 0) are not specially handled.
  /// - "FEATURED_JOB_SEARCH" : The job search matches only against featured
  /// jobs (jobs with a promotionValue \> 0). This method doesn't return any
  /// jobs having a promotionValue \<= 0. The search results order is determined
  /// by the promotionValue (jobs with a higher promotionValue are returned
  /// higher up in the search results), with relevance being used as a
  /// tiebreaker.
  core.String? searchMode;

  SearchJobsRequest({
    this.customRankingInfo,
    this.disableKeywordMatch,
    this.diversificationLevel,
    this.enableBroadening,
    this.histogramQueries,
    this.jobQuery,
    this.jobView,
    this.keywordMatchMode,
    this.maxPageSize,
    this.offset,
    this.orderBy,
    this.pageToken,
    this.requestMetadata,
    this.searchMode,
  });

  SearchJobsRequest.fromJson(core.Map json_)
      : this(
          customRankingInfo: json_.containsKey('customRankingInfo')
              ? CustomRankingInfo.fromJson(json_['customRankingInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disableKeywordMatch: json_.containsKey('disableKeywordMatch')
              ? json_['disableKeywordMatch'] as core.bool
              : null,
          diversificationLevel: json_.containsKey('diversificationLevel')
              ? json_['diversificationLevel'] as core.String
              : null,
          enableBroadening: json_.containsKey('enableBroadening')
              ? json_['enableBroadening'] as core.bool
              : null,
          histogramQueries: json_.containsKey('histogramQueries')
              ? (json_['histogramQueries'] as core.List)
                  .map((value) => HistogramQuery.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          jobQuery: json_.containsKey('jobQuery')
              ? JobQuery.fromJson(
                  json_['jobQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          jobView: json_.containsKey('jobView')
              ? json_['jobView'] as core.String
              : null,
          keywordMatchMode: json_.containsKey('keywordMatchMode')
              ? json_['keywordMatchMode'] as core.String
              : null,
          maxPageSize: json_.containsKey('maxPageSize')
              ? json_['maxPageSize'] as core.int
              : null,
          offset:
              json_.containsKey('offset') ? json_['offset'] as core.int : null,
          orderBy: json_.containsKey('orderBy')
              ? json_['orderBy'] as core.String
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? RequestMetadata.fromJson(json_['requestMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          searchMode: json_.containsKey('searchMode')
              ? json_['searchMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customRankingInfo != null) 'customRankingInfo': customRankingInfo!,
        if (disableKeywordMatch != null)
          'disableKeywordMatch': disableKeywordMatch!,
        if (diversificationLevel != null)
          'diversificationLevel': diversificationLevel!,
        if (enableBroadening != null) 'enableBroadening': enableBroadening!,
        if (histogramQueries != null) 'histogramQueries': histogramQueries!,
        if (jobQuery != null) 'jobQuery': jobQuery!,
        if (jobView != null) 'jobView': jobView!,
        if (keywordMatchMode != null) 'keywordMatchMode': keywordMatchMode!,
        if (maxPageSize != null) 'maxPageSize': maxPageSize!,
        if (offset != null) 'offset': offset!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
        if (searchMode != null) 'searchMode': searchMode!,
      };
}

/// Response for SearchJob method.
class SearchJobsResponse {
  /// If query broadening is enabled, we may append additional results from the
  /// broadened query.
  ///
  /// This number indicates how many of the jobs returned in the jobs field are
  /// from the broadened query. These results are always at the end of the jobs
  /// list. In particular, a value of 0, or if the field isn't set, all the jobs
  /// in the jobs list are from the original (without broadening) query. If this
  /// field is non-zero, subsequent requests with offset after this result set
  /// should contain all broadened results.
  core.int? broadenedQueryJobsCount;

  /// The histogram results that match with specified
  /// SearchJobsRequest.histogram_queries.
  core.List<HistogramQueryResult>? histogramQueryResults;

  /// The location filters that the service applied to the specified query.
  ///
  /// If any filters are lat-lng based, the Location.location_type is
  /// Location.LocationType.LOCATION_TYPE_UNSPECIFIED.
  core.List<Location>? locationFilters;

  /// The Job entities that match the specified SearchJobsRequest.
  core.List<MatchingJob>? matchingJobs;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  ResponseMetadata? metadata;

  /// The token that specifies the starting position of the next page of
  /// results.
  ///
  /// This field is empty if there are no more results.
  core.String? nextPageToken;

  /// The spell checking result, and correction.
  SpellingCorrection? spellCorrection;

  /// Number of jobs that match the specified query.
  ///
  /// Note: This size is precise only if the total is less than 100,000.
  core.int? totalSize;

  SearchJobsResponse({
    this.broadenedQueryJobsCount,
    this.histogramQueryResults,
    this.locationFilters,
    this.matchingJobs,
    this.metadata,
    this.nextPageToken,
    this.spellCorrection,
    this.totalSize,
  });

  SearchJobsResponse.fromJson(core.Map json_)
      : this(
          broadenedQueryJobsCount: json_.containsKey('broadenedQueryJobsCount')
              ? json_['broadenedQueryJobsCount'] as core.int
              : null,
          histogramQueryResults: json_.containsKey('histogramQueryResults')
              ? (json_['histogramQueryResults'] as core.List)
                  .map((value) => HistogramQueryResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locationFilters: json_.containsKey('locationFilters')
              ? (json_['locationFilters'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          matchingJobs: json_.containsKey('matchingJobs')
              ? (json_['matchingJobs'] as core.List)
                  .map((value) => MatchingJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          spellCorrection: json_.containsKey('spellCorrection')
              ? SpellingCorrection.fromJson(json_['spellCorrection']
                  as core.Map<core.String, core.dynamic>)
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (broadenedQueryJobsCount != null)
          'broadenedQueryJobsCount': broadenedQueryJobsCount!,
        if (histogramQueryResults != null)
          'histogramQueryResults': histogramQueryResults!,
        if (locationFilters != null) 'locationFilters': locationFilters!,
        if (matchingJobs != null) 'matchingJobs': matchingJobs!,
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (spellCorrection != null) 'spellCorrection': spellCorrection!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Spell check result.
class SpellingCorrection {
  /// Indicates if the query was corrected by the spell checker.
  core.bool? corrected;

  /// Corrected output with html tags to highlight the corrected words.
  ///
  /// Corrected words are called out with the "*...*" html tags. For example,
  /// the user input query is "software enginear", where the second word,
  /// "enginear," is incorrect. It should be "engineer". When spelling
  /// correction is enabled, this value is "software *engineer*".
  core.String? correctedHtml;

  /// Correction output consisting of the corrected keyword string.
  core.String? correctedText;

  SpellingCorrection({
    this.corrected,
    this.correctedHtml,
    this.correctedText,
  });

  SpellingCorrection.fromJson(core.Map json_)
      : this(
          corrected: json_.containsKey('corrected')
              ? json_['corrected'] as core.bool
              : null,
          correctedHtml: json_.containsKey('correctedHtml')
              ? json_['correctedHtml'] as core.String
              : null,
          correctedText: json_.containsKey('correctedText')
              ? json_['correctedText'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (corrected != null) 'corrected': corrected!,
        if (correctedHtml != null) 'correctedHtml': correctedHtml!,
        if (correctedText != null) 'correctedText': correctedText!,
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

/// A Tenant resource represents a tenant in the service.
///
/// A tenant is a group or entity that shares common access with specific
/// privileges for resources like jobs. Customer may create multiple tenants to
/// provide data isolation for different groups.
class Tenant {
  /// Client side tenant identifier, used to uniquely identify the tenant.
  ///
  /// The maximum number of allowed characters is 255.
  ///
  /// Required.
  core.String? externalId;

  /// Required during tenant update.
  ///
  /// The resource name for a tenant. This is generated by the service when a
  /// tenant is created. The format is
  /// "projects/{project_id}/tenants/{tenant_id}", for example,
  /// "projects/foo/tenants/bar".
  core.String? name;

  Tenant({
    this.externalId,
    this.name,
  });

  Tenant.fromJson(core.Map json_)
      : this(
          externalId: json_.containsKey('externalId')
              ? json_['externalId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalId != null) 'externalId': externalId!,
        if (name != null) 'name': name!,
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Message representing a period of time between two timestamps.
class TimestampRange {
  /// End of the period (exclusive).
  core.String? endTime;

  /// Begin of the period (inclusive).
  core.String? startTime;

  TimestampRange({
    this.endTime,
    this.startTime,
  });

  TimestampRange.fromJson(core.Map json_)
      : this(
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}
