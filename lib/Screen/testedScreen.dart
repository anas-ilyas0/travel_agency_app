import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:flutter/material.dart';

class Testedscreen extends StatelessWidget {
  const Testedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: Center(
            child: Text(
          'Mobile',
          style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              fontFamily: fontFamilys),
        )),
        desktop: Center(
            child: Text(
          'Desktop',
          style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              fontFamily: fontFamilys),
        )),
        tablet: Center(
            child: Text(
          'Tablet',
          style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              fontFamily: fontFamilys),
        )),
        ),
    );
  }
}
