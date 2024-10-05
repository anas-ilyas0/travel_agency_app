// import 'dart:html' as html;
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserProvider extends ChangeNotifier {
  bool _isCheckedEmail = true;
  bool _isCheckedSMS = true;
  bool _isCheckedWhatsApp = true;
  String _selectedRange = 'Today';
  String _selectedValue = 'One';

  String _selectSuupplier = 'Supplier';
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
  String get selectSupplier => _selectSuupplier;
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

  void setSlectedSupplier(String supplier) {
    _selectSuupplier = supplier;
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
    // dashboardTabController!.addListener(() {
    //   if (!dashboardTabController!.indexIsChanging) { // Ensures the index is stable before triggering changes
    //     if (controller.index == 4) {
    //       setSelectedIndex(3, value: true); // When index is 4, we set selected index to 3
    //     } else if (controller.index == 5) {
    //       setSelectedIndex(4,value: true); // When index is 5, we set selected index to 4
    //     } else {
    //       setSelectedIndex(controller.index); // For other cases, just set the index as selected
    //     }
    //   }
    // });
    // dashboardTabController!.addListener(() {
    //   controller.index == 4
    //       ? setSelectedIndex(3)
    //       : controller.index == 5
    //           ? setSelectedIndex(4)
    //           : setSelectedIndex(controller.index);
    // });

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

  File? _imageFile;
  String? _imageUrl;

  String? get imageUrl => _imageUrl;

  Future<void> pickImage() async {
   // final input = html.FileUploadInputElement();
   //  input.accept = 'image/*';
   //  input.click();
   //
   //  input.onChange.listen((e) async {
   //    final files = input.files;
   //    if (files!.isEmpty) return;
   //
   //    _imageFile = files[0];
   //    final reader = html.FileReader();

    //   reader.readAsDataUrl(_imageFile!);
    //   reader.onLoadEnd.listen((e) {
    //     _imageUrl = reader.result as String;
    //     notifyListeners();
    //   });
    // });
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

////Provider

  bool _signInPasswordVisible = false;
  bool _signUpPasswordVisible = false;
  File? _selectedAgentImage;
  File? _selectedPackageImage;
  File? _selectedLocalSupplierCompanyLogo;
  File? _selectedLocalSupplierImage;

  File? _selectedInternationalSupplierCompanyLogo;
  File? _selectedInternationalSupplierImage;

  File? get selectedAgentImage => _selectedAgentImage;
  File? get selectedPackageImage => _selectedPackageImage;

  File? get selectedLocalSupplierCompanyLogo =>
      _selectedLocalSupplierCompanyLogo;
  File? get selectedLocalSupplierImage => _selectedLocalSupplierImage;

  File? get selectedInternationalSupplierCompanyLogo =>
      _selectedInternationalSupplierCompanyLogo;
  File? get selectedInternationalSupplierImage =>
      _selectedInternationalSupplierImage;

  Future<void> pickLocalSupplierCompanyLogo() async {
    final pickLocalSupplierCompanyLogo = ImagePicker();
    final companyLogoPickedFile = await pickLocalSupplierCompanyLogo.pickImage(
        source: ImageSource.gallery);

    if (companyLogoPickedFile != null) {
      _selectedLocalSupplierCompanyLogo = File(companyLogoPickedFile.path);
      notifyListeners();
    }
  }

  Future<void> pickLocalSupplierImage() async {
    final pickLocalSupplierImage = ImagePicker();
    final localSupplierPickedFile =
        await pickLocalSupplierImage.pickImage(source: ImageSource.gallery);

    if (localSupplierPickedFile != null) {
      _selectedLocalSupplierImage = File(localSupplierPickedFile.path);
      notifyListeners();
    }
  }

  Future<void> pickInternationalSupplierCompanyLogo() async {
    final pickInternationalSupplierCompanyLogo = ImagePicker();
    final internationalSupplierPickedFile =
        await pickInternationalSupplierCompanyLogo.pickImage(
            source: ImageSource.gallery);

    if (internationalSupplierPickedFile != null) {
      _selectedInternationalSupplierCompanyLogo =
          File(internationalSupplierPickedFile.path);
      notifyListeners();
    }
  }

  Future<void> pickInternationalSupplierImage() async {
    final pickInternationalSupplierImage = ImagePicker();
    final internationalSupplierPickedFile = await pickInternationalSupplierImage
        .pickImage(source: ImageSource.gallery);

    if (internationalSupplierPickedFile != null) {
      _selectedInternationalSupplierImage =
          File(internationalSupplierPickedFile.path);
      notifyListeners();
    }
  }

  Future<void> pickAgentImage() async {
    final agentPickerImage = ImagePicker();
    final agentPickedFile =
        await agentPickerImage.pickImage(source: ImageSource.gallery);

    if (agentPickedFile != null) {
      _selectedAgentImage = File(agentPickedFile.path);
      notifyListeners();
    }
  }

  Future<void> pickPackageImage() async {
    final packagePickerImage = ImagePicker();
    final packagePickedFile =
        await packagePickerImage.pickImage(source: ImageSource.gallery);

    if (packagePickedFile != null) {
      _selectedPackageImage = File(packagePickedFile.path);
      notifyListeners();
    }
  }

  // void clearImage() {
  //   _selectedAgentImage = null;
  //   notifyListeners();
  // }

  //variables_declarations

  int _selectedLocalInterSupplier = 0;

  bool _isMobileCheckedEmail = false;
  bool _isMobileCheckedSMS = false;
  bool _isMobileCheckedWhatsApp = false;

  String _selectedSupplier = 'Supplier';
  int _selectedIndex = 0;

  bool _isCheckedTermsServices = false;
  bool _foldedAgentField = true;
  bool _foldedSupplierField = true;
  bool _foldedPackageField = true;

  //getters

  bool get signInPasswordVisible => _signInPasswordVisible;
  bool get signUpPasswordVisible => _signUpPasswordVisible;

  int get selectedLocalInterSupplier => _selectedLocalInterSupplier;

  int get selectedIndex => _selectedIndex;

  bool get isMobileCheckedEmail => _isMobileCheckedEmail;
  bool get isMobileCheckedSMS => _isMobileCheckedSMS;
  bool get isMobileCheckedWhatsApp => _isMobileCheckedWhatsApp;

  String get selectedSupplier => _selectedSupplier;

  bool get isCheckedTermsServices => _isCheckedTermsServices;
  bool get isFoldedAgentField => _foldedAgentField;
  bool get isFoldedSupplierField => _foldedSupplierField;
  bool get isFoldedPackageField => _foldedPackageField;

  //setters

  void setSignInPasswordVisible([bool? visibility]) {
    if (visibility != null) {
      _signInPasswordVisible = visibility;
    } else {
      _signInPasswordVisible = !_signInPasswordVisible;
    }
    notifyListeners();
  }

  void setSignUpPasswordVisible([bool? visibility]) {
    if (visibility != null) {
      _signUpPasswordVisible = visibility;
    } else {
      _signUpPasswordVisible = !_signUpPasswordVisible;
    }
    notifyListeners();
  }

  void setToogleLocalInterSupplier(int index) {
    _selectedLocalInterSupplier = index;
    notifyListeners();
  }

  void setSelectedIndex(int index,{bool? value}) {

    // if(dashboardTabController!=null && !value!){
    //   index == 3? dashboardTabController!.animateTo(4): index == 4 ? dashboardTabController!.animateTo(5): dashboardTabController!.animateTo(index);
    // }
    _selectedIndex = index;
    notifyListeners();
  }

  void toogleCheckedTermsServices(bool newValue) {
    _isCheckedTermsServices = newValue;
    notifyListeners();
  }

  void setSelectedSupplier(String supplier) {
    _selectedSupplier = supplier;
    notifyListeners();
  }

  void toggleMobileCheckboxEmail(bool newValue) {
    _isMobileCheckedEmail = newValue;
    notifyListeners();
  }

  void toggleMobileCheckboxSMS(bool newValue) {
    _isMobileCheckedSMS = newValue;
    notifyListeners();
  }

  void toggleMobileCheckboxWhatsApp(bool newValue) {
    _isMobileCheckedWhatsApp = newValue;
    notifyListeners();
  }

  void toggleFoldAgentField() {
    _foldedAgentField = !_foldedAgentField;
    notifyListeners();
  }

  void toggleFoldSupplierField() {
    _foldedSupplierField = !_foldedSupplierField;
    notifyListeners();
  }

  void toggleFoldPackageField() {
    _foldedPackageField = !_foldedPackageField;
    notifyListeners();
  }
}
