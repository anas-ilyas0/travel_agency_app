import 'package:fab_tech_sol/Screen/package_widget.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widgets/dashboardDrawer.dart';
import 'package:fab_tech_sol/ui/agents_widget.dart';
import 'package:fab_tech_sol/ui/dashboard_widget.dart';
import 'package:fab_tech_sol/ui/leads_widget.dart';
import 'package:fab_tech_sol/ui/supplier_widget.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      appBar: AppBar(
        title: Responsive.isDesktop(context)?
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: SizedBox(
                  width: 150,
                  height: 60,
                  child: Image.asset(
                    '${imageUrl}briton_logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 170),
              child: Row(
                children: [
                  TabBar(
                    labelStyle: TextStyle(
                        fontFamily: fontFamily, fontWeight: FontWeight.bold),
                    labelColor: color,
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.normal),
                    indicatorColor: color,
                    dividerColor: Colors.transparent,
                    controller: dashboardTabController,
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'Dashboard'),
                      Tab(text: 'Leads'),
                      Tab(text: 'Agents'),
                      Tab(text: 'Supplier'),
                      Tab(text: 'Package'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ): null,
          leading: Responsive.isDesktop(context)  || Responsive .isTablet(context)
              ? dashboardTabController.index ==0?IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          )
              : null: null,
        actions:  [Widgets().circularAvatar(text: 'Name here'),
          if(dashboardTabController.index ==0)...[
            
            if (Responsive.isMobile(context) || Responsive.isTablet(context)) _buildMenuBar()
          ]
        ],
      ),
<<<<<<< HEAD
      drawer: Responsive.isDesktop(context) ? null : DashboardDrawer(),
=======
      drawer: Responsive.isDesktop(context)? null:  DashboardDrawer(tabController: dashboardTabController),
>>>>>>> e17aa57d977e1ab7a85698cb7af2dda1ec96278d
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: dashboardTabController,
              children: [
                DashboardWidget().dashboard(context),
                LeadsWidget().leads(context, leadsTabController),
                AgentsWidget().agent(context),
                SupplierWidget().supplier(context),
                PackageWidget().package(context),
              ],
            ),
          ),
        ],
      ),
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
