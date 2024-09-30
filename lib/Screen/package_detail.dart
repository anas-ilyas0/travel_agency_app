import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../resources/helper_function.dart';
import 'add_new_create_package_detail.dart';

class PackageDetail extends StatelessWidget {
  const PackageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: context.screenHeight * 0.01,
        ),
        child: Column(
          children: [
            SizedBox(height: context.screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
              child: Row(
                children: [
                  // Package Detail Text
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Package Detail',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'ReadexPro',
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  // Search Field
                  Expanded(
                    flex: 2,
                    child: FittedBox(child: Widgets().searchTextField()), // Directly use Expanded
                  ),
                  SizedBox(width: context.screenWidth * 0.02),
                  // Add New Package Button
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PackageDetail(),
                        ),
                      );
                    },
                    child: Container(
                      height: context.screenHeight * 0.07,
                      width: context.screenWidth * 0.13,
                      decoration: BoxDecoration(
                        color: addLeadButtonColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Add New Package',
                            style: TextStyle(
                              fontFamily: fontFamilys,
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: context.screenWidth * 0.012),
            Expanded(
              child: SingleChildScrollView(
                child: PaginatedDataTable(
                  rowsPerPage: 5,
                  dataRowHeight: 60,
                  columns: HelperUtil.createColumns(columnNames: [
                    "Client Name",
                    "Phone Number",
                    "Agent Name",
                    "Phone Number",
                    "Supplier Name",
                    "Phone Number",
                    "Action",
                  ]),
                  source: PackageDataSource(Widgets().package, context),
                  headingRowColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      return Colors.white;
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
