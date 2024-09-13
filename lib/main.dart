<<<<<<< HEAD
import 'package:fab_tech_sol/Screen/add_new_agent.dart';
import 'package:fab_tech_sol/Screen/add_new_local_suppliers.dart';
import 'package:fab_tech_sol/Screen/addnewinternationalsuppliers.dart';
import 'package:fab_tech_sol/Screen/international_suppliers_details.dart';
import 'package:fab_tech_sol/Screen/local_supplier_detail.dart';

import 'package:fab_tech_sol/themedata.dart';


import 'package:fab_tech_sol/providers/provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  // runApp(MyApp());
=======
import 'package:fab_tech_sol/firebase_options.dart';
import 'package:fab_tech_sol/themedata.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/routes/routes.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
>>>>>>> a1e858bf8421f072fa92acd2f1a07bd0e9d34fa8
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
<<<<<<< HEAD

=======
>>>>>>> a1e858bf8421f072fa92acd2f1a07bd0e9d34fa8
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
        debugShowCheckedModeBanner: false,
        theme: ThemeApp.myThemeData,
        
        home:Addnewinternationalsuppliers() );
=======
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.myThemeData,
      initialRoute: AppRoutes.dashboard,
      home: const Dashboard(),
      routes: AppRoutes.getRoutes(),
    );
>>>>>>> a1e858bf8421f072fa92acd2f1a07bd0e9d34fa8
  }
}
