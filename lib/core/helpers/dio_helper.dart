import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pos/inspector.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_dio/sentry_dio.dart';

@injectable
class DioHelper {
  static late Dio dio;

  static void initialDio(String baseUrl) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(milliseconds: 60000),
        receiveTimeout: const Duration(milliseconds: 120000),
        contentType: 'application/json',
        responseType: ResponseType.json,
      ),
    );

    //add dio to sentry
    dio.addSentry();
  }

  static void setDioLogger(String baseUrl) {
    dio.interceptors.addAll([
      InterceptorsWrapper(
        onResponse: (response, responseInterceptorHandler) {
          log('${response.statusCode} - ${response.data.toString()}\n');
          return responseInterceptorHandler.next(response);
        },
        onRequest: (request, requestInterceptorHandler) {
          log(
            '''${request.method} - ${request.path} - ${request.data} - ${request.queryParameters}''',
          );
          return requestInterceptorHandler
              .next(request.copyWith(path: '${request.path}/'));
        },
        onError: (DioException error, errorInterceptor) async {
          log(error.message ?? 'Something went wrong');
          return errorInterceptor.next(error);
        },
      ),
      if (!kReleaseMode) alice.getDioInterceptor(),
    ]);
  }

  static setDioHeader(String? token) {
    dio.options.headers = {HttpHeaders.authorizationHeader: 'Bearer $token'};
    dio.options.headers['X-Requested-With'] = 'XMLHttpRequest';
    log('token user: $token');
  }

  static String exception(DioException e) {
    String message = 'Failed to process your request';
    // Handle DioError type-specific errors
    if (e.response != null) {
      log('DioError response status: ${e.response!.statusCode}');
      log('DioError response data: ${e.response!.data}');
      log('DioError response headers: ${e.response!.headers}');
      if (e.response?.statusCode == 500) {
        try {
          message = e.response?.data['data'] ?? 'Something went wrong';
        } catch (_) {
          message = e.response?.statusMessage ?? 'Something went wrong';
        }
      } else {
        if (e.response?.data != null) {
          try {
            message = e.response?.data['message'] ?? 'Something went wrong';
          } catch (_) {
            message = e.response?.statusMessage ?? 'Something went wrong';
          }
        }
      }
    } else {
      log('DioError: ${e.message}');
      message = e.message ?? 'Something went wrong';
    }
    return message;
  }
}
