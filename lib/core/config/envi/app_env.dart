import 'package:flutter_pos/core/config/envi/envi.dart';
import 'package:flutter_pos/injector.dart';

enum AppEnv {
  shell,
  bhp,
  ph,
  shellsg,
}

AppEnv getAppEnv() {
  final appEnv = getIt<Envi>().getString('APP_ENV');
  return AppEnv.values.byName(appEnv.replaceAll('_', '').toLowerCase());
}
