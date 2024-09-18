
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/routes/routes.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';

class DashboardWidget {
  Widget dashboard(BuildContext context, ) {
    final providerValue = Provider.of<UserProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: SingleChildScrollView(
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
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                ),
                Row(
                  children: [
                     SizedBox(width: Responsive.isDesktop(context)? 500:  Responsive.isTablet(context)? 200:100 ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        Widgets().dropDownButton(providerValue.selectedItem1,
                            providerValue.dropdownItems1, (String? newValue) {
                          providerValue.updateSelectedItem1(newValue);
                        }, context),
                      ],
                    ),
                    const SizedBox(width: 2),
                    Widgets().dropDownButton(
                        providerValue.selectedItem2, providerValue.dropdownItems2,
                        (String? newValue) {
                      providerValue.updateSelectedItem2(newValue);
                    }, context),
                    const SizedBox(width: 10),
                    Widgets().button('Add New Lead', () {
                      Navigator.pushNamed(context, AppRoutes.addNewLead);
                    }),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  Widgets().containerfield('Total Clients', '230',
                      '${imageUrl}clients.png', context),
                  Widgets().containerfield(
                      'Total Leads', '230', '${imageUrl}leads.png', context),
                  Widgets().containerfield('Total Agents', '230',
                      '${imageUrl}agents.png', context),
                  Widgets().containerfield('Total Local Supplier', '230',
                      '${imageUrl}localSupplier.png', context),
                  const SizedBox(height: 20),
                  Widgets().containerfield('Total International Supplier',
                      '230', '${imageUrl}internationalSupplier.png', context),
                  Widgets().containerfield('Total Package', '230',
                      '${imageUrl}package.png', context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
