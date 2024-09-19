import 'package:flutter/material.dart';

class HelperUtil {
  static List<DataColumn> createColumns({required List<String> columnNames}) {
    return columnNames
        .map((name) =>
        DataColumn(
          label: Text(
            name,
          ),
        ))
        .toList();
  }
}