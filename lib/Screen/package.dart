import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Screen/package_detail.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/package_detail_container.dart';
import 'package:flutter/material.dart';

class Package extends StatelessWidget {
  const Package({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 62, right: 62),
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

              // ElevatedButton on the right
              SizedBox(
                height: context.screenHeight * 0.075,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PackageDetail(),
                        ));
                  },
                  child: Text(
                    'Add New Package',
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColor.buttonTextColor,
                        // fontWeight: FontWeight.w400,
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
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.white,
                  border: Border.all(color: AppColor.borderColor),
                  boxShadow: [
                    BoxShadow(color: Color(0XFFE3F5FA)),
                    BoxShadow(
                        color: Colors.white, blurRadius: 7, spreadRadius: -4),
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
    );
  }
}
