import 'package:fab_tech_sol/AppColor/app_color.dart';




import 'package:fab_tech_sol/Screen/pacakge_details2.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/mobile/package_nav_bar_item.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widget/package_detail_container.dart';
import 'package:fab_tech_sol/widget/widget.dart';
import 'package:flutter/material.dart';


class PackageClassScreen extends StatefulWidget {
  const PackageClassScreen({super.key});

  @override
  State<PackageClassScreen> createState() => _PackageClassScreenState();
}

class _PackageClassScreenState extends State<PackageClassScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context) || Responsive.isTablet(context) ? Scaffold(
      body:
       Padding(
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
                          builder: (context) => const PackageDetails2(),
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
                      return const PackageDetailContainer();
                    },
                    itemCount: 3)),
          ),
        ]),
      ),
    ),
     ): PackageNavBarItem();
  }
    
  }
