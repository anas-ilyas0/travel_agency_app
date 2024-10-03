import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class MobileDashboardContainerField {
  Widget mobileDashboardContainerField(
      String image, String text, String numbers, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(color: greyColor.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(7)),
            child: Center(
              child: Image(
                width: 30,
                height: 30,
                image: AssetImage(image),
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontFamily: readexPro,
                  fontWeight: FontWeight.w400,
                  color: color,
                  fontSize: 15,
                ),
              ),
              Text(
                numbers,
                style: TextStyle(
                  fontFamily: readexPro,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          trailing: GestureDetector(
            onTap: onTap,
            child: Image(
                height: 15, image: AssetImage('${imageUrl}forward_icon.png')),
          ),
        ),
      ],
    );
  }
}
