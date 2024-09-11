import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: appBackgroundColor),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple, background: appBackgroundColor),
      useMaterial3: true,
    );
  }
}
