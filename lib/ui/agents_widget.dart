import 'package:fab_tech_sol/Screen/DropDownButton/type_of_people.dart';
import 'package:fab_tech_sol/Screen/add_new_agent.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/helper_function.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AgentScreen
 extends StatelessWidget {
  const AgentScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
     final providerValue = Provider.of<UserProvider>(context);
    return Scaffold(
      body:  Padding(
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

                      fontFamily: fontFamilys,

                    //  fontFamily: readexPro,

                     fontWeight: FontWeight.bold,
                     color: color),
                  ),
                
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    children: [
                      Widgets().searchTextField(),

                      SizedBox(
                        width: context.screenWidth*0.01,
                      ),
                     TypesDropDownButton(),

                      Widgets().dropDownButton(providerValue.selectedItem2,
                          providerValue.dropdownItems2, (String? newValue) {
                            providerValue.updateSelectedItem2(newValue);
                          }, context),
                     // TypesDropDownButton(),

                      const SizedBox(width: 15),
                      Widgets().button('Add New Agent', () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewAgent(),));
                      },)
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
                source: AgentsTaskDataSource(Widgets().agentsTaskss),
                headingRowColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  return AppStrings.addLeadButtonColor;
                }),
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}