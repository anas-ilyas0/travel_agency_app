import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avatar.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNewPackageForm extends StatefulWidget {
  const CreateNewPackageForm({super.key});

  @override
  State<CreateNewPackageForm> createState() => _CreateNewPackageFormState();
}

class _CreateNewPackageFormState extends State<CreateNewPackageForm>
    with SingleTickerProviderStateMixin {
  List<String> agents = ['John Doe', 'Jane Smith', 'James Bond', 'Tony Stark'];
  String? selectedValue1;
  String? selectedValue2;
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this); // Initialize it
  }

  @override
  void dispose() {
    tabController?.dispose(); // Dispose of it to prevent memory leaks
    super.dispose();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(length: 2, vsync: this); // Initialize it
  // }
  //
  // @override
  // void dispose() {
  //   tabController?.dispose(); // Dispose of it to prevent memory leaks
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
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
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                width: 0.5, color: AppColor.packageFormColor)),
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
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  
                      AddNewAgentTitlelAndDescription(
                          text1: 'Client Name', text2: 'John Doe'),
                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),
                      AddNewAgentTitlelAndDescription(
                          text1: 'Client Phone Number',
                          text2: '+1 (555) 987-6543'),
                    ],
                  ),
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
                ),])])
              ]))
    ])));
  }

      
  //               // Widgets().addNewPackageFormAgentNameAndClinetName(context, 'Select Supplier', 'John Doe')
  //             ],
  //           ),
  //           SizedBox(
  //             width: context.screenWidth * 0.05,
  //           ),
  //           Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 'Client Phone Number',
  //                 style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: 13,
  //                     fontFamily: readexPro,
  //                     fontWeight: FontWeight.bold),
  //               ),
  //               const SizedBox(height: 5),
  //               Widgets().textFormField('+1 (555) 987-6543', context),

  //           Flexible(
  //             child: FittedBox(
  //               child: AddNewAgentTitlelAndDescription(
  //                   text1: 'Client Name', text2: 'John Doe'),
  //             ),
  //           ),
  //           SizedBox(
  //             width: context.screenWidth * 0.05,
  //           ),
  //           Flexible(
  //             child: FittedBox(
  //               child: AddNewAgentTitlelAndDescription(
  //                   text1: 'Client Phone Number',
  //                   text2: '+1 (555) 987-6543'),
  //             ),
  //           ),

  //             ],
  //           ),

  //         ],
  //       ),
  //       SizedBox(
  //         height: context.screenHeight * 0.02,
  //       ),
  //       Row(
  //         children: [

  //          Flexible(child: FittedBox(child: Widgets().addNewPackageFormAgentNameAndClinetName(context, 'Agent Name', 'John Doe'))),
  //           SizedBox(
  //             width: context.screenWidth * 0.05,
  //           ),
  //          Flexible(child: FittedBox(child: Widgets().addNewPackageFormAgentNameAndClinetName(context, 'Select Supplier', 'John Doe'))),

  //           Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 'Agent Name',
  //                 style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: 13,
  //                     fontFamily: readexPro,
  //                     fontWeight: FontWeight.bold),
  //               ),
  //               const SizedBox(height: 5),
  //               // firstDropDown(),

  //               SizedBox(
  //                 width: context.screenWidth * 0.05,
  //               ),
  //             ],
  //           ),
  //           SizedBox(
  //             width: context.screenWidth * 0.05,
  //           ),
  //           Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 'Select Supplier',
  //                 style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: 13,
  //                     fontFamily: readexPro,
  //                     fontWeight: FontWeight.bold),
  //               ),
  //               const SizedBox(height: 5),
  //              // secondDropDown(),

  //               SizedBox(
  //                 width: context.screenWidth * 0.05,
  //               ),
  //               // Widgets().addNewPackageFormAgentNameAndClinetName(context, 'Select Supplier', 'John Doe')
  //             ],
  //           ),

  //         ],
  //       ),

  //       SizedBox(
  //         height: context.screenHeight * 0.02,
  //       ),

  //       Row(
  //         // mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           Flexible(
  //             child: FittedBox(
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Padding(
  //                     padding: const EdgeInsets.only(left: 8),
  //                     child: Widgets().CreateNewPackagetext('Name'),
  //                   ),
  //                   SizedBox(
  //                     height: 25,
  //                   ),
  //                   Widgets().PackageTextNmaelist('Adult'),
  //                   SizedBox(
  //                     height: 38,
  //                   ),
  //                   Widgets().PackageTextNmaelist('Child'),
  //                   SizedBox(
  //                     height: 36,
  //                   ),
  //                   Widgets().PackageTextNmaelist('Infant'),
  //                   SizedBox(
  //                     height: 36,
  //                   ),
  //                   Widgets().PackageTextNmaelist('Senior Citizen'),
  //                   SizedBox(
  //                     height: 36,
  //                   ),
  //                   Widgets().PackageTextNmaelist('Other'),
  //                   SizedBox(
  //                     height: 18,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),

  //           SizedBox(width: context.screenWidth*.08,),
  //           Flexible(
  //             child: FittedBox(
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   Padding(
  //                     padding: const EdgeInsets.only(left: 8),
  //                     child: Widgets()
  //                         .CreateNewPackagetext('Number of People'),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Widgets().textFormField('500', context),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Widgets().textFormField('600', context),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Widgets().textFormField('350', context),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Widgets().textFormField('500', context),
  //                   ),
  //                   Padding(
  //                     padding: const EdgeInsets.all(8.0),
  //                     child: Widgets().textFormField('1100', context),
  //                )]) ),
  //           ),

  //                SizedBox(width: context.screenWidth * .08,),

  //     ]),
  //       //

  //       SizedBox(
  //       //   height: context.screenHeight * 0.2,
  //       // ),
  //       // Row(
  //       //   children: [
  //       //     SizedBox(
  //       //       height: 45,
  //       //       width: 140,
  //       //       child: ElevatedButton(
  //       //           style: ElevatedButton.styleFrom(
  //       //               backgroundColor: const Color(0XFFD5D5D5),
  //       //               shape: RoundedRectangleBorder(
  //       //                   borderRadius: BorderRadius.circular(5))),
  //       //           onPressed: () {},
  //       //           child: Text(
  //       //             'Cancle',
  //       //             style: TextStyle(
  //       //                 fontSize: 18,
  //       //                 fontFamily: fontFamilys,
  //       //                 color: Colors.black),
  //       //           )),
  //       //     ),
  //       //     SizedBox(
  //       //       width: context.screenWidth * 0.02,
  //       //     ),
  //       //     SizedBox(
  //       //       height: 45,
  //       //       width: 140,
  //       //       child: ElevatedButton(
  //       //           style: ElevatedButton.styleFrom(
  //       //               backgroundColor: const Color(0XFF83D0E3),
  //       //               shape: RoundedRectangleBorder(
  //       //                   borderRadius: BorderRadius.circular(5))),
  //       //           onPressed: () {},
  //       //           child: Text(
  //       //             'Save',
  //       //             style: TextStyle(
  //       //                 fontSize: 18,
  //       //                 fontFamily: fontFamilys,
  //       //                 color: Colors.black),
  //       //           )),
  //       //     ),
  //       //   ],
  //       // ),
  //       // // // RowWidget("dfs"),
  //       // SizedBox(
  //         height: context.screenHeight * 0.2,
  //       )
  //     ],
  //   ),
  // )

  //      ]))  )

  // }

  // Widget firstDropDown() {
  //   return SizedBox(width: 400,
  //     child: Theme(
  //       data: Theme.of(context).copyWith(
  //           focusColor: AppColor.background,
  //           hoverColor: AppColor.background
  //       ),
  //       child: DropdownButtonFormField<String>(
  //         value: selectedValue1,

  //         decoration: InputDecoration(
  //             labelText: 'John Doe',
  //             fillColor: AppColor.customdropdownColor,
  //             filled: true,

  //             labelStyle: TextStyle(

  //                 color: AppColor.hintColor, fontFamily: poppin, fontSize: 15),
  //             contentPadding: const EdgeInsets.symmetric(
  //                 vertical: 10, horizontal: 10),
  //             // contentPadding: EdgeInsets.zero,
  //             enabledBorder: OutlineInputBorder(
  //                 borderRadius: BorderRadius.circular(10),
  //                 borderSide: BorderSide(
  //                     color: AppColor.borderColor3, width: 1)),
  //             focusedBorder: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(10),
  //               borderSide: BorderSide(color: AppColor.borderColor3, width: 1),
  //             ),
  //             floatingLabelBehavior: FloatingLabelBehavior.never,
  //             alignLabelWithHint: false),
  //         dropdownColor: AppColor.customdropdownColor,
  //         isDense: true,
  //         items: [

  //           DropdownMenuItem(
  //             enabled: false,

  //             value: 'create_agent',
  //             child: Container(
  //               height: 50,
  //               // width: 360,
  //               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(10),
  //                   boxShadow: [
  //                     BoxShadow(
  //                         blurRadius: 2,
  //                         spreadRadius: 0,
  //                         color: Colors.grey.withOpacity(.3)
  //                     )
  //                   ]
  //               ),
  //               child: Row(
  //                 children: [
  //                   const SizedBox(width: 10),
  //                   Icon(
  //                     Icons.add_box_rounded, color: AppColor.buttonTextColor,),
  //                   const SizedBox(width: 8),
  //                   Text('Create a new agent', style: TextStyle(
  //                       color: AppColor.buttonTextColor,
  //                       fontFamily: fontFamilys,
  //                       fontWeight: FontWeight.w400)),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           DropdownMenuItem(
  //               value: "search_agent",
  //               enabled: false,

  //               child: Padding(
  //                 padding: const EdgeInsets.symmetric(
  //                     vertical: 8, horizontal: 2),
  //                 child: TextFormField(

  //                   decoration: InputDecoration(
  //                     hintText: "Search Agent",
  //                     fillColor: Colors.white,
  //                     filled: true,

  //                     suffixIcon: Icon(Icons.search_outlined),
  //                     hintStyle: TextStyle(
  //                         color: AppColor.hintColor,
  //                         fontFamily: fontFamilys,
  //                         fontSize: 14,
  //                         fontWeight: FontWeight.w400),

  //                     //  color: Colors.grey, fontFamily: readexPro, fontSize: 13),

  //                     contentPadding:
  //                     const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
  //                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(
  //                         color: AppColor.borderColor3, width: 0.5),
  //                         borderRadius: BorderRadius.circular(10)),
  //                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(
  //                         color: AppColor.borderColor3, width: 0.5),
  //                         borderRadius: BorderRadius.circular(10)),
  //                   ),

  //                 ),
  //               )
  //           ),
  //           ...agents.map((String duration) {
  //             return DropdownMenuItem<String>(
  //               value: duration,
  //               child: SizedBox(
  //                 height: 52,
  //                 child: Padding(
  //                   padding: const EdgeInsets.symmetric(
  //                       vertical: 3.0, horizontal: 4),
  //                   child: Container(
  //                     decoration: BoxDecoration(
  //                         borderRadius: BorderRadius.circular(10),
  //                         color: Colors.white,
  //                         border: Border.all(
  //                             width: .5, color: Colors.grey.withOpacity(.3))
  //                     ),
  //                     child: Padding(
  //                       padding: const EdgeInsets.all(4.0),
  //                       child: Row(
  //                         children: [
  //                           SizedBox(width: 5),
  //                           CircleAvatar(
  //                             backgroundImage: AssetImage(
  //                                 '${imageUrl}agent.png'),
  //                             radius: 18,
  //                           ),
  //                           SizedBox(width: 5),
  //                           Text(
  //                             duration,
  //                             style: TextStyle(fontSize: 14),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             );
  //           }).toList(),

  //         ],
  //         menuMaxHeight: 400,
  //         isExpanded: true,
  //         onChanged: (value) {
  //           if (value != 'create_agent' && value != 'search_agent') {
  //             selectedValue1 = value;
  //           }
  //           // searchName.text = value ??
  //           //     '';
  //         },
  //         selectedItemBuilder: (BuildContext context) {
  //           return agents.map((String agent) {
  //             return SizedBox(
  //               height: 50,
  //               child: Row(
  //                 children: [
  //                   CircleAvatar(
  //                     backgroundImage: AssetImage('${imageUrl}agent.png'),
  //                     radius: 16,
  //                   ),
  //                   SizedBox(width: 5),
  //                   Text(
  //                     agent,
  //                     style: TextStyle(fontSize: 14),
  //                   ),
  //                 ],
  //               ),
  //             );
  //           }).toList();
  //         },
  //         validator: (value) {
  //           if (value == null || value.isEmpty) {
  //             return "Select Duration";
  //           }
  //           return null;
  //         },
  //       ),
  //     ),
  //   );
  // }

  // Widget secondDropDown() {
  //   // TabController tabController = TabController();

  //   return SizedBox(width: 400,
  //     child: Theme(
  //       data: Theme.of(context).copyWith(
  //           focusColor: AppColor.background,
  //           hoverColor: AppColor.background
  //       ),
  //       child: DropdownButtonFormField<String>(
  //         value: selectedValue2,

  //         decoration: InputDecoration(
  //             labelText: 'John Doe',
  //             fillColor: AppColor.customdropdownColor,
  //             filled: true,

  //             labelStyle: TextStyle(

  //                 color: AppColor.hintColor, fontFamily: poppin, fontSize: 15),
  //             contentPadding: const EdgeInsets.symmetric(
  //                 vertical: 10, horizontal: 10),
  //             // contentPadding: EdgeInsets.zero,
  //             enabledBorder: OutlineInputBorder(
  //                 borderRadius: BorderRadius.circular(10),
  //                 borderSide: BorderSide(
  //                     color: AppColor.borderColor3, width: 1)),
  //             focusedBorder: OutlineInputBorder(
  //               borderRadius: BorderRadius.circular(10),
  //               borderSide: BorderSide(color: AppColor.borderColor3, width: 1),
  //             ),
  //             floatingLabelBehavior: FloatingLabelBehavior.never,
  //             alignLabelWithHint: false),
  //         dropdownColor: AppColor.customdropdownColor,
  //         isDense: true,
  //         items: [

  //           DropdownMenuItem(
  //             enabled: false,

  //             value: 'create_agent',
  //             child: Container(
  //               height: 50,
  //               // width: 360,
  //               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
  //               decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(10),
  //                   boxShadow: [
  //                     BoxShadow(
  //                         blurRadius: 2,
  //                         spreadRadius: 0,
  //                         color: Colors.grey.withOpacity(.3)
  //                     )
  //                   ]
  //               ),
  //               child: Row(
  //                 children: [
  //                   const SizedBox(width: 10),
  //                   Icon(
  //                     Icons.add_box_rounded, color: AppColor.buttonTextColor,),
  //                   const SizedBox(width: 8),
  //                   Text('Create a new agent', style: TextStyle(
  //                       color: AppColor.buttonTextColor,
  //                       fontFamily: fontFamilys,
  //                       fontWeight: FontWeight.w400)),
  //                 ],
  //               ),
  //             ),
  //           ),

  //           DropdownMenuItem(
  //               value: "search_agent",
  //               enabled: false,

  //               child: Padding(
  //                 padding: const EdgeInsets.symmetric(
  //                     vertical: 8, horizontal: 2),
  //                 child: TextFormField(

  //                   decoration: InputDecoration(
  //                     hintText: "Search Agent",
  //                     fillColor: Colors.white,
  //                     filled: true,

  //                     suffixIcon: Icon(Icons.search_outlined),
  //                     hintStyle: TextStyle(
  //                         color: AppColor.hintColor,
  //                         fontFamily: fontFamilys,
  //                         fontSize: 14,
  //                         fontWeight: FontWeight.w400),

  //                     //  color: Colors.grey, fontFamily: readexPro, fontSize: 13),

  //                     contentPadding:
  //                     const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
  //                     enabledBorder: OutlineInputBorder(borderSide: BorderSide(
  //                         color: AppColor.borderColor3, width: 0.5),
  //                         borderRadius: BorderRadius.circular(10)),
  //                     focusedBorder: OutlineInputBorder(borderSide: BorderSide(
  //                         color: AppColor.borderColor3, width: 0.5),
  //                         borderRadius: BorderRadius.circular(10)),
  //                   ),

  //                 ),
  //               )
  //           ),
  //           DropdownMenuItem(
  //               value: "tab_bar",
  //               enabled: false,

  //               child: DefaultTabController(
  //                 length: 2,
  //                 child: Padding(
  //                   padding: const EdgeInsets.symmetric(
  //                       vertical: 8, horizontal: 2),
  //                   child: Column(
  //                     children: [
  //                       Container(
  //                         decoration: BoxDecoration(
  //                             color: Colors.black
  //                         ),
  //                         child: TabBar(tabs: [
  //                           Text("Local Supplier"),
  //                           Text("International Supplier"),
  //                         ],),
  //                       ),
  //                       TabBarView(
  //                         controller: tabController,
  //                         children: [
  //                           Text("hghjgjh"),
  //                           Text("hghjgjh"),
  //                             ListView.builder(
  //                             itemCount: agents.length,
  //                             itemBuilder: (context, index) {
  //                               return ListTile(
  //                                 leading: CircleAvatar(
  //                                   backgroundImage: AssetImage('${imageUrl}agent.png'),
  //                                 ),
  //                                 title: Text(agents[index]),
  //                               );
  //                             },
  //                           ),
  //                             ListView.builder(
  //                               itemCount: agents.length,
  //                               itemBuilder: (context, index) {
  //                                 return ListTile(
  //                                   leading: CircleAvatar(
  //                                     backgroundImage: AssetImage('${imageUrl}agent.png'),
  //                                   ),
  //                                   title: Text(agents[index]),
  //                                 );
  //                               },
  //                             ),
  //                         ],
  //                       )
  //                     ],
  //                   ),
  //                 ),
  //               )
  //           ),

  //         ],
  //         menuMaxHeight: 400,
  //         isExpanded: true,
  //         onChanged: (value) {
  //           if (value != 'create_agent' && value != 'search_agent') {
  //             selectedValue2 = value;
  //           }
  //           // searchName.text = value ??
  //           //     '';
  //         },
  //         selectedItemBuilder: (BuildContext context) {
  //           return agents.map((String agent) {
  //             return SizedBox(
  //               height: 50,
  //               child: Row(
  //                 children: [
  //                   CircleAvatar(
  //                     backgroundImage: AssetImage('${imageUrl}agent.png'),
  //                     radius: 16,
  //                   ),
  //                   SizedBox(width: 5),
  //                   Text(
  //                     agent,
  //                     style: TextStyle(fontSize: 14),
  //                   ),
  //                 ],
  //               ),
  //             );
  //           }).toList();
  //         },
  //         validator: (value) {
  //           if (value == null || value.isEmpty) {
  //             return "Select Duration";
  //           }
  //           return null;
  //         },
  //       ),
  //     ),
  //   );
  // }
}
