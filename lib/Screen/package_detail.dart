




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
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04,vertical:context.screenHeight*0.01 ),
        child: Column(children: [
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.screenWidth*0.02),
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
          overflow: TextOverflow.ellipsis, // Prevents overflow by showing '...'
                ),
              ),
              Spacer(),
          
              // Search Field
              Flexible(
                flex: 2,
                child: FittedBox(child: Widgets().searchTextField()),
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
          width: context.screenWidth*0.13,
                 // padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.02),
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
                overflow: TextOverflow.ellipsis, // Prevents overflow
              ),
            ),
          ),
                ),
              ),
            ],
          ),
        ),

          SizedBox(
            height: context.screenWidth * 0.012,
          ),
          Flexible(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
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
                    source: PackageDataSource(Widgets().package,context),

                    headingRowColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                          return Colors.white;
                        }),
                  ),
                )),
          )
          // Flexible(
          //   child: FittedBox(
          //     child: Container(
          //       // height: double.infinity,
          //       height: context.screenHeight * 0.08,
          //       // width: context.screenWidth*0.9,
          //
          //       decoration: BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.circular(7),
          //       //  border: Border.all(color: Color(0XFF70707033), width: 1),
          //       ),
          //       child: Row(
          //
          //         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(left: 12),
          //             child: Widgets().agentText('Client Name', 17),
          //           ),
          //           SizedBox(
          //             width: context.screenWidth * 0.045,
          //           ),
          //           Widgets().agentText('Phone Number', 17),
          //           SizedBox(
          //             width: context.screenWidth * 0.02,
          //           ),
          //           VerticalDivider(
          //             indent: 5,
          //             endIndent: 5,
          //             width: 1,
          //             color: AppColor.buttonTextColors,
          //           ),
          //           SizedBox(
          //             width: context.screenWidth * 0.02,
          //           ),
          //           Widgets().agentText('Agent Name', 17),
          //           SizedBox(
          //             width: context.screenWidth * 0.03,
          //           ),
          //           Widgets().agentText('Phone Number', 17),
          //           SizedBox(
          //             width: context.screenWidth * 0.025,
          //           ),
          //           VerticalDivider(
          //             indent: 5,
          //             endIndent: 5,
          //              color: AppColor.buttonTextColors,
          //           ),
          //           Row(children: [SizedBox(
          //             width: context.screenWidth * 0.03,
          //           ),
          //           Widgets().agentText('Supplier Name', 17),
          //           SizedBox(
          //             width: context.screenWidth * 0.07,
          //           ),
          //           Widgets().agentText('Phone Number', 17),
          //           SizedBox(
          //             width: context.screenWidth * 0.04,
          //           ),
          //           Widgets().agentText('Action', 17),
          //           SizedBox(width: context.screenWidth*0.026,)
          //           ],
          //           )
          //
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // SizedBox(
          //   height: context.screenHeight * 0.71,
          //   width: context.screenWidth * 0.9,
          //   child: SingleChildScrollView(
          //     child: Column(
          //       children: [
          //         ListView.builder(
          //           shrinkWrap:
          //               true, // Ensures it takes up only as much space as needed
          //           physics:
          //               NeverScrollableScrollPhysics(), // Prevents nested scrolling issues
          //           itemCount: 20,
          //           itemBuilder: (context, index) {
          //             return Padding(
          //               padding: const EdgeInsets.only(bottom: 10),
          //               child: Container(
          //                 decoration: BoxDecoration(
          //                     color: Colors.white,
          //                     borderRadius: BorderRadius.circular(7),
          //                     border: Border.all(
          //                         color:AppColor.buttonTextColors, width: 0.2)),
          //                 height: 66,
          //                 child: Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 12),
          //                   child: Row(
          //                     children: [
          //                       Flexible(
          //                         child: FittedBox(
          //                           child: Row(
          //                             children: [
          //                               Widgets().circularAvatar(
          //                                 backgroundImage: '${imageUrl}agent.png',
          //                               ),
          //                               Widgets().agentText('John Doe', 16),
          //                             ],
          //                           ),
          //                         ),
          //                       ),
          //                       SizedBox(width: context.screenWidth * 0.04),
          //                       Flexible(child: FittedBox(child: Widgets().agentText('+21 999 999 999', 15))),
          //                       SizedBox(width: context.screenWidth * 0.063),
          //                       Flexible(
          //                         child: FittedBox(
          //                           child: Row(
          //                             children: [
          //                               Widgets().circularAvatar(
          //                                 backgroundImage: '${imageUrl}agent.png',
          //                               ),
          //                               Widgets().agentText('John Doe', 16),
          //                             ],
          //                           ),
          //                         ),
          //                       ),
          //                       SizedBox(width: context.screenWidth * 0.04),
          //                       Flexible(child: FittedBox(child: Widgets().agentText('+21 999 999 999', 15))),
          //                       SizedBox(width: context.screenWidth * 0.07),
          //                       Flexible(
          //                         child: FittedBox(
          //                           child: Row(
          //                             children: [
          //                               Widgets().circularAvatar(
          //                                 backgroundImage: '${imageUrl}agent.png',
          //                               ),
          //                               Widgets().agentText('John Doe', 16),
          //                             ],
          //                           ),
          //                         ),
          //                       ),
          //                       SizedBox(width: context.screenWidth * 0.072),
          //                       Flexible(
          //                         child: FittedBox(child: Widgets().agentText('+21 999 999 999', 15))),
          //                       SizedBox(
          //                         width: context.screenWidth * 0.039,
          //                       ),
          //                       Flexible(child: FittedBox(child: Widgets().PackageDetailButton(context)))
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             );
          //           },
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ]),
      ),
    );
  }
}
