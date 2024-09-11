
import 'package:fab_tech_sol/Screen/invoice_details.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/themedata.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   final ThemeApp themeApp = ThemeApp();
  
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeApp.myThemeData,
      home: const InvoiceDetails(),
    );
  }
}
