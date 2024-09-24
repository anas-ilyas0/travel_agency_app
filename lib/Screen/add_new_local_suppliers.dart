import 'dart:math';

import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avatar.dart';
import 'package:flutter/material.dart';

class AddNewLocalSupplier extends StatelessWidget {
  const AddNewLocalSupplier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             SizedBox(
              height: context.screenHeight * 0.02,
            ),
            BackButtonAvatar(text1: 'Add New Local Supplier',),
            const Divider(),
           Padding(padding: const EdgeInsets.only(left: 90,right: 90),
           child: 
           Column(
            children: [
               SizedBox(height: context.screenHeight*0.02,),
                 Align(alignment: Alignment.centerLeft,
                child: Text('Local Suppler Details',style: TextStyle(fontSize: 23,color: AppColor.addnewagent,fontFamily: fontFamilys,fontWeight: FontWeight.w600),)),
               SizedBox(height: context.screenHeight*0.01,),
               Align(
              alignment: Alignment.centerLeft,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                 Row(
                   children: [
                     Container(
                      height: context.screenHeight*0.25,
                      width: context.screenWidth*0.12,
                    decoration: BoxDecoration( color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColor.borderColor,width: 0.5)),
                     ),
                        const SizedBox(
                  width: 10,
                 ),
                 Column(
                  mainAxisAlignment:  MainAxisAlignment.center,
                   children: [
                     Text('Company Logo',style: TextStyle(fontFamily: fontFamilys,fontWeight: FontWeight.w400,fontSize: 15),),
                     ElevatedButton(onPressed: () {
                                 
                               }, 
                                style: ElevatedButton.styleFrom(
                                 minimumSize: Size(160, 48),
                                 padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                               backgroundColor: const Color(0XFF11345A),
                               ),
                               
                               child:  const Row(
                                   // Make Row as wide as the content
                      children: [
                        Icon(Icons.file_upload_outlined,
                        color: Colors.white,size: 15,), // Icon
                        SizedBox(width: 5,),
                        // Space between icon and text
                        Text('Upload Image',style: TextStyle(color: Colors.white,fontSize: 12),), // Text
                      ],
                                     ),
                                     ),
                   ],
                 ),
                SizedBox(width: context.screenWidth*0.02,),
                 Container(
                      height: context.screenHeight*0.25,
                      width: context.screenWidth*0.12,
                     decoration: BoxDecoration( color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: AppColor.borderColor,width: 0.5)),
                     ),
                        SizedBox(
                  width: context.screenWidth*0.01,
                 ),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Text('Supplier Logo',style: TextStyle(fontFamily: fontFamilys,fontWeight: FontWeight.w400,fontSize: 15),),
                     ElevatedButton(onPressed: () {
                                 
                               }, 
                                style: ElevatedButton.styleFrom(
                                 minimumSize: Size(160, 48),
                               backgroundColor: const Color(0XFF11345A),
                                padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                               ),
                               
                               child:  const Row(
                      mainAxisSize: MainAxisSize.min, // Make Row as wide as the content
                      children: [
                        Icon(Icons.file_upload_outlined,size: 15,
                        color: Colors.white,), // Icon
                        SizedBox(width: 8), // Space between icon and text
                        Text('Upload Image',style: TextStyle(color: Colors.white,fontSize: 12),), // Text
                      ],
                                     ),),
                   ],
                 )
                   ],
                 ),
                 SizedBox(
                  height: context.screenHeight*0.3,
                  width: context.screenWidth*0.2,
                  child: Image.asset('${ImagesAssets.imagePath}XMLID.png'))
              
                 ],
                
               ),
             ),
             const Divider(),
             SizedBox(
              height: context.screenHeight*0.03,
             ),
               Align(alignment: Alignment.centerLeft,
                child: Text('Bank Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: fontFamilys,fontWeight: FontWeight.w600),)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AddNewAgentTitlelAndDescription(text1: 'Bank Name', text2: 'Summit National Bank'),
                 SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitlelAndDescription(text1: 'Bank Account', text2: 'Checking Account'),
                  SizedBox(width: context.screenWidth*0.01,),
                   AddNewAgentTitlelAndDescription(text1: 'Bank address', text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'),
               ],
             ),
              SizedBox(
              height: context.screenHeight*0.015,
             ),
        
             const Divider(),
               SizedBox(
              height: context.screenHeight*0.03,
             ),
               Align(alignment: Alignment.centerLeft,
                child: Text('Company Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: fontFamilys,fontWeight: FontWeight.w600),)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AddNewAgentTitlelAndDescription(text1: 'Supplier Company Name', text2: 'John Doe'),
                 SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitlelAndDescription(text1: 'Supplier Company Address', text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'),
                 
               ],
             ),
              SizedBox(
              height: context.screenHeight*0.015,
             ),
        const Divider(),
         SizedBox(
              height: context.screenHeight*0.03,
             ),
                Align(alignment: Alignment.centerLeft,
                child: Text('Supplier Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: fontFamilys),)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AddNewAgentTitlelAndDescription(text1: 'Supplier Name', text2: 'John Doe'),
                 SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitlelAndDescription(text1: 'Supplier Address', text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'),
                   SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitlelAndDescription(text1: 'E-mail', text2: 'john.smith@gmail.com'),
                 
               ],
             ),
             const SizedBox(
              height: 8,

             ),
                Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AddNewAgentTitlelAndDescription(text1: 'Phone Number', text2: 'Demo123456'),
                 SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitlelAndDescription(text1: 'VAT Number', text2: 'GB123456789'),
                   SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitlelAndDescription(text1: 'BRN Number', text2: '123-456-789-001'),
                 
               ],
             ),
             const Divider(),
             const SizedBox(height: 50,),
             

          
             const Align(alignment: Alignment.centerLeft,
                child: Text('Supplier Service Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'ReadexPro',fontWeight: FontWeight.w600),)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
          
               children: [
                 SizedBox(
  height: context.screenHeight * 0.15,
  width: context.screenWidth * 0.2,
  child: Column(
    children: [
      const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Select Service',
          style: TextStyle(fontSize: 16, fontFamily: 'ReadexPro'),
        ),
      ),
      TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Air Ticket',hintStyle:  TextStyle(color:AppColor.hintColor , fontSize: 14,fontFamily: fontFamilys,fontWeight: FontWeight.w300),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
            borderSide: BorderSide(
              color: Color(0XFFD4D7E3),
              width: 2,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
            borderSide: BorderSide(
              color: Color(0XFFD4D7E3),
              width: 2,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
            borderSide: BorderSide(
              color: Color(0XFFD4D7E3),
              width: 2,
            ),
          ),
          suffixIcon: DropdownButton<String>(
            underline: const SizedBox(), // Removes default underline of dropdown
            icon: const Icon(Icons.arrow_drop_down, color: Color(0XFFD4D7E3)),
            items: <String>['Option 1', 'Option 2', 'Option 3'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              // Handle dropdown item selection
            },
          ),
        ),
      ),
     
      
    ],
  ),
),


                
                 
               ],
             ), 
             SizedBox(height: context.screenHeight*0.1,), 
             Row(
           children: [
             SizedBox(
                   height: 45,
                   width: 140,
                   child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFD5D5D5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                
              },
              child: const Text(
                'Cancle',style: TextStyle(fontSize: 18,fontFamily: 'ReadexPro',color: Colors.black),
              
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
                  backgroundColor: const Color(0XFF83D0E3),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5))),
              onPressed: () {
                
              },
              child: const Text(
                'Save',style: TextStyle(fontSize: 18,fontFamily: 'ReadexPro',color: Colors.black),
              
              )),
                 ),
                 SizedBox(height: context.screenHeight*0.2)
           ],
         ),  
                 
            ],
           ),)
           ],
        ),
      ),
    );
  }
}
