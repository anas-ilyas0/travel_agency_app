import 'package:fab_tech_sol/Screen/invoice_details.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LeadsWidget {
  Widget leads(BuildContext context, TabController leadsTabController) {
    final providerValue = Provider.of<UserProvider>(context);
    return Padding(
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
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.bold,
                      color: color),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 370, right: 25),
                child: Row(
                  children: [
                    Text(
                      'Leads Status :',
                      style: TextStyle(
                          color: color,
                          fontFamily: fontFamily,
                          fontWeight: FontWeight.w600),
                    ),
                    TabBar(
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: fontFamily,
                        ),
                        unselectedLabelStyle:
                            const TextStyle(fontWeight: FontWeight.normal),
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
                    Widgets().dropDownButton(providerValue.selectedItem2,
                        providerValue.dropdownItems2, (String? newValue) {
                      providerValue.updateSelectedItem2(newValue);
                    }, context),
                    const SizedBox(width: 15),
                    Widgets().button('Add New Lead', () {
                      // Navigator.pushNamed(
                      //   context, AppRoutes.lead_details);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => InvoiceDetails(),
                          ));
                    }),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(controller: leadsTabController, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                              color: Colors.blue.withOpacity(0.4),
                            ),
                            color: const Color(0XFFFFFFFF),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Widgets().row('Lead Number', '01'),
                              Widgets().row('Agent Name', 'John Doe'),
                              Widgets().row('Client Name', 'John Doe'),
                              Widgets().row('Lead Date', '08/16/2024'),
                              Widgets().row('Status', 'Confirmed'),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: 230,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: color),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LeadDetails(),
                                          ));
                                    },
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                          fontFamily: fontFamily,
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
    );
  }
}
