import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData myThemeData = ThemeData(
    cardTheme: const CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shadowColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.background,
    ),
    scaffoldBackgroundColor: AppColor.background,
    fontFamily: 'ReadexPro-Light',
    textTheme: const TextTheme(),
  );
}
