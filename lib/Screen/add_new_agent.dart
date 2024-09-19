import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widgets/addnewagent.dart';
import 'package:fab_tech_sol/widgets/back_button_title_avester.dart';
import 'package:flutter/material.dart';

class AddNewAgent extends StatelessWidget {
  const AddNewAgent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        child: Responsive(desktop: Column(
          children: [
      
            BackButtonAverter(text1: 'Add New Agent',),
            const Divider(),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: context.screenHeight*0.05,),
                  const Align(alignment: Alignment.centerLeft,
                      child: Text('Agent Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'Readex Pro'),)),
                  SizedBox(height: context.screenHeight*0.02,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                            SizedBox(
                              width: context.screenWidth*0.01,
                            ),
                            ElevatedButton(onPressed: () {

                            },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF11345A),
                                  minimumSize: Size(context.screenWidth*0.12, context.screenHeight*0.08)),

                              child:  const Row(
                                mainAxisSize: MainAxisSize.min, // Make Row as wide as the content
                                children: [
                                  Icon(Icons.file_upload_outlined,
                                    color: Colors.white,), // Icon
                                  SizedBox(width: 8), // Space between icon and text
                                  Text('Upload Image',style: TextStyle(color: Colors.white),), // Text
                                ],
                              ),)
                          ],
                        ),
                        SizedBox(
                            height: context.screenHeight*0.3,
                            width: context.screenWidth*0.2,
                            child: Image.asset('${ImagesAssets.imagePath}XMLID.png'))

                      ],

                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight*0.01,

                  ),
                  Row(
                    children: [
                      AddNewAgentTitelAndDescription(text1: 'First Name', text2: 'Add Here'),
                      const SizedBox(width: 20,),
                      AddNewAgentTitelAndDescription(text1: 'Last Name', text2: 'Add Here'),
                      const SizedBox(width: 20,),
                      AddNewAgentTitelAndDescription(text1: 'Phone Number', text2: 'Add Here'),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight*0.02,

                  ),

                  Row(
                    children: [
                      AddNewAgentTitelAndDescription(text1: 'E-Mail', text2: 'Add Here'),
                      const SizedBox(width: 20,),
                      AddNewAgentTitelAndDescription(text1: 'Password', text2: 'Add Here'),
                      const SizedBox(width: 20,),
                      AddNewAgentTitelAndDescription(text1: 'Location', text2: 'Add Here'),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight*0.25,
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
                            onPressed: () {

                            },
                            child: const Text(
                              'Cancle',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),

                            )),
                      ),
                      SizedBox(
                        width: context.screenWidth*0.02,
                      ),
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFF83D0E3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {

                            },
                            child: const Text(
                              'Save',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),

                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight*0.2,
                  )

                ],
              ),
            )
          ],
        ),
          mobile: Column(
          children: [

            BackButtonAverter(text1: 'Add New Agent',),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*.08),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 12),
                  const Align(alignment: Alignment.centerLeft,
                      child: Text('Agent Details',style: TextStyle(fontSize: 22,color: Color(0XFF11345A),fontFamily: 'Readex Pro'),)),
                  SizedBox(height: 12),
                  Container(
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                  SizedBox(height: 14),

                  ElevatedButton(onPressed: () {

                  },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF11345A),
                        minimumSize: Size(0, 45)
                    ),

                    child:  const Row(
                      mainAxisSize: MainAxisSize.min, // Make Row as wide as the content
                      children: [
                        Icon(Icons.file_upload_outlined,
                          color: Colors.white,size: 16,), // Icon
                        SizedBox(width: 3), // Space between icon and text
                        Text('Upload Image',style: TextStyle(color: Colors.white,fontSize: 12),), // Text
                      ],
                    ),),
                  SizedBox(
                    height: context.screenHeight*0.01,

                  ),
                  AddNewAgentTitelAndDescription(text1: 'First Name', text2: 'Add Here'),
                  const SizedBox(width: 2,),
                  AddNewAgentTitelAndDescription(text1: 'Last Name', text2: 'Add Here'),
                  const SizedBox(width: 20,),
                  AddNewAgentTitelAndDescription(text1: 'Phone Number', text2: 'Add Here'),
                  AddNewAgentTitelAndDescription(text1: 'E-Mail', text2: 'Add Here'),
                  const SizedBox(width: 20,),
                  AddNewAgentTitelAndDescription(text1: 'Password', text2: 'Add Here'),
                  const SizedBox(width: 20,),
                  AddNewAgentTitelAndDescription(text1: 'Location', text2: 'Add Here'),

                  SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFFD5D5D5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {

                            },
                            child: const Text(
                              'Cancle',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),

                            )),
                      ),
                      SizedBox(
                        width: context.screenWidth*0.02,
                      ),
                      SizedBox(
                        height: 45,
                        width: 140,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0XFF83D0E3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            onPressed: () {

                            },
                            child: const Text(
                              'Save',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),

                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )

                ],
              ),
            )
          ],
        ),
          tablet:  Column(
            children: [

              BackButtonAverter(text1: 'Add New Agent',),
              const Divider(),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: context.screenWidth*.08),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: context.screenHeight*0.05,),
                    const Align(alignment: Alignment.centerLeft,
                        child: Text('Agent Details',style: TextStyle(fontSize: 23,color: Color(0XFF11345A),fontFamily: 'Readex Pro'),)),
                    SizedBox(height: context.screenHeight*0.02,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Row(
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)
                                ),
                              ),
                              SizedBox(
                                width: context.screenWidth*0.01,
                              ),
                              ElevatedButton(onPressed: () {

                              },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0XFF11345A),
                                    minimumSize: Size(context.screenWidth*0.12, context.screenHeight*0.08)),

                                child:  const Row(
                                  mainAxisSize: MainAxisSize.min, // Make Row as wide as the content
                                  children: [
                                    Icon(Icons.file_upload_outlined,
                                      color: Colors.white,), // Icon
                                    SizedBox(width: 8), // Space between icon and text
                                    Text('Upload Image',style: TextStyle(color: Colors.white),), // Text
                                  ],
                                ),)
                            ],
                          ),
                          SizedBox(
                              height: context.screenHeight*0.3,
                              width: context.screenWidth*0.2,
                              child: Image.asset('${ImagesAssets.imagePath}XMLID.png'))

                        ],

                      ),
                    ),
                    SizedBox(
                      height: context.screenHeight*0.01,

                    ),
                    Row(
                      children: [
                        AddNewAgentTitelAndDescription(text1: 'First Name', text2: 'Add Here'),
                        const SizedBox(width: 20,),
                        AddNewAgentTitelAndDescription(text1: 'Last Name', text2: 'Add Here'),
                        const SizedBox(width: 20,),
                        AddNewAgentTitelAndDescription(text1: 'Phone Number', text2: 'Add Here'),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight*0.02,

                    ),

                    Row(
                      children: [
                        AddNewAgentTitelAndDescription(text1: 'E-Mail', text2: 'Add Here'),
                        const SizedBox(width: 20,),
                        AddNewAgentTitelAndDescription(text1: 'Password', text2: 'Add Here'),
                        const SizedBox(width: 20,),
                        AddNewAgentTitelAndDescription(text1: 'Location', text2: 'Add Here'),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight*0.25,
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
                              onPressed: () {

                              },
                              child: const Text(
                                'Cancle',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),

                              )),
                        ),
                        SizedBox(
                          width: context.screenWidth*0.02,
                        ),
                        SizedBox(
                          height: 45,
                          width: 140,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF83D0E3),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              onPressed: () {

                              },
                              child: const Text(
                                'Save',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.black),

                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight*0.2,
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


