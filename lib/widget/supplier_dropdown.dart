import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../AppColor/app_color.dart';
import '../consts/consts.dart';

class SupplierDropdown extends StatefulWidget {
  const SupplierDropdown({super.key});

  @override
  State<SupplierDropdown> createState() => _SupplierDropdownState();
}

class _SupplierDropdownState extends State<SupplierDropdown> {

  @override
  Widget build(BuildContext context) {


    String? selectedValue;
    List<String> service = ['Air Ticket','Hotel Accommodation','Transfers','Tours & Excursions','Other'];

    return SizedBox(
      width: 100*  context.screenWidth/400,

      child: DropdownButtonFormField<String>(
        value: selectedValue,
        decoration: InputDecoration(
            hintText: 'Select Service',
            fillColor: AppColor.customdropdownColor,
            filled: true,
            labelStyle: TextStyle(
                color: AppColor.hintColor, fontFamily: poppin, fontSize: 14),
            contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                BorderSide(color: AppColor.borderColor3, width: 1)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColor.borderColor3, width: 1),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            alignLabelWithHint: true),
        dropdownColor: AppColor.customdropdownColor,
        isDense: true,

        items: [
          ...service.map((String agent) {
            return DropdownMenuItem<String>(
              value: agent, // This is a valid selectable value
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColor.borderColor4.withOpacity(.3),width: .5)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                        child: Text(agent, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,)),
                      ),
                    ],
                  )),
            );
          }).toList(),

        ],
        icon: null,
        menuMaxHeight: 400,
        isExpanded: true,
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });

        },
        selectedItemBuilder: (BuildContext context) {
          return service.map((String agent) {
            return SizedBox(
              height: 50,
              child: Text(
                agent,
                style: TextStyle(fontSize: 14),
              ),
            );
          }).toList();
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Select Duration";
          }
          return null;
        },
      ),
    );
  }
}
class TypePeopleDropdown extends StatefulWidget {
  const TypePeopleDropdown({super.key});

  @override
  State<TypePeopleDropdown> createState() => _TypePeopleDropdownState();
}

class _TypePeopleDropdownState extends State<TypePeopleDropdown> {
  @override
  Widget build(BuildContext context) {
    List<String> peopleType = ["Adult", "Single","Child"];
    String? selectedValue;

    return SizedBox(
      width: 100*  context.screenWidth/560,

      child: DropdownButtonFormField<String>(
        value: selectedValue,
        decoration: InputDecoration(
            hintText: 'Select Service',

            fillColor: AppColor.customdropdownColor,
            filled: true,
            labelStyle: TextStyle(
                color: AppColor.hintColor, fontFamily: poppin, fontSize: 14),
            contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                BorderSide(color: AppColor.borderColor3, width: 1)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColor.borderColor3, width: 1),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            alignLabelWithHint: true),
        dropdownColor: AppColor.customdropdownColor,
        isDense: true,

        items: [
          ...peopleType.map((String type) {
            return DropdownMenuItem<String>(
              value: type, // This is a valid selectable value
              child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColor.borderColor4.withOpacity(.3),width: .5)
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                        child: Text(type, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,)),
                      ),
                    ],
                  )),
            );
          }).toList(),

        ],
        icon: null,
        menuMaxHeight: 400,
        isExpanded: true,
        onChanged: (value) {
          setState(() {
            selectedValue = value;
          });

        },
        selectedItemBuilder: (BuildContext context) {
          return peopleType.map((String type) {
            return SizedBox(
              height: 50,
              child: Text(
                type,
                style: TextStyle(fontSize: 14),
              ),
            );
          }).toList();
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Select Duration";
          }
          return null;
        },
      ),
    );
  }
}

