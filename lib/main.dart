import 'package:fab_tech_sol/Screen/add_new_local_suppliers.dart';
import 'package:fab_tech_sol/Screen/addnewinternationalsuppliers.dart';
import 'package:fab_tech_sol/Screen/international_suppliers_details.dart';
import 'package:fab_tech_sol/Screen/package_Screen.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/mobile/mobile_sign_in.dart';
import 'package:fab_tech_sol/providers/manage_color_state.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/routes/routes.dart';
import 'package:fab_tech_sol/themedata.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:fab_tech_sol/ui/dashboard_widget.dart';
import 'package:fab_tech_sol/ui/supplier_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/login_screen.dart';

void main() async {
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
      home: LoginPage(),
      // home: Responsive.isDesktop(context) || Responsive.isTablet(context)
      //    ? const LoginPage()
      //    : const MobileSignIn(),
      // routes: AppRoutes.getRoutes(),
    );
      
  }
}
