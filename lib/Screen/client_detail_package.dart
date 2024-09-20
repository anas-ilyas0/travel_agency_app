import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
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
        padding: const EdgeInsets.only(left: 90, right: 90),
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
                  width: context.screenWidth * 0.16,
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
                  () {},
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
                    10), 
              ),

           
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Client Detail',
                          style: TextStyle(
                              color: Color(0XFF11345A),
                              fontSize: 22,
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.018,
                      ),
                    
                      Row(
                        children: [
                          const Text('Client Name:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontFamily: 'Readex Pro')),
                          SizedBox(
                            width: context.screenWidth * 0.06,
                          ),
                          const CircleAvatar(
                            radius: 20, // Adjust the radius for size
                            backgroundImage: AssetImage(
                                '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.01,
                          ),
                          const Text('Jhon Doe',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF0C1421))),
                          SizedBox(
                            width: context.screenWidth * 0.035,
                          ),
                          Text('Phone Number',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontFamily: 'Readex Pro')),
                          SizedBox(
                            width: context.screenWidth * 0.03,
                          ),
                          Text('+21 999 909 9090',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF0C1421)))
                        ],
                      ),
                      SizedBox(
                        height: context.screenHeight * 0.01,
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
                    height: context.screenHeight * 0.012,
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
                        ],
                      ),
                      const Divider(
                        endIndent: 2.0,
                        indent: 2.0,
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.015,
                  ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Agent Details:',
                          style: TextStyle(
                              color: Color(0XFF11345A),
                              fontSize: 22,
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.012,
                  ),
                      Row(
                        children: [
                          const Text('Client Name:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: 'Readex Pro')),
                          SizedBox(
                            width: context.screenWidth * 0.068,
                          ),
                          const CircleAvatar(
                            radius: 20, // Adjust the radius for size
                            backgroundImage: AssetImage(
                                '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.01,
                          ),
                          const Text('Jhon Doe',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF0C1421))),
                          //  const Text('Jhon doe',style: TextStyle(fontSize: 13),),
                          SizedBox(
                            width: context.screenWidth * 0.04,
                          ),
                          const Text('Phone No:',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  fontFamily: 'Readex Pro')),
                          SizedBox(
                            width: context.screenWidth * 0.02,
                          ),
                          const Text('XXXXXXXXXXX',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF0C1421))),
                        ],
                      ),
                      //SizedBox(height: context.screenHeight*0.002,),
                      Divider(),
                       SizedBox(
                    height: context.screenHeight * 0.015,
                  ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Supplier Details:',
                          style: TextStyle(
                              color: Color(0XFF11345A),
                              fontSize: 22,
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.015,
                  ),
                      Row(
                        children: [
                          const Text('Client Name:',
                               style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Readex Pro')),
                          SizedBox(
                            width: context.screenWidth * 0.06,
                          ),
                          const CircleAvatar(
                            radius: 20, // Adjust the radius for size
                            backgroundImage: AssetImage(
                                '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.01,
                          ),
                          const Text('Jhon Doe',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF0C1421))),
                          //  const Text('Jhon doe',style: TextStyle(fontSize: 13),),
                          SizedBox(
                            width: context.screenWidth * 0.04,
                          ),
                          const Text('Phone No:',
                              style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Readex Pro')),
                          SizedBox(
                            width: context.screenWidth * 0.02,
                          ),
                          const Text('XXXXXXXXXXX',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF0C1421))),
                        ],
                      ),
                      //SizedBox(height: context.screenH

                      const Divider(
                        endIndent: 4,
                        indent: 4,
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.015,
                  ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Trip Details:',
                          style: TextStyle(
                              color: Color(0XFF11345A),
                              fontSize: 22,
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.012,
                  ),
                      Row(
                        children: [
                          Row(
                            children: [
                              const Text('Destination:',
                                    style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Readex Pro')),
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
                              const Text('Booking Date:',
                                    style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Readex Pro')),
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
                              const Text(
                                'Travel Date:',
                                style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Readex Pro'),
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
                      const Divider(
                        endIndent: 4,
                        indent: 4,
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.012,
                  ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Package Amount Details:',
                          style: TextStyle(
                              color: Color(0XFF11345A),
                              fontSize: 22,
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                       SizedBox(
                    height: context.screenHeight * 0.012,
                  ),
                      Row(
                        children: [
                          const Text('Package Amount:',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Readex Pro')),
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
                          const Text('Paid Amount:',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Readex Pro')),
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
                          const Text(
                            'Outstanding Amount:',
                             style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Readex Pro'),
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
