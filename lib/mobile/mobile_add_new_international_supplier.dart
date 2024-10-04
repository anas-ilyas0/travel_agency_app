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

class MobileAddNewInternationalSupplier extends StatelessWidget {
  const MobileAddNewInternationalSupplier({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> services = ['Ticket', 'Air Ticket'];
    List<String> countries = ['Pakistan', 'Canada', 'United States'];
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
                    'New Supplier',
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
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Company Logo',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: readexPro,
                                    color: mobileLeadText2Color),
                              ),
                              const SizedBox(height: 15),
                              Consumer<UserProvider>(
                                  builder: (context, userProvider, child) {
                                return DashedBorder().dashedBorder(() {
                                  userProvider
                                      .pickInternationalSupplierCompanyLogo();
                                },
                                    context,
                                    userProvider.selectedInternationalSupplierCompanyLogo ==
                                            null
                                        ? Center(
                                            child: UploadImageButton()
                                                .uploadSuppliersImageButton(() {
                                              userProvider
                                                  .pickInternationalSupplierCompanyLogo();
                                            }, context),
                                          )
                                        : GestureDetector(
                                            onTap: () {
                                              userProvider
                                                  .pickInternationalSupplierCompanyLogo();
                                            },
                                            child: Image.file(
                                              File(userProvider
                                                  .selectedInternationalSupplierCompanyLogo!
                                                  .path),
                                              fit: BoxFit.fill,
                                              height: 180,
                                              width: double.infinity,
                                            ),
                                          ),
                                    EdgeInsets.symmetric(
                                        horizontal: userProvider
                                                    .selectedInternationalSupplierCompanyLogo !=
                                                null
                                            ? 0
                                            : 10));
                              }),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Supplier Image',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: readexPro,
                                    color: mobileLeadText2Color),
                              ),
                              const SizedBox(height: 15),
                              Consumer<UserProvider>(
                                  builder: (context, userProvider, child) {
                                return DashedBorder().dashedBorder(() {
                                  userProvider.pickInternationalSupplierImage();
                                },
                                    context,
                                    userProvider.selectedInternationalSupplierImage ==
                                            null
                                        ? Center(
                                            child: UploadImageButton()
                                                .uploadSuppliersImageButton(() {
                                              userProvider
                                                  .pickInternationalSupplierImage();
                                            }, context),
                                          )
                                        : GestureDetector(
                                            onTap: () {
                                              userProvider
                                                  .pickInternationalSupplierImage();
                                            },
                                            child: Image.file(
                                              File(userProvider
                                                  .selectedInternationalSupplierImage!
                                                  .path),
                                              fit: BoxFit.fill,
                                              height: 180,
                                              width: double.infinity,
                                            ),
                                          ),
                                    EdgeInsets.symmetric(
                                        horizontal: userProvider
                                                    .selectedInternationalSupplierImage !=
                                                null
                                            ? 0
                                            : 10));
                              }),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Bank Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: readexPro,
                            color: mobileLeadText2Color),
                      ),
                    ),
                    Fields().authField(context, 'Bank name'),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Bank Account',
                        textInputType: const TextInputType.numberWithOptions()),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Bank Address'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Company Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: readexPro,
                            color: mobileLeadText2Color),
                      ),
                    ),
                    Fields().authField(context, 'Supplier Company Name'),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Supplier Company Address'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Supplier Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: readexPro,
                            color: mobileLeadText2Color),
                      ),
                    ),
                    Fields().authField(context, 'Supplier Name'),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Supplier Address'),
                    const SizedBox(height: 10),
                    Fields().emailField('Email',
                        textInputType: TextInputType.emailAddress),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Phone Number',
                        textInputType: TextInputType.phone),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'VAT Number'),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'BRN Number',
                        textInputType: TextInputType.phone),
                    const SizedBox(height: 10),
                    Fields().authField(context, 'Code',
                        textInputType: TextInputType.phone),
                    const SizedBox(height: 10),
                    Fields().dropDownField('Country', countries, (value) {}),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 40),
                      child: Text(
                        'Supplier Service Details',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: readexPro,
                            color: mobileLeadText2Color),
                      ),
                    ),
                    Fields()
                        .dropDownField('Select Service', services, (value) {}),
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
