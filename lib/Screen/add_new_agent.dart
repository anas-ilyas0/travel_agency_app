import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avester.dart';
import 'package:flutter/material.dart';

class AddNewAgent extends StatelessWidget {
  const AddNewAgent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: context.screenHeight*0.02,
            ),
           BackButtonAverter(text1: 'Add New Agent',),
           Divider(),
           Padding(
            padding: EdgeInsets.only(left: 90,right: 90),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: context.screenHeight*0.05,),
             Align(alignment: Alignment.centerLeft,
              child: Text('Agent Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'Readex Pro'),)),
             SizedBox(height: context.screenHeight*0.06,),
           Align(
            alignment: Alignment.centerLeft,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
               Row(
                 children: [
                   Container(
                    height: context.screenHeight*0.22,
                    width: context.screenWidth*0.12,
                    color: Colors.white,
                   ),
                      SizedBox(
                width: context.screenWidth*0.01,
               ),
               ElevatedButton(onPressed: () {
          
        }, 
         style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0XFF11345A),
        minimumSize: Size(context.screenWidth*0.14, context.screenHeight*0.09)),
        
        child:  Row(
                mainAxisSize: MainAxisSize.min, // Make Row as wide as the content
                children: [
                  Icon(Icons.file_upload_outlined,
                  color: Colors.white,), // Icon
                  SizedBox(width: 8), // Space between icon and text
                  Text('Upload Image',style: TextStyle(color: Colors.white),), // Text
                ],
              ),)
                 ],
               ),
               SizedBox(
                height: context.screenHeight*0.3,
                width: context.screenWidth*0.2,
                child: Image.asset('${ImagesAssets.imagePath}XMLID.png'))
            
               ],
              
             ),
           ),
           SizedBox(
            height: context.screenHeight*0.05,

           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               AddNewAgentTitelAndDescription(text1: 'First Name', text2: 'Add Here'),
                AddNewAgentTitelAndDescription(text1: 'Last Name', text2: 'Add Here'),
                 AddNewAgentTitelAndDescription(text1: 'Phone Number', text2: 'Add Here'),
             ],
           ),
         
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AddNewAgentTitelAndDescription(text1: 'E-Mail', text2: 'Add Here'),
                 AddNewAgentTitelAndDescription(text1: 'Password', text2: 'Add Here'),
                  AddNewAgentTitelAndDescription(text1: 'Location', text2: 'Add Here'),
              ],
            ),
            SizedBox(
              height: context.screenHeight*0.25,
            ),
         Row(
           children: [
             SizedBox(
                   height: 45,
                   width: 140,
                   child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFFD5D5D5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                
              },
              child: Text(
                'Cancle',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),
              
              )),
                 ),
                 SizedBox(
                  width: context.screenWidth*0.02,
                 ),
                 SizedBox(
                   height: 45,
                   width: 140,
                   child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFF83D0E3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                
              },
              child: Text(
                'Save',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),
              
              )),
                 ),
           ],
         ),
         SizedBox(
          height: context.screenHeight*0.2,
         )
           
              ],
             ),
           )
          ],
        ),
      ),
    );
  }
}