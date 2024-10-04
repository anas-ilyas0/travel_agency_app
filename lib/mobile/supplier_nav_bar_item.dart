import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/animated_search_bar.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mobile_custom_app_bar.dart';

class SupplierNavBarItem extends StatelessWidget {
  const SupplierNavBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Column(
      children: [
        MobileCustomAppBar().mobileCustomAppBar('Suppliers', context),
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Supplier',
                    style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 10),
                  DropdownButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: mobileArrowDropDownColor,
                      ),
                      underline: Container(),
                      items: [
                        DropdownMenuItem(
                            child: Text(
                          'ALL',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: readexPro,
                              color: mobileArrowDropDownColor),
                        ))
                      ],
                      onChanged: (value) {})
                ],
              ),
              Row(
                children: [
                  AnimatedSearchBar().foldSupplierField(),
                  const SizedBox(width: 10),
                  Image(
                      width: 30,
                      height: 25,
                      image: AssetImage('${imageUrl}filled_vector.png')),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Consumer<UserProvider>(builder: (context, userProvider, child) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height * 0.01),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: mobileLeadText1Color),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                          2,
                          (index) =>
                              buildToogleButtons(index, context, userProvider)),
                    ),
                  ),
                );
              }),
              if (userProvider.selectedLocalInterSupplier == 0)
                Expanded(
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: 6,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            '${imageUrl}package_supplier_client_avatar.png'),
                                      ),
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Supplier Name',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontSize: 10,
                                            color: addLeadButtonColor),
                                      ),
                                      Text(
                                        'Lucas Jones',
                                        style: TextStyle(
                                          color: color,
                                          fontSize: 10,
                                          fontFamily: readexPro,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                                Row(
                                  children: [
                                    Text(
                                      'Status:',
                                      style: TextStyle(
                                          fontFamily: readexPro,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: mobileLeadText2Color),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Active',
                                      style: TextStyle(
                                          fontFamily: readexPro,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: greenColor),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Company Name:',
                                                style: TextStyle(
                                                    fontFamily: readexPro,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 8,
                                                    color:
                                                        mobileLeadText2Color),
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                'Bright Travel',
                                                style: TextStyle(
                                                    fontFamily: readexPro,
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        mobileLeadText2Color),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(width: 20),
                                          Row(
                                            children: [
                                              Text(
                                                'Service:',
                                                style: TextStyle(
                                                    fontFamily: readexPro,
                                                    fontSize: 8,
                                                    fontWeight: FontWeight.w400,
                                                    color:
                                                        mobileLeadText2Color),
                                              ),
                                              const SizedBox(width: 3),
                                              Text(
                                                'Hotel Accommodation',
                                                style: TextStyle(
                                                    fontFamily: readexPro,
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        mobileLeadText2Color),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(context,
                                              '/mobile_local_supplier_details');
                                        },
                                        child: Image(
                                            height: 15,
                                            width: 15,
                                            image: AssetImage(
                                                '${imageUrl}forward_icon.png')),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 7),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Company Address:',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8,
                                            color: mobileLeadText2Color),
                                      ),
                                      const SizedBox(width: 9),
                                      Text(
                                        '2776 Bruce St',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                            color: mobileLeadText2Color),
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        'Supplier Address:',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontSize: 8,
                                            fontWeight: FontWeight.w400,
                                            color: mobileLeadText2Color),
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        '8119 Nowlin Rd',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500,
                                            color: mobileLeadText2Color),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            DashedLine(lineColor: addLeadButtonColor),
                          ],
                        ),
                      );
                    },
                  ),
                )
              else if (userProvider.selectedLocalInterSupplier == 1)
                Expanded(
                  child: ListView.builder(
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: 6,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            '${imageUrl}supplier_avatar.png'),
                                      ),
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Company Name',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontSize: 10,
                                            color: addLeadButtonColor),
                                      ),
                                      Text(
                                        'Bright Travel',
                                        style: TextStyle(
                                          color: color,
                                          fontSize: 10,
                                          fontFamily: readexPro,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                                Row(
                                  children: [
                                    Text(
                                      'Status:',
                                      style: TextStyle(
                                          fontFamily: readexPro,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                          color: mobileLeadText2Color),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'Active',
                                      style: TextStyle(
                                          fontFamily: readexPro,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          color: greenColor),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Service',
                                          style: TextStyle(
                                              fontFamily: readexPro,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 8,
                                              color: mobileLeadText2Color),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          'Air Ticket',
                                          style: TextStyle(
                                              fontFamily: readexPro,
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500,
                                              color: mobileLeadText2Color),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(width: 20),
                                    Row(
                                      children: [
                                        Text(
                                          'Phone #:',
                                          style: TextStyle(
                                              fontFamily: readexPro,
                                              fontSize: 8,
                                              fontWeight: FontWeight.w400,
                                              color: mobileLeadText2Color),
                                        ),
                                        const SizedBox(width: 3),
                                        Text(
                                          '(252) 611-7929',
                                          style: TextStyle(
                                              fontFamily: readexPro,
                                              fontSize: 9,
                                              fontWeight: FontWeight.w500,
                                              color: mobileLeadText2Color),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context,
                                        '/mobile_international_supplier_details');
                                  },
                                  child: Image(
                                      height: 15,
                                      width: 15,
                                      image: AssetImage(
                                          '${imageUrl}forward_icon.png')),
                                ),
                              ],
                            ),
                            const SizedBox(height: 7),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Company Address:',
                                    style: TextStyle(
                                        fontFamily: readexPro,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                        color: mobileLeadText2Color),
                                  ),
                                  const SizedBox(width: 9),
                                  Text(
                                    '2776 Bruce St',
                                    style: TextStyle(
                                        fontFamily: readexPro,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: mobileLeadText2Color),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Unknown:',
                                    style: TextStyle(
                                        fontFamily: readexPro,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: mobileLeadText2Color),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'CPT',
                                    style: TextStyle(
                                        fontFamily: readexPro,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: mobileLeadText2Color),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    'Unknown:',
                                    style: TextStyle(
                                        fontFamily: readexPro,
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                        color: mobileLeadText2Color),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'ABSA',
                                    style: TextStyle(
                                        fontFamily: readexPro,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500,
                                        color: mobileLeadText2Color),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            DashedLine(lineColor: addLeadButtonColor),
                          ],
                        ),
                      );
                    },
                  ),
                )
            ],
          ),
        )
      ],
    );
  }

  Widget buildToogleButtons(
      int index, BuildContext context, UserProvider toggleState) {
    var isLocal = index == 0;
    var label = isLocal ? 'Local Supplier' : 'International Supplier';
    return GestureDetector(
      onTap: () {
        toggleState.setToogleLocalInterSupplier(index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.07, vertical: 10),
        decoration: BoxDecoration(
          color: toggleState.selectedLocalInterSupplier == index
              ? color
              : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: toggleState.selectedLocalInterSupplier == index
                ? Colors.white
                : mobileLeadText1Color,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
