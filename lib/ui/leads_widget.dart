import 'package:fab_tech_sol/Screen/invoice_details.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LeadsWidget {
  Widget leads(BuildContext context, TabController leadsTabController) {
    final providerValue = Provider.of<UserProvider>(context);

    // Using MediaQuery to adjust padding based on screen width
    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);
    final isDesktop = Responsive.isDesktop(context);

    double horizontalPadding = isMobile
        ? 20.0 // Mobile padding
        : isTablet
            ? 40.0 // Tablet padding
            : 75.0; // Desktop padding

    return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          // Header Row
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: horizontalPadding),
                child: Text(
                  'All Leads',
                  style: TextStyle(
                    fontSize: isMobile ? 16 : 20, // Smaller font for mobile
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  right: horizontalPadding, // Responsive right padding
                ),
                child: Row(
                  children: [
                    Text(
                      'Leads Status :',
                      style: TextStyle(
                        color: color,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 10),
                    Wrap(
                      spacing: 10,
                      direction: Axis.vertical,
                      children: [
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
                        controller: leadsTabController,
                        isScrollable: true,
                        tabs: const [
                          Tab(text: 'Confirmed'),
                          Tab(text: 'Pending'),
                          Tab(text: 'Canceled'),
                        ],
                      ),
                      ]
                    ),
                    SizedBox(width: 10),
                    // Dropdown button to select lead status
                    Widgets().dropDownButton(
                      providerValue.selectedItem2,
                      providerValue.dropdownItems2,
                      (String? newValue) {
                        providerValue.updateSelectedItem2(newValue);
                      },
                      context,
                    ),
                    const SizedBox(width: 15),
                    // Button to add new lead
                    Widgets().button('Add New Lead', () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InvoiceDetails(),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
          // Expanded content area (Grid/List view for leads)
          Expanded(
            child: TabBarView(controller: leadsTabController, children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, // Responsive horizontal padding
                  vertical: 20,
                ),
                child: Responsive(
                  // Mobile view: Use ListView.builder
                  mobile: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.withOpacity(0.4),
                            ),
                            color: const Color(0XFFFFFFFF),
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: color,
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LeadDetails(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'View Details',
                                      style: TextStyle(
                                        fontFamily: fontFamily,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),

                  // Desktop view: Use GridView.builder
                  desktop: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, // 4 items per row for desktop
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
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: color,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LeadDetails(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'View Details',
                                    style: TextStyle(
                                      fontFamily: fontFamily,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  
                  tablet: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 items per row for tablet
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
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: color,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LeadDetails(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'View Details',
                                    style: TextStyle(
                                      fontFamily: fontFamily,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
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
