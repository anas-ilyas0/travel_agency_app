import 'dart:io';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:fab_tech_sol/widgets/fields.dart';
import 'package:fab_tech_sol/widgets/cancel_button.dart';
import 'package:fab_tech_sol/widgets/dashed_border.dart';
import 'package:fab_tech_sol/widgets/mobile_new_lead_container.dart';
import 'package:fab_tech_sol/widgets/upload_image_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileAddNewPackage extends StatelessWidget {
  const MobileAddNewPackage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> agents = ['John Doe', 'Vernon Green', 'Gerald Morales'];
    List<String> suppliers = ['Lucas Jones', 'Ritthy Gregory'];
    final userProvider = Provider.of<UserProvider>(context);
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
                    'New Package',
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
                padding: const EdgeInsets.fromLTRB(25, 8, 25, 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 7),
                    Text(
                      'Client Image',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    ),
                    const SizedBox(height: 10),
                    DashedBorder().dashedBorder(
                        () {},
                        context,
                        userProvider.selectedPackageImage == null
                            ? Center(
                                child:
                                    UploadImageButton().uploadImageButton(() {
                                  userProvider.pickPackageImage();
                                }, context),
                              )
                            : GestureDetector(
                                onTap: () {
                                  userProvider.pickPackageImage();
                                },
                                child: Center(
                                  child: Image.file(
                                    File(userProvider
                                        .selectedPackageImage!.path),
                                    fit: BoxFit.fill,
                                    height: 180,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                        EdgeInsets.symmetric(
                            horizontal:
                                userProvider.selectedPackageImage != null
                                    ? 0
                                    : 20)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Client Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontFamily: readexPro,
                            color: mobileLeadText2Color),
                      ),
                    ),
                    Fields().authField(context, 'Client Name'),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Phone Number',
                        textInputType: TextInputType.phone),
                    const SizedBox(height: 10),
                    Fields().dropDownField('Agent Name', agents, (value) {}),
                    const SizedBox(height: 10),
                    Fields().dropDownField(
                        'Select Supplier', suppliers, (value) {}),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: readexPro,
                                      color: mobileLeadText2Color,
                                    ),
                                  ),
                                  MobileNewLeadContainer()
                                      .mobileNewLeadContainer('Adult'),
                                ],
                              )),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'No of People',
                                    style: TextStyle(
                                      fontFamily: readexPro,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      color: mobileLeadText2Color,
                                    ),
                                  ),
                                  Fields().authField(context, '0',
                                      textInputType: TextInputType.number),
                                ],
                              )),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Budget',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: readexPro,
                                      color: mobileLeadText2Color,
                                    ),
                                  ),
                                  Fields().authField(context, '\$0',
                                      textInputType: TextInputType.number),
                                ],
                              )),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: MobileNewLeadContainer()
                                      .mobileNewLeadContainer('Child')),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Fields().authField(context, '0',
                                      textInputType: TextInputType.number)),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Fields().authField(context, '\$0',
                                      textInputType: TextInputType.number)),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: MobileNewLeadContainer()
                                      .mobileNewLeadContainer('Infant')),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Fields().authField(context, '0',
                                      textInputType: TextInputType.number)),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Fields().authField(context, '\$0',
                                      textInputType: TextInputType.number)),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: MobileNewLeadContainer()
                                      .mobileNewLeadContainer(
                                          'Senior Citizen')),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Fields().authField(context, '0',
                                      textInputType: TextInputType.number)),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Fields().authField(context, '\$0',
                                      textInputType: TextInputType.number)),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: MobileNewLeadContainer()
                                      .mobileNewLeadContainer('Other')),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Fields().authField(context, '0',
                                      textInputType: TextInputType.number)),
                              const SizedBox(width: 5),
                              Expanded(
                                  child: Fields().authField(context, '\$0',
                                      textInputType: TextInputType.number)),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    AuthButtons()
                        .authButtons('Save', () {}, FontWeight.w500, color),
                    const SizedBox(height: 10),
                    CancelButton().cancelButton(context),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
