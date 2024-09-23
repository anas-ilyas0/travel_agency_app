import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/material.dart';

class BackButtonAverter extends StatelessWidget {
  String text1;
   BackButtonAverter({super.key,required this.text1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 42, right: 48),
      child: SizedBox(
        height: context.screenHeight * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                      backgroundColor: Colors.white),
                  child: const Icon(Icons.arrow_back,
                      size: 24, color: Colors.black),
                ),
                 Text(
                  text1,
                  style:  TextStyle(
                      fontSize: 20,
                     fontWeight: FontWeight.w600,
                      fontFamily: fontFamilys,
                      color: Color(0XFF11345A)),
                ),
              ],
            ),
            Row(
              children: [
                 Text(
                  'Your Name',
                  style: TextStyle(fontFamily: fontFamilys,fontSize: 15,fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: context.screenWidth * 0.01,
                ),
                const CircleAvatar(
                  radius: 20, // Adjust the radius for size
                  backgroundImage: AssetImage(
                      '${ImagesAssets.imagePath}Ellipse.png'), // Image from assets
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
