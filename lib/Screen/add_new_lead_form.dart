import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/navigation_util.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:fab_tech_sol/widget/useredit_data.dart';
import 'package:fab_tech_sol/widget/back_button_title_avatar.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/widget.dart';


class AddNewLeadForm extends StatefulWidget {
  const AddNewLeadForm({super.key});

  @override
  State<AddNewLeadForm> createState() => _AddNewLeadFormState();
}

class _AddNewLeadFormState extends State<AddNewLeadForm> {
  List<String> agents = ['John Doe', 'Jane Smith', 'James Bond', 'Tony Stark'];
  List<String> filteredAgents = [];

  // TextController for the search field
  TextEditingController searchController = TextEditingController();
  final searchName = TextEditingController();
  String? selectedValue;
  @override
  void initState() {
    super.initState();
    filteredAgents = agents;
  }


  void filterAgents(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredAgents = agents;
      } else {
        filteredAgents = agents
            .where((agent) => agent.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   shadowColor: AppColor.background,
      //   toolbarHeight:90,
      //   elevation: 0,
      //   backgroundColor: AppColor.background,
      //   bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(1.0),
      //     child: Container(
      //       color: Colors.grey.withOpacity(0.3),
      //       height: 1.0,
      //     ),
      //   ),
      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 14),
      //     child:  BackButtonAvatar(
      //           text1: 'Add New Agent',
      //         ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BackButtonAvatar(
              text1: 'Add New Lead',
            ),
             Divider(color: AppColor.gainsboro,thickness: .5,),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context)? 115: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Text(
                    'Add New Quotation',
                    style: TextStyle(
                        color: color,
                        fontFamily: fontFamilys,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Agent Details',
                                style: TextStyle(
                                    color: color,
                                    fontFamily: readexPro,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                'Agent Name',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: readexPro,
                                    fontWeight: FontWeight.bold),
                              ),
                              UserEditData(text: "John Doe",onTap: (){
                                NavigationUtil.navigatePush(context: context, destinationScreen: const Dashboard(tabIndex: 2,));
                              }),
                            ],
                          ),
                          SizedBox(width: context.screenWidth*0.04,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Supplier Details',
                                style: TextStyle(
                                    color: color,
                                    fontFamily: readexPro,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              const SizedBox(height: 14),
                              Text(
                                'Supplier Name',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: readexPro,
                                    fontWeight: FontWeight.bold),
                              ),
                              UserEditData(text: "John Doe",onTap: (){
                                NavigationUtil.navigatePush(context: context, destinationScreen: const Dashboard(tabIndex: 4,));
                              }),
                            ],
                          ),
                        ],
                      ),
                      Image(
                          height: 200,
                          width: 200,
                          image: AssetImage('${imageUrl}form.png')),
                    ],
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  Text(
                    'Client Details',
                    style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontFamily: readexPro,
                        fontSize: 17),
                  ),
                  const SizedBox(height: 15),
                  Row(

                    children: [
                      Column(
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
                          Widgets().textFormField("John Alen",context),
                        ],
                      ),
                      const SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Phone Number',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 5),
                          Widgets().textFormField('+1 (555) 987-6543',context),
                        ],
                      ),
                      const SizedBox(width: 26,),
                       Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                            'Package',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                           UserEditData(text: "John Doe",onTap: (){
                                      NavigationUtil.navigatePush(context: context, destinationScreen: const Dashboard(tabIndex: 5,));
                                    }),
                         ],
                       ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: context.screenWidth*.79,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Different rates for different category',
                          style: TextStyle(
                            color: addLeadButtonColor,
                            fontFamily: readexPro,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                'Name',
                                style: TextStyle(
                                    color: addLeadButtonColor,
                                    fontSize: 16,
                                    fontFamily: readexPro),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Number of People',
                                style: TextStyle(
                                    color: addLeadButtonColor,
                                    fontSize: 16,
                                    fontFamily: readexPro),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  'Budget',
                                  style: TextStyle(
                                      color: addLeadButtonColor,
                                      fontSize: 16,
                                      fontFamily: readexPro),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            tableText('Adult'),
                            Expanded(
                              child: Widgets().textFormField('500',context),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child:  Widgets().textFormField('\$200',context),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            tableText('Child'),
                            Expanded(
                              child:  Widgets().textFormField('600',context),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child:  Widgets().textFormField('\$300',context),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            tableText('Infant'),
                            Expanded(
                              child:  Widgets().textFormField('350',context),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child:  Widgets().textFormField('\$150',context),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            tableText('Senior Citizen'),
                            Expanded(
                              child:  Widgets().textFormField('500',context),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Widgets().textFormField('500',context),
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            tableText('Other'),
                            Expanded(
                              child:  Widgets().textFormField('1000',context),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Widgets().textFormField('\$300',context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(thickness: 0.5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Trip Details',
                          style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                              fontFamily: readexPro,
                              fontSize: 17),
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Destination',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: readexPro,
                                    fontWeight: FontWeight.bold),
                              ),
                              Widgets().textFormField('London',context),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Travel Date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: readexPro,
                                    fontWeight: FontWeight.bold),
                              ),
                              Widgets().textFormField('05/07/2024',context),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Departure Date',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: readexPro,
                                    fontWeight: FontWeight.bold),
                              ),
                              Widgets().textFormField('22/07/2024',context),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  const Divider(thickness: 0.5),
                  Align(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            child: Text(
                              'Additional Notes',
                              style: TextStyle(
                                  color: color,
                                  fontFamily: readexPro,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                          ),
                          Text(
                            'Add Note',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          Widgets().textFormNoteField(context.screenWidth*0.772, context.screenHeight*0.22,3),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 0.5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Best Way to Reach You',
                          style: TextStyle(
                              color: color,
                              fontFamily: readexPro,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      ),
                      Consumer<UserProvider>(
                        builder: (context, userProvider, child) {
                          return Row(
                            children: [
                              Widgets().checkBox(userProvider.isCheckedEmail,
                                      (bool? newValue) {
                                    userProvider.toggleCheckboxEmail(newValue ?? false);
                                  }),
                              const SizedBox(width: 5),
                              Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: readexPro),
                              ),
                              const SizedBox(width: 80),
                              Widgets().checkBox(userProvider.isCheckedSMS,
                                      (bool? newValue) {
                                    userProvider.toggleCheckboxSMS(newValue ?? false);
                                  }),
                              Text(
                                'SMS',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: readexPro),
                              ),
                              const SizedBox(width: 80),
                              Widgets().checkBox(userProvider.isCheckedWhatsApp,
                                      (bool? newValue) {
                                    userProvider
                                        .toggleCheckboxWhatsApp(newValue ?? false);
                                  }),
                              Text(
                                'WhatsApp',
                                style: TextStyle(
                                    color: Colors.black, fontFamily: readexPro),
                              ),
                              const SizedBox(width: 5),
                            ],
                          );
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 70),
                        child: Row(
                          children: [
                            Widgets().finalButton(
                                'Cancel', const Color(0XFFE7E7E7), () {}),
                            const SizedBox(width: 15),
                            Widgets()
                                .finalButton('Save', const Color(0XFF83D0E3), () {})
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget tableText(String name){
    return Expanded(
      child: Text(name,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 22,
              fontFamily: fontFamilys)),
    );
  }
}