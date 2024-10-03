import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class DropDownButton {
  Widget dropDownButton(String value, List<String> data,
      Function(String?)? onChanged, BuildContext context) {
    return Container(
      height: context.screenHeight * 0.07,
      width: context.screenWidth * 0.14,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.blue.withOpacity(0.2))),
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
    );
  }
}
