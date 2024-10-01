import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/Screen/invoice_details_invoice.dart';
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
                  mobile: Text('Coming Soon'),
                  desktop: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, // 4 items per row for desktop
                      crossAxisSpacing: 32.0,
                      // mainAxisSpacing: 32.0,
                      childAspectRatio: 0.72,
                    ),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Flexible(
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0, 4),
                                    spreadRadius: -0,
                                  )
                                ],
                                color: AppColor.allleadcontainercolor,

                                // color: const Color(0XFFFFFFFF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 55,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: Colors.green,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Center(
                                              child: Text(
                                                '• Active',
                                                style: TextStyle(
                                                    fontFamily: fontFamilys,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                      
                                          },
                                          child: Icon(Icons.more_vert_rounded))
                                      ],
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.01,
                                    ),
                                    Container(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset(
                                          "${ImagesAssets.imagePath}allleadimagecontainer.png"),
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Tour Name:',
                                          style: AppTextstyless.allLeads,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          'Dream Destination',
                                          style: AppTextstyless.allLeads,
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.01,
                                    ),
                                    Widgets().allLeadNoOfLeads('14'),
                                    SizedBox(
                                      height: context.screenHeight * 0.01,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.black,
                                          size: 18,
                                        ),
                                        Text(
                                          '9827 Railroad St',
                                          style: AppTextstyless.allLeadsDate,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Starting from :',
                                          style: TextStyle(
                                              color: AppColor.hintColor),
                                        ),
                                        Text(
                                          'Oct 10 ,2024',
                                          style: AppTextstyless.allLeadsDate,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.02,
                                    ),
                                    Text(
                                      'View Detail',
                                      style: AppTextstyless.allLeadsViewDetail,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  tablet: Flexible(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4, // 4 items per row for desktop
                        crossAxisSpacing: 32.0,
                        mainAxisSpacing: 32.0,
                        childAspectRatio: 0.79,
                      ),
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Flexible(
                          child: FittedBox(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(-1, -1),
                                  )
                                ],
                                color: AppColor.allleadcontainercolor,

                                // color: const Color(0XFFFFFFFF),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 20,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.green,
                                          ),
                                          child: Center(
                                              child: Text(
                                            '• Active',
                                            style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                                fontSize: 10),
                                          )),
                                        ),
                                        Icon(Icons.drag_indicator_sharp)
                                      ],
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.01,
                                    ),
                                    Container(
                                      width: 120,
                                      height: 120,
                                      child: Image.asset(
                                          "${ImagesAssets.imagePath}allleadimagecontainer.png"),
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.02,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Tour Name:',
                                          style: AppTextstyless.allLeads,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          'Dream Destination',
                                          style: AppTextstyless.allLeads,
                                          overflow: TextOverflow.ellipsis,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.01,
                                    ),
                                    Widgets().allLeadNoOfLeads('14'),
                                    SizedBox(
                                      height: context.screenHeight * 0.01,
                                    ),
                                    Text(
                                      '9827 Railroad St',
                                      style: AppTextstyless.allLeadsDate,
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Starting from:'),
                                        Text(
                                          'Oct 10 ,2024',
                                          style: AppTextstyless.allLeadsDate,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: context.screenHeight * 0.02,
                                    ),
                                    Text(
                                      'View Detail',
                                      style: AppTextstyless.allLeadsViewDetail,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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
    ));
  }
}
