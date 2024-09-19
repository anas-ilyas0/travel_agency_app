
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class LeadDetails extends StatelessWidget {
  const LeadDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      Column(
        children:[ 
          SizedBox(
            height: context.screenHeight*0.02,
          ),
          
          Row(
          children: [
            SizedBox(
              width: context.screenWidth*0.04,
            ),
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),  // Makes the button circular
                padding: const EdgeInsets.all(16),  // Adds padding inside the button
               // primary: Colors.blue,  // Background color
               backgroundColor: Colors.white
              ),
              child: const Icon(Icons.arrow_back  , size: 24, color: Colors.black),
            ),
            const Text('Details',style: TextStyle(fontSize: 22,fontFamily: 'Readex Pro'),),
            SizedBox(width: context.screenWidth*0.68,),
            Container(
            width: context.screenWidth*0.13,
            height: context.screenHeight*0.08, 
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
              
            // },
            // style: ElevatedButton.styleFrom(backgroundColor: Color(0XFF333333),minimumSize: Size(context.screenWidth*0.1, context.screenHeight*0.1)),
            //
            //  child: Text('Add New Lead'))
            ),
          ],
        ),
        SizedBox(
          height: context.screenHeight*0.01,
        ),
        Container(
  height: context.screenHeight * 0.86,
  width: context.screenWidth * 0.9,
  decoration: BoxDecoration(
    boxShadow:  [
      BoxShadow(color: Color(0XFFE3F5FA)),
      BoxShadow(color: Colors.white, blurRadius: 7, spreadRadius: -4),
    ],
    border: Border.all( // Adding an outline border
      color: const Color(0XFFD4D7E3), // You can change the color to whatever you want
      width: .5, // Border width
    ),
    borderRadius: BorderRadius.circular(10), // Optional: Make the border rounded
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: [
                    const Padding(
              padding: EdgeInsets.all(11.0), // Adds padding around the text
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Agent Details:',
                  style: TextStyle(color: Color(0XFF11345A),fontSize: 22,fontFamily: 'Readex Pro'),
                ),
              ),
            ), SizedBox(
              height: context.screenHeight*0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  const Text('Agent Name:',style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: context.screenWidth*0.08,
                  ),
                  const CircleAvatar(
              radius: 20,  // Adjust the radius for size
              backgroundImage: AssetImage('${ImagesAssets.imagePath}Ellipse.png'),  // Image from assets
            ),
            SizedBox(
              width: context.screenWidth*0.01,
            ),
            const Text('Jhon Doe'),
            
                ],
              ),
            ),
            const Divider(endIndent: 18.0,indent: 18.0,),
              const Padding(
              padding: EdgeInsets.all(12.0), // Adds padding around the text
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Client Details:',style: TextStyle(color: Color(0XFF11345A),fontSize: 22,fontFamily: 'Readex Pro'),
                 
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  const Text('Client Name:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro')),
                  SizedBox(width:context.screenWidth*0.08,),
                  const Text('Jhon doe',style: TextStyle(fontSize: 13),),
                  SizedBox(width: context.screenWidth*0.08,),
                  const Text('Phone No:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro')),
                  SizedBox(width: context.screenWidth*0.02,),
                  const Text('XXXXXXXXXXX',style: TextStyle(fontSize: 13),),
                  
                ],
                
              ),
            
            ),
            //SizedBox(height: context.screenHeight*0.002,),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  const Text('Price par pax',style: TextStyle(color: Color(0XFF83D0E3
            )),),
                  SizedBox(width:context.screenWidth*0.197,),
                  const Text('QTY',style: TextStyle(color: Color(0XFF83D0E3)),),
                 
                  SizedBox(width: context.screenWidth*0.15),
                  const Text('Total per pax',style: TextStyle(color: Color(0XFF83D0E3)),),
                  
                ],
                
              ),
              
            
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  const Text('Adult:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro')),
                  SizedBox(width:context.screenWidth*0.11,),
                  const Text('1 000 000',style: TextStyle(fontSize: 13),),
                  SizedBox(width: context.screenWidth*0.075,),
                  const Text('Adult',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro')),
                  SizedBox(width: context.screenWidth*0.1,),
                  const Text('1',style: TextStyle(fontSize: 13),),
                   SizedBox(width: context.screenWidth*0.14,),
                  const Text('1',style: TextStyle(fontSize: 13),),
                  
                ],
                
              ),
            
            ),
            const Divider( endIndent: 18,indent: 18,),
              const Padding(
              padding: EdgeInsets.all(11.0), // Adds padding around the text
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Trip Details:',style: TextStyle(color: Color(0XFF11345A),fontSize: 22,fontFamily: 'Readex Pro'),
                  
                ),
              ),
            ),
            Row(
              children: [
                Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  const Text('Destination:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro')),
                  SizedBox(width:context.screenWidth*0.06,),
                  const Text('Sialkot Punjab 51040',style: TextStyle(fontSize: 13),),
                  SizedBox(width: context.screenWidth*0.03,),
                  const Text('Booking Date:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro')),
                  SizedBox(width: context.screenWidth*0.02,),
                  const Text('08/15/2024',style: TextStyle(fontSize: 13),),
                   SizedBox(width: context.screenWidth*0.05,),
                  const Text('Travel Date:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro'),),
                   SizedBox(width: context.screenWidth*0.05,),
                  const Text('08/18/2024',style: TextStyle(fontSize: 13),),
                  
                ],
                
              ),
            
            ),
            
            
              ],
            ),
            const Divider(endIndent: 18,indent: 18,),
             const Padding(
              padding: EdgeInsets.all(11.0), // Adds padding around the text
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Package Amount Details:',style: TextStyle(color: Color(0XFF11345A),fontSize: 22,fontFamily: 'Readex Pro'),
                
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(11.0),
              child: Row(
                children: [
                  const Text('Package Amount:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro'),),
                  SizedBox(width:context.screenWidth*0.06,),
                  const Text(" 232,89.00",style: TextStyle(fontSize: 13),),
                  SizedBox(width: context.screenWidth*0.03,),
                  const Text('Paid Amount:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro')),
                  SizedBox(width: context.screenWidth*0.02,),
                  const Text(' 232,89.00',style: TextStyle(fontSize: 13),),
                   SizedBox(width: context.screenWidth*0.05,),
                  const Text('Outstanding Amount:',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,fontFamily: 'Readex Pro'),),
                   SizedBox(width: context.screenWidth*0.05,),
                  const Text('232,89.00',style: TextStyle(fontSize: 13),),
                  
                ],
                
              ),
            
            ),
            
              ],
            ),
          ),
        )
        ]
      ),
    );
  }
}