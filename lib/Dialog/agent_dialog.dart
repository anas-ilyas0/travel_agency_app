// import 'dart:typed_data';
//
// import 'package:fab_tech_sol/AppColor/app_color.dart';
// import 'package:fab_tech_sol/Image.dart';
// import 'package:fab_tech_sol/consts/consts.dart';
// import 'package:fab_tech_sol/dimensions.dart';
// import 'package:fab_tech_sol/providers/provider.dart';
// import 'package:fab_tech_sol/resources/helper_function.dart';
// import 'package:fab_tech_sol/resources/responsive.dart';
// import 'package:fab_tech_sol/widget/addnewagent.dart';
// import 'package:fab_tech_sol/widget/back_button_title_avatar.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker_web/image_picker_web.dart';
//
// import 'package:provider/provider.dart';
//
//
// class AgentDialog extends StatefulWidget {
//   const AgentDialog({super.key});
//
//   @override
//   State<AgentDialog> createState() => _AgentDialogState();
// }
//
// class _AgentDialogState extends State<AgentDialog> {
//   // Uint8List? imageFile;
//   @override
//   Widget build(BuildContext context) {
//
//
//     final imageProvider = Provider.of<UserProvider>(context);
//
//     return Dialog(
//       backgroundColor: AppColor.background,
//
//       child: SingleChildScrollView(
//         child: Responsive(
//           desktop: Column(
//             children: [
//
//               Padding(
//                 padding:
//                     EdgeInsets.symmetric(horizontal: context.screenWidth * 0.08),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: context.screenHeight * 0.05,
//                     ),
//                     Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           'Edit Agent Details',
//                           style: TextStyle(
//                               fontSize: 23,
//                               color: AppColor.addnewagent,
//                               fontFamily: fontFamilys,
//                               fontWeight: FontWeight.w600),
//                         )),
//                     SizedBox(
//                       height: context.screenHeight * 0.02,
//                     ),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               // Container(
//                               //   height: 150,
//                               //   width: 150,
//                               //   decoration: BoxDecoration(
//                               //       color: Colors.white,
//                               //       image: imageProvider.imageUrl != null
//                               //           ? DecorationImage(
//                               //               image:
//                               //                   NetworkImage(imageProvider.imageUrl!),
//                               //               fit: BoxFit.cover,
//                               //             )
//                               //           : null,
//                               //       border: Border.all(
//                               //           color: AppColor.packageFormColor,
//                               //           width: 0.5),
//                               //       borderRadius: BorderRadius.circular(12)),
//                               // ),
//                               SizedBox(
//                                 width: context.screenWidth * 0.01,
//                               ),
//                               ElevatedButton(
//                                 onPressed: () async {
//                                   await imageProvider.pickImage();
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: const Color(0XFF11345A),
//                                     minimumSize: Size(
//                                         context.screenWidth * 0.12,
//                                         context.screenHeight * 0.08)),
//                                 child: const Row(
//                                   mainAxisSize: MainAxisSize
//                                       .min, // Make Row as wide as the content
//                                   children: [
//                                     Icon(
//                                       Icons.file_upload_outlined,
//                                       color: Colors.white,
//                                     ), // Icon
//                                     SizedBox(
//                                         width:
//                                             8), // Space between icon and text
//                                     Text(
//                                       'Upload Image',
//                                       style: TextStyle(color: Colors.white),
//                                     ), // Text
//                                   ],
//                                 ),
//                               ), Column(
//                                 children: [
//                                   Container(
//                                     height: 100,
//                                     width: 250,
//                                     decoration: BoxDecoration(
//                                         color: Colors.blueGrey.shade50,
//                                         borderRadius: BorderRadius.circular(10),
//                                         border: Border.all(color: Colors.grey.shade400)),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: imageFile == null
//                                           ? const Icon(
//                                         Icons.add,
//                                         color: Colors.black,
//                                       ) : Image.memory(
//                                         imageFile! ,
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                   TextButton(
//                                       onPressed: () async {
//                                         imageFile = await HelperUtil.pickImage();
//                                         if (imageFile != null) {
//                                           setState(() {});
//                                         }
//                                       },
//                                       child: const Text("Upload Image")),
//                                 ],
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                               height: context.screenHeight * 0.3,
//                               width: context.screenWidth * 0.2,
//                               child: Image.asset(
//                                   '${ImagesAssets.imagePath}XMLID.png'))
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.01,
//                     ),
//                     Row(
//                       children: [
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'First Name', text2: 'John Doe'),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'Last Name', text2: 'John Doe'),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'Phone Number', text2: '+1 (555) 987-6543'),
//                       ],
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.02,
//                     ),
//                     Row(
//                       children: [
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'E-Mail', text2: 'john.smith@gmail.com'),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'Password', text2: 'Demo123456'),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'Location',
//                             text2: 'Laxmisagar, BBSR, Bhubaneshwar-751006'),
//                       ],
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.05,
//                     ),
//                     Row(
//                       children: [
//                         SizedBox(
//                           height: 45,
//                           width: 140,
//                           child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0XFFD5D5D5),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5))),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               child: const Text(
//                                 'Cancle',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontFamily: 'Readex Pro',
//                                     color: Colors.black),
//                               )),
//                         ),
//                         SizedBox(
//                           width: context.screenWidth * 0.02,
//                         ),
//                         SizedBox(
//                           height: 45,
//                           width: 140,
//                           child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0XFF83D0E3),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5))),
//                               onPressed: () {},
//                               child: const Text(
//                                 'Save',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontFamily: 'Readex Pro',
//                                     color: Colors.black),
//                               )),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.05,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//           mobile: Column(
//             children: [
//               BackButtonAvatar(
//                 text1: 'Add New Agent',
//               ),
//               Padding(
//                 padding:
//                     EdgeInsets.symmetric(horizontal: context.screenWidth * .08),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const SizedBox(height: 12),
//                     const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           'Agent Details',
//                           style: TextStyle(
//                               fontSize: 22,
//                               color: Color(0XFF11345A),
//                               fontFamily: 'Readex Pro'),
//                         )),
//                     const SizedBox(height: 12),
//                     Container(
//                       height: 110,
//                       width: 120,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12)),
//                     ),
//                     const SizedBox(height: 14),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0XFF11345A),
//                           minimumSize: const Size(0, 45)),
//                       child: const Row(
//                         mainAxisSize:
//                             MainAxisSize.min, // Make Row as wide as the content
//                         children: [
//                           Icon(
//                             Icons.file_upload_outlined,
//                             color: Colors.white,
//                             size: 16,
//                           ), // Icon
//                           SizedBox(width: 3), // Space between icon and text
//                           Text(
//                             'Upload Image',
//                             style: TextStyle(color: Colors.white, fontSize: 12),
//                           ), // Text
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.01,
//                     ),
//                     AddNewAgentTitlelAndDescription(
//                         text1: 'First Name', text2: 'Add Here'),
//                     const SizedBox(
//                       width: 2,
//                     ),
//                     AddNewAgentTitlelAndDescription(
//                         text1: 'Last Name', text2: 'Add Here'),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     AddNewAgentTitlelAndDescription(
//                         text1: 'Phone Number', text2: 'Add Here'),
//                     AddNewAgentTitlelAndDescription(
//                         text1: 'E-Mail', text2: 'Add Here'),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     AddNewAgentTitlelAndDescription(
//                         text1: 'Password', text2: 'Add Here'),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     AddNewAgentTitlelAndDescription(
//                         text1: 'Location', text2: 'Add Here'),
//                     const SizedBox(
//                       height: 60,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         SizedBox(
//                           height: 45,
//                           width: 140,
//                           child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0XFFD5D5D5),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5))),
//                               onPressed: () {},
//                               child: const Text(
//                                 'Cancle',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontFamily: 'Readex Pro',
//                                     color: Colors.black),
//                               )),
//                         ),
//                         SizedBox(
//                           width: context.screenWidth * 0.02,
//                         ),
//                         SizedBox(
//                           height: 45,
//                           width: 140,
//                           child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0XFF83D0E3),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5))),
//                               onPressed: () {},
//                               child: const Text(
//                                 'Save',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontFamily: 'Readex Pro',
//                                     color: Colors.black),
//                               )),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 30,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//           tablet: Column(
//             children: [
//               BackButtonAvatar(
//                 text1: 'Add New Agent',
//               ),
//               const Divider(),
//               Padding(
//                 padding:
//                     EdgeInsets.symmetric(horizontal: context.screenWidth * .08),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     SizedBox(
//                       height: context.screenHeight * 0.05,
//                     ),
//                     const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           'Agent Details',
//                           style: TextStyle(
//                               fontSize: 23,
//                               color: Color(0XFF11345A),
//                               fontFamily: 'Readex Pro'),
//                         )),
//                     SizedBox(
//                       height: context.screenHeight * 0.02,
//                     ),
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//                                 height: 150,
//                                 width: 150,
//                                 decoration: BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.circular(12)),
//                               ),
//                               SizedBox(
//                                 width: context.screenWidth * 0.01,
//                               ),
//                               ElevatedButton(
//                                 onPressed: () {},
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: const Color(0XFF11345A),
//                                     minimumSize: Size(
//                                         context.screenWidth * 0.12,
//                                         context.screenHeight * 0.08)),
//                                 child: const Row(
//                                   mainAxisSize: MainAxisSize
//                                       .min, // Make Row as wide as the content
//                                   children: [
//                                     Icon(
//                                       Icons.file_upload_outlined,
//                                       color: Colors.white,
//                                     ), // Icon
//                                     SizedBox(
//                                         width:
//                                             8), // Space between icon and text
//                                     Text(
//                                       'Upload Image',
//                                       style: TextStyle(color: Colors.white),
//                                     ), // Text
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                               height: context.screenHeight * 0.3,
//                               width: context.screenWidth * 0.2,
//                               child: Image.asset(
//                                   '${ImagesAssets.imagePath}XMLID.png'))
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.01,
//                     ),
//                     Row(
//                       children: [
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'First Name', text2: 'Add Here'),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'Last Name', text2: 'Add Here'),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'Phone Number', text2: 'Add Here'),
//                       ],
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.02,
//                     ),
//                     Row(
//                       children: [
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'E-Mail', text2: 'Add Here'),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'Password', text2: 'Add Here'),
//                         const SizedBox(
//                           width: 20,
//                         ),
//                         AddNewAgentTitlelAndDescription(
//                             text1: 'Location', text2: 'Add Here'),
//                       ],
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.01,
//                     ),
//                     Row(
//                       children: [
//                         SizedBox(
//                           height: 45,
//                           width: 140,
//                           child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0XFFD5D5D5),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5))),
//                               onPressed: () {},
//                               child: const Text(
//                                 'Cancle',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontFamily: 'Readex Pro',
//                                     color: Colors.black),
//                               )),
//                         ),
//                         SizedBox(
//                           width: context.screenWidth * 0.02,
//                         ),
//                         SizedBox(
//                           height: 45,
//                           width: 140,
//                           child: ElevatedButton(
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0XFF83D0E3),
//                                   shape: RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(5))),
//                               onPressed: () {},
//                               child: const Text(
//                                 'Save',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontFamily: 'Readex Pro',
//                                     color: Colors.black),
//                               )),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: context.screenHeight * 0.2,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
