import 'dart:io';
import 'dart:io';
import 'dart:io';
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
    



  bool get isCheckedEmail => _isCheckedEmail;
  bool get isCheckedSMS => _isCheckedSMS;
  
  bool get isCheckedWhatsApp => _isCheckedWhatsApp;
  String get selectSupplier=>_selectSuupplier; 
   String get selectedValue => _selectedValue;
   int get selectedSupplierIndex => _selectedSupplierIndex;
    String get selectedRange => _selectedRange;







   
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

  @override
  void dispose() {
    dashboardTabController?.dispose();
    leadsTabController?.dispose();
    super.dispose();
  }


  String _selectedOption = 'Supplier';
    String get selectedOption => _selectedOption;
    void setSelectedOption(String value) {
    _selectedOption = value;
    notifyListeners(); // Notify listeners to rebuild the widgets that depend on this state
  }










 html.File? _imageFile; // Change File type to html.File
  String? _imageUrl; // To hold the image URL for display

  String? get imageUrl => _imageUrl;

  Future<void> pickImage() async {
    // Create an input element to select files
    final input = html.FileUploadInputElement();
    input.accept = 'image/*'; // Accept images only
    input.click(); // Open file picker

    input.onChange.listen((e) async {
      final files = input.files;
      if (files!.isEmpty) return;

      _imageFile = files[0];
      final reader = html.FileReader();

      reader.readAsDataUrl(_imageFile!); // Read the file as data URL
      reader.onLoadEnd.listen((e) {
        _imageUrl = reader.result as String; // Get the image URL
        notifyListeners(); // Notify listeners to update UI
      });
    });
  }



 bool _isChecked = false;

  bool get isChecked => _isChecked;

  void toggleCheckbox() {
    _isChecked = !_isChecked;
    notifyListeners();
  }













}





  
  













