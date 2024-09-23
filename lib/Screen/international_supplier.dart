// import 'package:fab_tech_sol/consts/consts.dart';
// import 'package:fab_tech_sol/providers/provider.dart';
// import 'package:fab_tech_sol/ui/tasks_data_source.dart';
// import 'package:fab_tech_sol/widget/DropDownButton.dart';
// import 'package:fab_tech_sol/widget/agent_text_field.dart';
// import 'package:fab_tech_sol/widget/button.dart';
// import 'package:fab_tech_sol/widget/internationaltaskdata.dart';
// import 'package:fab_tech_sol/widget/serachfiled.dart';
//
// import 'package:fab_tech_sol/widgets/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class InternationalSupplierWidget extends StatelessWidget {
//    InternationalSupplierWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final providerValue = Provider.of<UserProvider>(context);
//     return Padding(
//       padding: const EdgeInsets.only(top: 25),
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 75),
//                   child: Text(
//                     'International Supplier',
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontFamily: fontFamilys,
//                         fontWeight: FontWeight.bold,
//                         color: color),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 30),
//                   child: Row(
//                     children: [
//                       SearchTextField().searchTextField(),
//                       const SizedBox(width: 15),
//                       DropDownButton().dropDownButton(
//                           providerValue.selectedItem2,
//                           providerValue.dropdownItems2, (String? newValue) {
//                         providerValue.updateSelectedItem2(newValue);
//                       }, context),
//                       const SizedBox(width: 15),
//                       Button().button('Add Supplier', () {}, context)
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//                 padding: const EdgeInsets.only(top: 25, right: 90, left: 75),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(7)),
//                   child: PaginatedDataTable(
//                     rowsPerPage: 10,
//                     columns: [
//                       DataColumn(
//                         label:
//                             AgentFormText().agentFormText('Company Name', 14),
//                       ),
//                       DataColumn(
//                         label: AgentFormText().agentFormText('Unknown', 14),
//                       ),
//                       DataColumn(
//                         label:
//                             AgentFormText().agentFormText('Phone Number', 14),
//                       ),
//                       DataColumn(
//                         label: AgentFormText().agentFormText('Service', 14),
//                       ),
//                       DataColumn(
//                         label: AgentFormText().agentFormText('Unknown', 14),
//                       ),
//                       DataColumn(
//                         label: AgentFormText().agentFormText('Location', 14),
//                       ),
//                       DataColumn(
//                         label: AgentFormText().agentFormText('Status', 14),
//                       ),
//                       DataColumn(
//                         label: AgentFormText().agentFormText('Action', 14),
//                       ),
//                     ],
//                     source: InternationalSupplierTaskDataSource(Widgets().internationalSupplierTasks),
//                     headingRowColor: MaterialStateProperty.resolveWith<Color>(
//                         (Set<MaterialState> states) {
//                       return Colors.white;
//                     }),
//                   ),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
