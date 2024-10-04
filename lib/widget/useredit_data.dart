import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/material.dart';

import '../AppColor/app_color.dart';
import '../consts/consts.dart';

class UserEditData extends StatelessWidget {
  String text;  VoidCallback onTap;
   UserEditData({super.key,required this.text,  required this.onTap});

  @override
  Widget build(BuildContext context) {
     return Container(
      width: 100 * context.screenWidth / 400,
      decoration: BoxDecoration(
          color: AppColor.customdropdownColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))),
      child: TextFormField(
        onTap: onTap,
        readOnly: true,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              color: AppColor.hintColor,
              fontFamily: fontFamilys,
              fontSize: 15),
          suffixIcon: const Icon(Icons.add_box_rounded),
          suffixIconColor: AppColor.buttonTextColor,
          contentPadding:
          const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
