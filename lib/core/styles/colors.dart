import 'package:flutter/material.dart';

sealed class AppColors {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const ronposGreen = Color(0xFF39B54A);
  static const ronposGreen1 = Color(0xFF009245);
  static const ronposGreen2 = Color(0xFF005327);
  static const ronposGreen3 = Color(0xFF012C15);
  static const ronposLime = Color(0xFFA5D542);
  static const ronposOrange = Color(0xFFFBB03B);
  static const ronposAccent = Color(0xFFECECEC);
  static const ronposGreenGradient = LinearGradient(
    colors: [
      Color(0xFF33AA87),
      Color(0xFF65F078),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
  static const shellYellow = Color(0xFFFBCE07);
  static const shellYellowCorporate = Color(0xFFFFD500);
  static const shellRed = Color(0xFFDD1D21);
  static const shellDarkBlue = Color(0xFF003C88);
  static const shellMidBlue = Color(0xFF009EB4);
  static const shellLightBlue = Color(0xFF89CFDC);
  static const shellDarkGreen = Color(0xFF008443);
  static const shellLightGreen = Color(0xFFBED50F);
  static const shellOrange = Color(0xFFEB8705);
  static const shellBrown = Color(0xFF743410);
  static const shellSand = Color(0xFFFFEAC2);
  static const shellPurple = Color(0xFF641964);
  static const shellLilac = Color(0xFFBA95BE);
  static const bhpOrange = Color(0xFFF26522);
  static const slate400 = Color(0xFFA6AEBB);
  static const yellow400 = Color(0xFFFFC400);
}
