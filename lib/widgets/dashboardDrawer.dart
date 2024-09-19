import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/manage_color_state.dart';

class DashboardDrawer extends StatefulWidget {
  const DashboardDrawer({super.key});

  @override
  State<DashboardDrawer> createState() => _DashboardDrawerState();
}

class _DashboardDrawerState extends State<DashboardDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            DrawerWidget(
                icon: Icons.dashboard_customize_outlined,
                index: 0,
                title: 'Dashboard',
                onTap: () {

                  context.read<DrawerStateInfo>().setCurrentDrawer(0);

                }),
            DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 1,
                title: 'Leads',
                onTap: () {
                  context.read<DrawerStateInfo>().setCurrentDrawer(1);

                }),
            DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 2,
                title: 'Agent',
                onTap: () {
                  context.read<DrawerStateInfo>().setCurrentDrawer(2);

                }),   DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 3,
                title: 'Supplier',
                onTap: () {
                  context.read<DrawerStateInfo>().setCurrentDrawer(3);

                }),
            DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 4,
                title: 'Agent',
                onTap: () {
                  context.read<DrawerStateInfo>().setCurrentDrawer(4);

                }),   DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 5,
                title: 'Package',
                onTap: () {
                  context.read<DrawerStateInfo>().setCurrentDrawer(5);

                }),

          ],
        ),
      ),
      // child: ListView(
      //   children: [
      //     Container(
      //       height: 40,
      //         width: 200,
      //         margin: EdgeInsets.all(12),
      //         decoration:  BoxDecoration(
      //           borderRadius: BorderRadius.circular(14),
      //           color: AppColor.background,
      //
      //         ),
      //         child: Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      //           child: Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14)),
      //         )),
      //     Text("Leads", style: TextStyle(fontWeight: FontWeight.bold),),
      //     Text("Agents"),
      //     Text("Supplier"),
      //     Text("Packages"),
      //   ],
      // ),
    );
  }
}
class DrawerWidget extends StatelessWidget {
  final String title;
  final int index;
  final VoidCallback onTap;
  final IconData icon;
  const DrawerWidget(
      {super.key,
        required this.title,
        required this.onTap,
        required this.index,
        required this.icon});

  @override
  Widget build(BuildContext context) {
    return Consumer<DrawerStateInfo>(builder: (context, selectedMenu, _) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: selectedMenu.getCurrentDrawer == index
                  ? Colors.black
                  : AppColor.background,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: onTap,
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: selectedMenu.getCurrentDrawer == index
                          ? Colors.white
                          : Colors.black,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          color: selectedMenu.getCurrentDrawer == index
                              ? Colors.white
                              : Colors.black,
                          fontWeight: selectedMenu.getCurrentDrawer == index
                              ? FontWeight.w600
                              : FontWeight.w500,
                          fontSize:
                          selectedMenu.getCurrentDrawer == index ? 16 : 14),
                    ),
                  ],
                )),
          ),
        ),
      );
    });
  }
}
