import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PacakgeDetails2 extends StatelessWidget {
  const PacakgeDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
    horizontal: MediaQuery.of(context).size.width * 0.05,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: context.screenHeight*0.04,),
             Text(
               'Package Details',
               style: TextStyle(
                   fontSize: 22,
                   color: Color(0XFF303C6C),
                   fontFamily: 'Readex Pro bold',
                   fontWeight: FontWeight.w400),
             ),
                        SizedBox(height: context.screenHeight*0.04,),
                        Align(
                          alignment: Alignment.centerLeft,

                          child: Row(
                            children: [
                              Text('price',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Readex Pro'),),
                              SizedBox(width: context.screenWidth*0.2,),
                               Text('Types of people',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Readex Pro'),),
                            ],
                          )),
                        Row(
                          children: [
                            Container(height: context.screenHeight*0.08,width: context.screenWidth*0.2,
                            decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),),
                            SizedBox(width: context.screenWidth*0.025,),
                            Container(height: context.screenHeight*0.08,width: context.screenWidth*0.2,
                              decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.circular(8))
                            ),
                            
                          ],
                        ),
                        SizedBox(height: context.screenHeight*0.04,),
                        Text('Place',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Readex Pro')),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: context.screenHeight*0.4,
                            width: context.screenWidth*0.425,
                            color: Colors.amber,
                          ),
                        )
                        ],
                        
        ),
      ),
    );
  }
}