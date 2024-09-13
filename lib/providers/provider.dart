import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  bool _isCheckedEmail = true;
  bool _isCheckedSMS = true;
  bool _isCheckedWhatsApp = true;

  bool get isCheckedEmail => _isCheckedEmail;
  bool get isCheckedSMS => _isCheckedSMS;
  bool get isCheckedWhatsApp => _isCheckedWhatsApp;

  void toggleCheckboxEmail(bool newValue) {
    _isCheckedEmail = newValue;
    notifyListeners();
  }

  void toggleCheckboxSMS(bool newValue) {
    _isCheckedSMS = newValue;
    notifyListeners();
  }

  void toggleCheckboxWhatsApp(bool newValue) {
    _isCheckedWhatsApp = newValue;
    notifyListeners();
  }

  TabController? dashboardTabController;
  TabController? leadsTabController;

  String selectedItem1 = 'Today';
  final List<String> dropdownItems1 = [
    'Today',
    'Last Week',
    'This Week',
    'Next Week',
    'Last Month',
    'This Month',
    'Last Year',
    'This Year',
  ];

  String selectedItem2 = 'Filter';
  final List<String> dropdownItems2 = ['Filter', 'Filters'];

  void updateSelectedItem1(String? newValue) {
    if (newValue != null) {
      selectedItem1 = newValue;
      notifyListeners();
    }
  }

  void updateSelectedItem2(String? newValue) {
    if (newValue != null) {
      selectedItem2 = newValue;
      notifyListeners();
    }
  }

  void setDashboardTabController(TabController controller) {
    dashboardTabController = controller;
    notifyListeners();
  }

  void setLeadsTabController(TabController controller) {
    leadsTabController = controller;
    notifyListeners();
  }

  @override
  void dispose() {
    dashboardTabController?.dispose();
    leadsTabController?.dispose();
    super.dispose();
  }
}
