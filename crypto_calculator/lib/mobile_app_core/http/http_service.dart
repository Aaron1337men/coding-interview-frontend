import 'dart:io';

import 'package:dio/dio.dart';

class HttpService {
  Dio? dio;

  HttpService();

  final Dio _client = Dio(
    BaseOptions(
      responseType: ResponseType.plain,
      receiveTimeout: const Duration(seconds: 10),
      connectTimeout: const Duration(seconds: 10),
    ),
  );

  Future<Response> get({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? arguments,
    String v = '',
    String? differentBaseUrl,
    Options? options,
    String? xuserId,
    String? xUserLanguage,
  }) async {
    try {
      String uri = endpoint;

      return await _client.get(
        uri,
        queryParameters: arguments,
        options: Options(
            responseType: ResponseType.plain,
            headers:
                headers ?? {HttpHeaders.contentTypeHeader: 'application/json'}),
      );
    } catch (error) {
      rethrow;
    }
  }

  Future<Response> post({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    String? differentBaseUrl,
    Options? options,
    String? xuserId,
  }) async {
    String uri = endpoint;

    return await _client.post(
      uri,
      data: body,
      options: Options(
          responseType: ResponseType.plain,
          headers:
              headers ?? {HttpHeaders.contentTypeHeader: 'application/json'}),
    );
  }

  Future<Response> put({
    required String endpoint,
    Map<String, String>? headers,
    Map<String, dynamic>? arguments,
    String? differentBaseUrl,
    String body = '',
    String? xuserId,
  }) async {
    String uri = endpoint;

    return await _client.put(
      uri,
      data: body,
      options: Options(
          responseType: ResponseType.plain,
          headers:
              headers ?? {HttpHeaders.contentTypeHeader: 'application/json'}),
      queryParameters: arguments,
    );
  }
}
