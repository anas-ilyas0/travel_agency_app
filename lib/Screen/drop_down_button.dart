import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  bool isExpanded = false;
  List<String> agents = [
    'Agent 1',
    'Agent 2',
    'Agent 3',
    'Agent 4',
    'Agent 5',
    'Agent 6',
    'Agent 7',
    'Agent 8',
    'Agent 9',
  ];

  @override
  Widget build(BuildContext context) {
    // Get device screen dimensions for responsive design
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        // Enable vertical scrolling if needed
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding for better layout
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: context.screenHeight * 0.08,
                width: context.screenWidth * 0.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Add Here', style: TextStyle(fontSize: 16)),
                        Icon(isExpanded
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
              ),
              if (isExpanded) ...[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.screenHeight * 0.01,
                    ),
                    Container(
                      height: context.screenHeight * 0.4,
                      width: context.screenWidth * 0.2,
                      decoration: BoxDecoration(
                          color: AppColor.customdropdownColor,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0XFF70707033))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                               
                              },
                              child: Container(
                                height: context.screenHeight * 0.05,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border:
                                        Border.all(color: const Color(0XFF70707033))),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 6),
                                      child: Icon(Icons.add_box),
                                    ),
                                    SizedBox(
                                      width: context.screenWidth * 0.02,
                                    ),
                                    Text(
                                      'Create a new agent',
                                      style: TextStyle(
                                          color: AppColor.buttonTextColor,
                                          fontFamily: 'Readex Pro bold',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: context.screenHeight * 0.02,
                            ),
                            Container(
                              height:
                                  context.screenHeight * 0.06, // Set the height
                              width:
                                  context.screenWidth * 0.18, // Set the width
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(6.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search agent',
                                    hintStyle:
                                        TextStyle(fontFamily: 'Readex Pro'),
                                    border: InputBorder
                                        .none, // Remove the default border
                                    //  contentPadding: EdgeInsets.symmetric(vertical: 15), // Vertical padding
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(left: 6),
                                    ),
                                    suffixIcon: Icon(Icons
                                        .search), // Search icon on the right
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: context.screenHeight * 0.01,
                            ),
                            Container(
                              height: context.screenHeight * 0.22,
                              width: context.screenWidth * 0.18,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6)),
                              child: ListView.builder(
                                itemCount: agents.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      Container(
                                          height: context.screenHeight * 0.06,
                                          width: context.screenWidth * 0.19,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: AppColor.blueColor),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Row(
                                              children: [
                                                const CircleAvatar(),
                                                Text(
                                                  agents[index],
                                                  style: TextStyle(
                                                      fontFamily: 'ReadexPro',
                                                      color: Colors.black),
                                                )
                                              ],
                                            ),
                                          )),
                                      SizedBox(
                                        height: context.screenHeight * 0.01,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
