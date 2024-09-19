
import 'package:fab_tech_sol/firebase_options.dart';
import 'package:fab_tech_sol/login_page.dart';

import 'package:fab_tech_sol/providers/manage_color_state.dart';

import 'package:fab_tech_sol/themedata.dart';

import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/ui/add_new_lead.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/add_new_agent.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => DrawerStateInfo()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final ThemeApp themeApp = ThemeApp();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeApp.myThemeData,

        home: const Dashboard() );
        // home: Package() );
      // debugShowCheckedModeBanner: false,
      // theme: ThemeApp.myThemeData,
      // initialRoute: AppRoutes.dashboard,
      // home: const Dashboard(),
      // routes: AppRoutes.getRoutes(),
    // );



  }
}
