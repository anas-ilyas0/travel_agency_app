import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/routes/routes.dart';
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
    final providerValue = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Row(
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
                    labelColor: color,
                    unselectedLabelColor: Colors.grey,
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
        ),
        actions: [Widgets().circularAvatar()],
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: dashboardTabController,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              'Dashboard',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF11345A)),
                            ),
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 500),
                              Row(
                                children: [
                                  const SizedBox(width: 10),
                                  Widgets().dropDownButton(
                                      providerValue.selectedItem1,
                                      providerValue.dropdownItems1,
                                      (String? newValue) {
                                    providerValue.updateSelectedItem1(newValue);
                                  }),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Widgets().dropDownButton(
                                  providerValue.selectedItem2,
                                  providerValue.dropdownItems2,
                                  (String? newValue) {
                                providerValue.updateSelectedItem2(newValue);
                              }),
                              const SizedBox(width: 15),
                              Widgets().button('Add New Lead', () {
                                Navigator.pushNamed(
                                    context, AppRoutes.addNewLead);
                              }),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Widgets().container('Total Clients', '230',
                                    '${imageUrl}clients.png', context),
                                Widgets().container('Total Leads', '230',
                                    '${imageUrl}leads.png', context),
                                Widgets().container('Total Agents', '230',
                                    '${imageUrl}agents.png', context),
                                Widgets().container(
                                    'Total Local Supplier',
                                    '230',
                                    '${imageUrl}localSupplier.png',
                                    context),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Widgets().container(
                                    'Total International Supplier',
                                    '230',
                                    '${imageUrl}internationalSupplier.png',
                                    context),
                                Widgets().container('Total Package', '230',
                                    '${imageUrl}package.png', context),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 75),
                            child: Text(
                              'All Leads',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF11345A)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 400),
                            child: Row(
                              children: [
                                const Text(
                                  'Leads Status :',
                                  style: TextStyle(
                                      color: Color(0XFF11345A),
                                      fontWeight: FontWeight.w600),
                                ),
                                TabBar(
                                    unselectedLabelColor: Colors.grey,
                                    labelColor: color,
                                    indicatorColor: color,
                                    dividerColor: Colors.transparent,
                                    controller: leadsTabController,
                                    isScrollable: true,
                                    tabs: const [
                                      Tab(text: 'Confirmed'),
                                      Tab(text: 'Pending'),
                                      Tab(text: 'Canceled'),
                                    ]),
                                Widgets().dropDownButton(
                                    providerValue.selectedItem2,
                                    providerValue.dropdownItems2,
                                    (String? newValue) {
                                  providerValue.updateSelectedItem2(newValue);
                                }),
                                const SizedBox(width: 15),
                                Widgets().button('Add New Lead', () {
                                  Navigator.pushNamed(
                                      context, AppRoutes.addNewLead);
                                })
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                            controller: leadsTabController,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(50, 20, 50, 20),
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                    childAspectRatio: 1.0,
                                  ),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  Colors.blue.withOpacity(0.4),
                                            ),
                                            color: const Color(0XFFFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Widgets()
                                                  .row('Lead Number', '01'),
                                              Widgets().row(
                                                  'Agent Name', 'John Doe'),
                                              Widgets().row(
                                                  'Client Name', 'John Doe'),
                                              Widgets().row(
                                                  'Lead Date', '08/16/2024'),
                                              Widgets()
                                                  .row('Status', 'Confirmed'),
                                              const SizedBox(height: 20),
                                              SizedBox(
                                                width: 230,
                                                child: ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            backgroundColor:
                                                                color),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      'View Details',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                              )
                                            ],
                                          ),
                                        ));
                                  },
                                ),
                              ),
                              const Center(child: Text('Pending')),
                              const Center(child: Text('Canceled')),
                            ]),
                      ),
                    ],
                  ),
                ),
                const Center(child: Text('Agents Content')),
                const Center(child: Text('Supplier Content')),
                const Center(child: Text('Package Content')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
