import 'package:fab_tech_sol/Screen/client_detail_package.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:fab_tech_sol/ui/tasks_data_source.dart';
import 'package:flutter/material.dart';

class Widgets {
  final List<AgentsTask> agentsTasks = [
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

  final List<SupplierTask> tasks = [
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
    SupplierTask('BIRAM TOUR GUIDE', 'Naseeb', 'Supplier Address',
        'Hotel Accommodation', 'Active', '', 'Sialkot Punjab'),
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

  Widget agentFormText(String text, double fontSize) {
    return Expanded(
      child: Text(text,
          style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.w300,
              fontFamily: fontFamily)),
    );
  }

  Widget agentText(String text, double fontSize) {
    return Text(text,
        style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w300,
            fontFamily: fontFamily));
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
                fontFamily: fontFamily, color: const Color(0XFF202529)),
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
            height: 44,
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
                          fontFamily: fontFamily),
                    ),
                  ),
                ),
                hintText: 'Search Agent',
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: fontFamily, fontSize: 12),
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

  Widget textFormNoteField(int maxLines, double width) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))),
      child: TextFormField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: 'Add Here',
          hintStyle: TextStyle(
              color: Colors.grey, fontFamily: fontFamily, fontSize: 13),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget textFormField() {
    return Container(
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Add Here',
          hintStyle: TextStyle(
              color: Colors.grey, fontFamily: fontFamily, fontSize: 13),
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
              style: TextStyle(fontSize: 17, fontFamily: fontFamily),
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
              fontFamily: fontFamily,
            ),
          ),
        ),
        Expanded(
          child: Text(
            secondText,
            style: TextStyle(
              fontFamily: fontFamily,
            ),
          ),
        ),
        const SizedBox(height: 7),
      ],
    );
  }

  Widget containerfield(
      String title, String numbers, String assetImage, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        width: context.screenWidth * 0.2,
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.blue.withOpacity(0.2))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                        fontFamily: 'Readex Pro',
                        fontSize: 13),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    numbers,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Readex Pro',
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Image(
                        width: 30,
                        height: 30,
                        image: AssetImage(assetImage),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget button(String text, VoidCallback onTap) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          color: addLeadButtonColor, borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: SizedBox(
                height: 35,
                width: 145,
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(color: color, fontWeight: FontWeight.bold),
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
        width: context.screenWidth * 0.14,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.blue.withOpacity(0.2))),
        height: 50,
        child: Row(
          children: [
            SizedBox(
              height: context.screenHeight * 0.2,
              width: 30,
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Image(
                  image: AssetImage('${imageUrl}vector.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 10),
            DropdownButton<String>(
              dropdownColor: Colors.white,
              isDense: true,
              underline: Container(),
              value: value,
              items: data.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(color: Colors.grey),
                  ),
                );
              }).toList(),
              onChanged: onChanged,
              hint: const Text('Select an option'),
            )
          ],
        ),
      ),
    );
  }

  Widget PackageDetailButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ClientDetailPackage()));
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Text(
                "Detail",
                style: TextStyle(
                  color: Color(0XFF11345A),
                  fontSize: 16,
                  fontFamily: 'Readex Pro bold',
                  fontWeight: FontWeight.bold,
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
    );
  }

  Widget CreateNewPackagetext(String textpackage) {
    return Text(
      '$textpackage',
      style: TextStyle(
          fontSize: 18,
          color: Color(0XFF83D0E3),
          fontFamily: 'Readex Pro bold',
          fontWeight: FontWeight.w300),
    );
  }

  Widget PackageTextNmaelist(String nameListText) {
    return Text(
      '$nameListText',
      style: TextStyle(
          fontSize: 18,
          fontFamily: 'Readex Pro bold',
          fontWeight: FontWeight.w300,
          color: Colors.black),
    );
  }

  Widget PackageDeatilNumberOfListText(
      String TextNumberlist, BuildContext context) {
    return Container(
      height: context.screenHeight * 0.06,
      width: context.screenWidth * 0.2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Color(0XFF70707033),
            width: 1,
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8),
        child: Text(
          '$TextNumberlist',
          style: TextStyle(fontSize: 14, color: Color(0XFF8897AD)),
        ),
      ),
    );
  }
}
