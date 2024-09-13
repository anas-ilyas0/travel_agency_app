import 'package:fab_tech_sol/ui/add_new_lead.dart';
import 'package:fab_tech_sol/ui/dashboard.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String dashboard = '/dashboard';
  static const String addNewLead = '/addNewLead';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      dashboard: (context) => const Dashboard(),
      addNewLead: (context) => const AddNewLead(),
    };
  }
}
