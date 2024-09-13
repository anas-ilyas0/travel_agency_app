import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData myThemeData = ThemeData(
    appBarTheme: AppBarTheme(color: appBackgroundColor),
    colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue, background: appBackgroundColor),
    fontFamily: 'ReadexPro-Light', // Custom font
    textTheme: const TextTheme(),
  );
}
