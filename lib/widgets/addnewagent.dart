import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class AddNewAgentTitelAndDescription extends StatelessWidget {
  String? text1;
  String? text2;
   AddNewAgentTitelAndDescription({super.key,required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.15,
      width: context.screenWidth * 0.2,
      child: Column(
        children: [Align(alignment: Alignment.centerLeft,
          child: Text('$text1',style: TextStyle(fontSize: 16,fontFamily: 'Readex Pro'),)),
       TextField(
  decoration: InputDecoration(
    fillColor: Colors.white, 
    filled: true, 
    hintText: '$text2', 

enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
      borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 2
      
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
      borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 2
      
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
      borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 2
      
      ),
    ),

  )
       ),
        ],
      ),
    );
  }
}
