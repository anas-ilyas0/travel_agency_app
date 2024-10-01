import 'package:fab_tech_sol/Screen/DropDownButton/type_of_people.dart';
import 'package:fab_tech_sol/Screen/add_new_agent.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/helper_function.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';

import 'package:fab_tech_sol/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/responsive.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerValue = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: Responsive.isDesktop(context) ? 35 : 20,
            left: Responsive.isDesktop(context) ? 80 : 40,
            right: Responsive.isDesktop(context) ? 80 : 40
        ),
        child: Column(
          children: [
            Responsive.isDesktop(context)?SizedBox.shrink():Align(
              alignment: Alignment.topLeft ,
              child: Text(

                'Customers',
                style: TextStyle(
                    fontSize: 26,
                    fontFamily: fontFamilys,
                    fontWeight: FontWeight.w700,
                    color: color),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Responsive.isDesktop(context)?
                Text(
                  'Customers',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: fontFamilys,
                      fontWeight: FontWeight.w700,
                      color: color),
                ):SizedBox.shrink(),
                Row(
                  children: [
                    Widgets().searchTextField(),
                    Responsive.isDesktop(context)
                        ? Row(children: [
                      SizedBox(width: context.screenWidth * 0.005,),
                      Widgets().dropDownButton(
                          providerValue.selectedItem2,
                          providerValue.dropdownItems2,
                              (String? newValue) {
                            providerValue.updateSelectedItem2(newValue);
                          }, context),
                    ])
                        : SizedBox.shrink()
                  ],
                ),
              ],
            ),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Widgets().dropDownButton(providerValue.selectedItem2,
                        providerValue.dropdownItems2, (String? newValue) {
                          providerValue.updateSelectedItem2(newValue);
                        }, context),

                    const SizedBox(width: 15),
                  ],
                ),
              ],
            )
                : SizedBox.shrink(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: SingleChildScrollView(
                  child: PaginatedDataTable(
                    rowsPerPage: 10,
                    dataRowHeight: 54,
                    columns: HelperUtil.createColumns(columnNames: [
                      "Lead #",
                      "First Name",
                      "Last Name",
                      "Phone Number",
                      "Email",
                      "Location",
                      "Status",
                      "Action"
                    ],value: true ),
                    source:
                    CustomerDataSource(Widgets().customerTask, context),
                    headingRowColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.white;
                        }),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
