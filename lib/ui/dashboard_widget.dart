import 'package:fab_tech_sol/Screen/add_new_lead_form.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});


  @override
  Widget build(BuildContext context) {
     final providerValue = Provider.of<UserProvider>(context);
    return Scaffold(
      body:  Padding(
      


    
      padding:  EdgeInsets.symmetric(horizontal: Responsive.isDesktop(context)? 60:30,vertical: 30),

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
                      fontFamily: fontFamilys,
                      fontWeight: FontWeight.bold,

                      // fontSize: 30,
                      // fontFamily: readexPro,
                      // fontWeight: FontWeight.w600,

                      color: color),
                ),
                Responsive.isMobile(context) || Responsive.isTablet(context)
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
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LeadDetails()));
                            },),
                          ],
                        ),
                    )
              ],
            ),
            Responsive.isTablet(context)
                ?
            Row(
                  children: [
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LeadDetails()));
                    }),
                  ],
                ):const SizedBox.shrink(),
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
     ));
  }

  }
