import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/auth_buttons.dart';
import 'package:flutter/material.dart';

class MobileAgentDetails extends StatelessWidget {
  const MobileAgentDetails({super.key});

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
                'Agent Details',
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
                  children: [
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: Image(
                        width: 20,
                        height: 20,
                        image: AssetImage('${imageUrl}vernon_green.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Vernon Green',
                                style: TextStyle(
                                  color: color,
                                  fontSize: 12,
                                  fontFamily: readexPro,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Status:',
                                    style: TextStyle(
                                      fontSize: 9,
                                      fontFamily: readexPro,
                                      fontWeight: FontWeight.w400,
                                      color: mobileLeadText2Color,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Active',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: readexPro,
                                      fontWeight: FontWeight.w600,
                                      color: greenColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Phone No.',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: readexPro,
                              color: mobileLeadText2Color),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '(306 761-0721)',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: readexPro,
                              color: mobileLeadText2Color),
                        )
                      ],
                    ),
                    const SizedBox(width: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email:',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              fontFamily: readexPro,
                              color: mobileLeadText2Color),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          'vernon.green@example.com',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: readexPro,
                              color: mobileLeadText2Color),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location:',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      '2776 Bruce St',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: readexPro,
                          color: mobileLeadText2Color),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.screenHeight * 0.5,
          ),
          AuthButtons()
              .authButtons('Delete', () {}, FontWeight.w500, Colors.red),
          const SizedBox(height: 50),
        ]),
      )),
    );
  }
}
