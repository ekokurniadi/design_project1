import 'package:flutter/material.dart';

sealed class AppTheme {
  static ThemeData theme = ThemeData(
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
