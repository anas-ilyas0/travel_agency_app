import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class InvoiceDetailPriceTable extends StatelessWidget {
    String? Text1;
    String? Text2;
   InvoiceDetailPriceTable({super.key, this.Text1,this.Text2});
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text('$Text1',style: const TextStyle(fontSize: 16,fontFamily: 'Readex Pro' )),
          ),
         // SizedBox(width:context.screenWidth*0.1 ,),
           Text('$Text2',style: const TextStyle(fontSize: 12,color: Color(0XFFD4D7E3) )), 
        ],
        
      ),
    );
  }
}
