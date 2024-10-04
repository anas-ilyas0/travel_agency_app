import 'package:flutter/material.dart';

import 'mobile_custom_app_bar.dart';

class MobileSettings extends StatelessWidget {
  const MobileSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [MobileCustomAppBar().mobileCustomAppBar('Settings', context)],
    );
  }
}
