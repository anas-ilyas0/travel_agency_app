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
    List<String> agents = ['John Doe', 'Jane Smith', 'James Bond', 'Tony Stark'];

    String? selectedValue;
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
      SizedBox( width: 400,
        height: 58,
        child: Theme(
          data: Theme.of(context).copyWith(
              focusColor: AppColor.background,
              hoverColor: AppColor.background
          ),
          child: DropdownButtonFormField<String>(
            value:selectedValue ,

            decoration: InputDecoration(
                labelText: 'Select Duration',
                fillColor: AppColor.customdropdownColor,
                filled: true,


                labelStyle: TextStyle(

                    color:   AppColor.hintColor, fontFamily: poppin, fontSize: 15  ),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                // contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColor.borderColor3,width: 1)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide:   BorderSide(color: AppColor.borderColor3,width: 1),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                alignLabelWithHint: false),
            dropdownColor: AppColor.customdropdownColor,
            isDense: true,
            items: [
              ...agents.map((String duration) {
                return DropdownMenuItem<String>(
                  value: duration,
                  child: SizedBox(
                    height: 52,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 4),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(width: .5,color: Colors.grey.withOpacity(.3))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              CircleAvatar(
                                backgroundImage: AssetImage('${imageUrl}agent.png'),
                                radius: 18,
                              ),
                              SizedBox(width: 5),
                              Text(
                                duration,
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),

            ],
            menuMaxHeight:    400,
            isExpanded: true,
            onChanged: (value) {
              if (value != 'create_agent' && value != 'search_agent') {
                selectedValue = value;
              }
              // searchName.text = value ??
              //     '';
            },
            selectedItemBuilder: (BuildContext context){

              return agents.map((String agent) {
                return SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('${imageUrl}agent.png'),
                        radius: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        agent,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                );
              }).toList();
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Select Duration";
              }
              return null;
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
