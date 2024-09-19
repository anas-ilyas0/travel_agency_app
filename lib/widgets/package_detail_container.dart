import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PackageDetailContainer extends StatelessWidget {
  
   PackageDetailContainer({super.key,});

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(22),
       height: context.screenHeight*0.3,
        width: context.screenWidth*0.85,
       
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),color: AppColor.background,border: Border.all(color: AppColor.borderColor.withOpacity(0.08),width: 1)),
        child: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
                 
            children: [
            SizedBox(height: context.screenHeight*0.05,),
            Row(
children: [
Align(
              alignment: Alignment.centerLeft,
              child: Text('\$ 74.99',style: TextStyle(fontSize: 40,fontFamily: 'Readex Pro bold',),)),
              SizedBox(
                width: context.screenWidth*0.52
              ),
              Text('Monthly',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Readex Pro'),),
              SizedBox(width: context.screenWidth*0.01,),
              SizedBox(
               // height: 48,
               // width: 172,
                height: context.screenHeight*0.07,
                
                width: context.screenWidth*0.125,
                child: ElevatedButton(onPressed: () {
                
                }, style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.blueColor
                ),
                child: Text('Detail',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',color: Colors.white),)),
              )
],
            ),
            
               Align(
              alignment: Alignment.centerLeft,
              child: 
            Padding(
              padding: const EdgeInsets.only(right:  300),
              child: Text('The Premium Plan offers unlimited ticket handling annually, making it perfect for those who receive multiple tickets throughout the year.\ This plan ensures that no matter how many tickets you get, weve got you covered with top-notch service and support.',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
            )
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text('Features:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,fontFamily: 'Readex Pro'),)),
          Padding(
            padding: const EdgeInsets.only(right: 85),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                
                  decoration: BoxDecoration(color: AppColor.blueColor,borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
                  ),
                ),
                SizedBox(width: context.screenWidth*0.005,),
                Text('Unlimited traffic ticket handling per year',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'Readex Pro'),),
                SizedBox(width: context.screenWidth*0.01,),
                 Container(
                  height: 20,
                  width: 20,
                
                  decoration: BoxDecoration(color: AppColor.blueColor,borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
                  ),
                ),
                SizedBox(width: 0.005,),
                
                Text('Priority processing for faster resolutio',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'Readex Pro'),),
                 SizedBox(width: context.screenWidth*0.01,),
              
                 Container(
                  height: 20,
                  width: 20,
                
                  decoration: BoxDecoration(color: AppColor.blueColor,borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
                  ),
                ),
                SizedBox(width: 0.005,),
               
                Text('Dedicated customer support with extended hours',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'Readex Pro'),),
                 SizedBox(width: context.screenWidth*0.01,),
               
                 Container(
                  height: 20,
                  width: 20,
                
                  decoration: BoxDecoration(color: AppColor.blueColor,borderRadius: BorderRadius.circular(18)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
                  ),
                ),
                SizedBox(width: 0.005,),
               // SizedBox(width: context.screenWidth*0.004,),
                Text('Comprehensive management tools and notifications',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10,fontFamily: 'Readex Pro'),),
                
              ],
            ),
          )
        ],),
        ),
      
      ),
      Positioned(
        left: context.screenHeight*0.08,
        bottom: context.screenHeight*0.3,
        child: Container(
          height: 45,
          width: 160,
          decoration: BoxDecoration(color: AppColor.blueColor,borderRadius: BorderRadius.circular(22)),
          child: Center(child: Text('Family Price',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Readex Pro',color: Colors.black),)),
        ),
        // child: ElevatedButton(onPressed: () {
                  
        //         },
        //         style: ElevatedButton.styleFrom(
        //           backgroundColor: AppColor.blueColor
        //         )
                
        //         , child: Text('Family Price',style: TextStyle(fontSize: 18,fontFamily: 'Readex Pro',fontWeight: FontWeight.bold,color: Colors.black),)),
      )
      ]
    );
  }
}