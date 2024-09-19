import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Screen/package_detail.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/package_detail_container.dart';
import 'package:flutter/material.dart';

class Package extends StatelessWidget {
  const Package({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: context.screenWidth * 0.1),
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
                    fontSize: context.screenWidth * 0.05,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PackageDetail(),
                        ));
                  },
                  child: Text(
                    'Add New Package',
                    style: TextStyle(
                        fontSize: context.screenWidth * 0.035,
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
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                  height: context.screenHeight * 0.77,
                  width: context.screenWidth * 0.94,
                  padding: EdgeInsets.all(context.screenWidth * 0.05),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                   // border: Border.all(color: AppColor.borderColor.withOpacity(0.1,),width: 1),
                    boxShadow:  [
                  BoxShadow(color: Color(0XFFE3F5FA)),
                  BoxShadow(color: Colors.white, blurRadius: 7, spreadRadius: -4),
                ],
                  ),
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return PackageDetailContainer();
                      },
                      itemCount: 3)),
            ),
          ),
        ]),
      ),
    );
  }
}
