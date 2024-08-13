import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegistercustomerCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    String? confirmPassword = '',
    String? address = '',
    String? phone = '',
    bool? responSuccess,
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "password": "$password",
  "confirm_password": "$confirmPassword",
  "address": "$address",
  "phone": "$phone",
"success": $responSuccess

}''';
    return ApiManager.instance.makeApiCall(
      callName: 'registercustomer',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.address''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.phone''',
      ));
  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static String? userRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.role''',
      ));
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  static bool? responSuccess(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

class LogincustomerCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'logincustomer',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.address''',
      ));
  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static String? userRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.role''',
      ));
}

class DashboardCall {
  static Future<ApiCallResponse> call({
    String? dashboardtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'dashboard',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/dashboard',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $dashboardtoken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? userIdcustomer(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  static String? userrolecustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.role''',
      ));
  static String? namecustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.name''',
      ));
  static String? emailcustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  static String? addrrescustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.address''',
      ));
  static String? phonecustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.phone''',
      ));
  static dynamic totaltrashcustomer(dynamic response) => getJsonField(
        response,
        r'''$.data.total_trash''',
      );
  static String? ccmcustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.ccm''',
      ));
  static String? householdcustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.house_hold''',
      ));
  static String? wdbalancecustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.withdrawable_balance''',
      ));
  static String? holdbalancecustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.hold_balance''',
      ));
}

class HistoryCall {
  static Future<ApiCallResponse> call({
    String? historytoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'history',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule/history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $historytoken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? datahistory(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? numberorder(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].number_order''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? totalweight(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_weight''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? totalprice(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].total_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? pickupdate(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? pickuptime(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].pickup_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class LogoutcustomerCall {
  static Future<ApiCallResponse> call({
    String? authtoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logoutcustomer',
      apiUrl: 'https://stmik-banksampah.neumediradev.my.id/api/logout',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authtoken',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? messagelogout(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class StatusscheduleCall {
  static Future<ApiCallResponse> call({
    String? statusschedule = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'statusschedule',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $statusschedule',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatescheduleCall {
  static Future<ApiCallResponse> call({
    String? pickupTime = '',
    String? pickupDate = '',
    String? createscheduletoken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "pickup_time": "$pickupTime",
  "pickup_date": "$pickupDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createschedule',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $createscheduletoken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? successschedule(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  static String? messageschedule(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetstatusscheduleCall {
  static Future<ApiCallResponse> call({
    String? getstatustoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getstatusschedule',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $getstatustoken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? namecustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.customer''',
      ));
  static String? addresscustomer(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.address''',
      ));
  static String? statusorder(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.status''',
      ));
  static String? namedriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.driver''',
      ));
}

class HistorydetailCall {
  static Future<ApiCallResponse> call({
    String? detailhistorytoken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'historydetail',
      apiUrl:
          'https://stmik-banksampah.neumediradev.my.id/api/dashboard/schedule/history/1',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $detailhistorytoken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? iddriver(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].user_id_driver''',
      ));
  static String? numberorder(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].number_order''',
      ));
  static String? pickupdate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_date''',
      ));
  static String? pickuptime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].pickup_time''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].status''',
      ));
  static String? namedriver(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data[:].driver''',
      ));
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data[:].id''',
      ));
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
