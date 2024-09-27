import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InternationalEditDialog extends StatelessWidget {
  const InternationalEditDialog({super.key});

  @override
  Widget build(BuildContext context) {
     final imageProvider = Provider.of<UserProvider>(context);
    return Dialog(
      backgroundColor: AppColor.background,
      child:  SingleChildScrollView(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             SizedBox(
              height: context.screenHeight * 0.02,
            ),
          
           Padding(padding: const EdgeInsets.only(left: 90,right: 90),
           child: 
           Column(
            children: [
               SizedBox(height: context.screenHeight*0.02,),
                 Align(alignment: Alignment.centerLeft,
                child: Flexible(child: FittedBox(child: Text('Edit International Suppler Details',style:AppTextstyless.addnewinternationalsuppliers)))),
               SizedBox(height: context.screenHeight*0.01,),
               Align(
              alignment: Alignment.centerLeft,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                 Flexible(
                   child: FittedBox(
                     child: Row(
                       children: [
                         Container(
                          height: context.screenHeight*0.25,
                          width: context.screenWidth*0.12,
                          decoration: BoxDecoration( color: Colors.white,
                           image: imageProvider.imageUrl != null
                                        ? DecorationImage(
                                            image:
                                                NetworkImage(imageProvider.imageUrl!),
                                            fit: BoxFit.cover,
                                          )
                                        : null,
                            borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColor.borderColor,width: 0.5)),
                         
                         ),
                            const SizedBox(
                      width: 10,
                     ),
                     Column(
                      children: [
                        Text('Company Logo',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: fontFamilys)),
                        SizedBox(height: 5,),
                         ElevatedButton(onPressed: () async{
                                     await imageProvider.pickImage();
                               }, 
                                style: ElevatedButton.styleFrom(
                                 padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 12),
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
                            image: imageProvider.imageUrl != null
                                        ? DecorationImage(
                                            image:
                                                NetworkImage(imageProvider.imageUrl!),
                                            fit: BoxFit.cover,
                                          )
                                        : null,
                            borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: AppColor.borderColor,width: 0.5)),
                         
                         ),
                            SizedBox(
                      width: context.screenWidth*0.01,
                     ),
                     Column(
                      children: [
                        Text('Supplier Image',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: fontFamilys),),
                        SizedBox(height: 5,),
                         ElevatedButton(onPressed: ()async {
                                     await imageProvider.pickImage();
                               }, 
                                style: ElevatedButton.styleFrom(
                                 padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 12),
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
                     )
                                     
                       ],
                     ),
                   ),
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
                child: Text('Bank Details',style:AppTextstyless.addnewinternationalsuppliers)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Bank Name', text2: 'Summit National Bank'))),
                 SizedBox(width: context.screenWidth*0.01,),
                  Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Bank Account', text2: 'Checking Account'))),
                  SizedBox(width: context.screenWidth*0.01,),
                   Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Phone Number', text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'))),
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
                child: Text('Company Details',style: AppTextstyless.addnewinternationalsuppliers,)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Supplier Company Name', text2: 'John Doe'))),
                 SizedBox(width: context.screenWidth*0.01,),
                  Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Supplier Company Address', text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'))),
                 
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
                child: Text('Supplier Details',style: AppTextstyless.addnewinternationalsuppliers)),
              SizedBox(
              height: context.screenHeight*0.04,
        
             ),
        
             Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Supplier Name', text2: 'John Doe'))),
                 SizedBox(width: context.screenWidth*0.01,),
                  Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Supplier Address', text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'))),
                   SizedBox(width: context.screenWidth*0.01,),
                  Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'E-mail', text2: 'john.smith@gmail.com'))),
                 
               ],
             ),
             const SizedBox(
              height: 8,

             ),
                Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Phone Number', text2: 'Demo123456'))),
                 SizedBox(width: context.screenWidth*0.01,),
                  Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'VAT Number', text2: 'GB123456789'))),
                   SizedBox(width: context.screenWidth*0.01,),
                  Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'BRN Number', text2: '123-456-789-001'))),
                 
               ],
             ),
              Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Country Name', text2: 'London'))),
                 SizedBox(width: context.screenWidth*0.01,),
                  Flexible(child: FittedBox(child: AddNewAgentTitlelAndDescription(text1: 'Code', text2: '4422'))),
                 
               ],
             ),
             const Divider(),
             const SizedBox(height: 50,),
             

          
              Align(alignment: Alignment.centerLeft,
                child: Text('Supplier Service Details',style:AppTextstyless.addnewinternationalsuppliers)),
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
          hintText: 'Transfer',
          hintStyle:  TextStyle(color:AppColor.hintColor , fontSize: 14,fontFamily: fontFamilys,fontWeight: FontWeight.w300),
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
             SizedBox(height: context.screenHeight*0.05,), 
             Row(
           children: [
             Flexible(
               child: FittedBox(
                 child: SizedBox(
                       height: 45,
                       width: 140,
                       child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFD5D5D5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancle',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),
                  
                  )),
                     ),
               ),
             ),
                 SizedBox(
                  width: context.screenWidth*0.02,
                 ),
                 Flexible(
                   child: FittedBox(
                    
                     child: SizedBox(
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
                                     'Save',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),
                                   
                                   )),
                     ),
                   ),
                 ),
                 SizedBox(height: context.screenHeight*0.1)
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