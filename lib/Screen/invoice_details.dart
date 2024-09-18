import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/login_page.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/widgets/invoice_detail_price_table.dart';
import 'package:flutter/material.dart';

class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({super.key});

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

class _InvoiceDetailsState extends State<InvoiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.screenHeight * 0.03,
          ),
          Row(
            children: [
              SizedBox(
                width: context.screenWidth * 0.02,
              ),
              ElevatedButton(
                onPressed: () {
                  // Button logic here
                },
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), // Makes the button circular
                    padding: const EdgeInsets.all(
                        16), // Adds padding inside the button
                    // primary: Colors.blue,  // Background color
                    backgroundColor: Colors.white),
                child:
                    const Icon(Icons.arrow_back, size: 24, color: Colors.black),
              ),
              const Text(
                'Invoice Details',
                style: TextStyle(fontSize: 22, fontFamily: 'Readex Pro'),
              ),
            ],
          ),
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          const Divider(
            indent: 42,
            endIndent: 42,
          ),
          Row(
            children: [
              SizedBox(
                width: context.screenWidth * 0.05,
              ),
              const Text(
                'Briton Consultancy & Travel Tours',
                style: TextStyle(
                    fontSize: 22,
                    color: Color(0XFF11345A),
                    fontFamily: 'Readex Pro'),
              ),
              SizedBox(
                width: context.screenWidth * 0.1,
              ),
              SizedBox(
                height: context.screenHeight * 0.08,
                width: context.screenWidth * 0.1,
                child: Image.asset("${ImagesAssets.imagePath}BRITON.png"),
              ),
              SizedBox(
                width: context.screenWidth * 0.23,
              ),
              const Text(
                'Invoice Number:',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0XFF83D0E3)),
              ),
              SizedBox(
                width: context.screenWidth * 0.02,
              ),
              const Text(
                'In834892234',
                style: TextStyle(
                    color: Color(0XFF11345A), fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70), // Adds padding around the text
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Royal Road, Phoenix 00213 | Mauritius',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF83D0E3),
                      fontSize: 16)),
            ),
          ),
          //  Text('Royal Road, Phoenix 00213 | Mauritius',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF83D0E3))),
          SizedBox(
            height: context.screenHeight * 0.01,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70), // Adds padding around the text
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('BRN: C13117660',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF83D0E3),
                      fontSize: 16)),
            ),
          ),
          const Divider(
            indent: 70,
            endIndent: 70,
          ),
          Row(
            children: [
              const Padding(
                  padding:
                      EdgeInsets.only(left: 70), // Adds padding around the text
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Bill To',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF83D0E3),
                            fontSize: 16)),
                  )),
              SizedBox(
                width: context.screenWidth * 0.05,
              ),
              const Text(
                'Beeharree Praina',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0XFF11345A)),
              ),
              SizedBox(
                width: context.screenWidth * 0.555,
              ),
              const Text(
                'Invoice Number:',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0XFF83D0E3)),
              ),
              SizedBox(
                width: context.screenWidth * 0.02,
              ),
              const Text(
                '08/15/2024',
                style: TextStyle(
                    color: Color(0XFF11345A), fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Divider(
            indent: 70,
            endIndent: 70,
          ),
          Container(
            height: context.screenHeight * 0.08,
            width: context.screenWidth * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Price Per Pax',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0XFF83D0E3)),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth * 0.2,
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Qty',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0XFF83D0E3)),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth * 0.2,
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    'Total Per Pax',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0XFF83D0E3)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: context.screenHeight * 0.02),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: context.screenWidth * 0.18,
                    color: Colors.white,
                    child: Column(
                      children: [
                        InvoiceDetailPriceTable(
                          Text1: "Adult",
                          Text2: "000000",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "Child",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "Infant",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: context.screenWidth * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: context.screenWidth * 0.18,
                    color: Colors.white,
                    child: Column(
                      children: [
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "1",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: context.screenWidth * 0.012,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: context.screenWidth * 0.18,
                    color: Colors.white,
                    child: Column(
                      children: [
                        InvoiceDetailPriceTable(
                          Text1: "",
                          Text2: "1",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "",
                          Text2: "",
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: .5,
                        ),
                        InvoiceDetailPriceTable(
                          Text1: "",
                          Text2: "",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: context.screenHeight * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Container(
                          height: context.screenHeight * 0.07,
                          width: context.screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Text('Flight Details'))),
                      SizedBox(
                        width: context.screenWidth * 0.095,
                      ),
                      Container(
                          height: context.screenHeight * 0.07,
                          width: context.screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Text('List of Passenger (s)'))),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.02,
                  ),
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: context.screenHeight * 0.35,
                          width: context.screenWidth * 0.4,
                          color: Colors.white,
                          child: Column(
                            children: [
                              SizedBox(
                                height: context.screenHeight * 0.05,
                              ),
                              const Divider(),
                              SizedBox(
                                height: context.screenHeight * 0.05,
                              ),
                              const Divider(),
                              SizedBox(
                                height: context.screenHeight * 0.05,
                              ),
                              const Divider(),
                              SizedBox(
                                height: context.screenHeight * 0.05,
                              ),
                              const Divider(),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: context.screenWidth * 0.095,
                      ),
                      Container(
                        height: context.screenHeight * 0.35,
                        width: context.screenWidth * 0.4,
                        color: Colors.white,
                        child: Column(
                          children: [
                            SizedBox(
                              height: context.screenHeight * 0.05,
                            ),
                            const Divider(),
                            SizedBox(
                              height: context.screenHeight * 0.05,
                            ),
                            const Divider(),
                            SizedBox(
                              height: context.screenHeight * 0.05,
                            ),
                            const Divider(),
                            SizedBox(
                              height: context.screenHeight * 0.05,
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.05,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: context.screenHeight * 0.07,
                        width: context.screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                            padding: EdgeInsets.all(12),
                            child: Text('Package Details',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0XFF83D0E3))))),
                  ),
                  SizedBox(
                    width: context.screenWidth * 0.095,
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.05,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Package Details',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF11345A)),
                      )),
                  SizedBox(
                    height: context.screenHeight * 0.2,
                  ),
                  Row(
                    children: [
                      Container(
                          height: context.screenHeight * 0.07,
                          width: context.screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                'Notes',
                                style: TextStyle(
                                    color: Color(0XFF83D0E3),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ))),
                      SizedBox(
                        width: context.screenWidth * 0.098,
                      ),
                      Container(
                          height: context.screenHeight * 0.07,
                          width: context.screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                'Banking Details',
                                style: TextStyle(
                                    color: Color(0XFF83D0E3),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ))),
                      SizedBox(
                        height: context.screenHeight * 0.1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.1,
                  ),
                  Row(children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'For our full terms and conditions, please',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF11345A)),
                        )),
                    SizedBox(
                      width: context.screenWidth * 0.24,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'MCB',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF11345A)),
                        ))
                  ]),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Row(children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Visit Our Website:',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF11345A)),
                        )),
                    SizedBox(
                      width: context.screenWidth * 0.015,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'www.britontraveltours.com',
                          style: TextStyle(color: Color(0XFF83D0E3)),
                        )),
                    SizedBox(
                      width: context.screenWidth * 0.22,
                    ),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Briton Consultancy & Travel Tours 000 44 25 29 104',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF11345A)),
                        ))
                  ]),
                  SizedBox(
                    height: context.screenHeight * 0.1,
                  )
                ]),
          ),
        ],
      ),
    ));
  }
}
