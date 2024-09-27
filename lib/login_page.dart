import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/app_text_style.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/resources/navigation_util.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            color: AppColor.background,
            borderRadius: BorderRadius.circular(40)),
        margin: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 18 : 70,
            vertical: Responsive.isMobile(context) ? 20 : 50),
        child: Center(
          child: Container(
            height: context.screenHeight * 0.9,
            width: Responsive.isDesktop(context)
                ? context.screenWidth * 0.3
                : Responsive.isTablet(context)
                    ? context.screenWidth * 0.5
                    : context.screenWidth * 0.8,
            // decoration: BoxDecoration(
            //    color: Colors.red
            // ),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: context.screenHeight*.07,),
                    SizedBox(
                      height: Responsive.isMobile(context) ? 40 : 50,
                      width: Responsive.isMobile(context) ? 100 : 160,
                      child: Image.asset("${ImagesAssets.imagePath}BRITON.png"),
                    ),
                    SizedBox(height: context.screenHeight * 0.04),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(width: context.screenWidth * 0.03),
                          Text(
                            'Welcome Back ',
                            style: TextStyle(
                                fontSize: Responsive.isMobile(context) ? 26 : 34,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Readex Pro"),
                          ),
                          Text(
                            '👋',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: Responsive.isMobile(context) ? 26 : 32),
                          )
                        ]),
                    SizedBox(
                      height: context.screenHeight * 0.01,
                    ),
                    Text(
                      'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.08,
                    ),
              
                    textFormField("Email", TextInputType.emailAddress, '${ImagesAssets.imagePath}email.svg'),
              
                    SizedBox(
                      height: context.screenHeight * 0.02,
                    ),
                    textFormField("Password", TextInputType.visiblePassword, '${ImagesAssets.imagePath}password.svg'),
                    SizedBox(
                      height: context.screenHeight * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              side: BorderSide(color: AppColor.darkGrey,),
              
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            ),
                            Text(
                              'Remember Me',
                              style: TextStyle(
                                  fontSize:
                                      Responsive.isMobile(context) ? 14 : 16,
                                  fontFamily: "Readex Pro",
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
              
                        // height: screenheight*0.05,
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Account?',
                              style: TextStyle(
                                  fontSize:
                                      Responsive.isMobile(context) ? 14 : 16,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Readex Pro',
                                  color: AppColor.buttonTextColor),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: context.screenHeight * 0.1,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      ElevatedButton(
                          onPressed: () {
                            NavigationUtil.navigateAndReplace(context: context, destinationScreen: Dashboard());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0XFFC2E9F3),
                              minimumSize: Size(
                                  Responsive.isMobile(context) ? 150 : 190, 55)),
                          child: Text(
                            'Log in',
                            style: TextStyle(
                                fontSize: Responsive.isMobile(context) ? 14 : 18,
                                color: AppColor.buttonTextColor,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Readex Pro"),
                          )),
                    ])
                  ]),
            ),
          ),
        ),
      ),
    );
  }
  Widget textFormField(String name, TextInputType inputType,String icon){
    return TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              icon,
              width: Responsive.isMobile(context) ? 15 : 18,
              height: Responsive.isMobile(context) ? 15 : 18,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
              vertical: Responsive.isMobile(context) ? 20 : 24),
          filled: true,
          fillColor: Colors.white,
          hoverColor: Colors.white,
          hintText: name,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18),
          )),
    );
  }
}
