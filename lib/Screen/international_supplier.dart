import 'package:fab_tech_sol/Screen/add_new_local_suppliers.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/helper_function.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InternationalSupplierScreen extends StatelessWidget {
  const InternationalSupplierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerValue = Provider.of<UserProvider>(context);
    return Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.only(top: 25,left: 60,right: 60),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'International Supplier',
                      style: TextStyle(
                          fontSize: 28,

                          fontFamily: fontFamilys,

                          // fontFamily: readexPro,

                          fontWeight: FontWeight.w700,
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
                        Widgets().button('Add Supplier', () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewLocalSupplier(),));
                        },)
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
                          "Unknown",
                          "Phone Number",
                          "Service",
                          "Unknown",
                          "Location",
                          "Status",
                          "Action"
                        ]),
                        source: InternationalDataSource(Widgets().international),

                        headingRowColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              return AppStrings.addLeadButtonColor;
                            }),
                      ),
                    ))
              ],
            ),
          ),
        )
    );
  }
}