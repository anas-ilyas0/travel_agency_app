import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/widgets/dashed_line.dart';
import 'package:fab_tech_sol/widgets/mobile_lead_invoice_details_container.dart';
import 'package:fab_tech_sol/widgets/mobile_lead_invoice_per_pax_container.dart';
import 'package:fab_tech_sol/widgets/text_form_note_field.dart';
import 'package:flutter/material.dart';

class MobileLeadInvoiceDetails extends StatelessWidget {
  const MobileLeadInvoiceDetails({super.key});

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
                  'Invoice Details',
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
                    'Invoice Details',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Briton Consultancy & Travel Tours',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: readexPro,
                        color: mobileLeadText2Color),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Royal Road, Phoenix 00213 | Mauritius',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: readexPro,
                        color: mobileLeadText1Color),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'BRN: C13117660',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: readexPro,
                        color: mobileLeadText1Color),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Invoice Number:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: readexPro,
                            color: mobileLeadText1Color),
                      ),
                      Text(
                        'In1812230002',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: readexPro,
                            color: mobileLeadText2Color),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 85),
                        child: Container(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bill To:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: readexPro,
                            color: mobileLeadText1Color),
                      ),
                      Text(
                        'Beeharree Praina',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: readexPro,
                            color: mobileLeadText2Color),
                      ),
                      Container(),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Invoice Date:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: readexPro,
                            color: mobileLeadText1Color),
                      ),
                      Text(
                        '08/15/2024',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: readexPro,
                            color: mobileLeadText2Color),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 77),
                        child: Container(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price Per Pax',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: readexPro,
                                  color: mobileLeadText2Color,
                                ),
                              ),
                              const SizedBox(height: 5),
                              MobileLeadInvoiceDetailsContainer()
                                  .mobileLeadInvoiceDetailsContainer(
                                      'Adult', '1,000.00'),
                            ],
                          )),
                          const SizedBox(width: 5),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Qty',
                                style: TextStyle(
                                  fontFamily: readexPro,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: mobileLeadText2Color,
                                ),
                              ),
                              const SizedBox(height: 5),
                              MobileLeadInvoiceDetailsContainer()
                                  .mobileLeadInvoiceDetailsContainer(
                                      'Adult', '1')
                            ],
                          )),
                          const SizedBox(width: 5),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Per Pax',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: readexPro,
                                  color: mobileLeadText2Color,
                                ),
                              ),
                              const SizedBox(height: 5),
                              MobileLeadInvoicePerPaxContainer()
                                  .mobileLeadInvoicePerPaxContainer(
                                      '\$1,000.00'),
                            ],
                          )),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: MobileLeadInvoiceDetailsContainer()
                                .mobileLeadInvoiceDetailsContainer(
                                    'Child', '1,000.00'),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                              child: MobileLeadInvoiceDetailsContainer()
                                  .mobileLeadInvoiceDetailsContainer(
                                      'Child', '1')),
                          const SizedBox(width: 5),
                          Expanded(
                            child: MobileLeadInvoicePerPaxContainer()
                                .mobileLeadInvoicePerPaxContainer('\$1,000.00'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: MobileLeadInvoiceDetailsContainer()
                                .mobileLeadInvoiceDetailsContainer(
                                    'Infant', '1,000.00'),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                              child: MobileLeadInvoiceDetailsContainer()
                                  .mobileLeadInvoiceDetailsContainer(
                                      'Infant', '1')),
                          const SizedBox(width: 5),
                          Expanded(
                            child: MobileLeadInvoicePerPaxContainer()
                                .mobileLeadInvoicePerPaxContainer('\$1,000.00'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: MobileLeadInvoiceDetailsContainer()
                                .mobileLeadInvoiceDetailsContainer(
                                    'Senior Citizen', '1,000.00'),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                              child: MobileLeadInvoiceDetailsContainer()
                                  .mobileLeadInvoiceDetailsContainer(
                                      'Senior Citizen', '1')),
                          const SizedBox(width: 5),
                          Expanded(
                            child: MobileLeadInvoicePerPaxContainer()
                                .mobileLeadInvoicePerPaxContainer('\$1,000.00'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: MobileLeadInvoiceDetailsContainer()
                                .mobileLeadInvoiceDetailsContainer(
                                    'Other', '1,000.00'),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                              child: MobileLeadInvoiceDetailsContainer()
                                  .mobileLeadInvoiceDetailsContainer(
                                      'Other', '1')),
                          const SizedBox(width: 5),
                          Expanded(
                            child: MobileLeadInvoicePerPaxContainer()
                                .mobileLeadInvoicePerPaxContainer('\$1,000.00'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: DashedLine(lineColor: addLeadButtonColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flight Details',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Text(
                      'No Information available',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: greyColor.withOpacity(0.3),
                        fontFamily: readexPro,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: DashedLine(lineColor: addLeadButtonColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'List of Passenger(s)',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Text(
                      'No Information available',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: greyColor.withOpacity(0.3),
                        fontFamily: readexPro,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: DashedLine(lineColor: addLeadButtonColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Packing Details',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Text(
                      'No Information available',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: greyColor.withOpacity(0.3),
                        fontFamily: readexPro,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: DashedLine(lineColor: addLeadButtonColor),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bank Details',
                    style: TextStyle(
                        fontFamily: readexPro,
                        color: mobileLeadText2Color,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    'MCB',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: mobileLeadText2Color,
                      fontFamily: readexPro,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Briton Consultancy & Travel Tours 000 44 25 29 104',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: mobileLeadText2Color,
                      fontFamily: readexPro,
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: DashedLine(lineColor: addLeadButtonColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notes',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: mobileLeadText2Color,
                      fontFamily: readexPro,
                    ),
                  ),
                  const SizedBox(height: 7),
                  TextFormNoteField()
                      .textFormNoteField('Notes', 5, double.infinity),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'For our full terms and conditions, please',
                  style: TextStyle(
                    color: mobileLeadText2Color,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Visit Our Website: www.britontraveltours.com',
                  style: TextStyle(
                    color: mobileLeadText2Color,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    ));
  }
}
