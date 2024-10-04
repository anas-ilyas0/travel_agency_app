import 'dart:io';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:fab_tech_sol/widgets/fields.dart';
import 'package:fab_tech_sol/widgets/cancel_button.dart';
import 'package:fab_tech_sol/widgets/dashed_border.dart';
import 'package:fab_tech_sol/widgets/upload_image_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileAddNewAgent extends StatelessWidget {
  const MobileAddNewAgent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  Text(
                    'New Agent',
                    style: TextStyle(
                        fontFamily: readexPro,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Container(),
                  ),
                ],
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Agent Details',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    ),
                    const SizedBox(height: 25),
                    Consumer<UserProvider>(
                        builder: (context, userProvider, child) {
                      return DashedBorder().dashedBorder(() {
                        userProvider.pickAgentImage();
                      },
                          context,
                          userProvider.selectedAgentImage == null
                              ? Center(
                                  child:
                                      UploadImageButton().uploadImageButton(() {
                                    userProvider.pickAgentImage();
                                  }, context),
                                )
                              : GestureDetector(
                                  onTap: () {
                                    userProvider.pickAgentImage();
                                  },
                                  child: Image.file(
                                    File(userProvider.selectedAgentImage!.path),
                                    fit: BoxFit.fill,
                                    height: 180,
                                    width: double.infinity,
                                  ),
                                ),
                          EdgeInsets.symmetric(
                              horizontal:
                                  userProvider.selectedAgentImage != null
                                      ? 0
                                      : 20));
                    }),
                    const SizedBox(height: 40),
                    Fields().authField(context, 'First name'),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Last name'),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Phone Number',
                        textInputType: TextInputType.phone),
                    const SizedBox(height: 10),
                    Fields().emailField('Email',
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(height: 10),
                    Fields().emailField(
                      'Password',
                    ),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Location'),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
              AuthButtons().authButtons('Save', () {}, FontWeight.w500, color),
              const SizedBox(height: 10),
              CancelButton().cancelButton(context),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
