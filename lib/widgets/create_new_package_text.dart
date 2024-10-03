// ignore_for_file: non_constant_identifier_names

import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class CreatePackageText {
  Widget CreateNewPackagetext(String textpackage) {
    return Text(
      textpackage,
      style: TextStyle(
          fontSize: 18,
          color: addLeadButtonColor,
          fontFamily: 'Readex Pro bold',
          fontWeight: FontWeight.w300),
    );
  }
}
