import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@singleton
class Envi {
  String getString(String key) {
    return dotenv.get(key);
  }

  bool getBool(String key) {
    return dotenv.getBool(key);
  }

  double getDouble(String key) {
    return dotenv.getDouble(key);
  }

  int getInt(String key) {
    return dotenv.getInt(key);
  }

  String? getStringNullable<T>(String key) {
    return dotenv.maybeGet(key);
  }
}
