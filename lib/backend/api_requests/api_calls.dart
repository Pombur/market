import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SearchAPICall {
  static Future<ApiCallResponse> call({
    String? searchQuery = '',
  }) async {
    final ffApiRequestBody = '''
{
  "params": "query=$searchQuery"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SearchAPI',
      apiUrl: 'https://VZ6AIGOLD2-dsn.algolia.net/1/indexes/products/query',
      callType: ApiCallType.POST,
      headers: {
        'X-Algolia-API-Key': '35f40ce7bc7ce836f9a229b364393373',
        'X-Algolia-Application-Id': 'VZ6AIGOLD2',
        'Content-type': 'aplication/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? resultList(dynamic response) => getJsonField(
        response,
        r'''$.hits''',
        true,
      ) as List?;
  static dynamic numberOfHits(dynamic response) => getJsonField(
        response,
        r'''$.nbHits''',
      );
}

class SearchUSERCall {
  static Future<ApiCallResponse> call({
    String? searchUser = '',
  }) async {
    final ffApiRequestBody = '''
{
  "params": "query=$searchUser"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SearchUSER',
      apiUrl: 'https://VZ6AIGOLD2-dsn.algolia.net/1/indexes/User/query',
      callType: ApiCallType.POST,
      headers: {
        'X-Algolia-API-Key': '35f40ce7bc7ce836f9a229b364393373',
        'X-Algolia-Application-Id': 'VZ6AIGOLD2',
        'Content-type': 'aplication/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? resultUserList(dynamic response) => getJsonField(
        response,
        r'''$.hits''',
        true,
      ) as List?;
  static dynamic result(dynamic response) => getJsonField(
        response,
        r'''$.nbHits''',
      );
}

class WellsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'wells',
      apiUrl:
          'https://kctvhrmzireulhshjrqh.supabase.co/rest/v1/wells?select=*\'',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtjdHZocm16aXJldWxoc2hqcnFoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMTQwNTgsImV4cCI6MjAxMzg5MDA1OH0.CP5hwQIu5O4HcaNtKNREEq2-qVRIfWfDQi8co2Y9gMo',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtjdHZocm16aXJldWxoc2hqcnFoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgzMTQwNTgsImV4cCI6MjAxMzg5MDA1OH0.CP5hwQIu5O4HcaNtKNREEq2-qVRIfWfDQi8co2Y9gMo',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? poi(dynamic response) => (getJsonField(
        response,
        r'''$[:].poi''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? static(dynamic response) => getJsonField(
        response,
        r'''$[:].StaticLwL''',
        true,
      ) as List?;
  static List<String>? filtr(dynamic response) => (getJsonField(
        response,
        r'''$[:].Fltr_Type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? dinamic(dynamic response) => getJsonField(
        response,
        r'''$[:].dinamicLvL''',
        true,
      ) as List?;
  static List<String>? adres(dynamic response) => (getJsonField(
        response,
        r'''$[:].adres''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? debit(dynamic response) => (getJsonField(
        response,
        r'''$[:].debit''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? type(dynamic response) => getJsonField(
        response,
        r'''$[:].type''',
        true,
      ) as List?;
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].descript''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? userid(dynamic response) => (getJsonField(
        response,
        r'''$[:].user''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GeocodeCall {
  static Future<ApiCallResponse> call({
    String? geocode = '134.854, -25.828',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Geocode',
      apiUrl:
          'https://geocode-maps.yandex.ru/1.x/?apikey=94bb227a-f063-4544-a825-3141b21ccfc6',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'geocode': geocode,
        'result': 1,
        'format': "json",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? addressss(dynamic response) => (getJsonField(
        response,
        r'''$.response.GeoObjectCollection.featureMember[:].GeoObject.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GoogleSheetsCall {
  static Future<ApiCallResponse> call({
    String? adres = '',
    String? debit = '',
    String? user = '',
    String? location = '',
  }) async {
    final ffApiRequestBody = '''
{
  "entry.648571491": "$adres",
  "entry.1481308283": "$debit",
  "entry.1038701574": "$user",
  "entry.1483754179": "$location"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GoogleSheets',
      apiUrl:
          'https://docs.google.com/forms/d/e/1FAIpQLSc3tyupksOD79esWtNwB6D-Xckkl8ieq-MaiaRyoP4Q8keAWA/formResponse?&submit=Submit?usp=pp_url',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FirebaseAuthCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? key = '',
    String? token = '',
    bool? returnSecureToken = true,
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "returnSecureToken": "$token"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'firebaseAuth',
      apiUrl:
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyAih9WRYftQX0wi5rvHj3lQ3ApJHBFd3BQ',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
