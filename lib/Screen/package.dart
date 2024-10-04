import 'package:fab_tech_sol/AppColor/app_color.dart';

import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widget/package_detail_container.dart';
import 'package:fab_tech_sol/widget/widget.dart';
import 'package:flutter/material.dart';

class Package extends StatelessWidget {
  const Package({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(desktop:
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: context.screenHeight*0.03),
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
                const Text(
                  'Packages Details',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Readex Pro',
                      color: Color(0XFF11345A),
                      fontWeight: FontWeight.w700),
                ),
        
                
                SizedBox(
                  height: context.screenHeight * 0.075,
                  width: context.screenWidth *
                      0.13, 
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFF83D0E3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                     
                    },
                    child: Text(
                      'Add New Package',
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColor.buttonTextColor,
                          fontFamily: 'Readex Pro'),
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
                    color: Colors.white,
                  
                  ),
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return const PackageDetailContainer();
                      },
                      itemCount: 3)),
            ),
          ]),
        ),
     mobile: Column(
      children: [
        SizedBox(height: context.screenHeight * 0.01),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Package Detail',
                style: TextStyle(
                  fontSize: 18, // Updated size for better readability
                  fontFamily: 'Readex Pro',
                  color: Color(0XFF11345A),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: context.screenHeight * 0.07,
                width: context.screenWidth * 0.42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF83D0E3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {



                  },
                  child: Text(
                    'Add New Package',
                    style: TextStyle(
                      fontSize: 12, // Slightly increased font for clarity
                      color: AppColor.buttonTextColor,
                      fontFamily: 'Readex Pro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: context.screenHeight * 0.02),
        Container(
          height: context.screenHeight * 0.8, // Adjusted height for better layout
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
            itemCount: 10, // Reduced item count for faster loading in the example
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0), // Increased padding for better layout
                child: Container(
                  height: context.screenHeight * 0.48, // Reduced height for a compact view
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
                    padding: const EdgeInsets.all(12.0),
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
                            const Text(
                              'Monthly',
                              style: TextStyle(
                                fontSize: 16, // Increased size for better clarity
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Readex Pro',
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
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: context.screenHeight * 0.01),
                        const Text(
                          'The Premium Plan offers unlimited ticket handling annually, making it perfect for those who receive multiple tickets throughout the year. This plan ensures that no matter how many tickets you get, we’ve got you covered with top-notch service and support.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.5, // Line height for readability
                          ),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis, // Ensure no text overflow
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
                      Widgets().buildFeature(context, 'Unlimited traffic ticket handling per year'),
                      Widgets().  buildFeature(context, 'Priority processing for faster resolution'),
                      Widgets().  buildFeature(context, 'Dedicated customer support with extended hours'),
                      Widgets().   buildFeature(context, 'Comprehensive management tools and notifications'),
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
    ));
  }
}
