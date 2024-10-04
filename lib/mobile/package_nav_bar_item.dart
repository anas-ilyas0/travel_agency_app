import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widgets/animated_search_bar.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

import 'mobile_custom_app_bar.dart';

class PackageNavBarItem extends StatelessWidget {
  const PackageNavBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileCustomAppBar().mobileCustomAppBar('Package', context),
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Package',
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
              AnimatedSearchBar().foldPackageField(),
            ],
          ),
        ),
        const SizedBox(height: 7),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            color: whiteColor,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          children: [
                                            Text(
                                              'Client Name',
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
                                            )
                                          ],
                                        ),
                                      ]),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Phone #:',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 9,
                                            color: mobileLeadText2Color),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        '(237) 515-1546',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: mobileLeadText2Color),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  '${imageUrl}package_agent_avatar.png'),
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
                                              'Agent Name',
                                              style: TextStyle(
                                                  fontFamily: readexPro,
                                                  fontSize: 10,
                                                  color: addLeadButtonColor),
                                            ),
                                            Text(
                                              'Gerald Morales',
                                              style: TextStyle(
                                                color: color,
                                                fontSize: 10,
                                                fontFamily: readexPro,
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(width: 20),
                                      ]),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Phone #:',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 9,
                                            color: mobileLeadText2Color),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '(961) 361-5250',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: mobileLeadText2Color),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  '${imageUrl}package_ritthy.png'),
                                            ),
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Column(
                                          children: [
                                            Text(
                                              'Supplier Name',
                                              style: TextStyle(
                                                  fontFamily: readexPro,
                                                  fontSize: 10,
                                                  color: addLeadButtonColor),
                                            ),
                                            Text(
                                              'Ritthy Gregory',
                                              style: TextStyle(
                                                color: color,
                                                fontSize: 10,
                                                fontFamily: readexPro,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ]),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Phone #:',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 9,
                                            color: mobileLeadText2Color),
                                      ),
                                      const SizedBox(height: 3),
                                      Text(
                                        '(297) 886-0464',
                                        style: TextStyle(
                                            fontFamily: readexPro,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: mobileLeadText2Color),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/mobile_package_details');
                            },
                            child: Image(
                                height: 15,
                                width: 15,
                                image:
                                    AssetImage('${imageUrl}forward_icon.png')),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      DashedLine(lineColor: addLeadButtonColor),
                    ]),
              );
            },
          ),
        ),
      ],
    );
  }
}
