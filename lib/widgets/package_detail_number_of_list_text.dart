// ignore_for_file: non_constant_identifier_names, use_full_hex_values_for_flutter_colors

import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class PackageDetailNumberOfListTexts {
  Widget PackageDetailNumberOfListText(
      String TextNumberlist, BuildContext context) {
    return Container(
      height: context.screenHeight * 0.06,
      width: context.screenWidth * 0.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: const Color(0XFF70707033),
            width: 1,
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8),
        child: Text(
          TextNumberlist,
          style: const TextStyle(fontSize: 14, color: Color(0XFF8897AD)),
        ),
      ),
    );
  }
}
