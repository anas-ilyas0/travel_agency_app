import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/routes/routes.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardWidget {
  Widget dashboard(BuildContext context) {
    final providerValue = Provider.of<UserProvider>(context);
    return Padding(
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
                      fontFamily: fontFamily,
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
                      Widgets().dropDownButton(providerValue.selectedItem1,
                          providerValue.dropdownItems1, (String? newValue) {
                        providerValue.updateSelectedItem1(newValue);
                      }, context),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Widgets().dropDownButton(
                      providerValue.selectedItem2, providerValue.dropdownItems2,
                      (String? newValue) {
                    providerValue.updateSelectedItem2(newValue);
                  }, context),
                  const SizedBox(width: 15),
                  Widgets().button('Add New Lead', () {
                    Navigator.pushNamed(context, AppRoutes.addNewLead);
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
                    Widgets().containerfield(
                        'Total Leads', '230', '${imageUrl}leads.png', context),
                    Widgets().containerfield('Total Agents', '230',
                        '${imageUrl}agents.png', context),
                    Widgets().containerfield('Total Local Supplier', '230',
                        '${imageUrl}localSupplier.png', context),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Widgets().containerfield('Total International Supplier',
                        '230', '${imageUrl}internationalSupplier.png', context),
                    Widgets().containerfield('Total Package', '230',
                        '${imageUrl}package.png', context),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
