import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/circular_avatar.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:flutter/material.dart';

class MobileNotifications extends StatelessWidget {
  const MobileNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    'Notification',
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
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(15, 10, 30, 10),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircularAvatar().circularAvatar(5,
                                backgroundImage:
                                    '${imageUrl}notification_avatar.png'),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Olivia Gross',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: readexPro,
                                              fontSize: 14),
                                        ),
                                        Container(
                                          width: 12,
                                          height: 12,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: greenColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 7),
                                    Text(
                                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: readexPro,
                                          fontSize: 11),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      '34 mins',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: readexPro,
                                          color: mobileLeadText1Color,
                                          fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: DashedLine(
                            lineColor: greyColor.withOpacity(0.4),
                          ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
