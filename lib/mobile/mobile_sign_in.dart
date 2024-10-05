import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/mobile/hidden_drawer.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:fab_tech_sol/widgets/fields.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileSignIn extends StatelessWidget {
  const MobileSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 130,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: context.screenWidth * 0.1),
                  child: Image(image: AssetImage('${imageUrl}briton_accr.png')),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    appMotto,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12, color: blackColor, fontFamily: readexPro),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Fields().emailField('Email',
                          textInputType: TextInputType.emailAddress),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Consumer<UserProvider>(
                            builder: (context, userProvider, child) {
                              return Fields().passwordField(
                                context,
                                !userProvider.signInPasswordVisible,
                                () {
                                  userProvider.setSignInPasswordVisible();
                                },
                                Icon(
                                  userProvider.signInPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 7),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/forgotPassword');
                              },
                              child: Text('Forgot Password',
                                  style: TextStyle(
                                    color: blackColor,
                                    fontFamily: readexPro,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                  ))),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                AuthButtons().authButtons('Sign In', () {
                  Navigator.pushNamed(context, '/hidden_drawer');
                 }, FontWeight.w500, color),
               SizedBox(height: context.screenHeight*0.17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don`t you have an account?',
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 12,
                          fontFamily: readexPro,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signUp');
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: addLeadButtonColor,
                              borderRadius: BorderRadius.circular(20)),
                          width: 70,
                          height: 30,
                          child: Center(
                            child: Text(
                              'SIGN UP',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: readexPro,
                                  color: blackColor),
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
