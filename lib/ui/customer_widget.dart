import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/helper_function.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
 import 'package:flutter/material.dart';
import 'package:fab_tech_sol/widget/widgets.dart';
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
            Responsive.isDesktop(context)?const SizedBox.shrink():Align(
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
                ):const SizedBox.shrink(),
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
                        : const SizedBox.shrink()
                  ],
                ),
              ],
            ),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? Column(
              children: [
                const SizedBox(
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
                : const SizedBox.shrink(),
            const SizedBox(
              height: 20,
            ),
       

Expanded(
  child: LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: constraints.maxWidth > 1200 ? constraints.maxWidth : 1200,
          child: SingleChildScrollView(
            child: PaginatedDataTable(
              columnSpacing: 20,
              horizontalMargin: 10,
              rowsPerPage: 10,
              dataRowHeight: 54,
              columns: HelperUtil.createColumns(
                columnNames: [
                  "Lead #",
                  "First Name",
                  "Last Name",
                  "Phone Number",
                  "Email",
                  "Location",
                  "Status",
                  "Action"
                ],
                value: true,
              ),
              source: CustomerDataSource(Widgets().customerTask, context),
              headingRowColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  return Colors.white;
                },
              ),
            ),
          ),
        ),
      );
    },
  ),
)
          ],
        ),
      ),
    );
  }
}
