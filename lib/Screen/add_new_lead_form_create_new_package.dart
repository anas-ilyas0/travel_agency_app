import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avester.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreateNewPackageForm extends StatelessWidget {
  const CreateNewPackageForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: context.screenHeight * 0.04,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'Create Packages Details',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: fontFamilys,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF11345A)),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Client Data',
                        style: TextStyle(
                            fontSize: 23,
                            color: Color(0XFF11345A),
                            fontFamily: fontFamilys),
                      )),
                  SizedBox(
                    height: context.screenHeight * 0.04,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Container(
                          height: context.screenHeight * 0.25,
                          width: context.screenWidth * 0.12,
                          decoration: BoxDecoration(
                            color:  Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 0.5,color: AppColor.packageFormColor)
                            
                          ),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.01,
                        ),
                        Column(
                          children: [
                            Text('Client Image',style: TextStyle(fontFamily: fontFamilys,fontWeight: FontWeight.w400),),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF11345A),
                                  minimumSize: Size(context.screenWidth * 0.14,
                                      context.screenHeight * 0.09)),
                              child: const Row(
                                mainAxisSize: MainAxisSize
                                    .min, // Make Row as wide as the content
                                children: [
                                  Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.white,
                                  ), // Icon
                                  SizedBox(width: 8), // Space between icon and text
                                  Text(
                                    'Upload Image',
                                    style: TextStyle(color: Colors.white),
                                  ), // Text
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.05,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AddNewAgentTitelAndDescription(
                          text1: 'Client Name', text2: 'John Doe'),
                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),
                      AddNewAgentTitelAndDescription(
                          text1: 'Client Phone Number',
                          text2: '+1 (555) 987-6543'),
                    ],
                  ),
                  Row(
                    children: [
                     Widgets().addNewPackageFormAgentNameAndClinetName(context, 'Agent Name', 'John Doe'),
                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),
                     Widgets().addNewPackageFormAgentNameAndClinetName(context, 'Select Supplier', 'John Doe')
                    ],
                  ),
                   SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Widgets().CreateNewPackagetext('Name'),
                      SizedBox(
                        width: context.screenWidth * 0.21,
                      ),
                      Widgets().CreateNewPackagetext('Number of People'),
                      SizedBox(
                        width: context.screenWidth * 0.095,
                      ),
                      Widgets().CreateNewPackagetext('Budget'),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Row(
                    children: [
                      Widgets().PackageTextNmaelist('Adult'),
                      SizedBox(
                        width: context.screenWidth * 0.215,
                      ),
                      Widgets().PackageDeatilNumberOfListText('500', context),
                      SizedBox(
                        width: context.screenWidth * 0.025,
                      ),
                      Widgets().PackageDeatilNumberOfListText('\$300', context),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Widgets().PackageTextNmaelist('Child'),
                      SizedBox(
                        width: context.screenWidth * 0.215,
                      ),
                      Widgets().PackageDeatilNumberOfListText('600', context),
                      SizedBox(
                        width: context.screenWidth * 0.025,
                      ),
                      Widgets().PackageDeatilNumberOfListText('\$200', context),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Widgets().PackageTextNmaelist('Adult'),
                      SizedBox(
                        width: context.screenWidth * 0.215,
                      ),
                      Widgets().PackageDeatilNumberOfListText('500', context),
                      SizedBox(
                        width: context.screenWidth * 0.025,
                      ),
                      Widgets().PackageDeatilNumberOfListText('\$500', context),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Widgets().PackageTextNmaelist('Adult'),
                      SizedBox(
                        width: context.screenWidth * 0.215,
                      ),
                      Widgets().PackageDeatilNumberOfListText('500', context),
                      SizedBox(
                        width: context.screenWidth * 0.025,
                      ),
                      Widgets().PackageDeatilNumberOfListText('\$500', context),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Widgets().PackageTextNmaelist('Adult'),
                      SizedBox(
                        width: context.screenWidth * 0.215,
                      ),
                      Widgets().PackageDeatilNumberOfListText('500', context),
                      SizedBox(
                        width: context.screenWidth * 0.025,
                      ),
                      Widgets().PackageDeatilNumberOfListText('\$500', context),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.2,
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
                            child:  Text(
                              'Cancle',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily:fontFamilys ,
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
                            child: Text(
                              'Save',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily:fontFamilys ,
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
            )
          ],
        ),
      ),
    );
  }
}
