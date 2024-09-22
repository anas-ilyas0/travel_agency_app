import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Screen/DropDownButton/type_of_people.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/helper_function.dart';

class AgentsWidget {
  Widget agent(BuildContext context) {
    final providerValue = Provider.of<UserProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 25,right: 80,left: 80),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Agents',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: readexPro,
                      fontWeight: FontWeight.bold,
                      color: color),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    children: [
                      Widgets().searchTextField(),
                      Widgets().dropDownButton(providerValue.selectedItem2,
                          providerValue.dropdownItems2, (String? newValue) {
                            providerValue.updateSelectedItem2(newValue);
                          }, context),
                     // TypesDropDownButton(),
                      const SizedBox(width: 15),
                      Widgets().button('Add Agent', () {})
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: context.screenWidth,
              child: PaginatedDataTable(
                // rowsPerPage: 10,
                columns: HelperUtil.createColumns(columnNames: [
                  "Name",
                  "Phone Number",
                  "Email",
                  "Location",
                  "Status",
                  "Action"
                ]),
                source: AgentsTaskDataSource(Widgets().agentsTasks),
                headingRowColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return AppStrings.addLeadButtonColor;
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
