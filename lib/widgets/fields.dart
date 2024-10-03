import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/widgets/capitalized_first_letter.dart';
import 'package:flutter/material.dart';

class Fields {
  Widget authField(
    BuildContext context,
    String text, {
    TextInputType? textInputType,
    String suffixText = '',
    Icon? icon,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: greyColor.withOpacity(0.3))),
      child: TextFormField(
        keyboardType: textInputType,
        inputFormatters: [CapitalizeFirstLetterInputFormatter()],
        decoration: InputDecoration(
          suffix: Text(suffixText),
          suffixIcon: icon,
          suffixIconColor: greyColor,
          hintText: text,
          hintStyle:
              TextStyle(color: greyColor, fontFamily: readexPro, fontSize: 13),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget emailField(
    String text, {
    TextInputType? textInputType,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: greyColor.withOpacity(0.3))),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: text,
          hintStyle:
              TextStyle(color: greyColor, fontFamily: readexPro, fontSize: 13),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget passwordField(
    BuildContext context,
    bool obscureText,
    VoidCallback onPress,
    Icon icon,
  ) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: greyColor.withOpacity(0.3)),
      ),
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: onPress,
            icon: icon,
          ),
          suffixIconColor: greyColor,
          hintText: 'Password',
          hintStyle: TextStyle(
            color: greyColor,
            fontFamily: readexPro,
            fontSize: 13,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Widget dropDownField(
      String hintText, List<String> values, Function(String?)? onChange) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: greyColor.withOpacity(0.3))),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DropdownButtonFormField<String>(
            icon: Icon(
              Icons.arrow_drop_down,
              color: mobileArrowDropDownColor,
            ),
            iconSize: 30,
            decoration: const InputDecoration(border: InputBorder.none),
            isDense: true,
            isExpanded: true,
            hint: Text(
              hintText,
              style: TextStyle(
                  color: greyColor, fontFamily: readexPro, fontSize: 13),
            ),
            items: values
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                            color: greyColor,
                            fontFamily: readexPro,
                            fontSize: 13),
                      ),
                    ))
                .toList(),
            onChanged: onChange,
          ),
        ),
      ),
    );
  }
}
