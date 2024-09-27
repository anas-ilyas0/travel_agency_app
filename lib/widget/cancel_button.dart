import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';
class CancelButton {
  Widget cancelButton(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Text(
          'Cancel',
          style: TextStyle(
              color: mobileLeadText1Color,
              fontFamily: readexPro,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}