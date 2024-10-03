import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class Textfield {
  Widget textFormField() {
    return Container(
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Add Here',
          hintStyle: TextStyle(
              color: Colors.grey, fontFamily: readexPro, fontSize: 13),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
