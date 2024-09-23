import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class LeadDetails extends StatelessWidget {
  const LeadDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: context.screenHeight * 0.017,
        ),
       Padding(
         padding: const EdgeInsets.only(right: 72),
         child: Row(
           children: [
             // Spacing on the left
             SizedBox(
               width: context.screenWidth * 0.04,
             ),
             
             // Back Button
             ElevatedButton(
               onPressed: () {
                Navigator.pop(context);
               },
               style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(16),
          backgroundColor: Colors.white,
               ),
               child: const Icon(Icons.arrow_back, size: 24, color: Colors.black),
             ),
         
             // Title
             const Text(
               'Details',
               style: TextStyle(fontSize: 22, fontFamily: 'Readex Pro'),
             ),
         
             // Spacer
             const Spacer(),
         
             // Add New Lead Button
             Container(
               width: context.screenWidth * 0.13,
               height: context.screenHeight * 0.08,
               decoration: BoxDecoration(
          color: const Color(0XFF333333),
          borderRadius: BorderRadius.circular(10),
               ),
               child: TextButton(
          onPressed: () {
            // Your action here
          },
          child: const Text(
            "Add new Lead",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
               ),
             ),
           ],
         ),
       ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(), // Makes the button circular
                  padding: const EdgeInsets.all(
                      16), // Adds padding inside the button
                  // primary: Colors.blue,  // Background color
                  backgroundColor: Colors.white),
              child:
                  const Icon(Icons.arrow_back_outlined, size: 20, color: Colors.black),
            ),
            const Text(
              'Details',
              style: TextStyle(fontSize: 22, fontFamily: 'Readex Pro'),
            ),
            SizedBox(
              width: context.screenWidth * 0.68,
            ),
            Container(
              width: context.screenWidth * 0.13,
              height: context.screenHeight * 0.08,
              decoration: BoxDecoration(
                color: const Color(0XFF333333),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  // // Action when button is pressed
                  // print("Add new Lead button pressed");
                },
                child: const Text(
                  "Add new Lead",
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 16, // Text size
                  ),
                ),
              ),
              // ElevatedButton(onPressed: () {
            ),
        SizedBox(
          height: context.screenHeight * 0.02,
        ),
        Container(
          height: context.screenHeight * 0.86,
          width: context.screenWidth * 0.9,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Color(0XFFE3F5FA)),
              BoxShadow(color: Colors.white, blurRadius: 7, spreadRadius: -4),
            ],
            border: Border.all(
              // Adding an outline border
              color: const Color(
                  0XFFD4D7E3), // You can change the color to whatever you want
              width: .5, // Border width
            ),
            borderRadius:
                BorderRadius.circular(10), // Optional: Make the border rounded
          ),
      
          // Container(
          //   height: context.screenHeight*0.86,
          //   width: context.screenWidth*0.9,
          //   decoration: const BoxDecoration(
          //     boxShadow: [
          //     BoxShadow(color: Color(0XFFE3F5FA)),
          //     BoxShadow(color: Colors.white,blurRadius: 1,spreadRadius: -1,)
          //   ] ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Agent Details:',
                      style: AppTextstyless.packageClientDetailTextStyleHeading
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
      
                  Row(
                    children: [
                       Text('Agent Name:',
                          style:AppTextstyless.packageClientDetailTextStyle),
                      SizedBox(
                        width: context.screenWidth * 0.066,
                      ),
                      const CircleAvatar(
                        radius: 20, // Adjust the radius for size
                        backgroundImage: AssetImage(
                            '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.01,
                      ),
                       Flexible(
                        flex: 1,
                         child: Text('Jhon Doe',
                            style:AppTextstyless.packageClientDetailTextStyleSubTitle),
                       ),
                    ],
                  ),
                   SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                   Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Client Details:',
                      style:AppTextstyless.packageClientDetailTextStyleHeading,
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                 Row(
  children: [
    // Client Name Label
    Expanded(
      flex: 1,
      child: Text(
        'Client Name:',
        style: AppTextstyless.packageClientDetailTextStyle,
      ),
    ),

   SizedBox(width: context.screenWidth*0.06,),
   
    Expanded(
      flex:1,
      child: Text(
        'Jhon Doe',
        style: AppTextstyless.packageClientDetailTextStyleSubTitle,
      ),
    ),

    // Phone Number Label
    SizedBox(
      width: context.screenWidth * 0.087,
    ),
    Expanded(
      flex: 1,
      child: Text(
        'Phone No:',
        style: AppTextstyless.packageClientDetailTextStyle,
      ),
    ),

    // Phone Number Value
    SizedBox(
      width: context.screenWidth * 0.087,
    ),
    
    Expanded(
      flex: 1,
      child: Text(
        'XXXXXXXXXXX',
        style: AppTextstyless.packageClientDetailTextStyleSubTitle,
      ),
    ),
  ],
),

                  //SizedBox(height: context.screenHeight*0.002,),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Text(
                          'Price par pax',
                          style: TextStyle(
                              color: AppColor.buttonTextColors,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                              fontFamily: 'Readex Pro'),
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.215,
                      ),
                      Flexible(
                        flex: 1,
                        child: Text('QTY',
                            style: TextStyle(
                                color: AppColor.buttonTextColors,
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro')),
                      ),
                      SizedBox(width: context.screenWidth * 0.14),
                      Flexible(
                        flex: 1,
                        child: Text('Total per pax',
                            style: TextStyle(
                                color: AppColor.buttonTextColors,
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro')),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                 Row(
  children: [
    // 'Adult:' Text
    Flexible(
      flex: 1,
      child: const Text(
        'Adult:',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: 'Readex Pro'),
      ),
    ),

    // Spacing
    SizedBox(
      width: context.screenWidth * 0.11, // Adjusted for better spacing
    ),

    // '1 000 000' Text
    Flexible(
      flex: 3,
      child: const Text(
        '1 000 000',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            fontFamily: 'Readex Pro',
            color: Color(0XFF0C1421)),
      ),
    ),

    // Spacing
    SizedBox(
      width: context.screenWidth * 0.09, // Adjusted for better spacing
    ),

    // 'Adult' Text
    Flexible(
      flex: 2,
      child: const Text(
        'Adult',
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: 'Readex Pro'),
      ),
    ),

    // Spacing
    SizedBox(
      width: context.screenWidth * 0.1, // Adjusted for better spacing
    ),

    // '1' Text (First)
    Flexible(
      flex: 1,
      child: const Text(
        '1',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            fontFamily: 'Readex Pro',
            color: Color(0XFF0C1421)),
      ),
    ),

    // Spacing
    SizedBox(
      width: context.screenWidth * 0.14, // Adjusted for better spacing
    ),

    // '1' Text (Second)
    Flexible(
      flex: 1,
      child: const Text(
        '1',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
            fontFamily: 'Readex Pro',
            color: Color(0XFF0C1421)),
      ),
    ),
  ],
),

                   SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                   Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Trip Details:',
                      style: AppTextstyless.packageClientDetailTextStyleHeading
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Row(
                    children: [
                       Flexible(
                        flex: 1,
                         child: Text('Destination:',
                            style:AppTextstyless.packageClientDetailTextStyle),
                       ),
                      SizedBox(
                        width: context.screenWidth * 0.065,
                      ),
                      Flexible(
                        flex: 1,
                        child: const Text('Sialkot Punjab 51040',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421))),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.03,
                      ),
                       Flexible(
                        flex: 1,
                         child: Text('Booking Date:',
                            style:AppTextstyless.packageClientDetailTextStyle),
                       ),
                      SizedBox(
                        width: context.screenWidth * 0.02,
                      ),
                      Flexible(
                        flex: 1,
                        child: const Text('08/15/2024',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421))),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),
                       Flexible(
                        flex: 1,
                         child: Text('Travel Date:',
                            style:AppTextstyless.packageClientDetailTextStyle),
                       ),
                      SizedBox(
                        width: context.screenWidth * 0.05,
                      ),
                      Flexible(
                        flex: 1,
                        child: const Text('08/18/2024',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421))),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                   Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Package Amount Details:',
                      style:AppTextstyless.packageClientDetailTextStyleHeading
                    ),
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.03,
                  ),
                  Row(
                    children: [
                       Flexible(
                        flex: 2,
                         child: Text('Package Amount:',
                            style:AppTextstyless.packageClientDetailTextStyle),
                       ),
                      SizedBox(
                        width: context.screenWidth * 0.028,
                      ),
                      Flexible(
                        flex: 1,
                        child: const Text("\$232,89.00",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421))),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.083,
                      ),
                    Flexible(
                      flex: 2,
                      child: Text('Paid Amount:',
                            style:AppTextstyless.packageClientDetailTextStyle),
                    ),
                      SizedBox(
                        width: context.screenWidth * 0.01,
                      ),
                      Flexible(
                        flex: 1,
                        child: const Text(' \$232,89.00',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421))),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.07,
                      ),
                       Flexible(
                        flex: 2,
                         child: Text('Outstanding Amount:',
                            style:AppTextstyless.packageClientDetailTextStyle),
                       ),
                      SizedBox(
                        width: context.screenWidth * 0.01,
                      ),
                      Flexible(
                        flex: 1,
                        child: const Text('\$232,89.00',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                                fontFamily: 'Readex Pro',
                                color: Color(0XFF0C1421))),
                      ),
                    ],
                  ),
                   SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Divider(
                    endIndent: 4,
                    indent: 4,
                    color: AppColor.dividerColor,
                    thickness: 0.5,
                  ),
                   SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                ],
              ),
            ),
          ),
        )
            ]),
    );
  }
}
