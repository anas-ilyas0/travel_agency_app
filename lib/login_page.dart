import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/app_text_style.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
        bool isChecked=false;
    return Scaffold(
      body: Center(
        child: SizedBox(
           
          height: context.screenHeight*0.9,
          width: context.screenWidth*0.4,
        //  decoration: BoxDecoration(
        //     color: Colors.red
        //  ),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
                SizedBox(
            height:context. screenHeight*0.1,
            width:context. screenWidth*0.12,
            child: Image.asset("${ImagesAssets.imagePath}BRITON.png"),
          ),
            SizedBox(height:context. screenHeight*0.04),
               Row(
               mainAxisAlignment: MainAxisAlignment.center,
               mainAxisSize: MainAxisSize.min,
                children:[
                  
                SizedBox(width:context.screenWidth*0.03), 
      
        const Text('Welcome Back  ', style: TextStyle(fontSize: 34,fontWeight: FontWeight.w900,),),
       const Text('👋',style: TextStyle(color: Colors.yellow,fontSize: 32),)
       ]),
       SizedBox(
        height: context.screenHeight*0.02,
       ),
       const Text('In publishing and graphic design, Lorem ipsum is a placeholder text \n commonly used to demonstrate the visual form of a document or a \n typeface without',textAlign: TextAlign.center,style: TextStyle(),),
         
         
        //  const  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Text(
        //       'In publishing and graphic design, Lorem ipsum is a placeholder text',
        //      // textAlign: TextAlign.center,
        //     ),
        //     Text(
        //       'commonly used to demonstrate the visual form of a document',
        //      // textAlign: TextAlign.center,
        //     ),
        //     Text(
        //       'or a typeface without',
        //      // textAlign: TextAlign.center,
        //     ),
        //   ],
        //  ),
         SizedBox(height:context. screenHeight*0.08,),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
               prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0), 
                child: SvgPicture.asset(
                  '${ImagesAssets.imagePath}email.svg', 
                  width: 24,  
                  height: 24, 
                ),
               ),
                contentPadding: const EdgeInsets.symmetric(vertical: 26),
                filled: true,
               fillColor: Colors.white,
                
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(18)
                )
              ),
            ),
             SizedBox(
            height:context. screenHeight*0.02,
          ),
           SizedBox(
          
            width:context. screenWidth*0.5,
           
            child: TextFormField(
              
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0), 
                child: SvgPicture.asset(
                  '${ImagesAssets.imagePath}password.svg', 
                  width: 24,  
                  height: 24, 
                ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 26),
                filled: true,
               fillColor: Colors.white,
                
                hintText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(18),
                  
                )
              ),
            ),
          ),
          SizedBox(height:context. screenHeight*0.01,),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       
        Row(children: [
          Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        const Text('Remember Me'),
        ],),
        
         // height: screenheight*0.05,
         TextButton(onPressed: () {
          }, child: const Text('Forgot Account?',style: TextStyle(fontSize: 16),)),
        
      ],
    ),
    SizedBox(height:context. screenHeight*0.1,),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children:[ ElevatedButton(onPressed: () {
        
      }, 
       style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0XFFC2E9F3),
      minimumSize: Size(context.screenWidth*0.155, context.screenHeight*0.09)),
      
      child: const Text('Log in',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight:FontWeight.bold ),)),
      ]
    )
   
   
            
            ]
          ),
        ),
      ),
    );
  }
}