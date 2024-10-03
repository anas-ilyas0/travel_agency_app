import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/material.dart';

class UploadImageButton {
  Widget uploadImageButton(VoidCallback onPress, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth * 0.12,
      ),
      child: SizedBox(
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                backgroundColor: color),
            onPressed: onPress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                    height: 20,
                    width: 20,
                    image: AssetImage('${imageUrl}upload_icon.png')),
                Text(
                  'Upload Image',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: readexPro,
                      fontSize: 13,
                      fontWeight: FontWeight.w300),
                ),
              ],
            )),
      ),
    );
  }

  Widget uploadSuppliersImageButton(
      VoidCallback onPress, BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              backgroundColor: color),
          onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                  height: 10,
                  width: 10,
                  image: AssetImage('${imageUrl}upload_icon.png')),
              Text(
                'Upload Image',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: readexPro,
                    fontSize: 9,
                    fontWeight: FontWeight.w300),
              ),
            ],
          )),
    );
  }
}
