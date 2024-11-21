import 'package:flutter_pos/core/config/database/realm_database.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/injector.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App {
  const App._();
  static late RealmDatabase realm;
  static late SharedPreferences sharedPreferences;

  static Future<void> init() async {
    realm = getIt<RealmDatabase>();
    sharedPreferences = getIt<SharedPreferences>();
  }
}