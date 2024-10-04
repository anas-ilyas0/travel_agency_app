import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:fab_tech_sol/widgets/fields.dart';
import 'package:flutter/material.dart';

class MobileForgotPassword extends StatelessWidget {
  const MobileForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 10,
                ),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back)),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                          fontFamily: readexPro,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 22, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontFamily: readexPro,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Enter the email associated with your account and we`ll send an email with instructions to reset your password.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: readexPro,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 35),
                    Fields().emailField('Email',
                        textInputType: TextInputType.emailAddress),
                  ],
                ),
              ),
              SizedBox(height: context.screenHeight * 0.48),
              AuthButtons().authButtons(
                  'Send Instructions', () {}, FontWeight.w700, color)
            ],
          ),
        ),
      ),
    );
  }
}
