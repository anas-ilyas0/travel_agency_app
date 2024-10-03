import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class CircularAvatar {
  Widget circularAvatar(double padding,
      {String? text, String? backgroundImage}) {
    return Row(
      children: [
        if (text != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 17, fontFamily: readexPro),
            ),
          ),
        Padding(
          padding: EdgeInsets.only(right: padding),
          child: CircleAvatar(
            backgroundImage:
                backgroundImage != null ? AssetImage(backgroundImage) : null,
            radius: 15,
            child: backgroundImage == null
                ? const Icon(Icons.person, color: Colors.white)
                : null,
          ),
        ),
      ],
    );
  }
}
