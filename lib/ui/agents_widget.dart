import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AgentsWidget {
  Widget agent(BuildContext context) {
    final providerValue = Provider.of<UserProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 75),
                  child: Text(
                    'All Agents',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: fontFamily,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
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
                      const SizedBox(width: 15),
                      Widgets().button('Add Agent', () {})
                    ],
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 25, right: 100, left: 100),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: PaginatedDataTable(
                    rowsPerPage: 10,
                    columns: [
                      DataColumn(
                        label: Widgets().agentFormText('Name', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Phone Number', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Email', 14),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Location', 14),
                      ),
                      DataColumn(
                        label: Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Widgets().agentFormText('Status', 14),
                        ),
                      ),
                      DataColumn(
                        label: Widgets().agentFormText('Action', 14),
                      ),
                    ],
                    source: AgentsTaskDataSource(Widgets().agentsTasks),
                    headingRowColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return Colors.white;
                    }),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
