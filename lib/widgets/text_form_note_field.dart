import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widgets/capitalized_first_letter.dart';
import 'package:flutter/material.dart';

class TextFormNoteField {
  Widget textFormNoteField(String hintText, int maxLines, double width) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))),
      child: TextFormField(
        inputFormatters: [CapitalizeFirstLetterInputFormatter()],
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              TextStyle(color: greyColor, fontFamily: readexPro, fontSize: 13),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
