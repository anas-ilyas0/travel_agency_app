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
    popupMenuTheme: PopupMenuThemeData(
      color: Colors.white,
      textStyle: TextStyle(color: Colors.black),
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    scaffoldBackgroundColor: AppColor.background,
    fontFamily: 'ReadexPro-Light',
    textTheme: const TextTheme(),
  );
}
