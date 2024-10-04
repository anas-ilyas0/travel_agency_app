// ignore_for_file: library_private_types_in_public_api

import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/mobile/agents_nav_bar_item.dart';
import 'package:fab_tech_sol/mobile/leads_nav_bar_item.dart';
import 'package:fab_tech_sol/mobile/mobile_dashboard.dart';
import 'package:fab_tech_sol/mobile/package_nav_bar_item.dart';
import 'package:fab_tech_sol/mobile/supplier_nav_bar_item.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({super.key});

  @override
  _HomeScreenMobileState createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  static final List<Widget> _widgetOptions = <Widget>[
    const MobileDashboard(),
    const LeadsNavBarItem(),
    const AgentsNavBarItem(),
    const SupplierNavBarItem(),
    const PackageNavBarItem(),
  ];

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return SafeArea(
      child: Scaffold(
          body: Center(
            child: _widgetOptions.elementAt(userProvider.selectedIndex),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: appBackgroundColor,
            ),
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(
                color: greyColor.withOpacity(0.5),
                width: 1,
              ))),
              height: 65,
              child: BottomNavigationBar(
                currentIndex: userProvider.selectedIndex,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: color,
                selectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: readexPro,
                    fontSize: 13),
                unselectedItemColor: greyColor,
                unselectedLabelStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontFamily: readexPro,
                    fontSize: 13),
                onTap: (index) {
                  userProvider.setSelectedIndex(index);
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard,
                        color: userProvider.selectedIndex == 0
                            ? color
                            : greyColor.withOpacity(0.6)),
                    label: 'Dashboard',
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      height: 20,
                      width: 20,
                      color: userProvider.selectedIndex == 1
                          ? color
                          : greyColor.withOpacity(0.6),
                      image: AssetImage('${imageUrl}leads_nav_bar.png'),
                    ),
                    label: 'Leads',
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      height: 20,
                      width: 20,
                      color: userProvider.selectedIndex == 2
                          ? color
                          : greyColor.withOpacity(0.6),
                      image: AssetImage('${imageUrl}agent_nav_bar.png'),
                    ),
                    label: 'Agent',
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      height: 20,
                      width: 20,
                      color: userProvider.selectedIndex == 3
                          ? color
                          : greyColor.withOpacity(0.6),
                      image: AssetImage('${imageUrl}supplier_nav_bar.png'),
                    ),
                    label: 'Supplier',
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      height: 20,
                      width: 20,
                      color: userProvider.selectedIndex == 4
                          ? color
                          : greyColor.withOpacity(0.6),
                      image: AssetImage('${imageUrl}package_nav_bar.png'),
                    ),
                    label: 'Package',
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: color,
            onPressed: () {
              userProvider.selectedIndex == 1
                  ? Navigator.pushNamed(context, '/mobile_add_new_lead')
                  : userProvider.selectedIndex == 2
                      ? Navigator.pushNamed(context, '/mobile_add_new_agent')
                      : userProvider.selectedIndex == 3
                          ? (userProvider.selectedLocalInterSupplier == 0
                              ? Navigator.pushNamed(
                                  context, '/mobile_add_new_local_supplier')
                              : (userProvider.selectedLocalInterSupplier == 1)
                                  ? Navigator.pushNamed(context,
                                      '/mobile_add_new_international_supplier')
                                  : null)
                          : userProvider.selectedIndex == 4
                              ? Navigator.pushNamed(
                                  context, '/mobile_add_new_package')
                              : null;
            },
            child: Image(
                width: 20,
                height: 30,
                image: AssetImage('${imageUrl}action_button_icon.png')),
          )),
    );
  }
}
