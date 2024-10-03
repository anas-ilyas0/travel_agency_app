import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class MobileNewLeadContainer {
  Widget mobileNewLeadContainer(String text) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0XFF4DA0B5),
          borderRadius: BorderRadius.circular(5)),
      height: 55,
      child: Padding(
        padding: const EdgeInsets.only(left: 9),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text,
              style: TextStyle(fontFamily: readexPro, color: Colors.white),
            )),
      ),
    );
  }
}
