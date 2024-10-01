import 'package:fab_tech_sol/Screen/add_new_local_suppliers.dart';
import 'package:fab_tech_sol/Screen/addnewinternationalsuppliers.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/helper_function.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/responsive.dart';

class InternationalSupplierScreen extends StatelessWidget {
  const InternationalSupplierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerValue = Provider.of<UserProvider>(context);
    return Scaffold(
        body:
        Padding(
          padding:  EdgeInsets.only( top: Responsive.isDesktop(context) ? 35 : 10,
              left: Responsive.isDesktop(context) ? 80 : 30,
              right: Responsive.isDesktop(context) ? 80 : 30
          ),
          child: Column(

            children: [
              Align(
                alignment: Alignment.topLeft ,
                child: Text(
                  'International Supplier',
                  style: TextStyle(
                      fontSize: 28,

                      fontFamily: fontFamilys,

                      // fontFamily: readexPro,

                      fontWeight: FontWeight.w700,
                      color: color),
                ),

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Responsive.isDesktop(context)?
                  // Text(
                  //   'International Supplier',
                  //   style: TextStyle(
                  //       fontSize: 28,
                  //       fontFamily: fontFamilys,
                  //       fontWeight: FontWeight.bold,
                  //       color: color),
                  // ):SizedBox.shrink(),
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
                    const SizedBox(width: 15),
                    Widgets().button(
                      'Add Supplier',
                          () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddNewInterNationalsuppliers(),
                            ));
                      },
                    )
                  ])
                      : SizedBox.shrink(),
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
                      Widgets().button(
                        'Add Supplier',
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddNewInterNationalsuppliers(),
                              ));
                        },
                      )
                    ],
                  ),
                ],
              )
                  : SizedBox.shrink(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: PaginatedDataTable(
                      rowsPerPage: 5,
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

                      source: InternationalDataSource(Widgets().international,context),

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
        )
    );
  }
}