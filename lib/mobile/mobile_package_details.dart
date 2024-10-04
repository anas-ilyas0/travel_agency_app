import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

class MobilePackageDetails extends StatelessWidget {
  const MobilePackageDetails({super.key});

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
                'Package Details',
                style: TextStyle(
                    fontFamily: readexPro,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Image(
                    width: 30,
                    height: 25,
                    image: AssetImage('${imageUrl}edit_icon.png')),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        'Client Details',
                        style: TextStyle(
                            fontFamily: readexPro,
                            color: mobileLeadText2Color,
                            fontSize: 12,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Status:',
                          style: TextStyle(
                            fontSize: 10,
                            fontFamily: readexPro,
                            fontWeight: FontWeight.w400,
                            color: mobileLeadText1Color,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Active',
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: readexPro,
                            fontWeight: FontWeight.w600,
                            color: greenColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    'Client Information',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage(
                                  '${imageUrl}package_supplier_client_avatar.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Company Name',
                              style: TextStyle(
                                  fontFamily: readexPro,
                                  fontSize: 12,
                                  color: mobileLeadText1Color),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Lucas Jones',
                              style: TextStyle(
                                color: color,
                                fontSize: 12,
                                fontFamily: readexPro,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'Price Per Pax',
                              style: TextStyle(
                                  fontFamily: readexPro,
                                  fontSize: 12,
                                  color: mobileLeadText1Color),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Adult, 1,000.00',
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
                        const SizedBox(height: 12),
                        Text(
                          'Qty',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Adult, 1',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                        ),
                        Text(
                          'Total Per Pax',
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: DashedLine(lineColor: addLeadButtonColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    'Agent Information',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image: AssetImage(
                                  '${imageUrl}package_agent_avatar.png'),
                              fit: BoxFit.cover,
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
                                  fontSize: 12,
                                  color: mobileLeadText1Color),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Gerald Morales',
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Container(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: DashedLine(lineColor: addLeadButtonColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    'Supplier Information',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: Image(
                              image:
                                  AssetImage('${imageUrl}package_ritthy.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Supplier Name',
                              style: TextStyle(
                                  fontFamily: readexPro,
                                  fontSize: 12,
                                  color: mobileLeadText1Color),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Ritthy Gregory',
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Container(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: DashedLine(lineColor: addLeadButtonColor),
                ),
                Text(
                  'Trip Details',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Destination',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '39 Daisy Dr',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Booking Date',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '09/23/2024',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Travel Date',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '09/30/2024',
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: DashedLine(lineColor: addLeadButtonColor),
                ),
                Text(
                  'Package Amount Details',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Package Amount',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '\$232,89.00',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
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
                        const SizedBox(height: 2),
                        Text(
                          '\$232,89.00',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
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
                        const SizedBox(height: 2),
                        Text(
                          '\$232,89.00',
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
          const SizedBox(
            height: 80,
          ),
          AuthButtons()
              .authButtons('Delete', () {}, FontWeight.w500, Colors.red),
          const SizedBox(height: 50),
        ]),
      )),
    );
  }
}
