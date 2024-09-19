import 'package:fab_tech_sol/Screen/add_new_lead_detail.dart';
import 'package:fab_tech_sol/Screen/add_new_lead_form_create_new_package.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/routes/routes.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';

class DashboardWidget {
  Widget dashboard(
    BuildContext context,
  ) {
    final providerValue = Provider.of<UserProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dashboard',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.bold,
                      color: color),
                ),
                Responsive.isMobile(context)
                    ? const SizedBox.shrink()
                    : Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                          children: [
                            // SizedBox(
                            //     width: Responsive.isDesktop(context)
                            //         ? 400
                            //         : Responsive.isTablet(context)
                            //             ? 200
                            //             : 100),
                            Widgets().dropDownButton(
                                providerValue.selectedItem1,
                                providerValue.dropdownItems1,
                                (String? newValue) {
                              providerValue.updateSelectedItem1(newValue);
                            }, context),
                            const SizedBox(width: 2),
                            Widgets().dropDownButton(providerValue.selectedItem2,
                                providerValue.dropdownItems2, (String? newValue) {
                              providerValue.updateSelectedItem2(newValue);
                            }, context),
                            const SizedBox(width: 10),
                            Widgets().button('Add New Lead', () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewLeadDetail()));
                            }),
                          ],
                        ),
                    )
              ],
            ),
            SizedBox(height: 20,),
            Wrap(
              spacing: 20,
              runSpacing:10.0,

              children: [
                Widgets().containerfield('Total Clients', '230',
                    '${imageUrl}clients.png', context),
                Widgets().containerfield(
                    'Total Leads', '230', '${imageUrl}leads.png', context),
                Widgets().containerfield(
                    'Total Agents', '230', '${imageUrl}agents.png', context),
                Widgets().containerfield('Total Local Supplier', '230',
                    '${imageUrl}localSupplier.png', context),
                const SizedBox(height: 20),
                Widgets().containerfield('Total International Supplier',
                    '230', '${imageUrl}internationalSupplier.png', context),
                Widgets().containerfield('Total Package', '230',
                    '${imageUrl}package.png', context),
              ],
            )
          ],
        ),
      ),
    );
  }
}
