<<<<<<< HEAD

import 'package:fab_tech_sol/Screen/invoice_details.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/themedata.dart';
=======
// ignore_for_file: avoid_print

import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/routes/routes.dart';
import 'package:fab_tech_sol/theme/theme.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
>>>>>>> 64a4cdfb6a45c846a3a83d21e6fd3842a1dc096a
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
<<<<<<< HEAD
  runApp(MyApp());
=======
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
>>>>>>> 64a4cdfb6a45c846a3a83d21e6fd3842a1dc096a
}

class MyApp extends StatelessWidget {
   final ThemeApp themeApp = ThemeApp();
  
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeApp.myThemeData,
      home: const InvoiceDetails(),
=======
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    print('Width $width >> Height $height');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme(),
      initialRoute: AppRoutes.dashboard,
      home: const Dashboard(),
      routes: AppRoutes.getRoutes(),
>>>>>>> 64a4cdfb6a45c846a3a83d21e6fd3842a1dc096a
    );
  }
}
