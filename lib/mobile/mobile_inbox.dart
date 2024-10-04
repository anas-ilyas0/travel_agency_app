import 'package:flutter/material.dart';

import 'mobile_custom_app_bar.dart';

class MobileInbox extends StatelessWidget {
  const MobileInbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [MobileCustomAppBar().mobileCustomAppBar('Inbox', context)],
    );
  }
}
