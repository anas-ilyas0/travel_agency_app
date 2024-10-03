import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class AgentFormText {
  Widget agentFormText(String text, double fontSize) {
    return Expanded(
      child: Text(text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w300,
              fontFamily: readexPro)),
    );
  }
}
