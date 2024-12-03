import 'package:flutter/material.dart';
import 'package:flutter_pos/core/config/envi/app_env.dart';

sealed class AppTheme {
  static ThemeData theme() {
    final appEnv = getAppEnv();

    switch (appEnv) {
      case AppEnv.shell:
        return ThemeData(
          useMaterial3: false,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
          fontFamily: 'Inter',
        );
      case AppEnv.bhp:
        return ThemeData(
          useMaterial3: false,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
          fontFamily: 'Poppins',
        );
      default:
        return ThemeData(
          useMaterial3: false,
          pageTransitionsTheme: const PageTransitionsTheme(
            builders: {
              TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            },
          ),
          fontFamily: 'Inter',
        );
    }
  }
}
