import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_pos/common.dart';
import 'package:flutter_pos/core/logger/bloc_event_logger.dart';
import 'package:flutter_pos/injector.dart';
import 'package:flutter_pos/inspector.dart';
import 'package:injectable/injectable.dart';

class App {
  const App._();

  static Future<void> init() async {
    await dotenv.load();
    await configureDependencies(environment: Environment.dev);
    Bloc.observer = BlocEventLogger();

    if (kDebugMode) {
      alice.setNavigatorKey(navigatorKey);
    }
  }
}
