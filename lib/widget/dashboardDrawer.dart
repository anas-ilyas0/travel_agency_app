import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/manage_color_state.dart';

class DashboardDrawer extends StatefulWidget {
  TabController tabController;
   DashboardDrawer({super.key, required this.tabController});

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
                  // DashboardWidget().dashboard(context);
                  Navigator.pop(context);

                },
              tabController: widget.tabController, // Pass TabController
            ),
            DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 1,
                title: 'Leads',
                onTap: () {
                  context.read<DrawerStateInfo>().setCurrentDrawer(1);
                  Navigator.pop(context);


                },
              tabController: widget.tabController, // Pass TabController
            ),
            DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 2,
                title: 'Agent',
                onTap: () {
                  // AgentsWidget().agent(context);
                  Navigator.pop(context);
                  context.read<DrawerStateInfo>().setCurrentDrawer(2);

                },
              tabController: widget.tabController, // Pass TabController
            ),   DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 3,
                title: 'Supplier',
                onTap: () {
                  context.read<DrawerStateInfo>().setCurrentDrawer(3);
                  Navigator.pop(context);

                },
              tabController: widget.tabController, // Pass TabController
            ),
               DrawerWidget(
                icon: Icons.supervisor_account_outlined,
                index: 4,
                title: 'Package',
                onTap: () {
                  context.read<DrawerStateInfo>().setCurrentDrawer(4);
                  Navigator.pop(context);

                },
              tabController: widget.tabController, // Pass TabController
            ),

          ],
        ),
      ),
    );
  }
}
class DrawerWidget extends StatelessWidget {
  final String title;
  final int index;
  final VoidCallback onTap;
  final IconData icon;
  final TabController tabController; // Pass the TabController
  const DrawerWidget(
      {super.key,
        required this.title,
        required this.onTap,
        required this.index,
        required this.icon,
        required this.tabController, // Add TabController to constructor

      });

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
                onPressed: (){
                  tabController.animateTo(index); // Switch to the selected tab
                  onTap();
                },
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
