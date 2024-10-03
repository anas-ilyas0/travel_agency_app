import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class AuthButtons {
  Widget authButtons(String text, VoidCallback onPress, FontWeight fontWeight,
      Color backgroundColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: double.infinity,
        height: 45,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                backgroundColor: backgroundColor),
            onPressed: onPress,
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: readexPro,
                  fontSize: 16,
                  fontWeight: fontWeight),
            )),
      ),
    );
  }
}
