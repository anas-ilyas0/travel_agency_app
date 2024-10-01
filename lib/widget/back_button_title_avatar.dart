import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/material.dart';

import '../AppColor/app_color.dart';
import '../resources/responsive.dart';

class BackButtonAvatar extends StatelessWidget {
  String text1;
   BackButtonAvatar({super.key,required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(   top: Responsive.isDesktop(context) ? 20 : 15,
          left: Responsive.isDesktop(context) ? 80 : 40,
          right: Responsive.isDesktop(context) ? 80 : 40),
      child: SizedBox(
        height: context.screenHeight * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                      child: Icon(Icons.arrow_back)),
                ),
                SizedBox(width: 10,),
                 Text(
                  text1,
                  style:  TextStyle(
                      fontSize: 20,
                     fontWeight: FontWeight.w600,
                      fontFamily: fontFamilys,
                      color: Color(0XFF11345A)),
                ),
              ],
            ),
            Row(
              children: [
                 Text(
                  'Name Here',
                  style: TextStyle(fontFamily: fontFamilys,fontSize: 16,fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  width: context.screenWidth * 0.01,
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.buttonTextColors,width: .5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      backgroundImage:
                      AssetImage('${imageUrl}appbar.png'),
                      radius: 20,
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
