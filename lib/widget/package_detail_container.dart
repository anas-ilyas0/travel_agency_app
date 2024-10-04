import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/package_detail.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackageDetailContainer extends StatelessWidget {
  const PackageDetailContainer({
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
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 50),
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
                    Row(
                      children: [
                        const Text(
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
                          height: 45,
                          width: 150,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const PackageDetail(),));
                              },
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
                      ],
                    )
                  ],
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: Responsive.isDesktop(context) ? 280 : 40),
                      child: Text(
                          'The Premium Plan offers unlimited ticket handling annually, making it perfect for those who receive multiple tickets throughout the year. This plan ensures that no matter how many tickets you get, we ve got you covered with top-notch service and support.',
                          // style: TextStyle(
                          //     fontSize: 12,
                          //     fontWeight: FontWeight.w400,
                          //     fontFamily: fontFamilys,
                          //     color: AppColor.darkGrey),
                      
                         style:  TextStyle(fontSize: 12, fontWeight: FontWeight.w400,fontFamily: fontFamilys,color: AppColor.darkGrey,),maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    )),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Features:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'ReadexPro'),
                    )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
  padding: const EdgeInsets.only(right: 10),
  child: Wrap( // Wrapping the row content to prevent overflow
    spacing: context.screenWidth * 0.01, // Adding spacing between items
    runSpacing: 4.0, // For vertical spacing when wrapping occurs
    children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
            ),
          ),
          SizedBox(width: context.screenWidth * 0.004),
          Flexible(
            child: Text(
              'Unlimited traffic ticket handling per year',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 9.5,
                fontFamily: fontFamilys,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
            ),
          ),
          SizedBox(width: context.screenWidth * 0.004),
          Flexible(
            child: Text(
              'Priority processing for faster resolution',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 9.5,
                fontFamily: fontFamilys,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
            ),
          ),
          SizedBox(width: context.screenWidth * 0.004),
          Flexible(
            child: Text(
              'Dedicated customer support with extended hours',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 9.5,
                fontFamily: fontFamilys,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
            ),
          ),
          SizedBox(width: context.screenWidth * 0.004),
          Flexible(
            child: Text(
              'Comprehensive management tools and notifications',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 9.5,
                fontFamily: fontFamilys,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ],
  ),
)

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
