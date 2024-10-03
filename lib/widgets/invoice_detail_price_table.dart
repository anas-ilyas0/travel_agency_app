// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class InvoiceDetailPriceTable extends StatelessWidget {
  String? text1;
  String? text2;
  InvoiceDetailPriceTable({super.key, this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text('$text1',
                style: const TextStyle(fontSize: 16, fontFamily: 'Readex Pro')),
          ),
          // SizedBox(width:context.screenWidth*0.1 ,),
          Text('$text2',
              style: const TextStyle(fontSize: 12, color: Color(0XFFD4D7E3))),
        ],
      ),
    );
  }
}
