import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_pos/injector.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

sealed class TestHelper {
  static Future<void> setupAll() async {
  SharedPreferences.setMockInitialValues({});
  await dotenv.load();
  await configureDependencies(environment: Environment.dev);
}
}


