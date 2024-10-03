import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class MobileLeadInvoiceDetailsContainer {
  Widget mobileLeadInvoiceDetailsContainer(String text1, String text2) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: greyColor.withOpacity(0.3)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)),
      height: 62,
      child: Padding(
        padding: const EdgeInsets.only(left: 9),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      fontFamily: readexPro, color: mobileLeadText1Color),
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontFamily: readexPro,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
