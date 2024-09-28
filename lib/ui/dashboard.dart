
import 'package:fab_tech_sol/Screen/international_supplier.dart';
import 'package:fab_tech_sol/Screen/package_Screen.dart';
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

class Dashboard extends StatelessWidget {
  final int tabIndex;

  const Dashboard({super.key, this.tabIndex = 0});

  @override
  Widget build(BuildContext context) {
    // Get the provider instance
    final provider = Provider.of<UserProvider>(context);

    // Initialize the TabControllers
    final dashboardTabController = TabController(length: 5, vsync: Navigator.of(context), initialIndex: tabIndex);
    final leadsTabController = TabController(length: 3, vsync: Navigator.of(context));

    // Set the TabControllers in the provider
    provider.setDashboardTabController(dashboardTabController);
    provider.setLeadsTabController(leadsTabController);

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
            child: TabBarView(
              controller: dashboardTabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                 DashBoardScreen(),
                 LeadScreen(tabController: leadsTabController,),
                const AgentScreen(),
                provider.selectedOption == "Local"
                    ? const SupplierScreen()
                    : const InternationalSupplierScreen(),
                const PackageClassScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
