import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();
  static Color primaryColor = const Color(0xff0A192F);
  static Color secondaryColor = const Color(0xff48E1EC);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color blackGrey = const Color.fromARGB(255, 39, 39, 39);
  static Color backgroundBlack = const Color(0xff0A192F);
  static Color backgroundWhite = const Color.fromARGB(255, 255, 255, 255);
  static Color backgroundGray = const Color.fromARGB(255, 240, 240, 240);
  static const primary = Color(0xFF1565c0);
  static const dark = Color(0xFF000a12);
  static const darkLight = Color(0xFF102027);

  static MaterialColor primarySwatch = const MaterialColor(
    0xFF179F8B,
    {
      50: Color(0xFFE9FCF9),
      100: Color(0xFFD2F9F3),
      200: Color(0xFF101242),
      300: Color(0xFF79ECDB),
      400: Color(0xFF4DE5CE),
      500: Color(0xFF179F8B),
      600: Color(0xFF1AB29B),
      700: Color(0xFF138675),
      800: Color(0xFF0D594E),
      900: Color(0xFF062D27),
    },
  );
}
