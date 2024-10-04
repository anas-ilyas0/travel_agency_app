import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widgets/animated_search_bar.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

import 'mobile_custom_app_bar.dart';

class AgentsNavBarItem extends StatefulWidget {
  const AgentsNavBarItem({super.key});

  @override
  State<AgentsNavBarItem> createState() => _AgentsNavBarItemState();
}

class _AgentsNavBarItemState extends State<AgentsNavBarItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileCustomAppBar().mobileCustomAppBar('Agents', context),
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Agents',
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
                  AnimatedSearchBar().foldAgentField(),
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
        const SizedBox(height: 7),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('${imageUrl}vernon_green.png'),
                                ),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Agent Name',
                                  style: TextStyle(
                                      fontFamily: readexPro,
                                      fontSize: 10,
                                      color: addLeadButtonColor),
                                ),
                                Text(
                                  'Vernon Green',
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
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Text(
                            'Phone No.',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontWeight: FontWeight.w400,
                                fontSize: 8,
                                color: mobileLeadText2Color),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '(306) 761-721',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 9,
                                fontWeight: FontWeight.w500,
                                color: mobileLeadText2Color),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            'Email:',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: mobileLeadText2Color),
                          ),
                          const SizedBox(width: 7),
                          Text(
                            'vernon.green@example.com',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 9,
                                fontWeight: FontWeight.w500,
                                color: mobileLeadText2Color),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/mobile_agent_details');
                        },
                        child: Image(
                            height: 15,
                            width: 15,
                            image: AssetImage('${imageUrl}forward_icon.png')),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location:',
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
                            'Status:',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 8,
                                fontWeight: FontWeight.w400,
                                color: mobileLeadText2Color),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'Active',
                              style: TextStyle(
                                  fontFamily: readexPro,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w500,
                                  color: greenColor),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
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
