import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../widget/supplier_dropdown.dart';

class PackageDetails2 extends StatelessWidget {
  const PackageDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.06,
        ),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(16),
                            backgroundColor: Colors.white),
                        child: const Icon(Icons.arrow_back,
                            size: 20, color: Colors.black),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.0,
                      ),
                      Text(
                        'Package Details',
                        style: TextStyle(
                            fontSize: 22,
                            color: AppColor.buttonTextColor,
                            fontFamily: fontFamilys,
                            fontWeight: FontWeight.w700),
                      ),
                   
                    ],
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
                            width: context.screenWidth * 0.162,
                          ),
                          Text(
                            'Types of people',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: fontFamilys),
                          ),
                            SizedBox(
                            width: context.screenWidth * 0.097,
                          ),
                           Text(
                            'price',
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
                  Row(children: [
                    const PackageDetails2().textFormFieldPackage('\$500', context),
                    SizedBox(
                      width: context.screenWidth * 0.01,
                    ),
                    const TypePeopleDropdown(),
                    SizedBox(width: context.screenWidth * 0.01,),
                    const PackageDetails2().textFormFieldPackage('Company Name',context),
                  ]),
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
                      height:  context.screenHeight * 0.385,
                      width: context.screenWidth * 0.556,
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
                                    height: context.screenHeight * 0.015,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 6, right: 16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Checkbox(
                                            activeColor: Colors.white,
                                            side: BorderSide(
                                              color: AppColor
                                                  .buttonTextColors, // Define the border color
                                              width: 1.0,
                                            ),
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            checkColor: Colors.black,
                                            value: userProvider.isChecked,
                                            onChanged: (bool? newValue) {
                                              userProvider.toggleCheckbox();
                                            },
                                          ),
                                          Container(
                                            width: context.screenWidth * 0.45,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: AppColor.ghostWhite,
                                              border: Border.all(
                                                  color: AppColor.borderColor3),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 7, top: 12),
                                              child: Text(
                                                'Laxmisagar, BBSR, Bhubaneshwar-751006',
                                                style: TextStyle(
                                                    fontFamily: fontFamilys,
                                                    fontWeight: FontWeight.w300,
                                                    color: AppColor.hintColor,
                                                    fontSize: 14),
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                              child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: IconButton(
                                                    icon: Icon(
                                                        Icons
                                                            .remove_circle_outline,
                                                        size: 18,
                                                        weight: 0.5,
                                                        color:
                                                            AppColor.blueColor),
                                                    onPressed: () {
                                                      // Handle button press
                                                    },
                                                  )))
                                        ]),
                                  )
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
                      height: context.screenHeight * 0.385,
                      width: context.screenWidth * 0.556,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.borderColor3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Flexible(
                            child: FittedBox(
                              child: Column(children: [
                                                      SizedBox(
                                                        height: context.screenHeight * 0.015,
                                                      ),
                                                      Padding(
                                                        padding:
                              const EdgeInsets.only(left: 6, right: 16),
                                                        child: Row(
                                                          mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                                          children: [
                              Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                activeColor: Colors.white,
                                checkColor: Colors.black,
                                value: userProvider.isChecked,
                                side: BorderSide(
                                  color: AppColor
                                      .buttonTextColors, // Define the border color
                                  width: 1.0,
                                ), // Set initial value
                                onChanged: (bool? newValue) {
                                  userProvider.toggleCheckbox();
                                },
                              ),
                              Container(
                                width: context.screenWidth * 0.45,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: AppColor.ghostWhite,
                                  border: Border.all(
                                      color: AppColor.borderColor3),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 7, top: 12),
                                  child: Text(
                                    'Laxmisagar, BBSR, Bhubaneshwar-751006',
                                    style: TextStyle(
                                        fontFamily: fontFamilys,
                                        fontWeight: FontWeight.w300,
                                        color: AppColor.hintColor,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: IconButton(
                                        icon: Icon(
                                            Icons.remove_circle_outline,
                                            size: 18,
                                            weight: 0.5,
                                            color: AppColor.blueColor),
                                        onPressed: () {
                                          // Handle button press
                                        },
                                      )))
                                                          ],
                                                        ),
                                                      ),
                                                    ]),
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
                    height: context.screenHeight * 0.1,
                  )
                ],
              ),
              SizedBox(width: context.screenWidth*0.05,),
              Flexible(
                child: SizedBox(
                    height: context.screenHeight * 0.5,
                   // width: context.screenWidth * 0.7,
                    child: SvgPicture.asset(
                        '${ImagesAssets.imagePath}OBJECTS.svg')),
              ),
            ],
          ),
        ),
      ),
    );
  }
   Widget textFormFieldPackage(String text, BuildContext context) {
    return Container(
      width: 100 * context.screenWidth / 560,
      decoration: BoxDecoration(
          color: AppColor.customdropdownColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              color: AppColor.hintColor, fontFamily: fontFamilys, fontSize: 15),
    
          //  color: Colors.grey, fontFamily: readexPro, fontSize: 13),
    
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

}
