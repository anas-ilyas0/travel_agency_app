import 'dart:typed_data';
import 'package:flutter/material.dart';
// import 'package:image_picker_web/image_picker_web.dart';
class HelperUtil {
  // static Future<Uint8List?> pickImage() async {
  //   Uint8List? bytesFromPicker;
  //   try {
  //
  //       bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
  //
  //     if (bytesFromPicker != null && bytesFromPicker.isNotEmpty) {
  //       return bytesFromPicker;
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  //   return bytesFromPicker;
  // }
  static List<DataColumn> createColumns({required List<String> columnNames, bool value =false}) {
    return columnNames
        .map((name) =>
        DataColumn(
          label: Padding(
            padding:  EdgeInsets.only(left: name == "Action" && value == false? 25.0 : 0.0),
            child: Text(
              name,
            ),
          ),
        ))
        .toList();
  }
}