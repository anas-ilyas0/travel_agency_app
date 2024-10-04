import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class InvoiceDetailPriceTable extends StatelessWidget {
  String? Text1;
  String? Text2;
  InvoiceDetailPriceTable({super.key, this.Text1, this.Text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.only(left: 6,top: 2,right: 6,bottom: 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Text('$Text1',
                  style: const TextStyle(fontSize: 16, fontFamily: 'Readex Pro')),
            ),
            // SizedBox(width:context.screenWidth*0.1 ,),
            Expanded(child: Align(
              alignment: Alignment.centerRight,
              child: Text('$Text2',
                  style:  TextStyle(fontSize: 12, color: const Color(0XFF000000),fontFamily: fontFamilys)),
            ), ),
           
          ],
        ),
      ),
    );
  }
}
