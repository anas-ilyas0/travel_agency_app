import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class MobileSplashScreen extends StatelessWidget {
  const MobileSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Image(image: AssetImage('${imageUrl}briton_accr.png')),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  appMotto,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12, color: blackColor, fontFamily: readexPro),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
