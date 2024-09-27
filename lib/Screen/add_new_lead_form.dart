import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avatar.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../widget/circleAvater.dart';

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
      appBar: AppBar(
        leading: const Text(''),
        toolbarHeight:90,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey.withOpacity(0.3),
            height: 1.0,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 14),
          child:  BackButtonAvatar(
                text1: 'Add New Agent',
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context)? 115: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 5),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add New Lead Details',
                          style: TextStyle(
                              color: color,
                              fontFamily: readexPro,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Agent Details',
                          style: TextStyle(
                              color: color,
                              fontFamily: readexPro,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Agent Name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: readexPro,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        SizedBox( width: 400,
                          child: Theme(
                            data: Theme.of(context).copyWith(
                                focusColor: AppColor.background,
                                hoverColor: AppColor.background
                            ),
                            child: DropdownButtonFormField<String>(
                              value:selectedValue ,

                              decoration: InputDecoration(
                                  labelText: 'Select Duration',
                                  fillColor: AppColor.customdropdownColor,
                                  filled: true,


                                  labelStyle: TextStyle(

                                      color:   AppColor.hintColor, fontFamily: poppin, fontSize: 15  ),
                                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  // contentPadding: EdgeInsets.zero,
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: AppColor.borderColor3,width: 1)),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:   BorderSide(color: AppColor.borderColor3,width: 1),
                                  ),
                                  floatingLabelBehavior: FloatingLabelBehavior.never,
                                  alignLabelWithHint: false),
                              dropdownColor: AppColor.customdropdownColor,
                              isDense: true,
                              items: [

                                DropdownMenuItem(
                                  enabled: false,

                                  value: 'create_agent',
                                  child: Container(
                                    height: 50,
                                    // width: 360,
                                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 2,
                                              spreadRadius: 0,
                                              color: Colors.grey.withOpacity(.3)
                                          )
                                        ]
                                    ),
                                    child: Row(
                                      children: [
                                        const SizedBox(width: 10),
                                        Icon(Icons.add_box_rounded, color: AppColor.buttonTextColor, ),
                                        const SizedBox(width: 8),
                                        Text('Create a new agent', style: TextStyle(color: AppColor.buttonTextColor,fontFamily: fontFamilys, fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                  ),
                                ),
                                DropdownMenuItem(
                                    value: "search_agent",
                                    enabled: false,

                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 2),
                                      child: TextFormField(

                                        decoration: InputDecoration(
                                          hintText: "Search Agent",
                                          fillColor: Colors.white,
                                          filled: true,

                                          suffixIcon: Icon(Icons.search_outlined),
                                          hintStyle: TextStyle(
                                              color: AppColor.hintColor, fontFamily: fontFamilys, fontSize: 14,fontWeight: FontWeight.w400),

                                          //  color: Colors.grey, fontFamily: readexPro, fontSize: 13),

                                          contentPadding:
                                          const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                                          enabledBorder:  OutlineInputBorder(borderSide: BorderSide(color: AppColor.borderColor3,width: 0.5),
                                              borderRadius: BorderRadius.circular(10)),
                                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.borderColor3,width: 0.5),
                                              borderRadius: BorderRadius.circular(10)),
                                        ),

                                      ),
                                    )
                                ),
                                ...agents.map((String duration) {
                                  return DropdownMenuItem<String>(
                                    value: duration,
                                    child: SizedBox(
                                      height: 52,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 3.0,horizontal: 4),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.white,
                                              border: Border.all(width: .5,color: Colors.grey.withOpacity(.3))
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Row(
                                              children: [
                                                SizedBox(width: 5),
                                                CircleAvatar(
                                                  backgroundImage: AssetImage('${imageUrl}agent.png'),
                                                  radius: 18,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  duration,
                                                  style: TextStyle(fontSize: 14),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }).toList(),

                              ],
                              menuMaxHeight:    400,
                              isExpanded: true,
                              onChanged: (value) {
                                if (value != 'create_agent' && value != 'search_agent') {
                                  selectedValue = value;
                                }
                                // searchName.text = value ??
                                //     '';
                              },
                              selectedItemBuilder: (BuildContext context){

                                return agents.map((String agent) {
                                  return SizedBox(
                                    height: 50,
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage('${imageUrl}agent.png'),
                                          radius: 16,
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          agent,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList();
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Select Duration";
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        // Widgets().textFormField("John Deo", context),
                      ],
                    ),
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
                  const SizedBox(width: 15),
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
                  )
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
                          child: Widgets().textFormField('\500',context),
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
                      Widgets().textFormNoteField(context.screenWidth*0.772, context.screenHeight*0.27,3),
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