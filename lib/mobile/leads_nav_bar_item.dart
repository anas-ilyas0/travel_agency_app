import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

import 'mobile_custom_app_bar.dart';

class LeadsNavBarItem extends StatelessWidget {
  const LeadsNavBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileCustomAppBar().mobileCustomAppBar('Leads', context),
        Padding(
          padding: const EdgeInsets.only(left: 35, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Leads Status: ',
                    style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 5),
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
              Image(
                  width: 30,
                  height: 25,
                  image: AssetImage('${imageUrl}filled_vector.png')),
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
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          child: Center(
                            child: Image(
                              width: 20,
                              height: 20,
                              image: AssetImage('${imageUrl}clients.png'),
                              fit: BoxFit.contain,
                            ),
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
                                  color: mobileLeadText1Color),
                            ),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                color: color,
                                fontSize: 10,
                                fontFamily: readexPro,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                child: Image(
                                  width: 20,
                                  height: 20,
                                  image: AssetImage('${imageUrl}clients.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Client Name',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: readexPro,
                                      color: mobileLeadText1Color),
                                ),
                                Text(
                                  'Adam Roof',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: color,
                                    fontFamily: readexPro,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, bottom: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/mobile_lead_details');
                            },
                            child: Image(
                                height: 15,
                                width: 15,
                                image:
                                    AssetImage('${imageUrl}forward_icon.png')),
                          ),
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lead No: 01',
                        style: TextStyle(
                            fontFamily: readexPro,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: mobileLeadText2Color),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Lead Date: 9/23/2024',
                        style: TextStyle(
                            fontFamily: readexPro,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: mobileLeadText2Color),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Status',
                        style: TextStyle(
                            fontFamily: readexPro,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: mobileLeadText2Color),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Confirmed',
                        style: TextStyle(
                            fontFamily: readexPro,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: greenColor),
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
