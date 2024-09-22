import 'package:flutter/material.dart';

class HelperUtil {
  static List<DataColumn> createColumns({required List<String> columnNames}) {
    return columnNames
        .map((name) =>
        DataColumn(
          label: Padding(
            padding:  EdgeInsets.only(left: name == "Action" ? 25.0 : 0.0),
            child: Text(
              name,
            ),
          ),
        ))
        .toList();
  }
}