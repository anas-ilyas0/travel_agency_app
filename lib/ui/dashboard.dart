import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Screen/package_Screen.dart';

import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widgets/custom_header.dart';
import 'package:fab_tech_sol/widgets/dashboardDrawer.dart';
import 'package:fab_tech_sol/ui/agents_widget.dart';
import 'package:fab_tech_sol/ui/dashboard_widget.dart';
import 'package:fab_tech_sol/ui/leads_widget.dart';
import 'package:fab_tech_sol/ui/supplier_widget.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  late TabController dashboardTabController;
  late TabController leadsTabController;

  @override
  void initState() {
    super.initState();

    dashboardTabController = TabController(length: 5, vsync: this);
    leadsTabController = TabController(length: 3, vsync: this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<UserProvider>(context, listen: false);
      provider.setDashboardTabController(dashboardTabController);
      provider.setLeadsTabController(leadsTabController);
    });
  }

  @override
  void dispose() {
    dashboardTabController.dispose();
    leadsTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomHeader(dashboardTabController: dashboardTabController),

      drawer: Responsive.isDesktop(context)
          ? null
          : DashboardDrawer(tabController: dashboardTabController),



      body: Column(
        children: [
          Divider(
            height: .5,
            color: Colors.grey.withOpacity(.2),
          ),

                   Expanded(
                   child:
                    TabBarView(
                      controller: dashboardTabController ,
                      physics: NeverScrollableScrollPhysics(),
                      children: [

                      DashBoardScreen(),
                      LeadScreen(),
                      AgentScreen(),
                      SupplierScreen(),
                      PackageClassScreen()
                      ],
                    ),
                  )

        ],
      ),
    );a
  }


}