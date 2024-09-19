import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PacakgeDetails2 extends StatelessWidget {
  const PacakgeDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.04,
                  ),
                  const Text(
                    'Package Details',
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0XFF303C6C),
                        fontFamily: 'Readex Pro bold',
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.04,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          const Text(
                            'price',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Readex Pro'),
                          ),
                          SizedBox(
                            width: context.screenWidth * 0.2,
                          ),
                          const Text(
                            'Types of people',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Readex Pro'),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Row(
                    children: [
                      Container(
                        height: context.screenHeight * 0.08,
                        width: context.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text('\$ 500'),
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.025,
                      ),
                      Container(
                        height: context.screenHeight * 0.08,
                        width: context.screenWidth * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Adult'),
                              Icon(Icons.arrow_downward)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  const Text('Place',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Readex Pro')),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: context.screenHeight * 0.35,
                      width: context.screenWidth * 0.425,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.borderColor3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: context.screenHeight * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Checkbox(
                                    activeColor: AppColor.blueColor,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    checkColor: AppColor.blueColor,
                                    value: false,
                                    onChanged: (bool? newValue) {},
                                  ),
                                  Container(
                                    width: context.screenWidth * 0.36,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: AppColor.Textbackground,
                                      border: Border.all(
                                          color: AppColor.borderColor3),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 7, top: 12),
                                      child: Text(
                                          'Laxmisagar, BBSR, Bhubaneshwar-751006'),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: IconButton(
                                      icon: Icon(Icons.remove_circle_outline,
                                          color: AppColor.blueColor),
                                      onPressed: () {
                                        // Handle button press
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              // Right side: Circle button with "-" icon
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  const Text('Activity',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Readex Pro')),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: context.screenHeight * 0.34,
                      width: context.screenWidth * 0.425,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColor.borderColor3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: context.screenHeight * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Checkbox(
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    activeColor: AppColor.blueColor,
                                    checkColor: AppColor.blueColor,
                                    value: false, // Set initial value
                                    onChanged: (bool? newValue) {},
                                  ),
                                  Container(
                                    width: context.screenWidth * 0.36,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      color: AppColor.Textbackground,
                                      border: Border.all(
                                          color: AppColor.borderColor3),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 7, top: 10),
                                      child: Text(
                                          'Share or listen to a success story.'),
                                    ),
                                  ),
                                  GestureDetector(
                                    child: IconButton(
                                      icon: Icon(Icons.remove_circle_outline,
                                          color: AppColor.blueColor),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              // Right side: Circle button with "-" icon
                            ],
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
                    height: context.screenHeight * 0.2,
                  )
                ],
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                      height: context.screenHeight * 0.5,
                      width: context.screenWidth * 0.47,
                      child: SvgPicture.asset(
                          '${ImagesAssets.imagePath}OBJECTS.svg'))),
            ],
          ),
        ),
      ),
    );
  }
}
