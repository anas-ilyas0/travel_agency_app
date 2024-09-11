import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/material.dart';

class Widgets {
  Widget textFormField({int? maxLines}) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.3))),
      child: TextFormField(
        maxLines: maxLines,
        //cursorColor: addLeadButtonColor,
        decoration: const InputDecoration(
          hintText: 'Add Here',
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget circularAvatar() {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Name here', style: TextStyle(fontSize: 18)),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: CircleAvatar(
            backgroundColor: color,
            radius: 15,
            child: const Icon(Icons.person, color: Colors.white),
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
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Text(secondText),
        ),
        const SizedBox(height: 7),
      ],
    );
  }

  Widget container(
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
                    style: TextStyle(fontWeight: FontWeight.w600, color: color),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    numbers,
                    style: const TextStyle(fontWeight: FontWeight.bold),
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
                    style: TextStyle(color: color),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget dropDownButton(
      String value, List<String> data, Function(String?)? onChanged) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: Colors.blue.withOpacity(0.2))),
        height: 50,
        child: Row(
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: Image(
                image: AssetImage('${imageUrl}vector.png'),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 10),
            DropdownButton<String>(
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
}
