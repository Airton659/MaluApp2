import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class BuscarProdutosCall {
  static Future<ApiCallResponse> call({
    String? search = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Buscar produtos',
      apiUrl:
          'https://aijyuoiinihnwlsbiusw.supabase.co/rest/v1/produtos?or=(name.ilike.%$search%)',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFpanl1b2lpbmlobndsc2JpdXN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NTkwMDAsImV4cCI6MjA0MDUzNTAwMH0.F_ETAExvzUTTKh5YuK8o--DYJQdWBBdCf10BzEv-y9c',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFpanl1b2lpbmlobndsc2JpdXN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NTkwMDAsImV4cCI6MjA0MDUzNTAwMH0.F_ETAExvzUTTKh5YuK8o--DYJQdWBBdCf10BzEv-y9c',
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

class NovabuscaCall {
  static Future<ApiCallResponse> call({
    String? filtro = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'novabusca',
      apiUrl:
          'https://aijyuoiinihnwlsbiusw.supabase.co/rest/v1/view_produtos?name=ilike.*$filtro*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFpanl1b2lpbmlobndsc2JpdXN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NTkwMDAsImV4cCI6MjA0MDUzNTAwMH0.F_ETAExvzUTTKh5YuK8o--DYJQdWBBdCf10BzEv-y9c',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFpanl1b2lpbmlobndsc2JpdXN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQ5NTkwMDAsImV4cCI6MjA0MDUzNTAwMH0.F_ETAExvzUTTKh5YuK8o--DYJQdWBBdCf10BzEv-y9c',
        'Range': '0-9',
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
