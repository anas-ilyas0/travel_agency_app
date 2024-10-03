// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class PackageTextNameList {
  Widget PackageTextNamelist(String nameListText) {
    return Text(
      nameListText,
      style: const TextStyle(
          fontSize: 18,
          fontFamily: 'Readex Pro bold',
          fontWeight: FontWeight.w300,
          color: Colors.black),
    );
  }
}
