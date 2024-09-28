import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/resources/capitalize_first_letter_formatter%20(1).dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:flutter/material.dart';

class AddNewAgentTitlelAndDescription extends StatelessWidget {
  String? text1;
  String? text2;
  AddNewAgentTitlelAndDescription(
      {super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 100 * context.screenWidth / 400,
      // width: Responsive.isMobile(context)? null:Responsive.isTablet(context)? context.screenWidth * 0.25:context.screenWidth * 0.23 ,
      child: Column(

        children: [Align(alignment: Alignment.centerLeft,
          child: Text('$text1',style: AppTextstyless.addnewinternationalsuppliersSubText)),
       TextField(
         cursorColor: Colors.white,
          inputFormatters: [CapitalizeFirstLetterFormatter()],
         decoration: InputDecoration(
       
           fillColor: Colors.white,
           filled: true,
           hintText: '$text2',hintStyle: TextStyle(color:AppColor.hintColor , fontSize: 14,fontFamily: fontFamilys,fontWeight: FontWeight.w300),
       
       enabledBorder: const OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
             borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 1
       
             ),
           ),
           focusedBorder: const OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
             borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 1
       
             ),
           ),
           border: const OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
             borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 1
       
             ),
           ),
       
         )
       ),
        ],
      ),
    );
  }
}
