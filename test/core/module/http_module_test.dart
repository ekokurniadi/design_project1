import 'package:dio/dio.dart';
import 'package:flutter_pos/core/helpers/dio_helper.dart';
import 'package:flutter_pos/core/module/http_module.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late MockHttpModule httpModule;

  setUp((){
    httpModule = MockHttpModule();
  });
  
  test('should return dio instance from http module', (){
     DioHelper.initialDio('');
     final dio = httpModule.dio;
     expect(dio, isA<Dio>());
  });
}

class MockHttpModule extends HttpModule{}