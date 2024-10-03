import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

class SearchTextField {
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
                          fontFamily: readexPro),
                    ),
                  ),
                ),
                hintText: 'Search Agent',
                hintStyle: TextStyle(
                    color: Colors.grey, fontFamily: readexPro, fontSize: 12),
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
}
