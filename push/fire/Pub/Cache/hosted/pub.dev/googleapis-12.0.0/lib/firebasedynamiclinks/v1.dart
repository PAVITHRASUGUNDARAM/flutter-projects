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

/// Firebase Dynamic Links API - v1
///
/// Programmatically creates and manages Firebase Dynamic Links.
///
/// For more information, see <https://firebase.google.com/docs/dynamic-links/>
///
/// Create an instance of [FirebaseDynamicLinksApi] to access these resources:
///
/// - [ManagedShortLinksResource]
/// - [ShortLinksResource]
/// - [V1Resource]
library firebasedynamiclinks_v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Programmatically creates and manages Firebase Dynamic Links.
class FirebaseDynamicLinksApi {
  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  final commons.ApiRequester _requester;

  ManagedShortLinksResource get managedShortLinks =>
      ManagedShortLinksResource(_requester);
  ShortLinksResource get shortLinks => ShortLinksResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  FirebaseDynamicLinksApi(http.Client client,
      {core.String rootUrl = 'https://firebasedynamiclinks.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ManagedShortLinksResource {
  final commons.ApiRequester _requester;

  ManagedShortLinksResource(commons.ApiRequester client) : _requester = client;

  /// Creates a managed short Dynamic Link given either a valid long Dynamic
  /// Link or details such as Dynamic Link domain, Android and iOS app
  /// information.
  ///
  /// The created short Dynamic Link will not expire. This differs from
  /// CreateShortDynamicLink in the following ways: - The request will also
  /// contain a name for the link (non unique name for the front end). - The
  /// response must be authenticated with an auth token (generated with the
  /// admin service account). - The link will appear in the FDL list of links in
  /// the console front end. The Dynamic Link domain in the request must be
  /// owned by requester's Firebase project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateManagedShortLinkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateManagedShortLinkResponse> create(
    CreateManagedShortLinkRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/managedShortLinks:create';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreateManagedShortLinkResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ShortLinksResource {
  final commons.ApiRequester _requester;

  ShortLinksResource(commons.ApiRequester client) : _requester = client;

  /// Creates a short Dynamic Link given either a valid long Dynamic Link or
  /// details such as Dynamic Link domain, Android and iOS app information.
  ///
  /// The created short Dynamic Link will not expire. Repeated calls with the
  /// same long Dynamic Link or Dynamic Link information will produce the same
  /// short Dynamic Link. The Dynamic Link domain in the request must be owned
  /// by requester's Firebase project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CreateShortDynamicLinkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CreateShortDynamicLinkResponse> create(
    CreateShortDynamicLinkRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/shortLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CreateShortDynamicLinkResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Fetches analytics stats of a short Dynamic Link for a given duration.
  ///
  /// Metrics include number of clicks, redirects, installs, app first opens,
  /// and app reopens.
  ///
  /// Request parameters:
  ///
  /// [dynamicLink] - Dynamic Link URL. e.g. https://abcd.app.goo.gl/wxyz
  ///
  /// [durationDays] - The span of time requested in days.
  ///
  /// [sdkVersion] - Google SDK version. Version takes the form
  /// "$major.$minor.$patch"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DynamicLinkStats].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DynamicLinkStats> getLinkStats(
    core.String dynamicLink, {
    core.String? durationDays,
    core.String? sdkVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (durationDays != null) 'durationDays': [durationDays],
      if (sdkVersion != null) 'sdkVersion': [sdkVersion],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + commons.escapeVariable('$dynamicLink') + '/linkStats';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DynamicLinkStats.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get iOS strong/weak-match info for post-install attribution.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetIosPostInstallAttributionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetIosPostInstallAttributionResponse> installAttribution(
    GetIosPostInstallAttributionRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/installAttribution';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetIosPostInstallAttributionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get iOS reopen attribution for app universal link open deeplinking.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetIosReopenAttributionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetIosReopenAttributionResponse> reopenAttribution(
    GetIosReopenAttributionRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/reopenAttribution';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetIosReopenAttributionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Tracking parameters supported by Dynamic Link.
class AnalyticsInfo {
  /// Google Play Campaign Measurements.
  GooglePlayAnalytics? googlePlayAnalytics;

  /// iTunes Connect App Analytics.
  ITunesConnectAnalytics? itunesConnectAnalytics;

  AnalyticsInfo({
    this.googlePlayAnalytics,
    this.itunesConnectAnalytics,
  });

  AnalyticsInfo.fromJson(core.Map json_)
      : this(
          googlePlayAnalytics: json_.containsKey('googlePlayAnalytics')
              ? GooglePlayAnalytics.fromJson(json_['googlePlayAnalytics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          itunesConnectAnalytics: json_.containsKey('itunesConnectAnalytics')
              ? ITunesConnectAnalytics.fromJson(json_['itunesConnectAnalytics']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googlePlayAnalytics != null)
          'googlePlayAnalytics': googlePlayAnalytics!,
        if (itunesConnectAnalytics != null)
          'itunesConnectAnalytics': itunesConnectAnalytics!,
      };
}

/// Android related attributes to the Dynamic Link.
class AndroidInfo {
  /// Link to open on Android if the app is not installed.
  core.String? androidFallbackLink;

  /// If specified, this overrides the ‘link’ parameter on Android.
  core.String? androidLink;

  /// Minimum version code for the Android app.
  ///
  /// If the installed app’s version code is lower, then the user is taken to
  /// the Play Store.
  core.String? androidMinPackageVersionCode;

  /// Android package name of the app.
  core.String? androidPackageName;

  AndroidInfo({
    this.androidFallbackLink,
    this.androidLink,
    this.androidMinPackageVersionCode,
    this.androidPackageName,
  });

  AndroidInfo.fromJson(core.Map json_)
      : this(
          androidFallbackLink: json_.containsKey('androidFallbackLink')
              ? json_['androidFallbackLink'] as core.String
              : null,
          androidLink: json_.containsKey('androidLink')
              ? json_['androidLink'] as core.String
              : null,
          androidMinPackageVersionCode:
              json_.containsKey('androidMinPackageVersionCode')
                  ? json_['androidMinPackageVersionCode'] as core.String
                  : null,
          androidPackageName: json_.containsKey('androidPackageName')
              ? json_['androidPackageName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidFallbackLink != null)
          'androidFallbackLink': androidFallbackLink!,
        if (androidLink != null) 'androidLink': androidLink!,
        if (androidMinPackageVersionCode != null)
          'androidMinPackageVersionCode': androidMinPackageVersionCode!,
        if (androidPackageName != null)
          'androidPackageName': androidPackageName!,
      };
}

/// Request to create a managed Short Dynamic Link.
class CreateManagedShortLinkRequest {
  /// Information about the Dynamic Link to be shortened.
  ///
  /// [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).
  DynamicLinkInfo? dynamicLinkInfo;

  /// Full long Dynamic Link URL with desired query parameters specified.
  ///
  /// For example,
  /// "https://sample.app.goo.gl/?link=http://www.google.com&apn=com.sample",
  /// [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).
  core.String? longDynamicLink;

  /// Link name to associate with the link.
  ///
  /// It's used for marketer to identify manually-created links in the Firebase
  /// console (https://console.firebase.google.com/). Links must be named to be
  /// tracked.
  core.String? name;

  /// Google SDK version.
  ///
  /// Version takes the form "$major.$minor.$patch"
  core.String? sdkVersion;

  /// Short Dynamic Link suffix.
  ///
  /// Optional.
  Suffix? suffix;

  CreateManagedShortLinkRequest({
    this.dynamicLinkInfo,
    this.longDynamicLink,
    this.name,
    this.sdkVersion,
    this.suffix,
  });

  CreateManagedShortLinkRequest.fromJson(core.Map json_)
      : this(
          dynamicLinkInfo: json_.containsKey('dynamicLinkInfo')
              ? DynamicLinkInfo.fromJson(json_['dynamicLinkInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          longDynamicLink: json_.containsKey('longDynamicLink')
              ? json_['longDynamicLink'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sdkVersion: json_.containsKey('sdkVersion')
              ? json_['sdkVersion'] as core.String
              : null,
          suffix: json_.containsKey('suffix')
              ? Suffix.fromJson(
                  json_['suffix'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicLinkInfo != null) 'dynamicLinkInfo': dynamicLinkInfo!,
        if (longDynamicLink != null) 'longDynamicLink': longDynamicLink!,
        if (name != null) 'name': name!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
        if (suffix != null) 'suffix': suffix!,
      };
}

/// Response to create a short Dynamic Link.
class CreateManagedShortLinkResponse {
  /// Short Dynamic Link value.
  ///
  /// e.g. https://abcd.app.goo.gl/wxyz
  ManagedShortLink? managedShortLink;

  /// Preview link to show the link flow chart.
  ///
  /// (debug info.)
  core.String? previewLink;

  /// Information about potential warnings on link creation.
  core.List<DynamicLinkWarning>? warning;

  CreateManagedShortLinkResponse({
    this.managedShortLink,
    this.previewLink,
    this.warning,
  });

  CreateManagedShortLinkResponse.fromJson(core.Map json_)
      : this(
          managedShortLink: json_.containsKey('managedShortLink')
              ? ManagedShortLink.fromJson(json_['managedShortLink']
                  as core.Map<core.String, core.dynamic>)
              : null,
          previewLink: json_.containsKey('previewLink')
              ? json_['previewLink'] as core.String
              : null,
          warning: json_.containsKey('warning')
              ? (json_['warning'] as core.List)
                  .map((value) => DynamicLinkWarning.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (managedShortLink != null) 'managedShortLink': managedShortLink!,
        if (previewLink != null) 'previewLink': previewLink!,
        if (warning != null) 'warning': warning!,
      };
}

/// Request to create a short Dynamic Link.
class CreateShortDynamicLinkRequest {
  /// Information about the Dynamic Link to be shortened.
  ///
  /// [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).
  DynamicLinkInfo? dynamicLinkInfo;

  /// Full long Dynamic Link URL with desired query parameters specified.
  ///
  /// For example,
  /// "https://sample.app.goo.gl/?link=http://www.google.com&apn=com.sample",
  /// [Learn more](https://firebase.google.com/docs/reference/dynamic-links/link-shortener).
  core.String? longDynamicLink;

  /// Google SDK version.
  ///
  /// Version takes the form "$major.$minor.$patch"
  core.String? sdkVersion;

  /// Short Dynamic Link suffix.
  ///
  /// Optional.
  Suffix? suffix;

  CreateShortDynamicLinkRequest({
    this.dynamicLinkInfo,
    this.longDynamicLink,
    this.sdkVersion,
    this.suffix,
  });

  CreateShortDynamicLinkRequest.fromJson(core.Map json_)
      : this(
          dynamicLinkInfo: json_.containsKey('dynamicLinkInfo')
              ? DynamicLinkInfo.fromJson(json_['dynamicLinkInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          longDynamicLink: json_.containsKey('longDynamicLink')
              ? json_['longDynamicLink'] as core.String
              : null,
          sdkVersion: json_.containsKey('sdkVersion')
              ? json_['sdkVersion'] as core.String
              : null,
          suffix: json_.containsKey('suffix')
              ? Suffix.fromJson(
                  json_['suffix'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicLinkInfo != null) 'dynamicLinkInfo': dynamicLinkInfo!,
        if (longDynamicLink != null) 'longDynamicLink': longDynamicLink!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
        if (suffix != null) 'suffix': suffix!,
      };
}

/// Response to create a short Dynamic Link.
class CreateShortDynamicLinkResponse {
  /// Preview link to show the link flow chart.
  ///
  /// (debug info.)
  core.String? previewLink;

  /// Short Dynamic Link value.
  ///
  /// e.g. https://abcd.app.goo.gl/wxyz
  core.String? shortLink;

  /// Information about potential warnings on link creation.
  core.List<DynamicLinkWarning>? warning;

  CreateShortDynamicLinkResponse({
    this.previewLink,
    this.shortLink,
    this.warning,
  });

  CreateShortDynamicLinkResponse.fromJson(core.Map json_)
      : this(
          previewLink: json_.containsKey('previewLink')
              ? json_['previewLink'] as core.String
              : null,
          shortLink: json_.containsKey('shortLink')
              ? json_['shortLink'] as core.String
              : null,
          warning: json_.containsKey('warning')
              ? (json_['warning'] as core.List)
                  .map((value) => DynamicLinkWarning.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (previewLink != null) 'previewLink': previewLink!,
        if (shortLink != null) 'shortLink': shortLink!,
        if (warning != null) 'warning': warning!,
      };
}

/// Desktop related attributes to the Dynamic Link.
class DesktopInfo {
  /// Link to open on desktop.
  core.String? desktopFallbackLink;

  DesktopInfo({
    this.desktopFallbackLink,
  });

  DesktopInfo.fromJson(core.Map json_)
      : this(
          desktopFallbackLink: json_.containsKey('desktopFallbackLink')
              ? json_['desktopFallbackLink'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (desktopFallbackLink != null)
          'desktopFallbackLink': desktopFallbackLink!,
      };
}

/// Signals associated with the device making the request.
class DeviceInfo {
  /// Device model name.
  core.String? deviceModelName;

  /// Device language code setting.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? languageCode;

  /// Device language code setting obtained by executing JavaScript code in
  /// WebView.
  core.String? languageCodeFromWebview;

  /// Device language code raw setting.
  ///
  /// iOS does returns language code in different format than iOS WebView. For
  /// example WebView returns en_US, but iOS returns en-US. Field below will
  /// return raw value returned by iOS.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? languageCodeRaw;

  /// Device display resolution height.
  core.String? screenResolutionHeight;

  /// Device display resolution width.
  core.String? screenResolutionWidth;

  /// Device timezone setting.
  core.String? timezone;

  DeviceInfo({
    this.deviceModelName,
    this.languageCode,
    this.languageCodeFromWebview,
    this.languageCodeRaw,
    this.screenResolutionHeight,
    this.screenResolutionWidth,
    this.timezone,
  });

  DeviceInfo.fromJson(core.Map json_)
      : this(
          deviceModelName: json_.containsKey('deviceModelName')
              ? json_['deviceModelName'] as core.String
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          languageCodeFromWebview: json_.containsKey('languageCodeFromWebview')
              ? json_['languageCodeFromWebview'] as core.String
              : null,
          languageCodeRaw: json_.containsKey('languageCodeRaw')
              ? json_['languageCodeRaw'] as core.String
              : null,
          screenResolutionHeight: json_.containsKey('screenResolutionHeight')
              ? json_['screenResolutionHeight'] as core.String
              : null,
          screenResolutionWidth: json_.containsKey('screenResolutionWidth')
              ? json_['screenResolutionWidth'] as core.String
              : null,
          timezone: json_.containsKey('timezone')
              ? json_['timezone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceModelName != null) 'deviceModelName': deviceModelName!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (languageCodeFromWebview != null)
          'languageCodeFromWebview': languageCodeFromWebview!,
        if (languageCodeRaw != null) 'languageCodeRaw': languageCodeRaw!,
        if (screenResolutionHeight != null)
          'screenResolutionHeight': screenResolutionHeight!,
        if (screenResolutionWidth != null)
          'screenResolutionWidth': screenResolutionWidth!,
        if (timezone != null) 'timezone': timezone!,
      };
}

/// Dynamic Link event stat.
class DynamicLinkEventStat {
  /// The number of times this event occurred.
  core.String? count;

  /// Link event.
  /// Possible string values are:
  /// - "DYNAMIC_LINK_EVENT_UNSPECIFIED" : Unspecified type.
  /// - "CLICK" : Indicates that an FDL is clicked by users.
  /// - "REDIRECT" : Indicates that an FDL redirects users to fallback link.
  /// - "APP_INSTALL" : Indicates that an FDL triggers an app install from Play
  /// store, currently it's impossible to get stats from App store.
  /// - "APP_FIRST_OPEN" : Indicates that the app is opened for the first time
  /// after an install triggered by FDLs
  /// - "APP_RE_OPEN" : Indicates that the app is opened via an FDL for
  /// non-first time.
  core.String? event;

  /// Requested platform.
  /// Possible string values are:
  /// - "DYNAMIC_LINK_PLATFORM_UNSPECIFIED" : Unspecified platform.
  /// - "ANDROID" : Represents Android platform. All apps and browsers on
  /// Android are classfied in this category.
  /// - "IOS" : Represents iOS platform. All apps and browsers on iOS are
  /// classfied in this category.
  /// - "DESKTOP" : Represents desktop.
  /// - "OTHER" : Platforms are not categorized as Android/iOS/Destop fall into
  /// here.
  core.String? platform;

  DynamicLinkEventStat({
    this.count,
    this.event,
    this.platform,
  });

  DynamicLinkEventStat.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          event:
              json_.containsKey('event') ? json_['event'] as core.String : null,
          platform: json_.containsKey('platform')
              ? json_['platform'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (event != null) 'event': event!,
        if (platform != null) 'platform': platform!,
      };
}

/// Information about a Dynamic Link.
class DynamicLinkInfo {
  /// Parameters used for tracking.
  ///
  /// See all tracking parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  AnalyticsInfo? analyticsInfo;

  /// Android related information.
  ///
  /// See Android related parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  AndroidInfo? androidInfo;

  /// Desktop related information.
  ///
  /// See desktop related parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  DesktopInfo? desktopInfo;

  /// E.g. https://maps.app.goo.gl, https://maps.page.link, https://g.co/maps
  /// More examples can be found in description of getNormalizedUriPrefix in
  /// j/c/g/firebase/dynamiclinks/uri/DdlDomain.java Will fallback to
  /// dynamic_link_domain is this field is missing
  core.String? domainUriPrefix;

  /// Dynamic Links domain that the project owns, e.g. abcd.app.goo.gl
  /// [Learn more](https://firebase.google.com/docs/dynamic-links/android/receive)
  /// on how to set up Dynamic Link domain associated with your Firebase
  /// project.
  ///
  /// Required if missing domain_uri_prefix.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? dynamicLinkDomain;

  /// iOS related information.
  ///
  /// See iOS related parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  IosInfo? iosInfo;

  /// The link your app will open, You can specify any URL your app can handle.
  ///
  /// This link must be a well-formatted URL, be properly URL-encoded, and use
  /// the HTTP or HTTPS scheme. See 'link' parameters in the
  /// [documentation](https://firebase.google.com/docs/dynamic-links/create-manually).
  /// Required.
  core.String? link;

  /// Information of navigation behavior of a Firebase Dynamic Links.
  NavigationInfo? navigationInfo;

  /// Parameters for social meta tag params.
  ///
  /// Used to set meta tag data for link previews on social sites.
  SocialMetaTagInfo? socialMetaTagInfo;

  DynamicLinkInfo({
    this.analyticsInfo,
    this.androidInfo,
    this.desktopInfo,
    this.domainUriPrefix,
    this.dynamicLinkDomain,
    this.iosInfo,
    this.link,
    this.navigationInfo,
    this.socialMetaTagInfo,
  });

  DynamicLinkInfo.fromJson(core.Map json_)
      : this(
          analyticsInfo: json_.containsKey('analyticsInfo')
              ? AnalyticsInfo.fromJson(
                  json_['analyticsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          androidInfo: json_.containsKey('androidInfo')
              ? AndroidInfo.fromJson(
                  json_['androidInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          desktopInfo: json_.containsKey('desktopInfo')
              ? DesktopInfo.fromJson(
                  json_['desktopInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          domainUriPrefix: json_.containsKey('domainUriPrefix')
              ? json_['domainUriPrefix'] as core.String
              : null,
          dynamicLinkDomain: json_.containsKey('dynamicLinkDomain')
              ? json_['dynamicLinkDomain'] as core.String
              : null,
          iosInfo: json_.containsKey('iosInfo')
              ? IosInfo.fromJson(
                  json_['iosInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          link: json_.containsKey('link') ? json_['link'] as core.String : null,
          navigationInfo: json_.containsKey('navigationInfo')
              ? NavigationInfo.fromJson(json_['navigationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          socialMetaTagInfo: json_.containsKey('socialMetaTagInfo')
              ? SocialMetaTagInfo.fromJson(json_['socialMetaTagInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyticsInfo != null) 'analyticsInfo': analyticsInfo!,
        if (androidInfo != null) 'androidInfo': androidInfo!,
        if (desktopInfo != null) 'desktopInfo': desktopInfo!,
        if (domainUriPrefix != null) 'domainUriPrefix': domainUriPrefix!,
        if (dynamicLinkDomain != null) 'dynamicLinkDomain': dynamicLinkDomain!,
        if (iosInfo != null) 'iosInfo': iosInfo!,
        if (link != null) 'link': link!,
        if (navigationInfo != null) 'navigationInfo': navigationInfo!,
        if (socialMetaTagInfo != null) 'socialMetaTagInfo': socialMetaTagInfo!,
      };
}

/// Analytics stats of a Dynamic Link for a given timeframe.
class DynamicLinkStats {
  /// Dynamic Link event stats.
  core.List<DynamicLinkEventStat>? linkEventStats;

  DynamicLinkStats({
    this.linkEventStats,
  });

  DynamicLinkStats.fromJson(core.Map json_)
      : this(
          linkEventStats: json_.containsKey('linkEventStats')
              ? (json_['linkEventStats'] as core.List)
                  .map((value) => DynamicLinkEventStat.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkEventStats != null) 'linkEventStats': linkEventStats!,
      };
}

/// Dynamic Links warning messages.
class DynamicLinkWarning {
  /// The warning code.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Unknown code.
  /// - "NOT_IN_PROJECT_ANDROID_PACKAGE_NAME" : The Android package does not
  /// match any in developer's DevConsole project.
  /// - "NOT_INTEGER_ANDROID_PACKAGE_MIN_VERSION" : The Android minimum version
  /// code has to be a valid integer.
  /// - "UNNECESSARY_ANDROID_PACKAGE_MIN_VERSION" : Android package min version
  /// param is not needed, e.g. when 'apn' is missing.
  /// - "NOT_URI_ANDROID_LINK" : Android link is not a valid URI.
  /// - "UNNECESSARY_ANDROID_LINK" : Android link param is not needed, e.g. when
  /// param 'al' and 'link' have the same value..
  /// - "NOT_URI_ANDROID_FALLBACK_LINK" : Android fallback link is not a valid
  /// URI.
  /// - "BAD_URI_SCHEME_ANDROID_FALLBACK_LINK" : Android fallback link has an
  /// invalid (non http/https) URI scheme.
  /// - "NOT_IN_PROJECT_IOS_BUNDLE_ID" : The iOS bundle ID does not match any in
  /// developer's DevConsole project.
  /// - "NOT_IN_PROJECT_IPAD_BUNDLE_ID" : The iPad bundle ID does not match any
  /// in developer's DevConsole project.
  /// - "UNNECESSARY_IOS_URL_SCHEME" : iOS URL scheme is not needed, e.g. when
  /// 'ibi' are 'ipbi' are all missing.
  /// - "NOT_NUMERIC_IOS_APP_STORE_ID" : iOS app store ID format is incorrect,
  /// e.g. not numeric.
  /// - "UNNECESSARY_IOS_APP_STORE_ID" : iOS app store ID is not needed.
  /// - "NOT_URI_IOS_FALLBACK_LINK" : iOS fallback link is not a valid URI.
  /// - "BAD_URI_SCHEME_IOS_FALLBACK_LINK" : iOS fallback link has an invalid
  /// (non http/https) URI scheme.
  /// - "NOT_URI_IPAD_FALLBACK_LINK" : iPad fallback link is not a valid URI.
  /// - "BAD_URI_SCHEME_IPAD_FALLBACK_LINK" : iPad fallback link has an invalid
  /// (non http/https) URI scheme.
  /// - "BAD_DEBUG_PARAM" : Debug param format is incorrect.
  /// - "BAD_AD_PARAM" : isAd param format is incorrect.
  /// - "DEPRECATED_PARAM" : Indicates a certain param is deprecated.
  /// - "UNRECOGNIZED_PARAM" : Indicates certain paramater is not recognized.
  /// - "TOO_LONG_PARAM" : Indicates certain paramater is too long.
  /// - "NOT_URI_SOCIAL_IMAGE_LINK" : Social meta tag image link is not a valid
  /// URI.
  /// - "BAD_URI_SCHEME_SOCIAL_IMAGE_LINK" : Social meta tag image link has an
  /// invalid (non http/https) URI scheme.
  /// - "NOT_URI_SOCIAL_URL"
  /// - "BAD_URI_SCHEME_SOCIAL_URL"
  /// - "LINK_LENGTH_TOO_LONG" : Dynamic Link URL length is too long.
  /// - "LINK_WITH_FRAGMENTS" : Dynamic Link URL contains fragments.
  /// - "NOT_MATCHING_IOS_BUNDLE_ID_AND_STORE_ID" : The iOS bundle ID does not
  /// match with the given iOS store ID.
  core.String? warningCode;

  /// The document describing the warning, and helps resolve.
  core.String? warningDocumentLink;

  /// The warning message to help developers improve their requests.
  core.String? warningMessage;

  DynamicLinkWarning({
    this.warningCode,
    this.warningDocumentLink,
    this.warningMessage,
  });

  DynamicLinkWarning.fromJson(core.Map json_)
      : this(
          warningCode: json_.containsKey('warningCode')
              ? json_['warningCode'] as core.String
              : null,
          warningDocumentLink: json_.containsKey('warningDocumentLink')
              ? json_['warningDocumentLink'] as core.String
              : null,
          warningMessage: json_.containsKey('warningMessage')
              ? json_['warningMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (warningCode != null) 'warningCode': warningCode!,
        if (warningDocumentLink != null)
          'warningDocumentLink': warningDocumentLink!,
        if (warningMessage != null) 'warningMessage': warningMessage!,
      };
}

/// Request for iSDK to execute strong match flow for post-install attribution.
///
/// This is meant for iOS requests only. Requests from other platforms will not
/// be honored.
class GetIosPostInstallAttributionRequest {
  /// App installation epoch time (https://en.wikipedia.org/wiki/Unix_time).
  ///
  /// This is a client signal for a more accurate weak match.
  core.String? appInstallationTime;

  /// APP bundle ID.
  core.String? bundleId;

  /// Device information.
  DeviceInfo? device;

  /// iOS version, ie: 9.3.5.
  ///
  /// Consider adding "build".
  core.String? iosVersion;

  /// App post install attribution retrieval information.
  ///
  /// Disambiguates mechanism (iSDK or developer invoked) to retrieve payload
  /// from clicked link.
  /// Possible string values are:
  /// - "UNKNOWN_PAYLOAD_RETRIEVAL_METHOD" : Unknown method.
  /// - "IMPLICIT_WEAK_MATCH" : iSDK performs a server lookup by device
  /// heuristics in the background when app is first-opened; no API called by
  /// developer.
  /// - "EXPLICIT_WEAK_MATCH" : iSDK performs a server lookup by device
  /// heuristics upon a dev API call.
  /// - "EXPLICIT_STRONG_AFTER_WEAK_MATCH" : iSDK performs a strong match only
  /// if weak match is found upon a dev API call.
  core.String? retrievalMethod;

  /// Google SDK version.
  ///
  /// Version takes the form "$major.$minor.$patch"
  core.String? sdkVersion;

  /// Possible unique matched link that server need to check before performing
  /// device heuristics match.
  ///
  /// If passed link is short server need to expand the link. If link is long
  /// server need to vslidate the link.
  core.String? uniqueMatchLinkToCheck;

  /// Strong match page information.
  ///
  /// Disambiguates between default UI and custom page to present when strong
  /// match succeeds/fails to find cookie.
  /// Possible string values are:
  /// - "UNKNOWN_VISUAL_STYLE" : Unknown style.
  /// - "DEFAULT_STYLE" : Default style.
  /// - "CUSTOM_STYLE" : Custom style.
  core.String? visualStyle;

  GetIosPostInstallAttributionRequest({
    this.appInstallationTime,
    this.bundleId,
    this.device,
    this.iosVersion,
    this.retrievalMethod,
    this.sdkVersion,
    this.uniqueMatchLinkToCheck,
    this.visualStyle,
  });

  GetIosPostInstallAttributionRequest.fromJson(core.Map json_)
      : this(
          appInstallationTime: json_.containsKey('appInstallationTime')
              ? json_['appInstallationTime'] as core.String
              : null,
          bundleId: json_.containsKey('bundleId')
              ? json_['bundleId'] as core.String
              : null,
          device: json_.containsKey('device')
              ? DeviceInfo.fromJson(
                  json_['device'] as core.Map<core.String, core.dynamic>)
              : null,
          iosVersion: json_.containsKey('iosVersion')
              ? json_['iosVersion'] as core.String
              : null,
          retrievalMethod: json_.containsKey('retrievalMethod')
              ? json_['retrievalMethod'] as core.String
              : null,
          sdkVersion: json_.containsKey('sdkVersion')
              ? json_['sdkVersion'] as core.String
              : null,
          uniqueMatchLinkToCheck: json_.containsKey('uniqueMatchLinkToCheck')
              ? json_['uniqueMatchLinkToCheck'] as core.String
              : null,
          visualStyle: json_.containsKey('visualStyle')
              ? json_['visualStyle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appInstallationTime != null)
          'appInstallationTime': appInstallationTime!,
        if (bundleId != null) 'bundleId': bundleId!,
        if (device != null) 'device': device!,
        if (iosVersion != null) 'iosVersion': iosVersion!,
        if (retrievalMethod != null) 'retrievalMethod': retrievalMethod!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
        if (uniqueMatchLinkToCheck != null)
          'uniqueMatchLinkToCheck': uniqueMatchLinkToCheck!,
        if (visualStyle != null) 'visualStyle': visualStyle!,
      };
}

/// Response for iSDK to execute strong match flow for post-install attribution.
///
/// Information of the resolved FDL link.
class GetIosPostInstallAttributionResponse {
  /// The minimum version for app, specified by dev through ?imv= parameter.
  ///
  /// Return to iSDK to allow app to evaluate if current version meets this.
  core.String? appMinimumVersion;

  /// The confidence of the returned attribution.
  /// Possible string values are:
  /// - "UNKNOWN_ATTRIBUTION_CONFIDENCE" : Unset.
  /// - "WEAK" : Weak confidence, more than one matching link found or link
  /// suspected to be false positive.
  /// - "DEFAULT" : Default confidence, match based on device heuristics.
  /// - "UNIQUE" : Unique confidence, match based on "unique match link to
  /// check" or other means.
  core.String? attributionConfidence;

  /// The deep-link attributed post-install via one of several techniques
  /// (device heuristics, copy unique).
  core.String? deepLink;

  /// User-agent specific custom-scheme URIs for iSDK to open.
  ///
  /// This will be set according to the user-agent tha the click was originally
  /// made in. There is no Safari-equivalent custom-scheme open URLs. ie:
  /// googlechrome://www.example.com ie:
  /// firefox://open-url?url=http://www.example.com ie: opera-http://example.com
  core.String? externalBrowserDestinationLink;

  /// The link to navigate to update the app if min version is not met.
  ///
  /// This is either (in order): 1) fallback link (from ?ifl= parameter, if
  /// specified by developer) or 2) AppStore URL (from ?isi= parameter, if
  /// specified), or 3) the payload link (from required link= parameter).
  core.String? fallbackLink;

  /// Invitation ID attributed post-install via one of several techniques
  /// (device heuristics, copy unique).
  core.String? invitationId;

  /// Instruction for iSDK to attemmpt to perform strong match.
  ///
  /// For instance, if browser does not support/allow cookie or outside of
  /// support browsers, this will be false.
  core.bool? isStrongMatchExecutable;

  /// Describes why match failed, ie: "discarded due to low confidence".
  ///
  /// This message will be publicly visible.
  core.String? matchMessage;

  /// Which IP version the request was made from.
  /// Possible string values are:
  /// - "UNKNOWN_IP_VERSION" : Unset.
  /// - "IP_V4" : Request made from an IPv4 IP address.
  /// - "IP_V6" : Request made from an IPv6 IP address.
  core.String? requestIpVersion;

  /// Entire FDL (short or long) attributed post-install via one of several
  /// techniques (device heuristics, copy unique).
  core.String? requestedLink;

  /// The entire FDL, expanded from a short link.
  ///
  /// It is the same as the requested_link, if it is long. Parameters from this
  /// should not be used directly (ie: server can default
  /// utm_\[campaign|medium|source\] to a value when requested_link lack them,
  /// server determine the best fallback_link when requested_link specifies \>1
  /// fallback links).
  core.String? resolvedLink;

  /// Scion campaign value to be propagated by iSDK to Scion at post-install.
  core.String? utmCampaign;

  /// Scion content value to be propagated by iSDK to Scion at app-reopen.
  core.String? utmContent;

  /// Scion medium value to be propagated by iSDK to Scion at post-install.
  core.String? utmMedium;

  /// Scion source value to be propagated by iSDK to Scion at post-install.
  core.String? utmSource;

  /// Scion term value to be propagated by iSDK to Scion at app-reopen.
  core.String? utmTerm;

  GetIosPostInstallAttributionResponse({
    this.appMinimumVersion,
    this.attributionConfidence,
    this.deepLink,
    this.externalBrowserDestinationLink,
    this.fallbackLink,
    this.invitationId,
    this.isStrongMatchExecutable,
    this.matchMessage,
    this.requestIpVersion,
    this.requestedLink,
    this.resolvedLink,
    this.utmCampaign,
    this.utmContent,
    this.utmMedium,
    this.utmSource,
    this.utmTerm,
  });

  GetIosPostInstallAttributionResponse.fromJson(core.Map json_)
      : this(
          appMinimumVersion: json_.containsKey('appMinimumVersion')
              ? json_['appMinimumVersion'] as core.String
              : null,
          attributionConfidence: json_.containsKey('attributionConfidence')
              ? json_['attributionConfidence'] as core.String
              : null,
          deepLink: json_.containsKey('deepLink')
              ? json_['deepLink'] as core.String
              : null,
          externalBrowserDestinationLink:
              json_.containsKey('externalBrowserDestinationLink')
                  ? json_['externalBrowserDestinationLink'] as core.String
                  : null,
          fallbackLink: json_.containsKey('fallbackLink')
              ? json_['fallbackLink'] as core.String
              : null,
          invitationId: json_.containsKey('invitationId')
              ? json_['invitationId'] as core.String
              : null,
          isStrongMatchExecutable: json_.containsKey('isStrongMatchExecutable')
              ? json_['isStrongMatchExecutable'] as core.bool
              : null,
          matchMessage: json_.containsKey('matchMessage')
              ? json_['matchMessage'] as core.String
              : null,
          requestIpVersion: json_.containsKey('requestIpVersion')
              ? json_['requestIpVersion'] as core.String
              : null,
          requestedLink: json_.containsKey('requestedLink')
              ? json_['requestedLink'] as core.String
              : null,
          resolvedLink: json_.containsKey('resolvedLink')
              ? json_['resolvedLink'] as core.String
              : null,
          utmCampaign: json_.containsKey('utmCampaign')
              ? json_['utmCampaign'] as core.String
              : null,
          utmContent: json_.containsKey('utmContent')
              ? json_['utmContent'] as core.String
              : null,
          utmMedium: json_.containsKey('utmMedium')
              ? json_['utmMedium'] as core.String
              : null,
          utmSource: json_.containsKey('utmSource')
              ? json_['utmSource'] as core.String
              : null,
          utmTerm: json_.containsKey('utmTerm')
              ? json_['utmTerm'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appMinimumVersion != null) 'appMinimumVersion': appMinimumVersion!,
        if (attributionConfidence != null)
          'attributionConfidence': attributionConfidence!,
        if (deepLink != null) 'deepLink': deepLink!,
        if (externalBrowserDestinationLink != null)
          'externalBrowserDestinationLink': externalBrowserDestinationLink!,
        if (fallbackLink != null) 'fallbackLink': fallbackLink!,
        if (invitationId != null) 'invitationId': invitationId!,
        if (isStrongMatchExecutable != null)
          'isStrongMatchExecutable': isStrongMatchExecutable!,
        if (matchMessage != null) 'matchMessage': matchMessage!,
        if (requestIpVersion != null) 'requestIpVersion': requestIpVersion!,
        if (requestedLink != null) 'requestedLink': requestedLink!,
        if (resolvedLink != null) 'resolvedLink': resolvedLink!,
        if (utmCampaign != null) 'utmCampaign': utmCampaign!,
        if (utmContent != null) 'utmContent': utmContent!,
        if (utmMedium != null) 'utmMedium': utmMedium!,
        if (utmSource != null) 'utmSource': utmSource!,
        if (utmTerm != null) 'utmTerm': utmTerm!,
      };
}

/// Request for iSDK to get reopen attribution for app universal link open
/// deeplinking.
///
/// This endpoint is meant for only iOS requests.
class GetIosReopenAttributionRequest {
  /// APP bundle ID.
  core.String? bundleId;

  /// FDL link to be verified from an app universal link open.
  ///
  /// The FDL link can be one of: 1) short FDL. e.g. .page.link/, or 2) long
  /// FDL. e.g. .page.link/?{query params}, or 3) Invite FDL. e.g. .page.link/i/
  core.String? requestedLink;

  /// Google SDK version.
  ///
  /// Version takes the form "$major.$minor.$patch"
  core.String? sdkVersion;

  GetIosReopenAttributionRequest({
    this.bundleId,
    this.requestedLink,
    this.sdkVersion,
  });

  GetIosReopenAttributionRequest.fromJson(core.Map json_)
      : this(
          bundleId: json_.containsKey('bundleId')
              ? json_['bundleId'] as core.String
              : null,
          requestedLink: json_.containsKey('requestedLink')
              ? json_['requestedLink'] as core.String
              : null,
          sdkVersion: json_.containsKey('sdkVersion')
              ? json_['sdkVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (requestedLink != null) 'requestedLink': requestedLink!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
      };
}

/// Response for iSDK to get reopen attribution for app universal link open
/// deeplinking.
///
/// This endpoint is meant for only iOS requests.
class GetIosReopenAttributionResponse {
  /// The deep-link attributed the app universal link open.
  ///
  /// For both regular FDL links and invite FDL links.
  core.String? deepLink;

  /// Optional invitation ID, for only invite typed requested FDL links.
  core.String? invitationId;

  /// FDL input value of the "&imv=" parameter, minimum app version to be
  /// returned to Google Firebase SDK running on iOS-9.
  core.String? iosMinAppVersion;

  /// The entire FDL, expanded from a short link.
  ///
  /// It is the same as the requested_link, if it is long.
  core.String? resolvedLink;

  /// Scion campaign value to be propagated by iSDK to Scion at app-reopen.
  core.String? utmCampaign;

  /// Scion content value to be propagated by iSDK to Scion at app-reopen.
  core.String? utmContent;

  /// Scion medium value to be propagated by iSDK to Scion at app-reopen.
  core.String? utmMedium;

  /// Scion source value to be propagated by iSDK to Scion at app-reopen.
  core.String? utmSource;

  /// Scion term value to be propagated by iSDK to Scion at app-reopen.
  core.String? utmTerm;

  GetIosReopenAttributionResponse({
    this.deepLink,
    this.invitationId,
    this.iosMinAppVersion,
    this.resolvedLink,
    this.utmCampaign,
    this.utmContent,
    this.utmMedium,
    this.utmSource,
    this.utmTerm,
  });

  GetIosReopenAttributionResponse.fromJson(core.Map json_)
      : this(
          deepLink: json_.containsKey('deepLink')
              ? json_['deepLink'] as core.String
              : null,
          invitationId: json_.containsKey('invitationId')
              ? json_['invitationId'] as core.String
              : null,
          iosMinAppVersion: json_.containsKey('iosMinAppVersion')
              ? json_['iosMinAppVersion'] as core.String
              : null,
          resolvedLink: json_.containsKey('resolvedLink')
              ? json_['resolvedLink'] as core.String
              : null,
          utmCampaign: json_.containsKey('utmCampaign')
              ? json_['utmCampaign'] as core.String
              : null,
          utmContent: json_.containsKey('utmContent')
              ? json_['utmContent'] as core.String
              : null,
          utmMedium: json_.containsKey('utmMedium')
              ? json_['utmMedium'] as core.String
              : null,
          utmSource: json_.containsKey('utmSource')
              ? json_['utmSource'] as core.String
              : null,
          utmTerm: json_.containsKey('utmTerm')
              ? json_['utmTerm'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deepLink != null) 'deepLink': deepLink!,
        if (invitationId != null) 'invitationId': invitationId!,
        if (iosMinAppVersion != null) 'iosMinAppVersion': iosMinAppVersion!,
        if (resolvedLink != null) 'resolvedLink': resolvedLink!,
        if (utmCampaign != null) 'utmCampaign': utmCampaign!,
        if (utmContent != null) 'utmContent': utmContent!,
        if (utmMedium != null) 'utmMedium': utmMedium!,
        if (utmSource != null) 'utmSource': utmSource!,
        if (utmTerm != null) 'utmTerm': utmTerm!,
      };
}

/// Parameters for Google Play Campaign Measurements.
///
/// [Learn more](https://developers.google.com/analytics/devguides/collection/android/v4/campaigns#campaign-params)
class GooglePlayAnalytics {
  /// Deprecated; FDL SDK does not process nor log it.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? gclid;

  /// Campaign name; used for keyword analysis to identify a specific product
  /// promotion or strategic campaign.
  core.String? utmCampaign;

  /// Campaign content; used for A/B testing and content-targeted ads to
  /// differentiate ads or links that point to the same URL.
  core.String? utmContent;

  /// Campaign medium; used to identify a medium such as email or
  /// cost-per-click.
  core.String? utmMedium;

  /// Campaign source; used to identify a search engine, newsletter, or other
  /// source.
  core.String? utmSource;

  /// Campaign term; used with paid search to supply the keywords for ads.
  core.String? utmTerm;

  GooglePlayAnalytics({
    this.gclid,
    this.utmCampaign,
    this.utmContent,
    this.utmMedium,
    this.utmSource,
    this.utmTerm,
  });

  GooglePlayAnalytics.fromJson(core.Map json_)
      : this(
          gclid:
              json_.containsKey('gclid') ? json_['gclid'] as core.String : null,
          utmCampaign: json_.containsKey('utmCampaign')
              ? json_['utmCampaign'] as core.String
              : null,
          utmContent: json_.containsKey('utmContent')
              ? json_['utmContent'] as core.String
              : null,
          utmMedium: json_.containsKey('utmMedium')
              ? json_['utmMedium'] as core.String
              : null,
          utmSource: json_.containsKey('utmSource')
              ? json_['utmSource'] as core.String
              : null,
          utmTerm: json_.containsKey('utmTerm')
              ? json_['utmTerm'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gclid != null) 'gclid': gclid!,
        if (utmCampaign != null) 'utmCampaign': utmCampaign!,
        if (utmContent != null) 'utmContent': utmContent!,
        if (utmMedium != null) 'utmMedium': utmMedium!,
        if (utmSource != null) 'utmSource': utmSource!,
        if (utmTerm != null) 'utmTerm': utmTerm!,
      };
}

/// Parameters for iTunes Connect App Analytics.
class ITunesConnectAnalytics {
  /// Affiliate token used to create affiliate-coded links.
  core.String? at;

  /// Campaign text that developers can optionally add to any link in order to
  /// track sales from a specific marketing campaign.
  core.String? ct;

  /// iTune media types, including music, podcasts, audiobooks and so on.
  core.String? mt;

  /// Provider token that enables analytics for Dynamic Links from within iTunes
  /// Connect.
  core.String? pt;

  ITunesConnectAnalytics({
    this.at,
    this.ct,
    this.mt,
    this.pt,
  });

  ITunesConnectAnalytics.fromJson(core.Map json_)
      : this(
          at: json_.containsKey('at') ? json_['at'] as core.String : null,
          ct: json_.containsKey('ct') ? json_['ct'] as core.String : null,
          mt: json_.containsKey('mt') ? json_['mt'] as core.String : null,
          pt: json_.containsKey('pt') ? json_['pt'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (at != null) 'at': at!,
        if (ct != null) 'ct': ct!,
        if (mt != null) 'mt': mt!,
        if (pt != null) 'pt': pt!,
      };
}

/// iOS related attributes to the Dynamic Link..
class IosInfo {
  /// iOS App Store ID.
  core.String? iosAppStoreId;

  /// iOS bundle ID of the app.
  core.String? iosBundleId;

  /// Custom (destination) scheme to use for iOS.
  ///
  /// By default, we’ll use the bundle ID as the custom scheme. Developer can
  /// override this behavior using this param.
  core.String? iosCustomScheme;

  /// Link to open on iOS if the app is not installed.
  core.String? iosFallbackLink;

  /// iPad bundle ID of the app.
  core.String? iosIpadBundleId;

  /// If specified, this overrides the ios_fallback_link value on iPads.
  core.String? iosIpadFallbackLink;

  /// iOS minimum version.
  core.String? iosMinimumVersion;

  IosInfo({
    this.iosAppStoreId,
    this.iosBundleId,
    this.iosCustomScheme,
    this.iosFallbackLink,
    this.iosIpadBundleId,
    this.iosIpadFallbackLink,
    this.iosMinimumVersion,
  });

  IosInfo.fromJson(core.Map json_)
      : this(
          iosAppStoreId: json_.containsKey('iosAppStoreId')
              ? json_['iosAppStoreId'] as core.String
              : null,
          iosBundleId: json_.containsKey('iosBundleId')
              ? json_['iosBundleId'] as core.String
              : null,
          iosCustomScheme: json_.containsKey('iosCustomScheme')
              ? json_['iosCustomScheme'] as core.String
              : null,
          iosFallbackLink: json_.containsKey('iosFallbackLink')
              ? json_['iosFallbackLink'] as core.String
              : null,
          iosIpadBundleId: json_.containsKey('iosIpadBundleId')
              ? json_['iosIpadBundleId'] as core.String
              : null,
          iosIpadFallbackLink: json_.containsKey('iosIpadFallbackLink')
              ? json_['iosIpadFallbackLink'] as core.String
              : null,
          iosMinimumVersion: json_.containsKey('iosMinimumVersion')
              ? json_['iosMinimumVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (iosAppStoreId != null) 'iosAppStoreId': iosAppStoreId!,
        if (iosBundleId != null) 'iosBundleId': iosBundleId!,
        if (iosCustomScheme != null) 'iosCustomScheme': iosCustomScheme!,
        if (iosFallbackLink != null) 'iosFallbackLink': iosFallbackLink!,
        if (iosIpadBundleId != null) 'iosIpadBundleId': iosIpadBundleId!,
        if (iosIpadFallbackLink != null)
          'iosIpadFallbackLink': iosIpadFallbackLink!,
        if (iosMinimumVersion != null) 'iosMinimumVersion': iosMinimumVersion!,
      };
}

/// Managed Short Link.
class ManagedShortLink {
  /// Creation timestamp of the short link.
  core.String? creationTime;

  /// Attributes that have been flagged about this short url.
  core.List<core.String>? flaggedAttribute;

  /// Full Dyamic Link info
  DynamicLinkInfo? info;

  /// Short durable link url, for example, "https://sample.app.goo.gl/xyz123".
  ///
  /// Required.
  core.String? link;

  /// Link name defined by the creator.
  ///
  /// Required.
  core.String? linkName;

  /// Visibility status of link.
  /// Possible string values are:
  /// - "UNSPECIFIED_VISIBILITY" : Visibility of the link is not specified.
  /// - "UNARCHIVED" : Link created in console and should be shown in console.
  /// - "ARCHIVED" : Link created in console and should not be shown in console
  /// (but can be shown in the console again if it is unarchived).
  /// - "NEVER_SHOWN" : Link created outside of console and should never be
  /// shown in console.
  core.String? visibility;

  ManagedShortLink({
    this.creationTime,
    this.flaggedAttribute,
    this.info,
    this.link,
    this.linkName,
    this.visibility,
  });

  ManagedShortLink.fromJson(core.Map json_)
      : this(
          creationTime: json_.containsKey('creationTime')
              ? json_['creationTime'] as core.String
              : null,
          flaggedAttribute: json_.containsKey('flaggedAttribute')
              ? (json_['flaggedAttribute'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          info: json_.containsKey('info')
              ? DynamicLinkInfo.fromJson(
                  json_['info'] as core.Map<core.String, core.dynamic>)
              : null,
          link: json_.containsKey('link') ? json_['link'] as core.String : null,
          linkName: json_.containsKey('linkName')
              ? json_['linkName'] as core.String
              : null,
          visibility: json_.containsKey('visibility')
              ? json_['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (flaggedAttribute != null) 'flaggedAttribute': flaggedAttribute!,
        if (info != null) 'info': info!,
        if (link != null) 'link': link!,
        if (linkName != null) 'linkName': linkName!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// Information of navigation behavior.
class NavigationInfo {
  /// If this option is on, FDL click will be forced to redirect rather than
  /// show an interstitial page.
  core.bool? enableForcedRedirect;

  NavigationInfo({
    this.enableForcedRedirect,
  });

  NavigationInfo.fromJson(core.Map json_)
      : this(
          enableForcedRedirect: json_.containsKey('enableForcedRedirect')
              ? json_['enableForcedRedirect'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableForcedRedirect != null)
          'enableForcedRedirect': enableForcedRedirect!,
      };
}

/// Parameters for social meta tag params.
///
/// Used to set meta tag data for link previews on social sites.
class SocialMetaTagInfo {
  /// A short description of the link.
  ///
  /// Optional.
  core.String? socialDescription;

  /// An image url string.
  ///
  /// Optional.
  core.String? socialImageLink;

  /// Title to be displayed.
  ///
  /// Optional.
  core.String? socialTitle;

  SocialMetaTagInfo({
    this.socialDescription,
    this.socialImageLink,
    this.socialTitle,
  });

  SocialMetaTagInfo.fromJson(core.Map json_)
      : this(
          socialDescription: json_.containsKey('socialDescription')
              ? json_['socialDescription'] as core.String
              : null,
          socialImageLink: json_.containsKey('socialImageLink')
              ? json_['socialImageLink'] as core.String
              : null,
          socialTitle: json_.containsKey('socialTitle')
              ? json_['socialTitle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (socialDescription != null) 'socialDescription': socialDescription!,
        if (socialImageLink != null) 'socialImageLink': socialImageLink!,
        if (socialTitle != null) 'socialTitle': socialTitle!,
      };
}

/// Short Dynamic Link suffix.
class Suffix {
  /// Only applies to Option.CUSTOM.
  core.String? customSuffix;

  /// Suffix option.
  /// Possible string values are:
  /// - "OPTION_UNSPECIFIED" : The suffix option is not specified, performs as
  /// UNGUESSABLE .
  /// - "UNGUESSABLE" : Short Dynamic Link suffix is a base62 \[0-9A-Za-z\]
  /// encoded string of a random generated 96 bit random number, which has a
  /// length of 17 chars. For example, "nlAR8U4SlKRZw1cb2". It prevents other
  /// people from guessing and crawling short Dynamic Links that contain
  /// personal identifiable information.
  /// - "SHORT" : Short Dynamic Link suffix is a base62 \[0-9A-Za-z\] string
  /// starting with a length of 4 chars. the length will increase when all the
  /// space is occupied.
  /// - "CUSTOM" : Custom DDL suffix is a client specified string, for example,
  /// "buy2get1free". NOTE: custom suffix should only be available to managed
  /// short link creation
  core.String? option;

  Suffix({
    this.customSuffix,
    this.option,
  });

  Suffix.fromJson(core.Map json_)
      : this(
          customSuffix: json_.containsKey('customSuffix')
              ? json_['customSuffix'] as core.String
              : null,
          option: json_.containsKey('option')
              ? json_['option'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customSuffix != null) 'customSuffix': customSuffix!,
        if (option != null) 'option': option!,
      };
}
