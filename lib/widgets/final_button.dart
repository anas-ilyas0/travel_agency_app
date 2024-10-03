import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class FinalButton {
  Widget finalButton(String text, Color backgroundColor, VoidCallback onPress) {
    return SizedBox(
      height: 45,
      width: 140,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: onPress,
          child: Text(
            text,
            style:
                TextStyle(fontFamily: readexPro, color: finalButtonTextColor),
          )),
    );
  }
}
