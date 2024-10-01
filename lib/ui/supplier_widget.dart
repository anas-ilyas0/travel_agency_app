import 'package:fab_tech_sol/Screen/add_new_local_suppliers.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/resources/helper_function.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../resources/responsive.dart';

class SupplierScreen extends StatelessWidget {
  const SupplierScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final providerValue = Provider.of<UserProvider>(context);
    return Scaffold(
      body: 
      Padding(
      padding:  EdgeInsets.only(  top: Responsive.isDesktop(context) ? 35 : 15,
          left: Responsive.isDesktop(context) ? 80 : 40,
          right: Responsive.isDesktop(context) ? 80 : 40
      ),
      child: Column(
        children: [
          Responsive.isDesktop(context)?SizedBox.shrink():Align(
            alignment: Alignment.topLeft ,
            child: Text(
              'Local Supplier',
              style: TextStyle(
                  fontSize: 26,

                  fontFamily: fontFamilys,

                  // fontFamily: readexPro,

                  fontWeight: FontWeight.w700,
                  color: color),
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Responsive.isDesktop(context)?
              Text(
                'Local Supplier',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: fontFamilys,
                    fontWeight: FontWeight.bold,
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
                    const SizedBox(width: 15),
                    Widgets().button(
                      'Add Supplier',
                          () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddNewLocalSupplier(),
                            ));
                      },
                    )
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
                  Widgets().button(
                    'Add Supplier',
                        () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddNewLocalSupplier(),
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
                    "Supplier Name",
                    "Supplier Address",
                    "Service",
                    "Company Address",
                    "Status",
                    "Action"
                  ]),
                  source: TaskDataSource(Widgets().tasks,context),

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