import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/build_container.dart';
import 'package:fab_tech_sol/widgets/check_box.dart';
import 'package:fab_tech_sol/widgets/final_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardFilter {
  Future dashboardFilter(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quick filters',
                    style: TextStyle(
                        fontFamily: readexPro, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'Filter Details',
                    style: TextStyle(
                        fontFamily: readexPro, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Consumer<UserProvider>(
                      builder: (context, userProvider, child) {
                    return Row(
                      children: [
                        CheckBox().checkBox(userProvider.isSelectAll,
                            (bool? newValue) {
                          userProvider.toogleSelectAll(newValue ?? false);
                        }),
                        const SizedBox(width: 10),
                        Text(
                          'Select all',
                          style: TextStyle(fontFamily: readexPro),
                        ),
                        const SizedBox(width: 10),
                        CheckBox().checkBox(userProvider.isLeadsChecked,
                            (bool? newValue) {
                          userProvider.toogleIsLeadsChecked(newValue ?? false);
                        }),
                        const SizedBox(width: 10),
                        Text(
                          'Leads',
                          style: TextStyle(fontFamily: readexPro),
                        ),
                        const SizedBox(width: 10),
                        CheckBox().checkBox(userProvider.isAgentsChecked,
                            (bool? newValue) {
                          userProvider.toogleIsAgentsChecked(newValue ?? false);
                        }),
                        const SizedBox(width: 10),
                        Text(
                          'Agents',
                          style: TextStyle(fontFamily: readexPro),
                        ),
                        const SizedBox(width: 10),
                        CheckBox().checkBox(userProvider.isLocalSupplierChecked,
                            (bool? newValue) {
                          userProvider
                              .toogleIsLocalSupplierChecked(newValue ?? false);
                        }),
                        const SizedBox(width: 10),
                        Text(
                          'Local Supplier',
                          style: TextStyle(fontFamily: readexPro),
                        ),
                        const SizedBox(width: 10),
                        CheckBox()
                            .checkBox(userProvider.isInternationalSupplier,
                                (bool? newValue) {
                          userProvider
                              .toogleIsInternationalSupplier(newValue ?? false);
                        }),
                        const SizedBox(width: 10),
                        Text(
                          'International Supplier',
                          style: TextStyle(fontFamily: readexPro),
                        ),
                      ],
                    );
                  }),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      BuildContainer().buildContainer('Total Clients',
                          context.watch<UserProvider>().selectedMonthClients,
                          (String? month) {
                        context
                            .read<UserProvider>()
                            .setSelectedMonthClients(month);
                      }),
                      const SizedBox(width: 20),
                      BuildContainer().buildContainer('Total Leads',
                          context.watch<UserProvider>().selectedMonthLeads,
                          (String? month) {
                        context
                            .read<UserProvider>()
                            .setSelectedMonthLeads(month);
                      }),
                      const SizedBox(width: 20),
                      BuildContainer().buildContainer('Total Agents',
                          context.watch<UserProvider>().selectedMonthAgents,
                          (String? month) {
                        context
                            .read<UserProvider>()
                            .setSelectedMonthAgents(month);
                      }),
                      const SizedBox(width: 20),
                      BuildContainer().buildContainer('Suppliers',
                          context.watch<UserProvider>().selectedMonthSuppliers,
                          (String? month) {
                        context
                            .read<UserProvider>()
                            .setSelectedMonthSuppliers(month);
                      }),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FinalButton().finalButton('Clear', cancelButtonColor, () {
                        Navigator.pop(context);
                      }),
                      FinalButton()
                          .finalButton('Apply', addLeadButtonColor, () {}),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
