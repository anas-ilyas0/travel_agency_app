import 'package:flutter/services.dart';

class CapitalizeFirstLetterInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty) {
      String text = newValue.text;
      String capitalized = text[0].toUpperCase() + text.substring(1);
      return newValue.copyWith(
        text: capitalized,
        selection: TextSelection.collapsed(offset: capitalized.length),
      );
    }
    return newValue;
  }
}
