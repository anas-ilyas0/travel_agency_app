import 'dart:html' as html;
import 'package:flutter/material.dart';

class LocalSupplierProvider with ChangeNotifier {
  html.File? _localSupplierImage;
  String? _localSupplierImageUrl;

  // Getter for the local supplier image URL
  String? get localSupplierImageUrl => _localSupplierImageUrl;

  // Method to pick an image for the local supplier
  Future<void> pickLocalSupplierImage() async {
    final input = html.FileUploadInputElement();
    input.accept = 'image/*';
    input.click();

    input.onChange.listen((e) async {
      final files = input.files;
      if (files == null || files.isEmpty) return;

      _localSupplierImage = files[0];
      final reader = html.FileReader();

      reader.readAsDataUrl(_localSupplierImage!);
      reader.onLoadEnd.listen((e) {
        _localSupplierImageUrl = reader.result as String?;
        notifyListeners();
      });
    });
  }
}