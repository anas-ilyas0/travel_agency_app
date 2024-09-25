import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/Image.dart';
import 'package:fab_tech_sol/Screen/AppText/TextStyle.dart';
import 'package:fab_tech_sol/Screen/client_detail_package.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/resources/responsive.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Widgets {
  final List<AgentsTask> agentsTaskss = [
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
    AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
        'Sialkot Punjab 51040', 'Active', ''),
  ];

  final List<AgentsTask> agentsTasks = List.generate(
      20,
      (index) => AgentsTask('John Doe', '+21 999 999 999', 'example@gmail.com',
          'Sialkot Punjab 51040', 'Active', ''));

  final List<SupplierTask> tasks = List.generate(
      20,
      (index) => SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
          'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'));
  final List<InternationalSupplierTasks> internationalSupplierTasks = [
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
    InternationalSupplierTasks('RADISSON', 'CPT', '+21 999 999 999',
        'Air Tickets', 'ABSA', 'CENTURY CITY, CAPE TOWN 8001 SA', 'Active', ''),
  ];

  Widget editDelContainer(VoidCallback onPress) {
    return Container(
      decoration: BoxDecoration(
          color: editDelContainerColor,
          border: Border.all(color: addLeadButtonColor),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: onPress, icon: const Icon(Icons.edit), color: color),
          const VerticalDivider(
            thickness: 0.8,
            indent: 5,
            endIndent: 5,
          ),
          IconButton(
              onPressed: () {},
              icon: Image(image: AssetImage('${imageUrl}delImage.png')),
              color: color),
        ],
      ),
    );
  }

  Widget agentText(String text, double fontSize) {
    return FittedBox(
      child: Text(text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w400,
              fontFamily: fontFamilys)),
    );
    // fontWeight: FontWeight.w300,
    // fontFamily: readexPro));
  }

  Widget finalButton(String text, Color color, VoidCallback onPress) {
    return SizedBox(
      height: 45,
      width: 140,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: fontFamilys, color: const Color(0XFF202529)),

            //    fontFamily: readexPro, color: const Color(0XFF202529)),
          )),
    );
  }

  Widget checkBox(bool value, Function(bool?) onChanged) {
    return Checkbox(
      value: value,
      onChanged: onChanged,
      checkColor: Colors.white,
      activeColor: Colors.black,
    );
  }

  Widget searchTextField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 400,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey.withOpacity(0.3))),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: addLeadButtonColor,
                ),
                suffixIcon: Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: addLeadButtonColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Search',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: fontFamilys),
                    ),
                  ),
                ),

                hintText: 'Search Agent',
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: fontFamilys, fontSize: 12),

                // color: Colors.grey, fontFamily: readexPro, fontSize: 12),

                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  //vertical: 22
                ),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget textFormNoteField(double width, double height, int maxLines) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))),
      child: TextFormField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: 'Add Here',
          hintStyle: TextStyle(
              color: Colors.grey, fontFamily: readexPro, fontSize: 13),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget textFormField(String text, BuildContext context) {
    return Container(
      width: 100 * context.screenWidth / 400,
      decoration: BoxDecoration(
          color: AppColor.customdropdownColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              color: AppColor.hintColor, fontFamily: fontFamilys, fontSize: 15),
    
          //  color: Colors.grey, fontFamily: readexPro, fontSize: 13),
    
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget circularAvatar({String? text, String? backgroundImage}) {
    return Row(
      children: [
        if (text != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 17, fontFamily: fontFamilys),

              //   style: TextStyle(fontSize: 17, fontFamily: readexPro),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: CircleAvatar(
            backgroundImage:
                backgroundImage != null ? AssetImage(backgroundImage) : null,
            // backgroundColor:
            //     backgroundImage != null ? color : Colors.transparent,
            radius: 15,
            child: backgroundImage == null
                ? const Icon(Icons.person, color: Colors.white)
                : null,
          ),
        ),
      ],
    );
  }

  Widget row(String firstText, String secondText) {
    return Row(
      children: [
        Expanded(
          child: Text(
            firstText,
            style: TextStyle(
              fontWeight: FontWeight.bold,

              fontFamily: fontFamilys,

              //  fontFamily: readexPro,
            ),
          ),
        ),
        Expanded(
          child: Text(
            secondText,
            style: TextStyle(
              fontFamily: fontFamilys,

              //   fontFamily: readexPro,
            ),
          ),
        ),
        const SizedBox(height: 7),
      ],
    );
  }

  Widget containerfield(
      String title, String numbers, String assetImage, BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context)
          ? context.screenWidth * 0.2
          : Responsive.isTablet(context)
              ? context.screenWidth * 0.4
              : context.screenWidth * 0.8,
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.blue.withOpacity(0.2))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                        fontFamily: 'Readex Pro',
                        fontSize: 13),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    numbers,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Readex Pro',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              child: Center(
                child: Image(
                  width: 30,
                  height: 30,
                  image: AssetImage(assetImage),
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget button(
    String text,
    VoidCallback onTap,
  ) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: addLeadButtonColor, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: SizedBox(
                height: 34,
                width: 135,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: fontFamilys,

                        //   fontFamily: readexPro,

                        color: color,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget dropDownButton(String value, List<String> data,
      Function(String?)? onChanged, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 182,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.blue.withOpacity(0.2))),
        height: 50,
        child: Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min, // Align children to start

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: SizedBox(
                  height: Responsive.isDesktop(context) ? 20 : 15,
                  width: Responsive.isDesktop(context) ? 20 : 15,
                  child: Image(
                    image: AssetImage('${imageUrl}vector.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Flexible(
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: Colors.white,
                    padding: EdgeInsets.zero,
                    isDense: true,
                    // focusColor: AppColor.background,
                    // underline: Container(),
                    value: value,
                    items: data.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,

                          style: TextStyle(
                              color: AppColor.hintColor,
                              fontFamily: fontFamilys,
                              fontWeight: FontWeight.w400,
                              fontSize: 14),

                          //  style:  TextStyle(color: AppColor.hintColor, fontFamily: readexPro,fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                      );
                    }).toList(),
                    onChanged: onChanged,
                    hint: const Text('Select an option'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget PackageDetailButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ClientDetailPackage()));
      },
      child: Container(
        height: context.screenHeight * 0.075,
        width: 120,
        decoration: BoxDecoration(
          color: AppColor.buttonTextColors,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: FittedBox(
                    child: Text(
                      "Detail",
                      style: TextStyle(
                        // decoration: TextDecoration.underline,
                        color: Color(0XFF11345A),
                        fontSize: 16,
                        fontFamily: fontFamilys,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CreateNewPackagetext(String textpackage) {
    return Text(
      '$textpackage',
      style: TextStyle(
          fontSize: 20,
          color: Color(0XFF83D0E3),
          fontFamily: fontFamilys,
          fontWeight: FontWeight.w500),
    );
  }

  Widget PackageTextNmaelist(String nameListText) {
    return Text(
      '$nameListText',
      style: TextStyle(
          fontSize: 20,
          fontFamily: fontFamilys,
          fontWeight: FontWeight.w500,
          color: Colors.black),
    );
  }

  Widget PackageDeatilNumberOfListText(
      String TextNumberlist, BuildContext context) {
    return Container(
      height: context.screenHeight * 0.08,
      width: context.screenWidth * 0.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: AppColor.packageFormColor,
            width: 0.7,
          )),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          '$TextNumberlist',
          style: TextStyle(fontSize: 14, color: Color(0XFF8897AD)),
        ),
      ),
    );
  }

  Widget buildFeature(BuildContext context, String featureText) {
    return Padding(
      padding: const EdgeInsets.only(left: 6.0),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: AppColor.blueColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child:
                  SvgPicture.asset('${ImagesAssets.imagePath}VectorRight.svg'),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              featureText,
              style: TextStyle(
                color: Colors.black,
                // fontWeight: FontWeight.bold,  Good work Usman
                fontWeight: FontWeight.w500,
                fontSize: 12,
                fontFamily: 'ReadexPro',
                //fontFamily: 'Poppin',
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget agentFilterDropDown(BuildContext context, ontap) {
    bool isExpanded = false;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        height: context.screenHeight * 0.08,
        width: context.screenWidth * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Add Here', style: TextStyle(fontSize: 16)),
                Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  Widget addNewPackageFormAgentNameAndClinetName(
      BuildContext context, String text1, String text2) {
    return  SizedBox(
      height: 80,
      width: Responsive.isMobile(context)? null:Responsive.isTablet(context)? context.screenWidth * 0.25:context.screenWidth * 0.25 ,
      child: Column(
        children: [Align(alignment: Alignment.centerLeft,
          child: Text('$text1',style: AppTextstyless.addnewinternationalsuppliersSubText)),
       TextField(
         cursorColor: Colors.white,
  decoration: InputDecoration(
    suffixIcon: Icon(Icons.arrow_drop_down),

    fillColor: Colors.white,
    filled: true,
    hintText: '$text2',hintStyle: TextStyle(color:AppColor.hintColor , fontSize: 14,fontFamily: fontFamilys,fontWeight: FontWeight.w300),

enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
      borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 1

      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
      borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 1

      ),
    ),
    border: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)), // Rounded corners
      borderSide: BorderSide(
        color: Color(0XFFD4D7E3),
        width: 1

      ),
    ),

  )
       ),
        ],
      ),
    );
  }
}
