
import 'package:fab_tech_sol/Screen/international_supplier.dart';
import 'package:fab_tech_sol/Screen/package_Screen.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/ui/customer_widget.dart';
import 'package:fab_tech_sol/widget/custom_header.dart';
import 'package:fab_tech_sol/widget/dashboardDrawer.dart';
import 'package:fab_tech_sol/ui/agents_widget.dart';
import 'package:fab_tech_sol/ui/dashboard_widget.dart';
import 'package:fab_tech_sol/ui/leads_widget.dart';
import 'package:fab_tech_sol/ui/supplier_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  final int tabIndex;

  const Dashboard({Key? key, this.tabIndex = 0}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with TickerProviderStateMixin {
  TabController? dashboardTabController;
  TabController? leadsTabController;

  @override
  void initState() {
    super.initState();

    // Initialize TabControllers in initState
    dashboardTabController = TabController(
      length: 6,
      vsync: this,
      initialIndex: widget.tabIndex,
    );
    leadsTabController = TabController(
      length: 3,
      vsync: this,
    );

    // Set the TabControllers in the provider after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<UserProvider>(context, listen: false);
      provider.setDashboardTabController(dashboardTabController!);
      provider.setLeadsTabController(leadsTabController!);
    });
  }

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
    dashboardTabController?.dispose();
    leadsTabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: CustomHeader(dashboardTabController: dashboardTabController!),

      drawer:Responsive.isDesktop(context)?null: DashboardDrawer(tabController: dashboardTabController!),
      body: Column(
        children: [
          Divider(
            height: 0.5,
            color: Colors.grey.withOpacity(0.2),
          ),
          Expanded(
            child: TabBarView(
              controller: dashboardTabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                DashBoardScreen(),
                LeadScreen(tabController: leadsTabController!),
                const AgentScreen(),
                CustomerScreen(),
                provider.selectedOptions == "Local"
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

