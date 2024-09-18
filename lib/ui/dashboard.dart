import 'package:fab_tech_sol/Screen/invoice_details.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/Screen/package.dart';
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
                    labelStyle: const TextStyle(
                        fontFamily: 'Readex Pro', fontWeight: FontWeight.bold),
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
        ),
        actions: [Widgets().circularAvatar(text: 'Name here')],
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
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Text(
                              'Dashboard',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.bold,
                                  color: color),
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
                                  }, context),
                                ],
                              ),
                              const SizedBox(width: 15),
                              Widgets().dropDownButton(
                                  providerValue.selectedItem2,
                                  providerValue.dropdownItems2,
                                  (String? newValue) {
                                providerValue.updateSelectedItem2(newValue);
                              }, context),
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
                                Widgets().containerfield('Total Clients', '230',
                                    '${imageUrl}clients.png', context),
                                Widgets().containerfield('Total Leads', '230',
                                    '${imageUrl}leads.png', context),
                                Widgets().containerfield('Total Agents', '230',
                                    '${imageUrl}agents.png', context),
                                Widgets().containerfield(
                                    'Total Local Supplier',
                                    '230',
                                    '${imageUrl}localSupplier.png',
                                    context),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Widgets().containerfield(
                                    'Total International Supplier',
                                    '230',
                                    '${imageUrl}internationalSupplier.png',
                                    context),
                                Widgets().containerfield('Total Package', '230',
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
                          Padding(
                            padding: const EdgeInsets.only(left: 75),
                            child: Text(
                              'All Leads',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Readex Pro',
                                  fontWeight: FontWeight.bold,
                                  color: color),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 370, right: 25),
                            child: Row(
                              children: [
                                Text(
                                  'Leads Status :',
                                  style: TextStyle(
                                      color: color,
                                      fontFamily: 'Readex Pro',
                                      fontWeight: FontWeight.w600),
                                ),
                                TabBar(
                                    labelStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Readex Pro',
                                    ),
                                    unselectedLabelStyle: const TextStyle(
                                        fontWeight: FontWeight.normal),
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
                                }, context),
                                const SizedBox(width: 15),
                                Widgets().button('Add New Lead', () {
                                 // Navigator.pushNamed(
                                   //   context, AppRoutes.lead_details);
                                   Navigator.push(context, MaterialPageRoute(builder: (context) => InvoiceDetails(),));
                                }),
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
                                                    onPressed: () {
                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => LeadDetails(),));
                                                    },
                                                    child: Text(
                                                      'View Details',
                                                      style: TextStyle(
                                                          fontFamily:
                                  
                                                              fontFamily,
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
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: Text(
                                'All Agents',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: fontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: color),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                children: [
                                  Widgets().searchTextField(),
                                  Widgets().dropDownButton(
                                      providerValue.selectedItem2,
                                      providerValue.dropdownItems2,
                                      (String? newValue) {
                                    providerValue.updateSelectedItem2(newValue);
                                  }, context),
                                  const SizedBox(width: 15),
                                  Widgets().button('Add Agent', () {})
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 20, right: 20, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Widgets().agentText('Name', 14),
                                  Widgets().agentText('Phone Number', 14),
                                  Widgets().agentText('Email', 14),
                                  Widgets().agentText('Location', 14),
                                  Widgets().agentText('Status', 14),
                                  Widgets().agentText('Action', 14),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(7)),
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Widgets().circularAvatar(
                                                    backgroundImage:
                                                        '${imageUrl}agent.png'),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 10),
                                                  child: Widgets().agentText(
                                                      'John Doe', 12),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Widgets()
                                              .agentText('+21 999 999 999', 12),
                                          Widgets().agentText(
                                              'example@gmail.com', 12),
                                          Widgets().agentText(
                                              'Sialkot Punjab 51040', 12),
                                          Widgets().agentText('Active', 12),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color:
                                                        editDelContainerColor,
                                                    border: Border.all(
                                                        color:
                                                            addLeadButtonColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                            Icons.edit),
                                                        color: color),
                                                    const VerticalDivider(
                                                      thickness: 0.8,
                                                      indent: 5,
                                                      endIndent: 5,
                                                    ),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Image(
                                                            image: AssetImage(
                                                                '${imageUrl}delImage.png')),
                                                        color: color),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ));
                              }),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: Text(
                                'Local Supplier',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: fontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: color),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: Row(
                                children: [
                                  Widgets().searchTextField(),
                                  Widgets().dropDownButton(
                                      providerValue.selectedItem2,
                                      providerValue.dropdownItems2,
                                      (String? newValue) {
                                    providerValue.updateSelectedItem2(newValue);
                                  }, context),
                                  const SizedBox(width: 15),
                                  Widgets().button('Add Supplier', () {})
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 20, right: 20, bottom: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)),
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Widgets().agentText('Company Name', 14),
                                  Widgets().agentText('Supplier Name', 14),
                                  Widgets().agentText('Supplier Address', 14),
                                  Widgets().agentText('Service', 14),
                                  Widgets().agentText('Company Address', 14),
                                  Widgets().agentText('Status', 14),
                                  Widgets().agentText('Action', 14),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(7)),
                                    height: 50,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Row(
                                        children: [
                                          Widgets().agentText(
                                              'BIRAM TOUR GUIDE', 12),
                                          Widgets().agentText('Naseeb', 12),
                                          Widgets().agentText(
                                              'Sialkot, Punjab, Pakistan', 12),
                                          Widgets().agentText(
                                              'Hotel Accommodation', 12),
                                          Widgets().agentText(
                                              'agentlocationhere', 12),
                                          Widgets().agentText('Active', 12),
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 5),
                                              child: Container(
                                                width: 50,
                                                decoration: BoxDecoration(
                                                    color:
                                                        editDelContainerColor,
                                                    border: Border.all(
                                                        color:
                                                            addLeadButtonColor),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                            Icons.edit),
                                                        color: color),
                                                    const VerticalDivider(
                                                      thickness: 0.8,
                                                      indent: 5,
                                                      endIndent: 5,
                                                    ),
                                                    IconButton(
                                                        onPressed: () {},
                                                        icon: Image(
                                                            image: AssetImage(
                                                                '${imageUrl}delImage.png')),
                                                        color: color),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ));
                              }),
                        )
                      ],
                    ),
                  ),
                ),
                Package(),
                const Center(child: Text('Package Content')),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
