import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class EditDelContainer {
  Widget editDelContainer(VoidCallback onPress) {
    return Container(
      decoration: BoxDecoration(
          color: editDelContainerColor,
          border: Border.all(color: addLeadButtonColor),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: onPress, icon: const Icon(Icons.edit), color: color),
          const VerticalDivider(
            thickness: 0.8,
            indent: 5,
            endIndent: 5,
          ),
          IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage('${imageUrl}delImage.png')),
              color: color),
        ],
      ),
    );
  }
}