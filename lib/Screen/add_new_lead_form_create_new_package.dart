import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avester.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNewPackageForm extends StatefulWidget {
  const CreateNewPackageForm({super.key});

  @override
  State<CreateNewPackageForm> createState() => _CreateNewPackageFormState();
}

class _CreateNewPackageFormState extends State<CreateNewPackageForm> {
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
                        color: const Color(0XFF11345A)),
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
                            color: const Color(0XFF11345A),
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
                          height:150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  width: 0.5,
                                  color: AppColor.packageFormColor)),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.01,
                        ),
                        Column(
                          children: [
                            Text(
                              'Client Image',
                              style: TextStyle(
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.w400),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF11345A),
                                  minimumSize: Size(context.screenWidth * 0.11,
                                      context.screenHeight * 0.09)),
                              child:  Row(
                                mainAxisSize: MainAxisSize
                                    .min, // Make Row as wide as the content
                                children: [
                                  Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.white,size: 18,
                                  ),
                                  // Icon
                                  SizedBox(width: 8),
                                  // Space between icon and text
                                  Text(
                                    'Upload Image',
                                    style: TextStyle(color: Colors.white,fontSize: 12,fontWeight:FontWeight.w300,fontFamily:fontFamilys ),
                                  ),
                                  // Text
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
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Client Name',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.w400),
                            ),
                            Widgets().textFormField('John Doe', context),
                          ],
                        ),
                      ),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Client Phone Number',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: fontFamilys,
                                fontWeight: FontWeight.w400),
                          ),
                          Widgets()
                              .textFormField('+1 (555) 987-6543', context),
                        ],
                      ),

                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Widgets().addNewPackageFormAgentNameAndClinetName(
                            context, 'Agent Name', 'John Doe'),
                        SizedBox(
                          width: context.screenWidth * 0.009,
                        ),
                        Widgets().addNewPackageFormAgentNameAndClinetName(
                            context, 'Select Supplier', 'John Doe')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),

                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Widgets().CreateNewPackagetext('Name'),
                          ),
                          SizedBox(
                            height: 26,
                          ),
                          Widgets().PackageTextNmaelist('Adult'),
                          SizedBox(
                            height: 40,
                          ),
                          Widgets().PackageTextNmaelist('Child'),
                          SizedBox(
                            height: 35,
                          ),
                          Widgets().PackageTextNmaelist('Infant'),
                          SizedBox(
                            height: 35,
                          ),
                          Widgets().PackageTextNmaelist('Senior Citizen'),
                          SizedBox(
                            height: 35,
                          ),
                          Widgets().PackageTextNmaelist('Other'),
                          SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                      SizedBox(width: context.screenWidth*.08,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Widgets()
                                .CreateNewPackagetext('Number of People'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('500', context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('600', context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('350', context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('500', context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('1100', context),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Widgets().CreateNewPackagetext('Budget'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('\$200', context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('\$300', context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('\$150', context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('\$500', context),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Widgets().textFormField('\$600', context),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //

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
                            child: Text(
                              'Cancle',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: fontFamilys,
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
                                  fontFamily: fontFamilys,
                                  color: Colors.black),
                            )),
                      ),
                    ],
                  ),
                  // // RowWidget("dfs"),
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
