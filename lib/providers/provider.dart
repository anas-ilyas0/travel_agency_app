import 'dart:html' as html; 

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserProvider extends ChangeNotifier {
  bool _isCheckedEmail = true;
  bool _isCheckedSMS = true;
  bool _isCheckedWhatsApp = true;
  String _selectedRange = 'Today';
    String _selectedValue = 'One';

  String _selectSuupplier='Supplier';
   int _selectedSupplierIndex = 0;
  bool _isSelectAll = false;
  bool _isLeadsChecked = false;
  bool _isAgentsChecked = true;
  bool _isLocalSupplierChecked = false;
  bool _isInternationalSupplier = false;
  String? _selectedMonthClients;
  String? _selectedMonthLeads;
  String? _selectedMonthAgents;
  String? _selectedMonthSuppliers;
  bool get isCheckedEmail => _isCheckedEmail;
  bool get isCheckedSMS => _isCheckedSMS;
  
  bool get isCheckedWhatsApp => _isCheckedWhatsApp;
  String get selectSupplier=>_selectSuupplier; 
   String get selectedValue => _selectedValue;
   int get selectedSupplierIndex => _selectedSupplierIndex;
    String get selectedRange => _selectedRange;

  bool get isSelectAll => _isSelectAll;
  bool get isLeadsChecked => _isLeadsChecked;
  bool get isAgentsChecked => _isAgentsChecked;
  bool get isLocalSupplierChecked => _isLocalSupplierChecked;
  bool get isInternationalSupplier => _isInternationalSupplier;
  String? get selectedMonthClients => _selectedMonthClients;
  String? get selectedMonthLeads => _selectedMonthLeads;
  String? get selectedMonthAgents => _selectedMonthAgents;
  String? get selectedMonthSuppliers => _selectedMonthSuppliers;
  void toogleSelectAll(bool newValue) {
    _isSelectAll = newValue;
    notifyListeners();
  }
    

      void setSelectedValue(String value) {
    _selectedValue = value;
    notifyListeners();
  }

    void setSelectedRange(String newRange) {
    _selectedRange = newRange;
    notifyListeners();
  }

  void toggleCheckboxEmail(bool newValue) {
    _isCheckedEmail = newValue;
    notifyListeners();
  }
    void setSelectedSupplierIndex(int index) {
    _selectedSupplierIndex = index;
    notifyListeners();
  }

  void toggleCheckboxSMS(bool newValue) {
    _isCheckedSMS = newValue;
    notifyListeners();
  }
   void updateSelectedValue(String newValue) {
    _selectedValue = newValue;
    notifyListeners();
  }
  void setSlectedSupplier(String supplier){
    _selectSuupplier=supplier;
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
  void toogleIsLeadsChecked(bool newValue) {
    _isLeadsChecked = newValue;
    notifyListeners();
  }
  void toogleIsAgentsChecked(bool newValue) {
    _isAgentsChecked = newValue;
    notifyListeners();
  }
  void toogleIsLocalSupplierChecked(bool newValue) {
    _isLocalSupplierChecked = newValue;
    notifyListeners();
  }
  void toogleIsInternationalSupplier(bool newValue) {
    _isInternationalSupplier = newValue;
    notifyListeners();
  }
  void setSelectedMonthClients(String? month) {
    _selectedMonthClients = month;
    notifyListeners();
  }

  void setSelectedMonthLeads(String? month) {
    _selectedMonthLeads = month;
    notifyListeners();
  }

  void setSelectedMonthAgents(String? month) {
    _selectedMonthAgents = month;
    notifyListeners();
  }

  void setSelectedMonthSuppliers(String? month) {
    _selectedMonthSuppliers = month;
    notifyListeners();
  }
  @override
  void dispose() {
    dashboardTabController?.dispose();
    leadsTabController?.dispose();
    super.dispose();
  }


  String _selectedOption = 'Local';
    String get selectedOption => _selectedOption;
    void setSelectedOptions(String value) {
    _selectedOption = value;
    notifyListeners(); 
  }










 html.File? _imageFile; 
  String? _imageUrl; 

  String? get imageUrl => _imageUrl;

  Future<void> pickImage() async {
  
    final input = html.FileUploadInputElement();
    input.accept = 'image/*'; 
    input.click(); 

    input.onChange.listen((e) async {
      final files = input.files;
      if (files!.isEmpty) return;

      _imageFile = files[0];
      final reader = html.FileReader();

      reader.readAsDataUrl(_imageFile!); 
      reader.onLoadEnd.listen((e) {
        _imageUrl = reader.result as String;
        notifyListeners(); 
      });
    });
  }



 bool _isChecked = false;

  bool get isChecked => _isChecked;

  void toggleCheckbox() {
    _isChecked = !_isChecked;
    notifyListeners();
  }


  String selectedOptions = "Local";

  void setSelectedOption(String option) {
    selectedOptions = option;
    notifyListeners();
  }









 html.File? _internationalSupplierImage;
  String? _internationalSupplierImageUrl;

  String? get internationalSupplierImageUrl => _internationalSupplierImageUrl;

  Future<void> pickInternationalSupplierImage() async {
    final input = html.FileUploadInputElement();
    input.accept = 'image/*';
    input.click();

    input.onChange.listen((e) async {
      final files = input.files;
      if (files!.isEmpty) return;

      _internationalSupplierImage = files[0];
      final reader = html.FileReader();

      reader.readAsDataUrl(_internationalSupplierImage!);
      reader.onLoadEnd.listen((e) {
        _internationalSupplierImageUrl = reader.result as String;
        notifyListeners();
      });
    });







    
  }







}





  
  













