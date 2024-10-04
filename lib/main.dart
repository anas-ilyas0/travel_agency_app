
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/mobile/mobile_sign_in.dart';


import 'package:fab_tech_sol/providers/manage_color_state.dart';
import 'package:fab_tech_sol/resources/responsive.dart';

import 'package:fab_tech_sol/themedata.dart';

import 'package:fab_tech_sol/providers/provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/login_screen.dart';





void main() async {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => DrawerStateInfo()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeApp.myThemeData,
        title: AppStrings.appName,

        home: Responsive.isDesktop(context) || Responsive.isTablet(context)?  const LoginPage() : const MobileSignIn()
        

        
        );




     




  }
}
