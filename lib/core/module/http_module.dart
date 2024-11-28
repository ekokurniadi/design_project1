import 'package:dio/dio.dart';
import 'package:flutter_pos/core/helpers/dio_helper.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HttpModule {
  @lazySingleton
  Dio get dio => DioHelper.dio;
}
