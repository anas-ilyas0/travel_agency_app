import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

class MobileLocalSupplierDetails extends StatelessWidget {
  const MobileLocalSupplierDetails({super.key});

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
                'Supplier Details',
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
                        'Supplier Profile',
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
                    'Personal Information',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                            'Agent Name',
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
                            'Address',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '8119 Nowlin Rd',
                            style: TextStyle(
                              color: color,
                              fontSize: 12,
                              fontFamily: readexPro,
                            ),
                          ),
                        ],
                      ),
                      Column(
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
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'lucas.jones@example.com',
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: DashedLine(lineColor: addLeadButtonColor),
                ),
                Text(
                  'Bank Information',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bank Name',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'National Bank',
                          style: TextStyle(
                            color: color,
                            fontSize: 12,
                            fontFamily: readexPro,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 72),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Account #',
                          style: TextStyle(
                              fontFamily: readexPro,
                              fontSize: 12,
                              color: mobileLeadText1Color),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '321456985471200',
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
                  'Company Information',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                            'Bright Travel',
                            style: TextStyle(
                              color: color,
                              fontSize: 12,
                              fontFamily: readexPro,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Phone #',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '(052) 611-7929',
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
                            'VAT #',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'AMBX21547852',
                            style: TextStyle(
                              color: color,
                              fontSize: 12,
                              fontFamily: readexPro,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Address',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '8119 Nowlin Rd',
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
                            'Email',
                            style: TextStyle(
                                fontFamily: readexPro,
                                fontSize: 12,
                                color: mobileLeadText1Color),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            'lucas.jones@gmail.com',
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
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: DashedLine(lineColor: addLeadButtonColor),
                ),
                Text(
                  'Service Information',
                  style: TextStyle(
                      fontFamily: readexPro,
                      color: mobileLeadText2Color,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 17),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Supplier Service',
                      style: TextStyle(
                          fontFamily: readexPro,
                          fontSize: 12,
                          color: mobileLeadText1Color),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Air Tickets',
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
          ),
          const SizedBox(
            height: 35,
          ),
          AuthButtons()
              .authButtons('Delete', () {}, FontWeight.w500, Colors.red),
          const SizedBox(height: 50),
        ]),
      )),
    );
  }
}
