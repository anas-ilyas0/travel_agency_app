import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Screen/add_new_lead_form_create_new_package.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PackageDetail extends StatelessWidget {
  const PackageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 52, right: 52),
        child: Column(children: [
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          Row(
            children: [
              // Package Detail Text
              Flexible(
                child: Text(
                  'Package Detail',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'ReadexPro',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Spacer(),

              SizedBox(
                width: context.screenWidth * 0.12,
              ),
              Widgets().searchTextField(),
              SizedBox(
                width: context.screenWidth * 0.02,
              ),

              // Add New Package Button
              Container(
                height: context.screenHeight * 0.07,
                decoration: BoxDecoration(
                  color: addLeadButtonColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateNewPackageForm(),
                          ));
                    },
                    child: Center(
                      child: Text(
                        'Add New Package',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: fontFamilys,
                          color: color,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.screenWidth * 0.02,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: context.screenHeight * 0.08,
                // width: context.screenWidth*0.98,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                //  border: Border.all(color: Color(0XFF70707033), width: 1),
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Widgets().agentText('Client Name', 17),
                    ),
                    SizedBox(
                      width: context.screenWidth * 0.045,
                    ),
                    Widgets().agentText('Phone Number', 17),
                    SizedBox(
                      width: context.screenWidth * 0.02,
                    ),
                    VerticalDivider(
                      indent: 5,
                      endIndent: 5,
                      width: 1,
                      color: AppColor.buttonTextColors,
                    ),
                    SizedBox(
                      width: context.screenWidth * 0.02,
                    ),
                    Widgets().agentText('Agent Name', 17),
                    SizedBox(
                      width: context.screenWidth * 0.03,
                    ),
                    Widgets().agentText('Phone Number', 17),
                    SizedBox(
                      width: context.screenWidth * 0.025,
                    ),
                    VerticalDivider(
                      indent: 5,
                      endIndent: 5,
                       color: AppColor.buttonTextColors,
                    ),
                    SizedBox(
                      width: context.screenWidth * 0.03,
                    ),
                    Widgets().agentText('Supplier Name', 17),
                    SizedBox(
                      width: context.screenWidth * 0.07,
                    ),
                    Widgets().agentText('Phone Number', 17),
                    SizedBox(
                      width: context.screenWidth * 0.04,
                    ),
                    Widgets().agentText('Action', 17),
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: context.screenHeight * 0.71,
            width: context.screenWidth * 0.9,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap:
                        true, // Ensures it takes up only as much space as needed
                    physics:
                        NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  color:AppColor.buttonTextColors, width: 0.2)),
                          height: 66,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Widgets().circularAvatar(
                                      backgroundImage: '${imageUrl}agent.png',
                                    ),
                                    Widgets().agentText('John Doe', 12),
                                  ],
                                ),
                                SizedBox(width: context.screenWidth * 0.04),
                                Widgets().agentText('+21 999 999 999', 12),
                                SizedBox(width: context.screenWidth * 0.063),
                                Row(
                                  children: [
                                    Widgets().circularAvatar(
                                      backgroundImage: '${imageUrl}agent.png',
                                    ),
                                    Widgets().agentText('John Doe', 12),
                                  ],
                                ),
                                SizedBox(width: context.screenWidth * 0.04),
                                Widgets().agentText('+21 999 999 999', 12),
                                SizedBox(width: context.screenWidth * 0.07),
                                Row(
                                  children: [
                                    Widgets().circularAvatar(
                                      backgroundImage: '${imageUrl}agent.png',
                                    ),
                                    Widgets().agentText('John Doe', 12),
                                  ],
                                ),
                                SizedBox(width: context.screenWidth * 0.072),
                                Widgets().agentText('+21 999 999 999', 12),
                                SizedBox(
                                  width: context.screenWidth * 0.02,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 22),
                                  child: Widgets().PackageDetailButton(context),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
