import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackageDetailContainer extends StatelessWidget {
  PackageDetailContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: const EdgeInsets.all(22),
        height: context.screenHeight * 0.28,
        width: context.screenWidth * 0.85,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: AppColor.background,
            
            border: Border.all(
                color: AppColor.borderColor.withOpacity(0.1), width: 1)),
        child: Padding
          (
          padding: const EdgeInsets.only(left: 18,right: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '\$ 74.99',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'ReadexPro',
                          ),
                        )),
                    // SizedBox(width: context.screenWidth * 0.52),
                Row(children: [
                  Text(
                    'Monthly',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Poppin'),
                  ),
                  SizedBox(
                    width: context.screenWidth * 0.01,
                  ),
                  SizedBox(

                    height: 50,

                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.blueColor),
                        child: const Text(
                          'Detail',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'ReadexPro',
                              color: Colors.white),
                        )),
                  )
                ],)
                  ],
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 300),
                      child: Text(
                        'The Premium Plan offers unlimited ticket handling annually, making it perfect for those who receive multiple tickets throughout the year.\ This plan ensures that no matter how many tickets you get, weve got you covered with top-notch service and support.The Premium Plan offers unlimited ticket handling annually, making it perfect for those who receive multiple tickets throughout the year. This plan ensures that no matter how many tickets you get, we’ve got you covered with top-notch service and support.',
                        style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w400,fontFamily: fontFamilys,color: AppColor.darkGrey),
                      ),
                    )),
                 Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Features:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'ReadexPro'),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 85),
                  child: Wrap(
                    spacing: 5,
                    runSpacing:5.0,

                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: AppColor.blueColor,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                              '${ImagesAssets.imagePath}VectorRight.svg'),
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.005,
                      ),
                      Text(
                        'Unlimited traffic ticket handling per year',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            fontFamily: fontFamilys),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.01,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: AppColor.blueColor,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                              '${ImagesAssets.imagePath}VectorRight.svg'),
                        ),
                      ),
                      const SizedBox(
                        width: 0.005,
                      ),
                      Text(
                        'Priority processing for faster resolutio',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            fontFamily: fontFamilys),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.01,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: AppColor.blueColor,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                              '${ImagesAssets.imagePath}VectorRight.svg'),
                        ),
                      ),
                      const SizedBox(
                        width: 0.005,
                      ),
                      Text(
                        'Dedicated customer support with extended hours',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            fontFamily: fontFamilys),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.01,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: AppColor.blueColor,
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SvgPicture.asset(
                              '${ImagesAssets.imagePath}VectorRight.svg'),
                        ),
                      ),
                      const SizedBox(
                        width: 0.005,
                      ),
                      Text(
                        'Comprehensive management tools and notifications',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            fontFamily: fontFamilys),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        left: context.screenHeight * 0.08,
        bottom: context.screenHeight * 0.28,
        child: Container(
          height: 45,
          width: 160,
          decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(22)),
          child: const Center(
              child: Text(
            'Family Price',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Readex Pro',
                color: Colors.black),
          )),
        ),
        // child: ElevatedButton(onPressed: () {

        //         },
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: AppColor.blueColor
        //         )

        //         , child: Text('Family Price',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',fontWeight: FontWeight.bold,color: Colors.black),)),
      )
    ]);
  }
}
