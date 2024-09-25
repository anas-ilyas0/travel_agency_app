import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocalSupplierDetail extends StatelessWidget {
  const LocalSupplierDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: context.screenHeight * 0.02,
          // ),
          BackButtonAvatar(
            text1: 'Local Supplier Details',
          ),
          const Divider(
            thickness: 0.5,
          ),
          SizedBox(
            height: context.screenHeight * 0.01,
          ),
          //
          Container(
            height: context.screenHeight * 0.83,
            width: context.screenWidth * 0.92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
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
            child: SingleChildScrollView(
              child: Flexible(
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
                        Flexible(
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 38.0), // Add padding for better alignment
                              child: Text(
                                'Supplier Full Name here',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: fontFamilys,
                                  color: Color(0XFF11345A),
                                ),
                              ),
                            ),
                          ),
                        ),
                    
                        // ElevatedButton on the right
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20.0,
                              top: 16), // Add padding for better alignment
                          child: SizedBox(
                            height: context.screenHeight * 0.08,
                            width: context.screenWidth *
                                0.13, // Increased width for better text fit
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFF83D0E3),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              onPressed: () {
                                // Action on button press
                              },
                              child: FittedBox(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment
                                      .center, // Centering the content within the button
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'Edit Details',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Color(
                                            0XFF11345A,
                                          ),
                                          fontFamily: fontFamilys),
                                    ),
                                  ],
                                ),
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
                      child: Expanded(
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
                                    color:
                                        const Color(0xff3551b64d), // Border color
                                    width: 1.0, // Border thickness
                                  ),
                                  borderRadius: BorderRadius.circular(
                                      16), // Optional: Rounded corners
                                ),
                                child:Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 30, // Adjust the radius for size
                            backgroundImage: AssetImage('${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                          ),
                          Positioned(
                            right: 4,
                            bottom: -2,
                            child: Icon(
                Icons.circle,
                color: Colors.green,
                size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16, // Fixed space between avatar and text
                    ),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Text(
                'Supplier Full Name here',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: fontFamilys,
                  color: AppColor.addnewagent,
                  fontSize: 18,
                ),
                overflow: TextOverflow.ellipsis, // Prevent overflow
                softWrap: false,
                            ),
                          ),
                          FittedBox(
                            child: Text(
                'Local Supplier',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis, // Prevent overflow
                softWrap: false,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                
                              ),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.02,
                            ),
                            Container(
                              height: context.screenHeight * 0.15,
                              width: context.screenWidth *
                                  0.3, // Set width to 50% of the screen width
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: const Color(0xff3551b64d),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('${ImagesAssets.imagePath}Ellipse3.png'),
                      ),
                    ),
                    SizedBox(
                      width: context.screenWidth * 0.01, // Adjust space between avatar and text
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'Company Name here',
                          style: TextStyle(
                            fontFamily: fontFamilys,
                            fontWeight: FontWeight.w500,
                            color: AppColor.addnewagent,
                          ),
                          overflow: TextOverflow.ellipsis, // Handle overflow by showing ellipsis
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                )
                
                            )
                          ],
                        ),
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
                              color: const Color(0xff3551b64d), // Border color
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
                                Text('Personal Information',
                                    style:
                                        AppTextstyless.localSupplierDetailTitle),
                                const SizedBox(
                                    height: 8), // Add some space between texts
                                Flexible(
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        Text('Name',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.12,
                                        ),
                                        Text('Phone Number',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.08,
                                        ),
                                        Text('E-Mail',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.12,
                                        ),
                                        Text('Address',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: context.screenHeight * 0.02,
                                ),
                                Flexible(
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorName.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        const Text('Naseeb Zulfiqar',
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
                                        const Text(
                                          '+21 315 909 909',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontFamily: 'Readex Pro'),
                                        ),
                                        SizedBox(width: context.screenWidth * 0.078),
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorEmail.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        const Text(
                                          'client@gmail.com',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontFamily: 'Readex Pro'),
                                        ),
                                        SizedBox(width: context.screenWidth * 0.05),
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorEmail.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        const Text(
                                          'client@gmail.com',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontFamily: 'Readex Pro'),
                                        ),
                                      ],
                                    ),
                                  ),
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
                              color: const Color(0xff3551b64d), // Border color
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
                                Text('Bank Information',
                                    style:
                                        AppTextstyless.localSupplierDetailTitle),
                                const SizedBox(
                                    height: 8), // Add some space between texts
                                Flexible(
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        Text('Bank Name',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.088,
                                        ),
                                        Text('Bank Name',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.08,
                                        ),
                                        Text('Bank Name',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: context.screenHeight * 0.02,
                                ),
                                Flexible(
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorName.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        Text('Naseeb Zulfiqar',
                                            style: AppTextstyless
                                                .localSupplierDetailText),
                                        SizedBox(width: context.screenWidth * 0.058),
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorPhone.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        Text(
                                          '+21 315 909 909',
                                          style:
                                              AppTextstyless.localSupplierDetailText,
                                        ),
                                        SizedBox(width: context.screenWidth * 0.055),
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorEmail.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        Text('client@gmail.com',
                                            style: AppTextstyless
                                                .localSupplierDetailText),
                                      ],
                                    ),
                                  ),
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
                              color: const Color(0xff3551b64d), // Border color
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
                                Flexible(
                                  child: FittedBox(
                                    child: Text('Company Information',
                                        style:
                                            AppTextstyless.localSupplierDetailTitle),
                                  ),
                                ),
                                const SizedBox(
                                    height: 8), // Add some space between texts
                                Flexible(
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        Text('Company Name',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.056,
                                        ),
                                        Text('Vet Number',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.08,
                                        ),
                                        Text('E-Mail',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.1,
                                        ),
                                        Text('Brm-Number',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                        SizedBox(
                                          width: context.screenWidth * 0.05,
                                        ),
                                        Text('Company Address',
                                            style: AppTextstyless
                                                .localSupplierDetailSubTitle),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: context.screenHeight * 0.02,
                                ),
                                Flexible(
                                  child: FittedBox(
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorName.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        Text('Company name here',
                                            style: AppTextstyless
                                                .localSupplierDetailText),
                                        SizedBox(width: context.screenWidth * 0.035),
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorPhone.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        Text('+21 315 909 909',
                                            style: AppTextstyless
                                                .localSupplierDetailText),
                                        SizedBox(width: context.screenWidth * 0.055),
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorEmail.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        Text('client@gmail.com',
                                            style: AppTextstyless
                                                .localSupplierDetailText),
                                        SizedBox(width: context.screenWidth * 0.028),
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorEmail.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        Text('Mailing Address',
                                            style: AppTextstyless
                                                .localSupplierDetailText),
                                        SizedBox(width: context.screenWidth * 0.028),
                                        SvgPicture.asset(
                                            '${ImagesAssets.imagePath}VectorEmail.svg'),
                                        SizedBox(
                                          width: context.screenWidth * 0.005,
                                        ),
                                        Text('Mailing Address',
                                            style: AppTextstyless
                                                .localSupplierDetailText),
                                      ],
                                    ),
                                  ),
                                ),
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
                              color: const Color(0xff3551b64d), // Border color
                              width: 1.0, // Border thickness
                            ),
                            borderRadius: BorderRadius.circular(
                                16), // Optional: Rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .start, // Aligns text to the left
                                children: [
                                  FittedBox(
                                    child: Text('Service Information',
                                        style:
                                            AppTextstyless.localSupplierDetailTitle),
                                  ),
                                  const SizedBox(
                                      height: 8), // Add some space between texts
                                  FittedBox(
                                    child: Text('Supplier Service',
                                        style: AppTextstyless
                                            .localSupplierDetailSubTitle),
                                  ),
                                  SizedBox(
                                    height: context.screenHeight * 0.02,
                                  ),
                                  Flexible(
                                    child: FittedBox(
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                              '${ImagesAssets.imagePath}VectorAir.svg'),
                                          SizedBox(
                                            width: context.screenWidth * 0.005,
                                          ),
                                          Text('Air Tickets',
                                              style: AppTextstyless
                                                  .localSupplierDetailText),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
