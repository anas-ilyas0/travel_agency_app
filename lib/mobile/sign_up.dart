import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:fab_tech_sol/widgets/fields.dart';
import 'package:fab_tech_sol/widgets/check_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileSignUp extends StatelessWidget {
  const MobileSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child:
                Consumer<UserProvider>(builder: (context, userProvider, child) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child:
                        Image(image: AssetImage('${imageUrl}briton_accr.png')),
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
                          fontSize: 12,
                          color: blackColor,
                          fontFamily: readexPro),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Fields().authField(context, 'Full Name'),
                        const SizedBox(
                          height: 7,
                        ),
                        Fields().emailField('Email',
                            textInputType: TextInputType.emailAddress),
                        const SizedBox(
                          height: 7,
                        ),
                        Fields().authField(context, 'Phone Number',
                            textInputType: TextInputType.phone,
                            suffixText: '(Optional)'),
                        const SizedBox(
                          height: 7,
                        ),
                        Fields().passwordField(
                          context,
                          !userProvider.signUpPasswordVisible,
                          () {
                            userProvider.setSignUpPasswordVisible();
                          },
                          Icon(
                            userProvider.signUpPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 17,
                      ),
                      CheckBox()
                          .checkLeadBox(userProvider.isCheckedTermsServices,
                              (bool? newValue) {
                        userProvider
                            .toogleCheckedTermsServices(newValue ?? false);
                      }, greyColor.withOpacity(0.5)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'By submitting this form, You are agreeing to',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: readexPro,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              'Britoa Privacy Policy and Terms of Service',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: readexPro,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: context.screenHeight * 0.15),
                  AuthButtons()
                      .authButtons('Sign Up', () {}, FontWeight.w500, color)
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
