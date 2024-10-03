// ignore_for_file: must_be_immutable

import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class AddNewAgentTitleAndDescription extends StatelessWidget {
  String? text1;
  String? text2;
  AddNewAgentTitleAndDescription(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight * 0.15,
      width: context.screenWidth * 0.2,
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '$text1',
                style: const TextStyle(fontSize: 16, fontFamily: 'Readex Pro'),
              )),
          TextField(
              decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText: '$text2',
            hintStyle: TextStyle(color: AppColor.hintColor, fontSize: 14),
            enabledBorder: const OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(12)), // Rounded corners
              borderSide: BorderSide(color: Color(0XFFD4D7E3), width: 1),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(12)), // Rounded corners
              borderSide: BorderSide(color: Color(0XFFD4D7E3), width: 1),
            ),
            border: const OutlineInputBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(12)), // Rounded corners
              borderSide: BorderSide(color: Color(0XFFD4D7E3), width: 1),
            ),
          )),
        ],
      ),
    );
  }
}
