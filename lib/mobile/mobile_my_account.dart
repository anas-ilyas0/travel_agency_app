import 'package:flutter/material.dart';

import 'mobile_custom_app_bar.dart';

class MobileMyAccount extends StatelessWidget {
  const MobileMyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileCustomAppBar().mobileCustomAppBar('My Account', context)
      ],
    );
  }
}
