import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/Screen/pacakge_details2.dart';
import 'package:fab_tech_sol/app_text_style.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClientDetailPackage extends StatelessWidget {
  const ClientDetailPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 68,vertical: 4),
        child: Column(
          children: [
            SizedBox(
              height: context.screenHeight * 0.02,
            ),
            Row(
              children: [
                Text(
                  'Client Details',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Readex Pro bold',
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF11345A),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth * 0.2,
                ),
                Widgets().searchTextField(),
                SizedBox(
                  width: context.screenWidth * 0.02,
                ),
                Container(
                  height: context.screenHeight * 0.07,
                  width: context.screenWidth * 0.11,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(0XFF70707033))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            '${ImagesAssets.imagePath}VectorFilter.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF8897AD)),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.022,
                        ),
                        Icon(Icons.arrow_drop_down_outlined),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth * 0.021,
                ),
                Widgets().button(
                  'Add New Package',
                  () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PacakgeDetails2(),));
                  },
                )
              ],
            ),
            SizedBox(
              height: context.screenHeight * 0.018,
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
                 
                  color: const Color(
                      0XFFD4D7E3), 
                  width: .5, 
                ),
                borderRadius: BorderRadius.circular(
                    22), 
              ),

           
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 16),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Client Details:',
                          style:AppTextstyless.packageClientDetailTextStyleHeading
                        ),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.03,
                      ),
                    
                      Row(
                        children: [
                           Text('Client Name:',
                              style: AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.065,
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
                              style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                          SizedBox(
                            width: context.screenWidth * 0.035,
                          ),
                          Text('Phone Number',
                           style:   AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.03,
                          ),
                          Text('+21 999 909 9090',
                              style: AppTextstyless.packageClientDetailTextStyleSubTitle),
                        ],
                      ),
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
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Readex Pro'),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.197,
                          ),
                           Text(
                            'QTY',
                           style: TextStyle(
                            color: AppColor.buttonTextColors,
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Readex Pro'),
                          ),
                          SizedBox(width: context.screenWidth * 0.15),
                           Text(
                            'Total per pax',
                          style: TextStyle(
                            color: AppColor.buttonTextColors,
                            fontSize: 16,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Readex Pro'),
                          ),
                        ],
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                      Row(
                        children: [
                          const Text('Adult:',
                                style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421)),),
                          SizedBox(
                            width: context.screenWidth * 0.11,
                          ),
                          const Text(
                            '1 000 000',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421)),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.079,
                          ),
                          const Text('Adult',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 16,
                                  fontFamily: 'Readex Pro')),
                          SizedBox(
                            width: context.screenWidth * 0.1,
                          ),
                          const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421)),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.14,
                          ),
                          const Text(
                            '1',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421)),
                          ),
                            SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                        ],
                      ),
                       Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  ),
                       SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Agent Details:',
                          style:AppTextstyless.packageClientDetailTextStyleHeading,
                        ),
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                      Row(
                        children: [
                           Text('Client Name:',
                              style:AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.065,
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
                              style: AppTextstyless.packageClientDetailTextStyleSubTitle),
                          //  const Text('Jhon doe',style: TextStyle(fontSize: 13),),
                          SizedBox(
                            width: context.screenWidth * 0.04,
                          ),
                           Text('Phone No:',
                              style: AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.02,
                          ),
                           Text('XXXXXXXXXXX',
                              style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                        ],
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                      //SizedBox(height: context.screenHeight*0.002,),
                     Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  ),
                       SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Supplier Details:',
                          style: AppTextstyless.packageClientDetailTextStyleHeading,
                        ),
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                      Row(
                        children: [
                           Text('Client Name:',
                               style:AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.065,
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
                              style: AppTextstyless.packageClientDetailTextStyleSubTitle),
                          //  const Text('Jhon doe',style: TextStyle(fontSize: 13),),
                          SizedBox(
                            width: context.screenWidth * 0.04,
                          ),
                           Text('Phone No:',
                              style:AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.02,
                          ),
                           Text('XXXXXXXXXXX',
                              style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                        ],
                      ),
                      SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                                
                     Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  ),
                       SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Trip Details:',
                          style: AppTextstyless.packageClientDetailTextStyleHeading
                        ),
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                      Row(
                        children: [
                          Row(
                            children: [
                               Text('Destination:',
                                    style:AppTextstyless.packageClientDetailTextStyle),
                              SizedBox(
                                width: context.screenWidth * 0.044,
                              ),
                              const Text('Sialkot Punjab 51040',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Readex Pro',
                                      color: Color(0XFF0C1421))),
                              SizedBox(
                                width: context.screenWidth * 0.03,
                              ),
                               Text('Booking Date:',
                                    style:AppTextstyless.packageClientDetailTextStyle),
                              SizedBox(
                                width: context.screenWidth * 0.02,
                              ),
                              const Text('08/15/2024',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Readex Pro',
                                      color: Color(0XFF0C1421))),
                              SizedBox(
                                width: context.screenWidth * 0.05,
                              ),
                               Text(
                                'Travel Date:',
                                style:AppTextstyless.packageClientDetailTextStyle
                              ),
                              SizedBox(
                                width: context.screenWidth * 0.05,
                              ),
                              const Text('08/18/2024',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      fontFamily: 'Readex Pro',
                                      color: Color(0XFF0C1421))),
                            ],
                          ),
                        ],
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                      Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  ),
                       SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Package Amount Details:',
                          style: AppTextstyless.packageClientDetailTextStyleHeading
                        ),
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                      Row(
                        children: [
                           Text('Package Amount:',
                              style: AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.03,
                          ),
                          const Text(
                            "\$232,89.00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421)),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.07,
                          ),
                           Text('Paid Amount:',
                              style: AppTextstyless.packageClientDetailTextStyle),
                          SizedBox(
                            width: context.screenWidth * 0.02,
                          ),
                          const Text(
                            ' 232,89.00',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421)),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.065,
                          ),
                          Text(
                            'Outstanding Amount:',
                             style:AppTextstyless.packageClientDetailTextStyle
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.015,
                          ),
                          const Text('\$232,89.00',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF0C1421))),
                        ],
                      ),
                     SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
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
          ],
        ),
      ),
    );
  }
}
