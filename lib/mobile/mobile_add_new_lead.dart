import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:fab_tech_sol/widgets/fields.dart';
import 'package:fab_tech_sol/widgets/cancel_button.dart';
import 'package:fab_tech_sol/widgets/check_box.dart';
import 'package:fab_tech_sol/widgets/mobile_new_lead_container.dart';
import 'package:fab_tech_sol/widgets/text_form_note_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileAddNewLead extends StatelessWidget {
  const MobileAddNewLead({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> agents = ['John Doe', 'Vernon Green', 'Gerald Morales'];
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
                    'New Lead',
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
                      'Add New Lead Data',
                      style: TextStyle(
                          fontFamily: readexPro,
                          color: mobileLeadText2Color,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Agent Details',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    ),
                    const SizedBox(height: 15),
                    Fields()
                        .dropDownField('Enter Agent Name', agents, (value) {}),
                    const SizedBox(height: 20),
                    Text(
                      'Client Details',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    ),
                    const SizedBox(height: 15),
                    Fields().authField(context, 'Enter Client Name'),
                    const SizedBox(height: 7),
                    Fields().authField(context, 'Phone Number',
                        textInputType: TextInputType.phone),
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 10),
                    Text(
                      'Trip Details',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    ),
                    const SizedBox(height: 15),
                    Fields().authField(context, 'Destination'),
                    const SizedBox(height: 7),
                    Fields().authField(context, 'Travel Date'),
                    const SizedBox(height: 7),
                    Fields().authField(context, 'Departure Date'),
                    const SizedBox(height: 25),
                    Text(
                      'Additional Notes',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    ),
                    const SizedBox(height: 5),
                    TextFormNoteField()
                        .textFormNoteField('Notes', 6, double.infinity),
                    const SizedBox(height: 10),
                    Text(
                      'Best way to reach you',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    ),
                  ],
                ),
              ),
              Consumer<UserProvider>(
                builder: (context, userProvider, child) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CheckBox().checkLeadBox(
                                userProvider.isMobileCheckedEmail, (value) {
                              userProvider.toggleMobileCheckboxEmail(value!);
                            }, mobileLeadText1Color),
                            Text(
                              'E-mail',
                              style: TextStyle(
                                fontFamily: readexPro,
                                color: mobileLeadText1Color,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CheckBox().checkLeadBox(
                                userProvider.isMobileCheckedSMS, (value) {
                              userProvider.toggleMobileCheckboxSMS(value!);
                            }, mobileLeadText1Color),
                            Text(
                              'SMS',
                              style: TextStyle(
                                fontFamily: readexPro,
                                color: mobileLeadText1Color,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CheckBox().checkLeadBox(
                                userProvider.isMobileCheckedWhatsApp, (value) {
                              userProvider.toggleMobileCheckboxWhatsApp(value!);
                            }, mobileLeadText1Color),
                            Text(
                              'WhatsApp',
                              style: TextStyle(
                                fontFamily: readexPro,
                                color: mobileLeadText1Color,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
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
