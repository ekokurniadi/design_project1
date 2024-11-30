import 'package:flutter/material.dart';

sealed class AppTextStyles {
  static const headline1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const bodyText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
}
