import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avester.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InternationalSuppliersDetails extends StatelessWidget {
  const InternationalSuppliersDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body:     Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          BackButtonAverter(text1: 'International Supplier Details',),
          Divider(),
          SizedBox(
            height: context.screenHeight * 0.01,
          ),
          //
          Container(
            height: context.screenHeight * 0.8,
            width: context.screenWidth * 0.92,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Aligns text to left and button to right
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Centers vertically within the Row
                    children: [
                      // Text on the left
                      Padding(
                        padding: EdgeInsets.only(
                            left: 46.0), // Add padding for better alignment
                        child: Text(
                          'Supplier Full Name here',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Readex Pro',
                            color: Color(0XFF11345A),
                          ),
                        ),
                      ),

                      // ElevatedButton on the right
                      Padding(
                        padding: EdgeInsets.only(
                            right: 16.0), // Add padding for better alignment
                        child: SizedBox(
                          height: context.screenHeight * 0.08,
                          width: context.screenWidth *
                              0.13, // Increased width for better text fit
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF83D0E3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              // Action on button press
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Centering the content within the button
                              children: [
                                Icon(
                                  Icons.edit,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Edit Details',
                                  style: TextStyle(
                                      color: Color(
                                        0XFF11345A,
                                      ),
                                      fontFamily: 'Readex Pro'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 32,
                          ),
                          child: Container(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth * 0.3,
                            decoration: BoxDecoration(
                              color: Colors
                                  .white, // Optional: Set the background color
                              border: Border.all(
                                color: Color(0XFF3551B64D), // Border color
                                width: 1.0, // Border thickness
                              ),
                              borderRadius: BorderRadius.circular(
                                  16), // Optional: Rounded corners
                            ),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Stack(
                                    children: [
                                      CircleAvatar(
                                        radius:
                                            30, // Adjust the radius for size
                                        backgroundImage: AssetImage(
                                            '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                                      ),
                                      Positioned(
                                          right: 4,
                                          bottom: -2,
                                          child: Icon(
                                            Icons.circle,
                                            color: Colors.green,
                                            size: 18,
                                          ))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: context.screenWidth * 0.02,
                                ),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Supplier Full Name here',
                                      style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 16),
                                    ),
                                    Text(
                                      'Local Supplier',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.1,
                        ),
                        Container(
                          height: context.screenHeight * 0.15,
                          width: context.screenWidth * 0.3,
                          decoration: BoxDecoration(
                            color: Colors
                                .white, // Optional: Set the background color
                            border: Border.all(
                              color: Color(0XFF3551B64D), // Border color
                              width: 1.0, // Border thickness
                            ),
                            borderRadius: BorderRadius.circular(
                                16), // Optional: Rounded corners
                          ),
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                          '${ImagesAssets.imagePath}Ellipse3.png'),
                                    ),
                                  )),
                              SizedBox(
                                width: context.screenWidth * 0.01,
                              ),
                              Text(
                                'Company Name here',
                                style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF11345A)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: context.screenHeight * 0.23,
                        width: context.screenWidth * 0.86,
                        decoration: BoxDecoration(
                          color: Colors
                              .white, // Optional: Set the background color
                          border: Border.all(
                            color: Color(0XFF3551B64D), // Border color
                            width: 1.0, // Border thickness
                          ),
                          borderRadius: BorderRadius.circular(
                              16), // Optional: Rounded corners
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Aligns text to the left
                            children: [
                              Text(
                                'Personal Information',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF11345A),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                  height: 8), // Add some space between texts
                              Row(
                                children: [
                                  Text('Name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.12,
                                  ),
                                  Text('Phone Number',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.08,
                                  ),
                                  Text('E-Mail',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.12,
                                  ),
                                  Text('Address',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                ],
                              ),
                              SizedBox(
                                height: context.screenHeight * 0.02,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}VectorName.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text('Naseeb Zulfiqar',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(width: context.screenWidth * 0.058),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}VectorPhone.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    '+21 315 909 909',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                  SizedBox(width: context.screenWidth * 0.07),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}VectorEmail.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    'client@gmail.com',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                  SizedBox(width: context.screenWidth * 0.043),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}VectorEmail.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    'client@gmail.com',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: context.screenHeight * 0.23,
                        width: context.screenWidth * 0.86,
                        decoration: BoxDecoration(
                          color: Colors
                              .white, // Optional: Set the background color
                          border: Border.all(
                            color: Color(0XFF3551B64D), // Border color
                            width: 1.0, // Border thickness
                          ),
                          borderRadius: BorderRadius.circular(
                              16), // Optional: Rounded corners
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Aligns text to the left
                            children: [
                              Text(
                                'Bank Information',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF11345A),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                  height: 8), // Add some space between texts
                              Row(
                                children: [
                                  Text('Bank Name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.088,
                                  ),
                                  Text('Bank Name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.08,
                                  ),
                                  Text('Bank Name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                ],
                              ),
                              SizedBox(
                                height: context.screenHeight * 0.02,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}Vectorcode.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text('Naseeb Zulfiqar',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(width: context.screenWidth * 0.058),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}Vectorcode.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    '+21 315 909 909',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                  SizedBox(width: context.screenWidth * 0.055),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}Vectorlocation.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    'client@gmail.com',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: context.screenHeight * 0.35,
                        width: context.screenWidth * 0.86,
                        decoration: BoxDecoration(
                          color: Colors
                              .white, // Optional: Set the background color
                          border: Border.all(
                            color: Color(0XFF3551B64D), // Border color
                            width: 1.0, // Border thickness
                          ),
                          borderRadius: BorderRadius.circular(
                              16), // Optional: Rounded corners
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Aligns text to the left
                            children: [
                              Text(
                                'Company Information',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF11345A),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                  height: 8), // Add some space between texts
                              Row(
                                children: [
                                  Text('Company Name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.056,
                                  ),
                                  Text('Vet Number',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.08,
                                  ),
                                  Text('E-Mail',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.1,
                                  ),
                                  Text('Brm-Number',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.05,
                                  ),
                                  Text('Company Address',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                ],
                              ),
                              SizedBox(
                                height: context.screenHeight * 0.02,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}Vectorcode.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text('Company name here',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(width: context.screenWidth * 0.035),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}VectorPhone.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    '+21 315 909 909',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                  SizedBox(width: context.screenWidth * 0.055),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}VectorEmail.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    'client@gmail.com',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                  SizedBox(width: context.screenWidth * 0.028),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}VectorPhone.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    'Mailing Address',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                  SizedBox(width: context.screenWidth * 0.028),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}Vectorlocation.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    'Mailing Address',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                ],
                              ),
                            
                              SizedBox(height: context.screenHeight*0.02,),
                              Row(
                                children: [
                                   Text('Country Name',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                  SizedBox(
                                    width: context.screenWidth * 0.056,
                                  ),
                                  Text('Code',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0XFF11345A),
                                          fontFamily: 'Readex Pro')),
                                ],
                              ),
                              SizedBox(height: context.screenHeight*0.02,),
                              Row(
                                children: [
                                   SvgPicture.asset(
                                      '${ImagesAssets.imagePath}Vectorflag.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                   Text(
                                    'United Stated',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                  SizedBox(width: context.screenWidth * 0.06),
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}Vectorcode.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text(
                                    '2154',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Readex Pro'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: context.screenHeight * 0.23,
                        width: context.screenWidth * 0.86,
                        decoration: BoxDecoration(
                          color: Colors
                              .white, // Optional: Set the background color
                          border: Border.all(
                            color: Color(0XFF3551B64D), // Border color
                            width: 1.0, // Border thickness
                          ),
                          borderRadius: BorderRadius.circular(
                              16), // Optional: Rounded corners
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Aligns text to the left
                            children: [
                              Text(
                                'Service Information',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0XFF11345A),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                  height: 8), // Add some space between texts
                              Text('Supplier Service',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0XFF11345A),
                                      fontFamily: 'Readex Pro')),
                              SizedBox(
                                height: context.screenHeight * 0.02,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      '${ImagesAssets.imagePath}VectorAir.svg'),
                                  SizedBox(
                                    width: context.screenWidth * 0.005,
                                  ),
                                  Text('Air Tickets',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily: 'Readex Pro')),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}