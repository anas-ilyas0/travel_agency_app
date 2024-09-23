import 'package:fab_tech_sol/Screen/add_new_lead_form.dart';
import 'package:fab_tech_sol/Screen/invoice_details_invoice.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/Screen/package.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LeadScreen extends StatefulWidget {
  const LeadScreen({super.key});

  @override
  State<LeadScreen> createState() => _LeadScreenState();
}

class _LeadScreenState extends State<LeadScreen> with SingleTickerProviderStateMixin {
   late TabController leadsTabController;
   @override
  void initState() {
    super.initState();
    leadsTabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    leadsTabController.dispose();
    super.dispose();

  }


  Widget build(BuildContext context) {
    
 final providerValue = Provider.of<UserProvider>(context);

    final isMobile = Responsive.isMobile(context);
    final isTablet = Responsive.isTablet(context);

    double horizontalPadding = isMobile
        ? 20.0 // Mobile padding
        : isTablet
            ? 40.0 // Tablet padding
            : 75.0; // Desktop padding
    return Scaffold(
      body: Padding(
      padding: EdgeInsets.only(
          top: Responsive.isMobile(context) ? 2 : 35,
          left: Responsive.isMobile(context) ? 16 : 50,
          right: Responsive.isMobile(context) ? 16 : 50),
      child: Column(
        children: [
          // Header Row
          Row(
            mainAxisAlignment:Responsive.isMobile(context)? MainAxisAlignment.start:MainAxisAlignment.spaceBetween,
            children: [
              Responsive.isMobile(context)?  SizedBox.shrink(): Text(
                'All Leads',
                style: TextStyle(
                    fontSize: 20,

                    fontFamily: fontFamilys,

                   // fontFamily: readexPro,

                    fontWeight: FontWeight.bold,
                    color: color),
              ),
              Row(
                children: [
                 Text(
                    'Leads Status :',
                    style: TextStyle(
                        color: color,

                        fontFamily: fontFamilys,

                      //  fontFamily: readexPro,

                        fontWeight: FontWeight.w600),
                  ),
                  TabBar(
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,

                        fontFamily: fontFamilys,

                       // fontFamily: readexPro,

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
                  Responsive.isDesktop(context)
                      ? Widgets().dropDownButton(providerValue.selectedItem2,
                          providerValue.dropdownItems2, (String? newValue) {
                          providerValue.updateSelectedItem2(newValue);
                        }, context)
                      : SizedBox.shrink(),
                  const SizedBox(width: 15),
                  Responsive.isDesktop(context)
                      ? Widgets().button('Add New Lead', () {
                          // Navigator.pushNamed(
                          //   context, AppRoutes.lead_details);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LeadInvoiceDetails(),
                              ));
                        },)
                      : SizedBox.shrink(),
                ],
              ),
            ],
          ),
          Responsive.isDesktop(context)
              ? SizedBox.shrink()
              : Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                              builder: (context) => Package(),
                            ));
                      },),
                    ],
                  ),
                ),

          Expanded(
            child: TabBarView(controller:leadsTabController, children: [
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
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Widgets().row('Lead Number', '01'),
                                SizedBox(height: 2,),
                                Widgets().row('Agent Name', 'John Doe'),
                                SizedBox(height: 2,),
                                Widgets().row('Client Name', 'John Doe'),
                                SizedBox(height: 2,),
                                Widgets().row('Lead Date', '08/16/2024'),
                                SizedBox(height: 2,),

                                Widgets().row('Status', 'Confirmed'),
                                const SizedBox(height: 20),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: 150,
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

                                          fontFamily: fontFamilys,

                                        //  fontFamily: readexPro,

                                          color: Colors.white,
                                        ),
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
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.withOpacity(0.2),
                            ),
                            // color: const Color(0XFFFFFFFF),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: containerColor,
                              ),
                             const BoxShadow(
                                color: Colors.white,
                                spreadRadius: -2.0,
                                blurRadius: 10.0,
                              ),
                            ],
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
                                  height: 38,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 5,
                                      backgroundColor: color,shadowColor:Colors.orange.withOpacity(.2),
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

                                        fontFamily: fontFamilys,

                                      //  fontFamily: readexPro,

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


                  tablet: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, // 2 items per row for tablet
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

                                      fontFamily: fontFamilys,

                                    //  fontFamily: readexPro,

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
          // Expanded content area (Grid/List view for leads)


      )
    );
  }
}