import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_pos/core/logger/logger.dart';
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
        // coverage:ignore-start
        onResponse: (response, responseInterceptorHandler) {
          Logger.log('${response.statusCode} - ${response.data.toString()}\n');
          return responseInterceptorHandler.next(response);
        },
        onRequest: (request, requestInterceptorHandler) {
          Logger.log(
            '''${request.method} - ${request.path} - ${request.data} - ${request.queryParameters}''',
          );
          return requestInterceptorHandler
              .next(request.copyWith(path: '${request.path}/'));
        },
        onError: (DioException error, errorInterceptor) async {
          Logger.log(error.message ?? 'Something went wrong');
          return errorInterceptor.next(error);
        },
        // coverage:ignore-end
      ),
      if (!kReleaseMode) alice.getDioInterceptor(),
    ]);
  }

  static setDioHeader(String? token) {
    dio.options.headers = {HttpHeaders.authorizationHeader: 'Bearer $token'};
    Logger.log('token user: $token');
  }
}
