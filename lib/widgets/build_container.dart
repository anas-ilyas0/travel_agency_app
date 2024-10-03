import 'package:fab_tech_sol/consts/consts.dart';
import 'package:flutter/material.dart';

String? selectedMonthClients;
String? selectedMonthLeads;
String? selectedMonthAgents;
String? selectedMonthSuppliers;

final months = <String>[
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

class BuildContainer {
  buildContainer(
      String title, String? selectedMonth, Function(String?) onMonthSelected) {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
          color: appBackgroundColor, borderRadius: BorderRadius.circular(7)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style:
                  TextStyle(fontFamily: readexPro, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: months.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Container(
                        margin: const EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                          color: selectedMonth == months[index]
                              ? addLeadButtonColor
                              : containerColor,
                          border: Border.all(color: addLeadButtonColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          title: Text(
                            months[index],
                            style: TextStyle(
                              fontFamily: readexPro,
                            ),
                          ),
                          onTap: () {
                            onMonthSelected(months[index]);
                          },
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
