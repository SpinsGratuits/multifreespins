import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GithubdicedreamCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'githubdicedream',
      apiUrl:
          'https://raw.githubusercontent.com/SpinsGratuits/mon-scraperDDream/refs/heads/main/scrapdicedreams.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listeboutonsdicedreams(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GithubdomninodreamCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'githubdomninodream',
      apiUrl:
          'https://raw.githubusercontent.com/SpinsGratuits/mon-scraperDomDreams/refs/heads/main/scrapdominodreams.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listeboutonsdominodreams(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GithubcoinmasterCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'githubcoinmaster',
      apiUrl:
          'https://raw.githubusercontent.com/SpinsGratuits/mon-scraperCoinMaster/refs/heads/main/scrapcoinmaster.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listeboutoncoinmaster(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GithubmonopolygoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'githubmonopolygo',
      apiUrl:
          'https://raw.githubusercontent.com/SpinsGratuits/mon-scraperMonopolyGo/refs/heads/main/scrapmonopolygo.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listeboutonsmonopolygo(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GithubpiggygoCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'githubpiggygo',
      apiUrl:
          'https://raw.githubusercontent.com/SpinsGratuits/mon-scraperPiggyGo/refs/heads/main/scrappiggygo.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listeboutonspiggygo(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GithubbingoblitzCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'githubbingoblitz',
      apiUrl:
          'https://raw.githubusercontent.com/SpinsGratuits/mon-scraperBingoBlitz/refs/heads/main/scrapbingoblitz.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listeboutonbingoblitz(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GithubmatchmastersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'githubmatchmasters',
      apiUrl:
          'https://raw.githubusercontent.com/SpinsGratuits/mon-scraperMatchMasters/refs/heads/main/scrapmatchmasters.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? listeboutonmatchmasters(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
