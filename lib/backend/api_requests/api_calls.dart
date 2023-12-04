import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static EnviarMensajeCompletoCall enviarMensajeCompletoCall =
      EnviarMensajeCompletoCall();
}

class EnviarMensajeCompletoCall {
  Future<ApiCallResponse> call({
    String? apiKey = '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',
    dynamic promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": $prompt
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Enviar mensaje completo',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End OpenAI ChatGPT Group Code

class CrearPdfCall {
  static Future<ApiCallResponse> call({
    String? fechaRegistro = '',
  }) async {
    final ffApiRequestBody = '''
{
  "template_id": "f5d77b238e1ee848",
  "export_type": "json",
  "expiration": 10,
  "output_file": "my_new.pdf",
  "data": {
    "orders": [
      {
        "x": "$fechaRegistro",
        "y": 100
      },
      {
        "x": "Feb",
        "y": 200
      },
      {
        "x": "Mar",
        "y": 300
      }
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Crear pdf',
      apiUrl: 'https://api.craftmypdf.com/v1/create',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-API-KEY': '0b24NzY5MDo3NzE5OnZQaHA3a2hyNjhDd3hPVjc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.file''',
      );
}

class ConexionWithMakeCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "Nombre": "Alex",
  "RegistroPeso": 1,
  "RegistroGlucemia": 1,
  "RegistroPresionSist": 1,
  "RegistroPresionDiast": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ConexionWithMake',
      apiUrl: 'https://hook.us1.make.com/3oo0yecskbddjpodailhx9fh35ep79sk',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
