import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
class MobileCustomAppBar {
  Widget mobileCustomAppBar(String text, BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  SimpleHiddenDrawerController.of(context).toggle();
                },
                child: Image(
                    width: 30,
                    height: 25,
                    image: AssetImage('${imageUrl}leads_top_icon.png')),
              ),
              Text(
                text,
                style: TextStyle(
                    fontFamily: readexPro,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/mobile_notifications');
                },
                child: Image(
                    width: 30,
                    height: 25,
                    image: AssetImage('${imageUrl}ring_bell.png')),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Divider(),
      ],
    );
  }
}