// ignore_for_file: constant_identifier_names

import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:flutter/material.dart';
import '../mobile/forgot_password.dart';
import '../mobile/hidden_drawer.dart';
import '../mobile/home_screen_mobile.dart';
import '../mobile/mobile_add_new_agent.dart';
import '../mobile/mobile_add_new_international_supplier.dart';
import '../mobile/mobile_add_new_lead.dart';
import '../mobile/mobile_add_new_local_supplier.dart';
import '../mobile/mobile_add_new_package.dart';
import '../mobile/mobile_agent_details.dart';
import '../mobile/mobile_international_supplier_details.dart';
import '../mobile/mobile_lead_details.dart';
import '../mobile/mobile_local_supplier_details.dart';
import '../mobile/mobile_notifications.dart';
import '../mobile/mobile_package_details.dart';
import '../mobile/mobile_sign_in.dart';
import '../mobile/sign_up.dart';

class AppRoutes {
  static const String dashboard = '/dashboard';
  static const String addNewLead = '/addNewLead';
  static const String lead_details = '/LeadDetails';
  //static const String package='/package';
  static const String mobileSignUp = '/signUp';
  static const String mobileSignIn = '/signIn';
  static const String hiddenDrawer = '/hidden_drawer';
  static const String mobileForgotPassword = '/forgotPassword';
  static const String homeScreenMobile = '/home_screen_mobile';
  static const String mobileAddNewLead = '/mobile_add_new_lead';
  static const String mobileLeadDetails = '/mobile_lead_details';
  static const String mobileAddNewAgent = '/mobile_add_new_agent';
  static const String mobileAgentDetails = '/mobile_agent_details';
  static const String mobileAddNewPackage = '/mobile_add_new_package';
  static const mobileAddNewLocalSupplier = '/mobile_add_new_local_supplier';
  static const mobileLocalSupplierDetails = '/mobile_local_supplier_details';
  static const mobileAddNewInternationalSupplier =
      '/mobile_add_new_international_supplier';
  static const mobileInternationalSupplierDetails =
      '/mobile_international_supplier_details';
  static const String mobilePackageDetails = '/mobile_package_details';
  static const String mobileNotifications = '/mobile_notifications';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      dashboard: (context) => const Dashboard(),
      // addNewLead: (context) => const AddNewLead(),
      lead_details: (context) => const LeadDetails(),
      //package: (context)=> PackageWidget(),
      mobileSignUp: (context) => const MobileSignUp(),
      mobileSignIn: (context) => const MobileSignIn(),
      hiddenDrawer: (context) => const HiddenDrawer(),
      mobileForgotPassword: (context) => const MobileForgotPassword(),
      homeScreenMobile: (context) => const HomeScreenMobile(),
      mobileAddNewLead: (context) => const MobileAddNewLead(),
      mobileLeadDetails: (context) => const MobileLeadDetails(),
      mobileAddNewAgent: (context) => const MobileAddNewAgent(),
      mobileAgentDetails: (context) => const MobileAgentDetails(),
      mobileAddNewPackage: (context) => const MobileAddNewPackage(),
      mobileAddNewLocalSupplier: (context) => const MobileAddNewLocalSupplier(),
      mobileLocalSupplierDetails: (context) =>
      const MobileLocalSupplierDetails(),
      mobileAddNewInternationalSupplier: (context) =>
      const MobileAddNewInternationalSupplier(),
      mobileInternationalSupplierDetails: (context) =>
      const MobileInternationalSupplierDetails(),
      mobilePackageDetails: (context) => const MobilePackageDetails(),
      mobileNotifications: (context) => const MobileNotifications()
    };
  }
}
