
import 'package:fab_tech_sol/Screen/add_new_lead_form_create_new_package.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PackageDetail extends StatelessWidget {
  const PackageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 52, right: 52),
        child: Column(
          children: [
            SizedBox(
              height: context.screenHeight * 0.02,
            ),
            Row(
              children: [
                Text(
                  'Package Detail',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'ReadexPro',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: context.screenWidth * 0.325,
                ),
                Widgets().searchTextField(),
                SizedBox(
                  width: context.screenWidth * 0.02,
                ),
                Widgets().button(
                  'Add New Package',
                  () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPackageForm(),));
                  },
                )
              ],
            ),
            SizedBox(
              height: context.screenWidth * 0.02,
              
            ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Container(
              height: context.screenHeight*0.08,
             // width: context.screenWidth*0.98,
              
              decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(7),
border: Border.all(color: Color(0XFF70707033),width: 1),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Widgets().agentText('Client Name', 18),
                  ),
                 SizedBox(width: context.screenWidth*0.045,),
                Widgets().agentText('Phone Number', 18),
               SizedBox(width: context.screenWidth*0.02,),
                Text('|'),
               SizedBox(width: context.screenWidth*0.02,),
                Widgets().agentText('Agent Name', 18),
                SizedBox(width: context.screenWidth*0.03,),
               
                Widgets().agentText('Phone Number', 18),
                SizedBox(width: context.screenWidth*0.015,),
                 Text('|'),
                 SizedBox(width: context.screenWidth*0.015,),
                 Widgets().agentText('Supplier Name', 18),
                                 SizedBox(width: context.screenWidth*0.07,),
                                
                                 Widgets().agentText('Phone Number', 18),
                                 SizedBox(width: context.screenWidth*0.04,),
                                
                                 Widgets().agentText('Action', 18),
               
              
                ],
              ),
            )
            
            
          ),
          SizedBox(height: 10,),
         SizedBox(
           height: context.screenHeight * 0.71,
           width: context.screenWidth * 0.9,
           child: SingleChildScrollView(
             child: Column(
               children: [
                 ListView.builder(
                   shrinkWrap: true, // Ensures it takes up only as much space as needed
                   physics: NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
                   itemCount: 20,
                   itemBuilder: (context, index) {
                     return Padding(
                       padding: const EdgeInsets.only(bottom: 10),
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(7),
                           border: Border.all(
                            color: Color(0XFF70707033),
                            width: 1
                           )
                           
                         ),
                         height: 66,
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15),
                           child: Row(
                             children: [
                               Row(
                                 children: [
                                   Widgets().circularAvatar(
                                     backgroundImage: '${imageUrl}agent.png',
                                   ),
                                   Widgets().agentText('John Doe', 12),
                                 ],
                               ),
                               SizedBox(width: context.screenWidth * 0.04),
                               Widgets().agentText('+21 999 999 999', 12),
                               SizedBox(width: context.screenWidth * 0.063),
                               Row(
                                 children: [
                                   Widgets().circularAvatar(
                                     backgroundImage: '${imageUrl}agent.png',
                                   ),
                                   Widgets().agentText('John Doe', 12),
                                   
                                 ],
                               ),
                               SizedBox(width: context.screenWidth * 0.04),
                               Widgets().agentText('+21 999 999 999', 12),
                               SizedBox(width: context.screenWidth * 0.07),
                               Row(
                                 children: [
                                   Widgets().circularAvatar(
                                     backgroundImage: '${imageUrl}agent.png',
                                   ),
                                   Widgets().agentText('John Doe', 12),
                                 ],
                               ),
                               SizedBox(width: context.screenWidth * 0.072),
                               Widgets().agentText('+21 999 999 999', 12),
                               SizedBox(
                                width: context.screenWidth*0.035,
                               ),Widgets().PackageDetailButton(context)
                             ],
                           ),
                         ),
                       ),
                     );
                   },
                 ),
               ],
             ),
           ),
         )

  
       ] ),
      ),
    );
  }
}
