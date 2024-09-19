import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/helper_function.dart';

class SupplierWidget {
  Widget supplier(BuildContext context) {
    final providerValue = Provider.of<UserProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 25,left: 60,right: 60),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Local Supplier',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.bold,
                      color: color),
                ),
                Row(
                  children: [
                    Widgets().searchTextField(),
                    Widgets().dropDownButton(providerValue.selectedItem2,
                        providerValue.dropdownItems2, (String? newValue) {
                      providerValue.updateSelectedItem2(newValue);
                    }, context),
                    const SizedBox(width: 15),
                    Widgets().button('Add Supplier', () {})
                  ],
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
                child: SizedBox(
                  width: context.screenWidth,
                  child: PaginatedDataTable(
                    // rowsPerPage: 10,
                    columns: HelperUtil.createColumns(columnNames: [
                      "Company Name",
                      "Supplier Name",
                      "Supplier Address",
                      "Service",
                      "Company Address",
                      "Status",
                      "Action"
                    ]),
                    source: TaskDataSource(Widgets().tasks),
                    headingRowColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return AppStrings.addLeadButtonColor;
                    }),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
