import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class MobileLeadInvoicePerPaxContainer {
  Widget mobileLeadInvoicePerPaxContainer(String text) {
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
            child: Text(
              text,
              style: TextStyle(fontFamily: readexPro),
            )),
      ),
    );
  }
}
