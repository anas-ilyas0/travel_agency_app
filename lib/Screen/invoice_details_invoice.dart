import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/lead_details.dart';
import 'package:fab_tech_sol/login_page.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/widgets/invoice_detail_price_table.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider.dart';
import '../resources/responsive.dart';
import '../widgets/custom_header.dart';
import '../widgets/dashboardDrawer.dart';

class LeadInvoiceDetails extends StatefulWidget {
  const LeadInvoiceDetails({super.key});

  @override
  State<LeadInvoiceDetails> createState() => _LeadInvoiceDetailsState();
}

class _LeadInvoiceDetailsState extends State<LeadInvoiceDetails> with TickerProviderStateMixin{
  late TabController dashboardTabController;
  late TabController leadsTabController;
  @override
  void initState() {
    super.initState();

    dashboardTabController = TabController(length: 5, vsync: this);
    leadsTabController = TabController(length: 3, vsync: this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<UserProvider>(context, listen: false);
      provider.setDashboardTabController(dashboardTabController);
      provider.setLeadsTabController(leadsTabController);
    });
  }

  @override
  void dispose() {
    dashboardTabController.dispose();
    leadsTabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: CustomHeader(dashboardTabController: dashboardTabController,),

        // drawer: Responsive.isDesktop(context)
        //     ? null
        //     : DashboardDrawer(tabController: dashboardTabController),

        // drawer
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
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'ReadexPro',
                    fontWeight: FontWeight.w500),
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
              Flexible(
                child: const Text(
                  'Briton Consultancy & Travel Tours',
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0XFF11345A),
                      fontFamily: 'ReadexPro',
                      fontWeight: FontWeight.w500),
                ),
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
                width: context.screenWidth * 0.44,
              ),
              Flexible(
                child: const Text(
                  'Invoice Number:',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0XFF83D0E3)),
                ),
              ),
              SizedBox(
                width: context.screenWidth * 0.02,
              ),
              Flexible(
                child: const Text(
                  'In834892234',
                  style: TextStyle(
                      color: Color(0XFF11345A), fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 70), // Adds padding around the text
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Royal Road, Phoenix 00213 | Mauritius',
                  style: TextStyle(
                      fontFamily: 'ReadexPro',
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF83D0E3),
                      fontSize: 16)),
            ),
          ),
          //  Text('Royal Road, Phoenix 00213 | Mauritius',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF83D0E3))),
          SizedBox(
            height: context.screenHeight * 0.015,
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
          SizedBox(
            height: context.screenHeight * 0.02,
          ),
          const Divider(
            indent: 70,
            endIndent: 70,
          ),

        Row(
  children: [
    // "Bill To" text with padding
    const Padding(
      padding: EdgeInsets.only(left: 70), // Adds padding around the text
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Bill To',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0XFF83D0E3),
            fontSize: 16,
          ),
        ),
      ),
    ),

    // SizedBox for spacing between "Bill To" and Name
    SizedBox(
      width: context.screenWidth * 0.05,
    ),

    // Name Text: 'Beeharree Praina' with Expanded for responsiveness
    Expanded(
      child: const Text(
        'Beeharree Praina',
        style: TextStyle(
          fontFamily: 'ReadexPro',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Color(0XFF11345A),
        ),
        overflow: TextOverflow.ellipsis, // Prevent overflow
      ),
    ),

    // SizedBox for dynamic spacing
    SizedBox(
      width: context.screenWidth * 0.49,
    ),

    // "Invoice Number" text
    const Text(
      'Invoice Number:',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0XFF83D0E3),
      ),
    ),

    // SizedBox for spacing between "Invoice Number" and Date
    SizedBox(
      width: context.screenWidth * 0.02,
    ),

   
    Expanded(
      child: const Text(
        '08/15/2024',
        style: TextStyle(
          color: Color(0XFF11345A),
          fontWeight: FontWeight.bold,
        ),
        overflow: TextOverflow.ellipsis, // Prevent overflow
      ),
    ),
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
                Flexible(
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Price Per Pax',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF83D0E3)),
                    ),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth * 0.2,
                ),
                Flexible(
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Qty',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF83D0E3)),
                    ),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth * 0.2,
                ),
                Flexible(
                  child: const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Total Per Pax',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF83D0E3)),
                    ),
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
              Expanded(
                child: Padding(
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
                          child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Text(
                                'Flight Details',
                                style: TextStyle(
                                    color: AppColor.buttonTextColors,
                                    fontFamily: 'ReadexPro',
                                    fontWeight: FontWeight.w400),
                              ))),
                      SizedBox(
                        width: context.screenWidth * 0.03,
                      ),
                      Container(
                          height: context.screenHeight * 0.07,
                          width: context.screenWidth * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              'List of Passenger (s)',
                              style: TextStyle(
                                  color: AppColor.buttonTextColors,
                                  fontFamily: 'ReadexPro',
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
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
                        width: context.screenWidth * 0.03,
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Package Details',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0XFF11345A)),
                        ),
                      )),
                  SizedBox(
                    height: context.screenHeight * 0.1,
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
                        width: context.screenWidth * 0.03,
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
                        height: context.screenHeight * 0.04,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.1,
                  ),
                  Row(children: [
                    Expanded(child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'For our full terms and conditions, please',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'ReadexPro',
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF303C6C)),
                        )), ),
                   
                  
                    Expanded(
                      child:  Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'MCB',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF303C6C)),
                            ),
                          )),
                    )
                  ]),
                  SizedBox(
                    height: context.screenHeight * 0.01,
                  ),
                  Row(children: [
                    Expanded(
                      child: Row(
                        children: [
                          const Text(
                            'Visit Our Website:',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'ReadexPro',
                                fontWeight: FontWeight.w400,
                                color: Color(0XFF11345A)),
                          ),
                          Expanded(
                            child: TextButton(
                                onPressed: () {},
                                child: const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'www.britontraveltours.com',
                                    style: TextStyle(color: Color(0XFF83D0E3)),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      width: context.screenWidth * 0.015,
                    ),
                    const Expanded(
                        child:  Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Briton Consultancy & Travel Tours 000 44 25 29 104',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0XFF11345A)),
                            ))),

                    // SizedBox(
                    //   width: context.screenWidth * 0.22,
                    // ),
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
