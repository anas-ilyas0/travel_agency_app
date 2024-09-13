import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class InvoiceDetailPriceTable extends StatelessWidget {
    String? Text1;
    String? Text2;
   InvoiceDetailPriceTable({super.key, this.Text1,this.Text2});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$Text1',style: TextStyle(fontSize: 36,fontFamily: 'Readex Pro' )),
         // SizedBox(width:context.screenWidth*0.1 ,),
           Text('$Text2',style: TextStyle(fontSize: 12,color: Color(0XFFD4D7E3) )), 
        ],
        
      ),
    );
  }
}
