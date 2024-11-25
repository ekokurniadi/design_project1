import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_pos/injector.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';


/// Call setup when you need to using dependency injection
/// and reading the variable from env files
class TestModule {
  static Future<void> setup() async {
    SharedPreferences.setMockInitialValues({});
    await dotenv.load();
    await configureDependencies(environment: Environment.dev);
  }
}
