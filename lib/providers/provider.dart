import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  TabController? dashboardTabController;
  TabController? leadsTabController;

  void toggleCheckbox(bool newValue) {
    _isChecked = newValue;
    notifyListeners();
  }

  String selectedItem1 = 'Today';
  final List<String> dropdownItems1 = [
    'Today',
    'Tomorrow',
    'Yesterday',
    'Week ago'
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
