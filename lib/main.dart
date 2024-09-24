
import 'package:fab_tech_sol/Screen/add_new_agent.dart';
import 'package:fab_tech_sol/Screen/add_new_lead_detail.dart';
import 'package:fab_tech_sol/Screen/add_new_lead_form_create_new_package.dart';
import 'package:fab_tech_sol/Screen/add_new_local_suppliers.dart';
import 'package:fab_tech_sol/Screen/addnewinternationalsuppliers.dart';
import 'package:fab_tech_sol/Screen/client_detail_package.dart';
import 'package:fab_tech_sol/Screen/drop_down_button.dart';
import 'package:fab_tech_sol/Screen/international_suppliers_details.dart';
import 'package:fab_tech_sol/Screen/invoice_details_invoice.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/Screen/local_supplier_detail.dart';
import 'package:fab_tech_sol/Screen/pacakge_details2.dart';
import 'package:fab_tech_sol/Screen/package.dart';
import 'package:fab_tech_sol/Screen/package_detail.dart';
import 'package:fab_tech_sol/Screen/package_Screen.dart';
import 'package:fab_tech_sol/firebase_options.dart';
import 'package:fab_tech_sol/login_page.dart';

import 'package:fab_tech_sol/providers/manage_color_state.dart';

import 'package:fab_tech_sol/themedata.dart';

import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/Screen/add_new_lead_form.dart';
import 'package:fab_tech_sol/ui/agents_widget.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:fab_tech_sol/ui/dashboard_widget.dart';
import 'package:fab_tech_sol/ui/supplier_widget.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



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
// home: LeadDetails());
// home: PackageDetail());
// home: PackageClassScreen());
// home:CreateNewPackageForm());
// home: AddNewLocalSupplier());
// home: LoginPage());
// home:CustomDropDownButton());
// home: AddNewInterNationalsuppliers());
home: AddNewLeadDetail());
     


  }
}
