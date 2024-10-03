// ignore_for_file: non_constant_identifier_names

import 'package:fab_tech_sol/Screen/client_detail_package_screen.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class PackageDetailButtons {
  Widget PackageDetailButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ClientDetailPackage()));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                "Detail",
                style: TextStyle(
                  color: color,
                  fontSize: 16,
                  fontFamily: 'Readex Pro bold',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(Icons.arrow_forward)
            ],
          ),
        ),
      ),
    );
  }
}
