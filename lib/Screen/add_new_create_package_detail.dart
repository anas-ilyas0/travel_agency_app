import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:fab_tech_sol/widget/useredit_data.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avatar.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CreateNewPackageForm extends StatefulWidget {
  const CreateNewPackageForm({super.key});

  @override
  State<CreateNewPackageForm> createState() => _CreateNewPackageFormState();
}

class _CreateNewPackageFormState extends State<CreateNewPackageForm>
    with SingleTickerProviderStateMixin {
  List<String> agents = ['John Doe', 'Jane Smith', 'James Bond', 'Tony Stark'];
  String? selectedValue1;

  @override
  Widget build(BuildContext context) {
     final imageProvider = Provider.of<UserProvider>(context);
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                               image: imageProvider.imageUrl != null
                                        ? DecorationImage(
                                            image:
                                                NetworkImage(imageProvider.imageUrl!),
                                            fit: BoxFit.cover,
                                          )
                                        : null,
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
                              onPressed: ()async {
                                  await imageProvider.pickImage();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF11345A),
                                  minimumSize: Size(context.screenWidth * 0.11,
                                      context.screenHeight * 0.09)),
                              child: Row(
                                mainAxisSize: MainAxisSize
                                    .min, // Make Row as wide as the content
                                children: [
                                  Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  // Icon
                                  SizedBox(width: 8),
                                  // Space between icon and text
                                  Text(
                                    'Upload Image',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: fontFamilys),
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
                  // Row(
                  //   //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //
                  //     AddNewAgentTitlelAndDescription(
                  //         text1: 'Client Name', text2: 'John Doe'),
                  //     SizedBox(
                  //       width: context.screenWidth * 0.05,
                  //     ),
                  //     AddNewAgentTitlelAndDescription(
                  //         text1: 'Client Phone Number',
                  //         text2: '+1 (555) 987-6543'),
                  //   ],
                  // ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Client Name',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Widgets().textFormField('John Doe', context),

                          SizedBox(
                            width: context.screenWidth * 0.05,
                          ),
                          // Widgets().addNewPackageFormAgentNameAndClinetName(context, 'Select Supplier', 'John Doe')
                        ],
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Client Phone Number',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Widgets().textFormField('+1 (555) 987-6543', context),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Agent Name',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          UserEditData(text: "Add Agent", onTap:  () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard(
                                          tabIndex: 2,
                                        )));
                          }),

                          // firstDropDown(),
                          SizedBox(
                            width: context.screenWidth * 0.05,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Select Supplier',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          UserEditData(text: "Add Supplier",onTap:  () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard(
                                          tabIndex: 3,
                                        )));
                          }),
                          // secondDropDown(),

                          SizedBox(
                            width: context.screenWidth * 0.05,
                          ),
                          // Widgets().addNewPackageFormAgentNameAndClinetName(context, 'Select Supplier', 'John Doe')
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),

                  SizedBox(
                    height: 16,
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
                            height: 25,
                          ),
                          Widgets().PackageTextNmaelist('Adult'),
                          SizedBox(
                            height: 38,
                          ),
                          Widgets().PackageTextNmaelist('Child'),
                          SizedBox(
                            height: 36,
                          ),
                          Widgets().PackageTextNmaelist('Infant'),
                          SizedBox(
                            height: 36,
                          ),
                          Widgets().PackageTextNmaelist('Senior Citizen'),
                          SizedBox(
                            height: 36,
                          ),
                          Widgets().PackageTextNmaelist('Other'),
                          SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: context.screenWidth * .08,
                      ),
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
