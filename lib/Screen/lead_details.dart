import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/mobile/mobile_lead_details.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:flutter/material.dart';

class LeadDetails extends StatelessWidget {
  const LeadDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context) || Responsive.isTablet(context)
        ? Scaffold(
            body: Column(children: [
            SizedBox(
              height: context.screenHeight * 0.017,
            ),
            Padding(
                padding: const EdgeInsets.only(right: 72),
                child: Row(children: [
                  // Spacing on the left
                  SizedBox(
                    width: context.screenWidth * 0.04,
                  ),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(12),
                      backgroundColor: Colors.white,
                    ),
                    child: const Icon(Icons.arrow_back,
                        size: 20, color: Colors.black),
                  ),

                  Text(
                    'Details',
                    style: TextStyle(fontSize: 22, fontFamily: fontFamilys),
                  ),

                  const Spacer(),
                  SizedBox(
                    width: context.screenWidth * 0.55,
                  ),

                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LeadDetails(),
                            ));
                      },
                      child: Container(
                          width:Responsive.isDesktop(context)? context.screenWidth * 0.13: context.screenWidth * 0.13,
                          height:Responsive.isDesktop(context) ?context.screenHeight * 0.08:context.screenHeight * 0.05,
                          decoration: BoxDecoration(
                            color: const Color(0XFF333333),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Add new Lead",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: fontFamilys,
                                color: Colors.white,
                                fontSize:Responsive.isDesktop(context)? 16:13,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          )))
                ])),
            SizedBox(
              height: context.screenHeight * 0.02,
            ),
            Container(
              height: context.screenHeight * 0.86,
              width: context.screenWidth * 0.9,
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(color: Color(0XFFE3F5FA)),
                  BoxShadow(
                      color: Colors.white, blurRadius: 7, spreadRadius: -4),
                ],
                border: Border.all(
                  color: const Color(0XFFD4D7E3),
                  width: .5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Client Details:',
                          style: AppTextstyless
                              .packageClientDetailTextStyleHeading,
                        ),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            'Client Name:',
                            style: AppTextstyless.packageClientDetailTextStyle,
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.064,
                          ),
                          const CircleAvatar(
                            radius: 20, // Adjust the radius for size
                            backgroundImage: AssetImage(
                                '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.01,
                          ),
                          Text(
                            'Jhon Doe',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle,
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.05,
                          ),
                          Text(
                            'Phone No:',
                            style: AppTextstyless.packageClientDetailTextStyle,
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.0535,
                          ),
                          Text(
                            'XXXXXXXXXXX',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle,
                          ),
                        ],
                      ),

                      //SizedBox(height: context.screenHeight*0.002,),
                      SizedBox(
                        height: context.screenHeight * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            'Price par pax',
                            style: TextStyle(
                                color: AppColor.buttonTextColors,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'ReadexPro'),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.209,
                          ),
                          Text('QTY',
                              style: TextStyle(
                                  color: AppColor.buttonTextColors,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'ReadexPro')),
                          SizedBox(width: context.screenWidth * 0.14),
                          Text('Total per pax',
                              style: TextStyle(
                                  color: AppColor.buttonTextColors,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'ReadexPro')),
                        ],
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            'Adult:',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle,
                          ),

                          SizedBox(
                            width: context.screenWidth * 0.11,
                          ),

                          Text('1 000 000',
                              style: AppTextstyless
                                  .packageClientDetailTextStyleSubTitle),

                          SizedBox(
                            width: context.screenWidth * 0.09,
                          ),

                          Text('Adult',
                              style: AppTextstyless
                                  .packageClientDetailTextStyleSubTitle),

                          SizedBox(
                            width: context.screenWidth * 0.09,
                          ),

                          Text(
                            '1',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle,
                          ),

                          SizedBox(
                            width: context.screenWidth * 0.14,
                          ),

                          // '1' Text (Second)
                          Text(
                            '1',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle,
                          ),
                        ],
                      ),

                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Divider(
                        endIndent: 4,
                        indent: 4,
                        color: AppColor.gainsboro,
                        thickness: 0.5,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Agent Details:',
                            style: AppTextstyless
                                .packageClientDetailTextStyleHeading),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.03,
                      ),

                      Row(
                        children: [
                          Text('Agent Name:',
                              style:
                                  AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.066,
                          ),
                          const CircleAvatar(
                            radius: 20, // Adjust the radius for size
                            backgroundImage: AssetImage(
                                '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.01,
                          ),
                          Text('Jhon Doe',
                              style: AppTextstyless
                                  .packageClientDetailTextStyleSubTitle),
                          SizedBox(
                            width: context.screenWidth * 0.049,
                          ),
                          Text(
                            'Phone No:',
                            style: AppTextstyless.packageClientDetailTextStyle,
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.0575,
                          ),
                          Text(
                            'XXXXXXXXXXX',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      const Divider(
                        indent: 4,
                        endIndent: 4,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Supplier Details:',
                            style: AppTextstyless
                                .packageClientDetailTextStyleHeading),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.03,
                      ),

                      Row(
                        children: [
                          Text('Agent Name:',
                              style:
                                  AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.066,
                          ),
                          const CircleAvatar(
                            radius: 20, // Adjust the radius for size
                            backgroundImage: AssetImage(
                                '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.01,
                          ),
                          Text('Jhon Doe',
                              style: AppTextstyless
                                  .packageClientDetailTextStyleSubTitle),
                          SizedBox(
                            width: context.screenWidth * 0.049,
                          ),
                          Text(
                            'Phone No:',
                            style: AppTextstyless.packageClientDetailTextStyle,
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.0575,
                          ),
                          Text(
                            'XXXXXXXXXXX',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      const Divider(indent: 4, endIndent: 4, thickness: 0.5),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Trip Details:',
                            style: AppTextstyless
                                .packageClientDetailTextStyleHeading),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.03,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                          children: [
                            Text('Destination:',
                                style:
                                    AppTextstyless.packageClientDetailTextStyle),
                            SizedBox(
                              width: context.screenWidth * 0.066,
                            ),
                            Text('Sialkot Punjab 51040',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),
                            SizedBox(
                              width: context.screenWidth * 0.034,
                            ),
                            Text('Booking Date:',
                                style:
                                    AppTextstyless.packageClientDetailTextStyle),
                            SizedBox(
                              width: context.screenWidth * 0.03,
                            ),
                            Text('08/15/2024',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),
                            SizedBox(
                              width: context.screenWidth * 0.06,
                            ),
                            Wrap(
                              children: [
                                Text('Travel Date:',
                                    style:
                                        AppTextstyless.packageClientDetailTextStyle),
                              
                            
                            SizedBox(
                              width: context.screenWidth * 0.05,
                            ),
                            Text('08/18/2024',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),]),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Divider(
                        endIndent: 4,
                        indent: 4,
                        color: AppColor.gainsboro,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Package Amount Details:',
                            style: AppTextstyless
                                .packageClientDetailTextStyleHeading),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.04,
                      ),
                      Align(alignment: Alignment.centerLeft,
                        child: Wrap(
                          children: [
                            Text('Package Amount:',
                                style:
                                    AppTextstyless.packageClientDetailTextStyle),
                            SizedBox(
                              width: context.screenWidth * 0.032,
                            ),
                            Text("\$232,89.00",
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),
                            SizedBox(
                              width: context.screenWidth * 0.092,
                            ),
                            Text('Paid Amount:',
                                style:
                                    AppTextstyless.packageClientDetailTextStyle),
                            SizedBox(
                              width: context.screenWidth * 0.03,
                            ),
                            Text(' \$232,89.00',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),
                            SizedBox(
                              width: context.screenWidth * 0.068,
                            ),
                            Wrap(
                              children: [
                                Text('Outstanding Amount:',
                                    style:
                                        AppTextstyless.packageClientDetailTextStyle),
                              
                            
                            SizedBox(
                              width: context.screenWidth * 0.015,
                            ),
                            Text('\$232,89.00',
                                style: AppTextstyless
                                    .packageClientDetailTextStyleSubTitle),]),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Divider(
                        endIndent: 4,
                        indent: 4,
                        color: AppColor.gainsboro,
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Tour Expanse:',
                            style: AppTextstyless
                                .packageClientDetailTextStyleHeading),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.04,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Wrap(
                        //  spacing: context.screenWidth *
                          //    0.05, // Adjust spacing between items
                          //runSpacing: context.screenWidth *
                          //    0.02, // Adjust spacing between lines
                          children: [
                            Wrap(
                              children:[ Text(
                                'Hotel Expanse',
                                style: AppTextstyless.packageClientDetailTextStyle,
                              ),
                            
                            SizedBox(
                              width: context.screenWidth * 0.054,
                            ),
                            Text(
                              "\$25,000",
                              style: AppTextstyless
                                  .packageClientDetailTextStyleSubTitle,
                            ),]),
                            SizedBox(
                              width: context.screenWidth * 0.1,
                            ),
                            Wrap(
                              children:[ Text(
                                'Air Tickets',
                                style: AppTextstyless.packageClientDetailTextStyle,
                              ),
                            
                            SizedBox(
                              width: context.screenWidth * 0.048,
                            ),
                            Text(
                              ' \$35,000',
                              style: AppTextstyless
                                  .packageClientDetailTextStyleSubTitle,
                            ),]),
                            SizedBox(
                              width: context.screenWidth * 0.084,
                            ),
                            Wrap(
                              spacing: context.screenWidth * 0.015,
                              children: [
                                Text(
                                  'Any refreshments:',
                                  style:
                                      AppTextstyless.packageClientDetailTextStyle,
                                ),
                                Text(
                                  '\$10,000',
                                  style: AppTextstyless
                                      .packageClientDetailTextStyleSubTitle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(children: [
                        Text('Lunch or Any Dinner:',
                            style: AppTextstyless.packageClientDetailTextStyle),
                        SizedBox(
                          width: context.screenWidth * 0.0125,
                        ),
                        Text("\$5,000",
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle),
                        SizedBox(
                          width: context.screenWidth * 0.108,
                        ),
                        Text('Net Profit',
                            style: AppTextstyless.packageClientDetailTextStyle),
                        SizedBox(
                          width: context.screenWidth * 0.052,
                        ),
                        Text(' \$45,000',
                            style: AppTextstyless
                                .packageClientDetailTextStyleSubTitle),
                      ]),
                      SizedBox(
                        height: context.screenHeight * 0.03,
                      ),
                      const Divider(
                        thickness: 0.5,
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]))
        : MobileLeadDetails();
  }
}
