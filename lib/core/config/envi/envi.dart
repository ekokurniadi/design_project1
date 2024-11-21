import 'package:flutter_dotenv/flutter_dotenv.dart';

class Envi {
  const Envi._();

  static String getString(String key) {
    return dotenv.get(key);
  }

  static bool getBool(String key) {
    return dotenv.getBool(key);
  }

  static double getDouble(String key) {
    return dotenv.getDouble(key);
  }

  static int getInt(String key) {
    return dotenv.getInt(key);
  }

  static String? getStringNullable<T>(String key) {
    return dotenv.maybeGet(key);
  }
}