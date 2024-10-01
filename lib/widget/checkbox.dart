import 'package:flutter/material.dart';
class CheckBox {
  Widget checkBox(bool value, Function(bool?) onChanged) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      checkColor: Colors.white,
      activeColor: Colors.black,

    );
  }
  Widget checkLeadBox(bool value, Function(bool?) onChanged, Color color) {
    return Checkbox(
      side: BorderSide(color: color),
      value: value,
      onChanged: onChanged,
      checkColor: Colors.white,
      activeColor: Colors.black,
    );
  }
}