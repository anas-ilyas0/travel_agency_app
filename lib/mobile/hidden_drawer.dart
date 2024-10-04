import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/mobile/home_screen_mobile.dart';
import 'package:fab_tech_sol/mobile/mobile_inbox.dart';
import 'package:fab_tech_sol/mobile/mobile_my_account.dart';
import 'package:fab_tech_sol/mobile/mobile_settings.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final textStyle = TextStyle(
    color: whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: readexPro,
  );
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Dashboard', baseStyle: textStyle, selectedStyle: textStyle),
        const HomeScreenMobile(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'My Account', baseStyle: textStyle, selectedStyle: textStyle),
        const MobileMyAccount(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Inbox', baseStyle: textStyle, selectedStyle: textStyle),
        const MobileInbox(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Settings', baseStyle: textStyle, selectedStyle: textStyle),
        const MobileSettings(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'Log out',
            baseStyle: textStyle,
            selectedStyle: textStyle,
            onTap: () {
              Navigator.pop(context);
            }),
        const SizedBox.shrink(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: HiddenDrawerMenu(
        screens: _pages,
        initPositionSelected: 0,
        contentCornerRadius: 1,
        slidePercent: 40,
        verticalScalePercent: 88,
        isDraggable: true,
        disableAppBarDefault: true,
        backgroundColorMenu: mobileLeadText1Color,
      ),
    );
  }
}
