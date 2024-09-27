import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PacakgeDetails2 extends StatelessWidget {
  const PacakgeDetails2({super.key});

  @override
  Widget build(BuildContext context) {
     final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.04,
                  ),
                   Text(
                    'Package Details',
                    style: TextStyle(
                        fontSize: 22,
                        color: AppColor.buttonTextColor,
                        fontFamily: fontFamilys,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.04,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                           Text(
                            'price',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: fontFamilys),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.2,
                          ),
                           Text(
                            'Types of people',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: fontFamilys),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Row(
                    children: [
                      Container(
                        height: context.screenHeight * 0.08,
                        width: context.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child:  Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text('\$ 500',style: TextStyle(fontFamily: fontFamilys,fontWeight: FontWeight.w300,color: AppColor.hintColor),),
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.025,
                      ),
                      Container(
                        height: context.screenHeight * 0.08,
                        width: context.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child:  Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Adult',style: TextStyle(fontFamily: fontFamilys,fontWeight: FontWeight.w300,color: AppColor.hintColor),),
                              Icon(Icons.arrow_downward,weight: 0.5,size: 20,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Text('Place',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: fontFamilys)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: context.screenHeight * 0.35,
                      width: context.screenWidth * 0.425,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.borderColor3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Flexible(
                            child: FittedBox(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: context.screenHeight * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Checkbox(
                                        activeColor: Colors.white,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        checkColor: Colors.black,
                                        value: userProvider.isChecked,
                                        onChanged: (bool? newValue) {
                                           userProvider.toggleCheckbox();;
                                        },
                                      ),
                                      Container(
                                        width: context.screenWidth * 0.36,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          color: AppColor.Textbackground,
                                          border: Border.all(
                                              color: AppColor.borderColor3),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child:  Padding(
                                          padding: EdgeInsets.only(
                                              left: 7, top: 12),
                                          child: Text(
                                              'Laxmisagar, BBSR, Bhubaneshwar-751006',style: TextStyle(fontFamily: fontFamilys,fontWeight: FontWeight.w300,color: AppColor.hintColor),),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: IconButton(
                                            icon: Icon(Icons.remove_circle_outline,size: 20,
                                                color: AppColor.blueColor),
                                            onPressed: () {
                                              // Handle button press
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Right side: Circle button with "-" icon
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                   Text('Activity',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: fontFamilys)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: context.screenHeight * 0.34,
                      width: context.screenWidth * 0.425,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.borderColor3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Flexible(
                            child: FittedBox(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: context.screenHeight * 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Checkbox(
                                                      
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        activeColor: Colors.white,
                                        checkColor: Colors.black,
                                        value: userProvider.isChecked, // Set initial value
                                        onChanged: (bool? newValue) {
                                          userProvider.toggleCheckbox();
                                        },
                                      ),
                                      Container(
                                        width: context.screenWidth * 0.36,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          color: AppColor.Textbackground,
                                          border: Border.all(
                                              color: AppColor.borderColor3),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child:  Padding(
                                          padding: EdgeInsets.only(
                                              left: 7, top: 10),
                                          child: Text(
                                              'Share or listen to a success story.',style: TextStyle(fontFamily: fontFamilys,fontWeight: FontWeight.w300,color: AppColor.hintColor),),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: IconButton(
                                          icon: Icon(Icons.remove_circle_outline,size: 20,
                                              color: AppColor.blueColor),
                                          onPressed: () {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Right side: Circle button with "-" icon
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.05,
                  ),
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
                            onPressed: () {},
                            child: const Text(
                              'Cancle',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black),
                            )),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.02,
                      ),
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFF83D0E3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {},
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.2,
                  )
                ],
              ),
              Flexible(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Flexible(
                      child: FittedBox(
                        child: SizedBox(
                            height: context.screenHeight * 0.5,
                            width: context.screenWidth * 0.47,
                            child: SvgPicture.asset(
                                '${ImagesAssets.imagePath}OBJECTS.svg')),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
