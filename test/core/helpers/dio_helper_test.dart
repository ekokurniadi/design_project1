import 'dart:io';

import 'package:alice/core/alice_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_pos/core/helpers/dio_helper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../mocks.mocks.dart';

void main() {
  late MockDio dio;

  const baseUrl = 'https://example.com';

  setUp(() {
    dio = MockDio();
    DioHelper.dio = dio;
    DioHelper.initialDio(baseUrl);
  });

  test('should initiate dio with correct base url and options', () {
    expect(DioHelper.dio.options.baseUrl, baseUrl);
  });

  test('should add interceptor on calling setDioLogger', () {
    DioHelper.setDioLogger(baseUrl);
    expect(DioHelper.dio.interceptors.length, greaterThan(0));
    expect(DioHelper.dio.interceptors, contains(isA<AliceDioInterceptor>()));
  });

  test('should set dio token with bearer with correct value', () {
    DioHelper.setDioHeader('token');
    final headers = {
      HttpHeaders.authorizationHeader: 'Bearer token',
      'content-type': 'application/json',
    };

    expect(DioHelper.dio.options.headers, headers);
  });

  group('interceptor', () {
    test('on response', () async {
      DioHelper.initialDio(baseUrl);
      final response = Response(
        requestOptions: RequestOptions(path: '/test'),
        data: 'Success',
      );
      when(
        dio.get(
          '/test',
          data: {
            'name': 'joko',
          },
        ),
      ).thenAnswer((_) async => response);

      await dio.get('/test', data: {'name': 'joko'});
    });
  });
}
