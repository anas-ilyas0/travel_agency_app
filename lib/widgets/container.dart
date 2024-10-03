import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class ContainerField {
  Widget containerfield(
      String title, String numbers, String assetImage, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        width: context.screenWidth * 0.2,
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.blue.withOpacity(0.2))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                        fontFamily: readexPro,
                        fontSize: 13),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    numbers,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: readexPro,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage(assetImage),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
