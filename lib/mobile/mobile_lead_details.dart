import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

class MobileLeadDetails extends StatelessWidget {
  const MobileLeadDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
              Text(
                'Lead Details',
                style: TextStyle(
                    fontFamily: readexPro,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Container(),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Agent Details',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: Image(
                        width: 20,
                        height: 20,
                        image: AssetImage('${imageUrl}john_deo.png'),
                        fit: BoxFit.cover,
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
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                DashedLine(lineColor: addLeadButtonColor),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Client Details',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: Image(
                        width: 20,
                        height: 20,
                        image: AssetImage('${imageUrl}john_deo_adult.png'),
                        fit: BoxFit.cover,
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
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'John Doe',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          'Price Per Pex',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Adult',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '(252) 611-7929',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          'Qty',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '1',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Status',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Confirmed',
                          style: TextStyle(
                            color: greenColor,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                        const SizedBox(height: 7),
                        Text(
                          'Total Per Pex',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '1',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trip Details',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Destination',
                              style: TextStyle(
                                  fontFamily: readexPro,
                                  fontSize: 12,
                                  color: mobileLeadText1Color),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              '8713 Timber Wolf Trail',
                              style: TextStyle(
                                  fontFamily: readexPro,
                                  fontWeight: FontWeight.w400,
                                  color: color,
                                  fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Booking Details',
                              style: TextStyle(
                                  fontFamily: readexPro,
                                  fontSize: 12,
                                  color: mobileLeadText1Color),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              '09/23/2024',
                              style: TextStyle(
                                  fontFamily: readexPro,
                                  fontWeight: FontWeight.w400,
                                  color: color,
                                  fontSize: 13),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Travel Details',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 7),
                          Text(
                            '09/23/2024',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontWeight: FontWeight.w400,
                                color: color,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Packing Amount Details',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Packing Amount',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 7),
                          Text(
                            '\$232.521.00',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontWeight: FontWeight.w400,
                                color: color,
                                fontSize: 13),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Paid Amount',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 7),
                          Text(
                            '\$232.521.00',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontWeight: FontWeight.w400,
                                color: color,
                                fontSize: 13),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Outstanding Amount',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 7),
                          Text(
                            '\$232.521.00',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontWeight: FontWeight.w400,
                                color: color,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
