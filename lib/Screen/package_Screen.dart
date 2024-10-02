import 'package:fab_tech_sol/AppColor/app_color.dart';




import 'package:fab_tech_sol/Screen/pacakge_details2.dart';
import 'package:fab_tech_sol/Screen/package_detail.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widget/package_detail_container.dart';
import 'package:fab_tech_sol/widget/widgets.dart';
import 'package:flutter/material.dart';

import 'add_new_create_package_detail.dart';

class PackageClassScreen extends StatefulWidget {
  const PackageClassScreen({super.key});

  @override
  State<PackageClassScreen> createState() => _PackageClassScreenState();
}

class _PackageClassScreenState extends State<PackageClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(mobile:
    SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: context.screenHeight * 0.01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Package Details',
                  style: TextStyle(
                    fontSize: 16, // Updated size for better readability
                    fontFamily: 'ReadexPro',
                    color: Color(0XFF11345A),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.blueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    
                  },
                   
                  child: Text(
                    'Add New ',
                    style: TextStyle(
                      fontSize: 12, // Slightly increased font for clarity
                      color: AppColor.buttonTextColor,
                      fontFamily: 'Readex Pro',
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: context.screenHeight * 0.02),
          Container(
            height:
            context.screenHeight * 0.8, // Adjusted height for better layout
            width: double.infinity,
      
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: containerColor,
                ),
                const BoxShadow(
                  color: Colors.white,
                  spreadRadius: -2.0,
                  blurRadius: 10.0,
                ),
              ],
            ),
            child: ListView.builder(
              itemCount:
              10, // Reduced item count for faster loading in the example
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(
                      30.0), // Increased padding for better layout
                  child: Container(
                    // height: context.screenHeight *
                    //     0.36, // Reduced height for a compact view
                    width: context.screenWidth * 0.85, // Responsive width
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColor.background,
                      border: Border.all(
                        color: AppColor.borderColor.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '\$ 74.99',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: 'Readex Pro bold',
                                ),
                              ),
                               Text(
                                'Monthly',
                                style: TextStyle(
                                  fontSize:
                                  16, // Increased size for better clarity
                                  fontWeight: FontWeight.bold,
                                  fontFamily: fontFamilys,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Action for the button
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.blueColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                child: const Text(
                                  'Detail',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: context.screenHeight * 0.01),
                          Text(
                            'The Premium Plan offers unlimited ticket handling annually, making it perfect for those who receive multiple tickets throughout the year. '
                                'This plan ensures that no matter how many tickets you get, we’ve got you covered with top-notch service and support.',
                            style: TextStyle(


                              fontSize: 12, fontWeight: FontWeight.w400,fontFamily: fontFamilys,color: AppColor.darkGrey,

                            //  fontSize: 12, fontWeight: FontWeight.w400,fontFamily: readexPro,color: AppColor.darkGrey,


                            //  fontSize: 12, fontWeight: FontWeight.w400,fontFamily: fontFamilys,color: AppColor.darkGrey,
                              // fontSize: 12, fontWeight: FontWeight.w400,fontFamily: readexPro,color: AppColor.darkGrey,

                              height: 1.5, // Line height for readability
                            ),
                            maxLines: 2,
                            overflow: TextOverflow
                                .ellipsis, // Ensure no text overflow
                          ),
                          SizedBox(height: context.screenHeight * 0.01),
                          const Text(
                            'Features:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Readex Pro',
                            ),
                          ),
                          SizedBox(height: context.screenHeight * 0.01),
                          Widgets().buildFeature(context,
                              'Unlimited traffic ticket handling per year'),
                          Widgets().buildFeature(context,
                              'Priority processing for faster resolution'),
                          Widgets().buildFeature(context,
                              'Dedicated customer support with extended hours'),
                          Widgets().buildFeature(context,
                              'Comprehensive management tools and notifications'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
      desktop: Padding(
      padding: const EdgeInsets.only(left: 62, right: 12),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: context.screenHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Aligns text to left and button to right
            crossAxisAlignment:
            CrossAxisAlignment.center, // Centers vertically within the Row
            children: [
              // Text on the left
              Text(
                'Packages Details',
                style: TextStyle(
                    fontSize: 25,


                    fontFamily: fontFamilys,

                   // fontFamily: readexPro,


                 
                    // fontFamily: readexPro,

                    color: color,
                    fontWeight: FontWeight.w700),
              ),

              // ElevatedButton on the right
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*0.015),
                child:     Widgets().button(
                  'Add New Package',
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PackageDetails2(),
                        ));
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          SingleChildScrollView(
            child: Container(
                height: context.screenHeight * 0.77,
                width: context.screenWidth * 0.94,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: AppColor.borderColor.withOpacity(.1)),
                  boxShadow: [
                    BoxShadow(
                      color: containerColor,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      spreadRadius: -2.0,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return PackageDetailContainer();
                    },
                    itemCount: 3)),
          ),
        ]),
      ),
    ),
      tablet: Padding(
      padding: const EdgeInsets.only(left: 62, right: 62),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: context.screenHeight * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Aligns text to left and button to right
            crossAxisAlignment:
            CrossAxisAlignment.center, // Centers vertically within the Row
            children: [
              // Text on the left
              Text(
                'Packages Details',
                style: TextStyle(
                    fontSize: 20,


                    fontFamily: fontFamilys,

                  //  fontFamily: readexPro,


                  //  fontFamily: fontFamilys,


                    color: color,
                    fontWeight: FontWeight.w700),
              ),

              // ElevatedButton on the right
              SizedBox(
                height: 50,
                width: 180
                   , // Increased width for better text fit
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF83D0E3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  PackageDetails2(),
                        ));
                  },
                  child: Text(
                    'Add New Package',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColor.buttonTextColor,
                        // fontWeight: FontWeight.w400,


                        fontFamily: fontFamilys),

                      //  fontFamily: readexPro),


                       
                        // fontFamily: readexPro),

                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          SingleChildScrollView(
            child: Container(
                height: context.screenHeight * 0.77,
                width: context.screenWidth * 0.94,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: AppColor.borderColor.withOpacity(.1)),
                  boxShadow: [
                    BoxShadow(
                      color: containerColor,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      spreadRadius: -2.0,
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return PackageDetailContainer();
                    },
                    itemCount: 3)),
          ),
        ]),
      ),
    ),));
  }
    
  }
