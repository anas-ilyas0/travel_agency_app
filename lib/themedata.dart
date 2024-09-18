import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData myThemeData = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.background,
    ),
    scaffoldBackgroundColor: AppColor.background,
    fontFamily: 'ReadexPro-Light',
    textTheme: const TextTheme(),
  );
}
