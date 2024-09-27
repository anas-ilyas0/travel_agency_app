import 'package:flutter/material.dart';

class NavigationUtil {
  static void navigateAndRemoveUntil(
      {required BuildContext context, required Widget destinationScreen}) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => destinationScreen),
      (route) => false,
    );
  }

  static void navigatePush(
      {required BuildContext context, required Widget destinationScreen}) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => destinationScreen));
  }

    static void navigateAndReplace(
      {required BuildContext context, required Widget destinationScreen}) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => destinationScreen));
  }
}
