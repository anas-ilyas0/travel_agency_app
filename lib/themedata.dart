import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData myThemeData = ThemeData(
    dataTableTheme: DataTableThemeData(
      dividerThickness: 0.5,
      dataRowColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.lightBlue.shade100; // Softer color for selected rows
        }
        return Colors
            .grey.shade50; // Lighter color for data rows for a modern look
      }),
      dataRowMinHeight:
      48.0, // Slightly increased for better touch targets and readability
      dataTextStyle: const TextStyle(
        color: Colors.black, // Softer color for data text
        fontSize: 14.0, fontWeight: FontWeight.w400,
        fontFamily: "Poppin"
      ),

      headingRowHeight: 56.0, // Increased for visual hierarchy
      headingRowColor:
      MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return Colors.lightBlue.shade100; // Softer color for selected rows
        }
        return AppStrings.addLeadButtonColor
            ; // Lighter color for data rows for a modern look
      }),
      headingTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      ),
    ),

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
