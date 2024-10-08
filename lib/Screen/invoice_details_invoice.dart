import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/mobile/invoice_details.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/widget/invoice_detail_price_table.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider.dart';

class LeadInvoiceDetails extends StatefulWidget {
  const LeadInvoiceDetails({super.key});

  @override
  State<LeadInvoiceDetails> createState() => _LeadInvoiceDetailsState();
}

class _LeadInvoiceDetailsState extends State<LeadInvoiceDetails>
    with TickerProviderStateMixin {
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
    return Responsive.isDesktop(context) || Responsive.isTablet(context)? Scaffold(
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
           // BackButtonAvatar()
             // BackButtonAvatar(text1: 'Incoice Details',),
             SizedBox(width: context.screenWidth*0.025,),
              ElevatedButton(
                onPressed: () {
                 Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  
                    shape: const CircleBorder(), // Makes the button circular
                    padding: const EdgeInsets.all(
                        10), // Adds padding inside the button
                    // primary: Colors.blue,  // Background color
                    backgroundColor: Colors.white),
                child:
                    const Icon(Icons.arrow_back, size: 18, color: Colors.black),
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
         
          const Divider(
            indent: 42,
            endIndent: 42,
          ),
          Row(
            children: [
              SizedBox(width:Responsive.isDesktop(context)? context.screenWidth * 0.05:context.screenWidth* 0.08),
              Flexible(
                flex: 9,
                child: Text(
                  'Briton Consultancy & Travel Tours',
                  style: TextStyle(
                      fontSize: Responsive.isDesktop(context)?28:18,
                      color: const Color(0XFF11345A),
                      fontFamily: fontFamilys,
                      fontWeight:Responsive.isDesktop(context) ?FontWeight.w500:FontWeight.w500),
                ),
              ),
              SizedBox(width: context.screenWidth * 0.09),
              SizedBox(
                height:Responsive.isDesktop(context)? context.screenHeight * 0.08:context.screenHeight*0.07,
                width:Responsive.isDesktop(context)?  context.screenWidth * 0.1:context.screenWidth*0.08,
                child: Image.asset("${ImagesAssets.imagePath}BRITON.png"),
              ),
              SizedBox(
                width: context.screenWidth * 0.09,
              ),
               Flexible(
                flex: 3,
                child: Text(
                  'Invoice Number:',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: fontFamilys,
                    fontSize: Responsive.isDesktop(context)?18:12,
                      fontWeight:Responsive.isDesktop(context)? FontWeight.w400:FontWeight.w400, color: Color(0XFF83D0E3)),
                ),
              ),
              SizedBox(width: context.screenWidth * 0.02),
               Flexible(
                flex: 2,
                child: Text(
                  '4043',
                  
                  style: TextStyle(
                    fontFamily: fontFamilys,
                  fontSize:Responsive.isDesktop(context)?18:16,
                      color: Color(0XFF11345A), fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),

          SizedBox(
            height:Responsive.isDesktop(context)? context.screenHeight * 0.02:context.screenHeight * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70), // Adds padding around the text
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Royal Road, Phoenix 00213 | Mauritius',
                  style: TextStyle(
                      fontFamily: fontFamilys,
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF83D0E3),
                      fontSize:Responsive.isDesktop(context)? 16:13)),
            ),
          ),
          //  Text('Royal Road, Phoenix 00213 | Mauritius',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0XFF83D0E3))),
          SizedBox(
            height: context.screenHeight * 0.015,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70), // Adds padding around the text
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('BRN: C13117660',
                  style: TextStyle(
                      fontFamily: fontFamilys,
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF83D0E3),
                      fontSize: Responsive.isDesktop(context)?16:12)),
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
              
              Padding(
                padding:
                    const EdgeInsets.only(left: 70), 
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Bill To',
                    style: TextStyle(
                      fontFamily: fontFamilys,
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF83D0E3),
                      fontSize:Responsive.isDesktop(context)? 16:13,
                    ),
                  ),
                ),
              ),

           
              SizedBox(
                width:10,
              ),

            
               Expanded(
                flex: 2,
                child: Text(
                  'Beeharree Praina',
                  style: TextStyle(
                    fontFamily: 'ReadexPro',
                    fontWeight: FontWeight.w500,
                    fontSize: Responsive.isDesktop(context)? 16:13,
                    color: Color(0XFF11345A),
                  ),
                  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
              ),

             
              SizedBox(
                width: Responsive.isDesktop(context)? context.screenWidth *0.01 : context.screenWidth*  0.005,
              ),

             
               Flexible(
                flex: 2,
                child: Text(
                  'Invoice Number:',
                  style: TextStyle(
                    fontFamily: fontFamilys,
                    fontWeight: FontWeight.w400,
                    fontSize:Responsive.isDesktop(context)?16:13,
                    color: Color(0XFF83D0E3),
                  ),
                ),
              ),

             
              SizedBox(
                width: context.screenWidth * 0.02,
              ),

               Flexible(
                flex: 1,
                child: Text(
                  '08/15/2024',
                  style: TextStyle(
                    fontFamily: fontFamilys,
                    fontSize: Responsive.isDesktop(context)?16:13,
                    color: Color(0XFF11345A),
                    fontWeight: FontWeight.w400,
                  ),
                //  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
              ),
              SizedBox(width: context.screenWidth*0.02,),
               
               Flexible(
                flex: 2,
                child: Text(
                  'Invoice Number:',
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context)? 16:13,
                    fontFamily:fontFamilys ,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF83D0E3),
                  ),
                ),
              ),

             
              SizedBox(
                width: context.screenWidth * 0.02,
              ),

              Flexible(
                flex: 1,
                child: Text(
                  '08/15/2024',
                  style: TextStyle(
                    fontFamily:fontFamilys ,
                    fontSize:Responsive.isDesktop(context)? 16:13,
                    color: Color(0XFF11345A),
                    fontWeight: FontWeight.w400,
                  ),
                 // overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
              ),
            ],
          ),

          const Divider(
            indent: 70,
            endIndent: 70,
          ),
          Container(
            height:Responsive.isDesktop(context) ?context.screenHeight * 0.08:context.screenHeight*0.06,
            width: Responsive.isDesktop(context) ?context.screenWidth * 0.9:context.screenWidth*0.85,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Price Per Pax',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: fontFamilys,
                          color: const Color(0XFF83D0E3)),
                    ),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth * 0.2,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Qty',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: fontFamilys,
                          color: const Color(0XFF83D0E3)),
                    ),
                  ),
                ),
                SizedBox(
                  width: context.screenWidth * 0.2,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Total Per Pax',
                      style: TextStyle(
                          fontFamily: fontFamilys,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF83D0E3)),
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
                    width: Responsive.isDesktop(context) ?context.screenWidth * 0.18:context.screenWidth*0.2,
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
                    width: Responsive.isDesktop(context) ?context.screenWidth * 0.18:context.screenWidth*0.2,
                    color: Colors.white,
                    child: Column(
                      children: [
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "1",
                        ),
                        Divider(
                            color: Colors.grey,
                            thickness:Responsive.isDesktop(context)? 0.5:1,
                          ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                        Divider(
                            color: Colors.grey,
                            thickness:Responsive.isDesktop(context)? 0.5:1,
                          ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                        Divider(
                            color: Colors.grey,
                            thickness:Responsive.isDesktop(context)? 0.5:1,
                          ),
                        InvoiceDetailPriceTable(
                          Text1: "ABCD",
                          Text2: "",
                        ),
                        Divider(
                            color: Colors.grey,
                            thickness:Responsive.isDesktop(context)? 0.5:1,
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
             
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: Responsive.isDesktop(context) ?context.screenWidth * 0.18:context.screenWidth*0.2,
                      color: Colors.white,
                      child: Column(
                        children: [
                          InvoiceDetailPriceTable(
                            Text1: "",
                            Text2: "1",
                          ),
                           Divider(
                            color: Colors.grey,
                            thickness:Responsive.isDesktop(context)? 0.5:1,
                          ),
                          InvoiceDetailPriceTable(
                            Text1: "",
                            Text2: "",
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness:Responsive.isDesktop(context)? 0.5:1,
                          ),
                          InvoiceDetailPriceTable(
                            Text1: "",
                            Text2: "",
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness:Responsive.isDesktop(context)? 0.5:1,
                          ),
                          InvoiceDetailPriceTable(
                            Text1: "",
                            Text2: "",
                          ),
                          Divider(
                            color: Colors.grey,
                            thickness:Responsive.isDesktop(context)? 0.5:1,
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
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                'Flight Details',
                                style: TextStyle(
                                    color: AppColor.buttonTextColors,
                                    fontFamily: fontFamilys,
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
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              'List of Passenger (s)',
                              style: TextStyle(
                                  color: AppColor.buttonTextColors,
                                  fontFamily: fontFamilys,
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
                        child:  Padding(
                            padding: const EdgeInsets.all(12),
                            child: Text('Package Details',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: fontFamilys,
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0XFF83D0E3))))),
                  ),
                  SizedBox(
                    width: context.screenWidth * 0.095,
                  ),
                  SizedBox(
                    height: context.screenHeight * 0.05,
                  ),
                   Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          'Package Details',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily:fontFamilys ,
                              fontWeight: FontWeight.w400,
                              color: const Color(0XFF11345A)),
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
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                'Notes',
                                style: TextStyle(
                                    color: const Color(0XFF83D0E3),
                                    fontSize: 16,
                                    fontFamily: fontFamilys,
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
                          child:  Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                'Banking Details',
                                style: TextStyle(
                                  fontFamily: fontFamilys,
                                    color: const Color(0XFF83D0E3),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
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
                    Expanded(
                      child:  Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'For our full terms and conditions, please',
                            style: TextStyle(
                                fontSize: Responsive.isDesktop(context)? 18:14,
                                fontFamily: fontFamilys,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF303C6C)),
                          )),
                    ),
                    Expanded(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'MCB',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0XFF303C6C)),
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
                          Text(
                            'Visit Our Website:',
                            style: TextStyle(
                                fontSize:Responsive.isDesktop(context)? 18:14 ,
                                fontFamily: fontFamilys,
                                fontWeight: FontWeight.w400,
                                color: const Color(0XFF11345A)),
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
                     Expanded(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Briton Consultancy & Travel Tours 000 44 25 29 104',
                              style: TextStyle(
                                  fontSize:Responsive.isDesktop(context)? 18:14,
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
    )) : MobileLeadInvoiceDetails();
  }
}
