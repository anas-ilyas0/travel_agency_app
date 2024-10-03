import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class ROW {
  Widget row(String firstText, String secondText) {
    return Row(
      children: [
        Expanded(
          child: Text(
            firstText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: readexPro,
            ),
          ),
        ),
        Expanded(
          child: Text(
            secondText,
            style: TextStyle(
              fontFamily: readexPro,
            ),
          ),
        ),
        const SizedBox(height: 7),
      ],
    );
  }
}
