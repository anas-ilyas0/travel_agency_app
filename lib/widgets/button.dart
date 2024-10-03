import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class Button {
  Widget button(String text, VoidCallback onPress, BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.066,
      width: context.screenWidth * 0.13,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0XFF83D0E3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 14,
              color: AppColor.buttonTextColor,
              fontFamily: readexPro),
        ),
      ),
    );
  }
}
