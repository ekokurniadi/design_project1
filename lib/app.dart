import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_pos/injector.dart';
import 'package:injectable/injectable.dart';

class App {
  const App._();

  static Future<void> init() async {
    await dotenv.load();
    await configureDependencies(environment: Environment.dev);
  }
}
