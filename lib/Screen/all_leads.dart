import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/Screen/invoice_details_invoice.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/Screen/package.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllLeads extends StatelessWidget {
  final TabController tabController;

  const AllLeads({Key? key, required this.tabController}) : super(key: key);

  @override
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
            mainAxisAlignment: Responsive.isMobile(context)
                ? MainAxisAlignment.start
                : MainAxisAlignment.spaceBetween,
            children: [
              Responsive.isMobile(context)
                  ? SizedBox.shrink()
                  : Text(
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
                      controller: tabController,
                      isScrollable: true,
                      tabs: const [
                        Tab(text: 'Active'),
                        Tab(text: 'Inactive'),
                      ]),
                  Responsive.isDesktop(context)
                      ? Widgets().dropDownButton(providerValue.selectedItem2,
                          providerValue.dropdownItems2, (String? newValue) {
                          providerValue.updateSelectedItem2(newValue);
                        }, context)
                      : SizedBox.shrink(),
                  const SizedBox(width: 15),
                  Responsive.isDesktop(context)
                      ? Widgets().button(
                          'Add New Lead',
                          () {
                            // Navigator.pushNamed(
                            //   context, AppRoutes.lead_details);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LeadInvoiceDetails(),
                                ));
                          },
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ],
          ),

          Expanded(
            child: TabBarView(controller: tabController, children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: 20,
                ),
                child: Responsive(
                  mobile: Text('Mobile View'),
                  desktop: LayoutBuilder(
        builder: (context, constraints) {
          final crossAxisCount = (constraints.maxWidth / 260).floor();
          return GridView.builder(
            padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              childAspectRatio: 0.75,
            ),
            itemCount: 8,
            itemBuilder: (context, index) {
              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 4),
                        blurRadius: 0,
                      )
                    ],
                    color: AppColor.allleadcontainercolor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 8.5, vertical: 4.5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.green,
                              ),
                              child: Text(
                                '• Active',
                                style: TextStyle(color: Colors.white, fontSize: 12),
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.more_vert),
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              "${ImagesAssets.imagePath}allleadimagecontainer.png",
                              width: 180,
                              height: 180,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(height: 16,),
                        Text(
                          'Tour Name: Dream Destination',
                          style: AppTextstyless.allLeads,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 6),
                        Widgets().allLeadNoOfLeads('14'),
                        SizedBox(height: 6),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, size: 16),
                            Text(
                              '9827 Railroad Street',
                              style: AppTextstyless.allLeadsDate,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Starting from: ',
                              style: TextStyle(fontSize: 12,color: AppColor.hintColor),
                            ),
                            Text('Oct 10,2024')
                          ],
                        ),
                        SizedBox(height: 8),
                        Center(
                          child: TextButton(
                            child: Text('View Details',style: TextStyle(
                              color: Colors.black,fontFamily: 'Poppin',fontWeight: FontWeight.w700,fontSize: 14),),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LeadDetails(),));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
                  tablet: Text(''),
                ),
              ),
              const Center(child: Text('Pending')),
              const Center(child: Text('Canceled')),
            ]),
          ),
        ],
      ),
      // Expanded content area (Grid/List view for leads)
    ));
  }
}
