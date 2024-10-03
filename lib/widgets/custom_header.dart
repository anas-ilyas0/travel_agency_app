// ignore_for_file: must_be_immutable

import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widget/widgets.dart';
import 'package:flutter/material.dart';
import '../AppColor/app_color.dart';
import '../consts/consts.dart';
import '../resources/responsive.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  TabController dashboardTabController;

  CustomHeader({super.key, required this.dashboardTabController, required});

  @override
  Size get preferredSize => const Size.fromHeight(77);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: .2,
      toolbarHeight: 77,
      title: Responsive.isDesktop(context)
          ? Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: SizedBox(
                      width: 130,
                      height: 45,
                      child: Image.asset(
                        '${imageUrl}briton_logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: context.screenWidth * .12,
                    ),
                    child: TabBar(
                      labelStyle: TextStyle(
                          fontFamily: readexPro, fontWeight: FontWeight.bold),
                      labelColor: color,
                      unselectedLabelColor: AppColor.hintColor,
                      unselectedLabelStyle:
                          const TextStyle(fontWeight: FontWeight.normal),
                      indicatorColor: color,
                      dividerColor: Colors.transparent,
                      controller: dashboardTabController,
                      indicatorWeight: 3,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                      isScrollable: true,
                      tabs: const [
                        Tab(text: 'Dashboard'),
                        Tab(text: 'Leads'),
                        Tab(text: 'Agents'),
                        Tab(text: 'Supplier'),
                        Tab(text: 'Package'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : null,
      leading: Responsive.isMobile(context) && dashboardTabController.index == 0
          ? Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context)
                        .openDrawer(); // Correct context provided here
                  },
                );
              },
            )
          : null,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: context.screenWidth * .01),
          child: Widgets().circularAvatar(text: 'Name here'),
        ),
        if (dashboardTabController.index == 0) ...[
          if (Responsive.isMobile(context)) _buildMenuBar()
        ]
      ],
    );
  }

  Widget _buildMenuBar() {
    return PopupMenuButton<String>(
      onSelected: (value) {
        print("Selected: $value");
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'Today',
            child: Text('Today'),
          ),
          PopupMenuItem<String>(
            value: 'Filter',
            child: Text('Filter'),
          ),
          PopupMenuItem<String>(
            value: 'Add new Leads',
            child: Text('Add new Leads'),
          ),
        ];
      },
      icon: const Icon(Icons.more_vert_rounded),
    );
  }
}
