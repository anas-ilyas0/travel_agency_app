import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avester.dart';
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
            BackButtonAverter(text1: 'Add New Local Supplier',),
            Divider(),
           Padding(padding: EdgeInsets.only(left: 90,right: 90),
           child: 
           Column(
            children: [
               SizedBox(height: context.screenHeight*0.02,),
                Align(alignment: Alignment.centerLeft,
                child: Text('Local Suppler Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'Readex Pro',fontWeight: FontWeight.w500),)),
               SizedBox(height: context.screenHeight*0.01,),
               Align(
              alignment: Alignment.centerLeft,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                 Row(
                   children: [
                     Container(
                      height: 150,
                      width: 150,
                      color: Colors.white,
                     ),
                        SizedBox(
                  width: 10,
                 ),
                 ElevatedButton(onPressed: () {
            
          }, 
           style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 7,horizontal: 12),
          backgroundColor: const Color(0XFF11345A),
          ),
          
          child:  Row(
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
                SizedBox(width: context.screenWidth*0.02,),
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
           padding: EdgeInsets.symmetric(vertical: 7,horizontal: 12),
          ),
          
          child:  Row(
                  mainAxisSize: MainAxisSize.min, // Make Row as wide as the content
                  children: [
                    Icon(Icons.file_upload_outlined,size: 15,
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
             Divider(),
             SizedBox(
              height: context.screenHeight*0.03,
             ),
               Align(alignment: Alignment.centerLeft,
                child: Text('Bank Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'Readex Pro'),)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AddNewAgentTitelAndDescription(text1: 'First Name', text2: 'Add Here'),
                 SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitelAndDescription(text1: 'Last Name', text2: 'Add Here'),
                  SizedBox(width: context.screenWidth*0.01,),
                   AddNewAgentTitelAndDescription(text1: 'Phone Number', text2: 'Add Here'),
               ],
             ),
              SizedBox(
              height: context.screenHeight*0.015,
             ),
        
             Divider(),
               SizedBox(
              height: context.screenHeight*0.03,
             ),
               Align(alignment: Alignment.centerLeft,
                child: Text('Company Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'Readex Pro',fontWeight: FontWeight.w600),)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AddNewAgentTitelAndDescription(text1: 'Supplier Company Name', text2: 'Add Here'),
                 SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitelAndDescription(text1: 'Supplier Company Address', text2: 'Add Here'),
                 
               ],
             ),
              SizedBox(
              height: context.screenHeight*0.015,
             ),
        Divider(),
         SizedBox(
              height: context.screenHeight*0.03,
             ),
               Align(alignment: Alignment.centerLeft,
                child: Text('Supplier Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'Readex Pro'),)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AddNewAgentTitelAndDescription(text1: 'Supplier Name', text2: 'Add Here'),
                 SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitelAndDescription(text1: 'Supplier Address', text2: 'Add Here'),
                   SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitelAndDescription(text1: 'E-mail', text2: 'Add Here'),
                 
               ],
             ),
             SizedBox(
              height: 8,

             ),
                Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 AddNewAgentTitelAndDescription(text1: 'Phone Number', text2: 'Add Here'),
                 SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitelAndDescription(text1: 'VAT Number', text2: 'Add Here'),
                   SizedBox(width: context.screenWidth*0.01,),
                  AddNewAgentTitelAndDescription(text1: 'BRN Number', text2: 'Add Here'),
                 
               ],
             ),
             Divider(),
             SizedBox(height: 50,),
             

          
             Align(alignment: Alignment.centerLeft,
                child: Text('Supplier Service Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'Readex Pro',fontWeight: FontWeight.w600),)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
          
               children: [
                 Container(
  height: context.screenHeight * 0.15,
  width: context.screenWidth * 0.2,
  child: Column(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Select Service',
          style: TextStyle(fontSize: 16, fontFamily: 'Readex Pro'),
        ),
      ),
      TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Add Here',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
            borderSide: BorderSide(
              color: Color(0XFFD4D7E3),
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
            borderSide: BorderSide(
              color: Color(0XFFD4D7E3),
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
            borderSide: BorderSide(
              color: Color(0XFFD4D7E3),
              width: 2,
            ),
          ),
          suffixIcon: DropdownButton<String>(
            underline: SizedBox(), // Removes default underline of dropdown
            icon: Icon(Icons.arrow_drop_down, color: Color(0XFFD4D7E3)),
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
