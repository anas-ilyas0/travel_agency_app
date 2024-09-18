import 'package:fab_tech_sol/Screen/add_new_agent.dart';
import 'package:fab_tech_sol/Screen/add_new_local_suppliers.dart';
import 'package:fab_tech_sol/Screen/addnewinternationalsuppliers.dart';
import 'package:fab_tech_sol/Screen/international_suppliers_details.dart';
import 'package:fab_tech_sol/Screen/local_supplier_detail.dart';
import 'package:fab_tech_sol/login_page.dart';

import 'package:fab_tech_sol/themedata.dart';


import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/Screen/add_new_lead_detail.dart';
import 'package:fab_tech_sol/firebase_options.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';


void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
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
        
        home:LoginPage() );
      // debugShowCheckedModeBanner: false,
      // theme: ThemeApp.myThemeData,
      // initialRoute: AppRoutes.dashboard,
      // home: const Dashboard(),
      // routes: AppRoutes.getRoutes(),
    // );

    
  }
}
