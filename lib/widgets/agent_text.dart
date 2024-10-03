import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class AgentText {
  Widget agentText(String text, double fontSize) {
    return Text(text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w300,
            fontFamily: readexPro));
  }
}
