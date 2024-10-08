import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/mobile/mobile_add_new_local_supplier.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widget/addnewagent.dart';
import 'package:fab_tech_sol/widget/back_button_title_avatar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/supplier_dropdown.dart';

class AddNewLocalSupplier extends StatefulWidget {
  const AddNewLocalSupplier({super.key});

  @override
  State<AddNewLocalSupplier> createState() => _AddNewLocalSupplierState();
}

class _AddNewLocalSupplierState extends State<AddNewLocalSupplier> {
  List<String> service = [
    'Air Ticket',
    'Hotel Accommodation',
    'Transfers',
    'Tours & Excursions',
    'Other'
  ];

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    List<String> agents = [
      'John Doe',
      'Jane Smith',
      'James Bond',
      'Tony Stark'
    ];
    final imageProvider = Provider.of<UserProvider>(context);

    return Responsive.isDesktop(context) || Responsive.isTablet(context)
        ? Scaffold(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  BackButtonAvatar(
                    text1: 'Add New Local Supplier',
                  ),
                  const Divider(),
                  Padding(
                    padding: Responsive.isDesktop(context)
                        ? EdgeInsets.only(left: 90, right: 90)
                        : EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: context.screenHeight * 0.02,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Local Suppler Details',
                              style: TextStyle(
                                  fontSize: 23,
                                  color: AppColor.Indigo_Dye,
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: context.screenHeight * 0.01,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: Responsive.isDesktop(context)
                                        ? context.screenHeight * 0.25
                                        : context.screenHeight * 0.2,
                                    width: Responsive.isDesktop(context)
                                        ? context.screenWidth * 0.12
                                        : context.screenWidth * 0.18,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: imageProvider.imageUrl != null
                                            ? DecorationImage(
                                                image: NetworkImage(
                                                    imageProvider.imageUrl!),
                                                fit: BoxFit.cover,
                                              )
                                            : null,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: AppColor.borderColor,
                                            width: 0.5)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Company Logo',
                                        style: TextStyle(
                                            fontFamily: fontFamilys,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                      ElevatedButton(
                                        onPressed: () async {
                                          await imageProvider.pickImage();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(160, 48),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6, horizontal: 10),
                                          backgroundColor:
                                              const Color(0XFF11345A),
                                        ),
                                        child: const Row(
                                          // Make Row as wide as the content
                                          children: [
                                            Icon(
                                              Icons.file_upload_outlined,
                                              color: Colors.white,
                                              size: 15,
                                            ), // Icon
                                            SizedBox(
                                              width: 5,
                                            ),
                                            // Space between icon and text
                                            Text(
                                              'Upload Image',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ), // Text
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: context.screenWidth * 0.02,
                                  ),
                                  Container(
                                    height: Responsive.isDesktop(context)
                                        ? context.screenHeight * 0.25
                                        : context.screenHeight * 0.2,
                                    width: Responsive.isDesktop(context)
                                        ? context.screenWidth * 0.12
                                        : context.screenWidth * 0.18,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        image: imageProvider.imageUrl != null
                                            ? DecorationImage(
                                                image: NetworkImage(
                                                    imageProvider.imageUrl!),
                                                fit: BoxFit.cover,
                                              )
                                            : null,
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: AppColor.borderColor,
                                            width: 0.5)),
                                  ),
                                  SizedBox(
                                    width: context.screenWidth * 0.01,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Supplier Logo',
                                        style: TextStyle(
                                            fontFamily: fontFamilys,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15),
                                      ),
                                      ElevatedButton(
                                        onPressed: () async {
                                          await imageProvider.pickImage();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(160, 48),
                                          backgroundColor:
                                              const Color(0XFF11345A),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 6, horizontal: 10),
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize
                                              .min, // Make Row as wide as the content
                                          children: [
                                            Icon(
                                              Icons.file_upload_outlined,
                                              size: 15,
                                              color: Colors.white,
                                            ), // Icon
                                            SizedBox(
                                                width:
                                                    8), // Space between icon and text
                                            Text(
                                              'Upload Image',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ), // Text
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Expanded(
                                child: SizedBox(
                                    height: context.screenHeight * 0.3,
                                    width: context.screenWidth * 0.2,
                                    child: Image.asset(
                                        '${ImagesAssets.imagePath}XMLID.png')),
                              )
                            ],
                          ),
                        ),
                        const Divider(),
                        SizedBox(
                          height: context.screenHeight * 0.03,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Bank Details',
                              style: TextStyle(
                                  fontSize: 23,
                                  color: const Color(0XFF11345A),
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: context.screenHeight * 0.04,
                        ),
                        Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'Bank Name',
                                  text2: 'Summit National Bank'),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'Bank Account',
                                  text2: 'Checking Account'),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'Bank address',
                                  text2:
                                      'Laxmisagar, BBSR, Bhubaneshwar-751006'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.015,
                        ),
                        const Divider(),
                        SizedBox(
                          height: context.screenHeight * 0.03,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Company Details',
                              style: TextStyle(
                                  fontSize: 23,
                                  color: const Color(0XFF11345A),
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: context.screenHeight * 0.04,
                        ),
                        Row(
                          children: [
                            AddNewAgentTitlelAndDescription(
                                text1: 'Supplier Company Name',
                                text2: 'John Doe'),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            AddNewAgentTitlelAndDescription(
                                text1: 'Supplier Company Address',
                                text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'),
                          ],
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.015,
                        ),
                        const Divider(),
                        SizedBox(
                          height: context.screenHeight * 0.03,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Supplier Details',
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0XFF11345A),
                                  fontFamily: fontFamilys),
                            )),
                        SizedBox(
                          height: context.screenHeight * 0.04,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'Supplier Name', text2: 'John Doe'),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'Supplier Address',
                                  text2:
                                      'Laxmisagar, BBSR, Bhubaneshwar-751006'),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'E-mail',
                                  text2: 'john.smith@gmail.com'),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'Phone Number', text2: 'Demo123456'),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'VAT Number', text2: 'GB123456789'),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.01,
                            ),
                            Flexible(
                              child: AddNewAgentTitlelAndDescription(
                                  text1: 'BRN Number',
                                  text2: '123-456-789-001'),
                            ),
                          ],
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 50,
                        ),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Supplier Service Details',
                              style: TextStyle(
                                  fontSize: 23,
                                  color: Color(0XFF11345A),
                                  fontFamily: 'ReadexPro',
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: context.screenHeight * 0.04,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: context.screenHeight * 0.15,
                              // width: context.screenWidth * 0.2,
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Select Service',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'ReadexPro'),
                                    ),
                                  ),
                                  SupplierDropdown()
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.1,
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: SizedBox(
                                height: 45,
                                width: 140,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0XFFD5D5D5),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    onPressed: () {},
                                    child: const Text(
                                      'Cancle',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'ReadexPro',
                                          color: Colors.black),
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.02,
                            ),
                            Flexible(
                              child: SizedBox(
                                height: 45,
                                width: 140,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0XFF83D0E3),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5))),
                                    onPressed: () {},
                                    child: const Text(
                                      'Save',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: 'ReadexPro',
                                          color: Colors.black),
                                    )),
                              ),
                            ),
                            SizedBox(height: context.screenHeight * 0.2)
                          ],
                        ),
                      ],
                    ),
                  )
                ],

                ///
              ),
            ),
          )
        : MobileAddNewLocalSupplier();
  }
}
