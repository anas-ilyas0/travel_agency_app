import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/mobile/fl_chart.dart';
import 'package:fab_tech_sol/mobile/leads_pie_chart.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:fab_tech_sol/widgets/mobile_dashboard_container_field.dart';
import 'package:flutter/material.dart';

import 'mobile_custom_app_bar.dart';

class MobileDashboard extends StatelessWidget {
  const MobileDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MobileCustomAppBar().mobileCustomAppBar('Dashboard', context),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gross Revenue by Month',
                  style: TextStyle(
                    fontFamily: readexPro,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Image(
                    width: 30,
                    height: 25,
                    image: AssetImage('${imageUrl}filled_vector.png')),
              ],
            ),
          ),
          const SizedBox(height: 10),
          FlChart.flChart(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Everytime Leads Updates',
                        style: TextStyle(
                          fontFamily: readexPro,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    DashboardLeadsChart().dashboardLeadsChart(),
                    const SizedBox(height: 7),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: addLeadButtonColor,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'New Lead',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: readexPro,
                                      fontWeight: FontWeight.w500,
                                      color: addLeadButtonColor,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '450',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: readexPro,
                                  fontWeight: FontWeight.w500,
                                  color: addLeadButtonColor,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: color,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    'Today Add Lead',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: readexPro,
                                      fontWeight: FontWeight.w500,
                                      color: color,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '30',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: readexPro,
                                  fontWeight: FontWeight.w500,
                                  color: color,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 90),
            child: Container(
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: Column(
                  children: [
                    MobileDashboardContainerField()
                        .mobileDashboardContainerField('${imageUrl}clients.png',
                            'Total Clients', '230', () {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: DashedLine(lineColor: greyColor.withOpacity(0.4)),
                    ),
                    MobileDashboardContainerField()
                        .mobileDashboardContainerField('${imageUrl}leads.png',
                            'Total Leads', '230', () {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: DashedLine(lineColor: greyColor.withOpacity(0.4)),
                    ),
                    MobileDashboardContainerField()
                        .mobileDashboardContainerField('${imageUrl}agents.png',
                            'Total Agents', '230', () {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: DashedLine(lineColor: greyColor.withOpacity(0.4)),
                    ),
                    MobileDashboardContainerField()
                        .mobileDashboardContainerField(
                            '${imageUrl}localSupplier.png',
                            'Total Local Supplier',
                            '230',
                            () {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: DashedLine(lineColor: greyColor.withOpacity(0.4)),
                    ),
                    MobileDashboardContainerField()
                        .mobileDashboardContainerField(
                            '${imageUrl}internationalSupplier.png',
                            'Total International Supplier',
                            '230',
                            () {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: DashedLine(lineColor: greyColor.withOpacity(0.4)),
                    ),
                    MobileDashboardContainerField()
                        .mobileDashboardContainerField('${imageUrl}package.png',
                            'Total Package', '230', () {}),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
