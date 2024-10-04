import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widget/widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../AppColor/app_color.dart';
import '../consts/consts.dart';
import '../resources/responsive.dart';

class CustomHeader extends StatelessWidget implements PreferredSizeWidget {
  TabController dashboardTabController;
  CustomHeader({super.key, required this.dashboardTabController});

  @override
  Size get preferredSize => const Size.fromHeight(77);
  @override
  Widget build(BuildContext context) {
    final supplierProvider = Provider.of<UserProvider>(context);

    return AppBar(
      elevation: .2,
      toolbarHeight: 77,
      title: Responsive.isDesktop(context)
          ? Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: SizedBox(
                      width: 130,
                      height: 45,
                      child: Image.asset(
                        '${imageUrl}briton_logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  TabBar(
                    labelStyle: TextStyle(
                        fontFamily: readexPro, fontWeight: FontWeight.bold),
                    labelColor: color,
                    tabAlignment: TabAlignment.center,
                    unselectedLabelColor: AppColor.hintColor,
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.normal),
                    indicatorColor: color,
                    dividerColor: Colors.transparent,
                    controller: dashboardTabController,
                    indicatorWeight: 3,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelPadding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                    isScrollable: true,
                    tabs: [
                      const Tab(text: 'Dashboard'),
                      const Tab(text: 'Leads'),
                      const Tab(text: 'Agents'),
                      const Tab(text: 'Customer'),
                      Tab(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            const Text('Supplier'),
                            PopupMenuButton<String>(
                                icon: const Icon(Icons.arrow_drop_down),
                                onSelected: (String value) {
                                  supplierProvider.setSelectedOption(value);
                                 value=="Local"? supplierProvider.setSelectedSupplierIndex(0): supplierProvider.setSelectedSupplierIndex(1);
                                  dashboardTabController.animateTo(3);
                                },
                                itemBuilder: (context) => [
                                      const PopupMenuItem(
                                        value: 'Local',
                                        child: Text('Local Supplier'),
                                      ),
                                      const PopupMenuItem(
                                          value: 'International',
                                          child: Text('International Supplier'))
                                    ])
                          ])),
                      const Tab(text: 'Package'),
                    ],
                  ),
                ],
              ),
            )
          : null,
      
      actions: [
        Padding(
          padding: EdgeInsets.only(right: context.screenWidth * .01),
          child: Widgets().circularAvatar(text: 'Name here'),
        ),
        // if (dashboardTabController.index == 0) ...[
        //   if (Responsive.isMobile(context)) _buildMenuBar()
        // ]
      ],
    );
  }

}
