import 'package:flutter/material.dart';
import 'package:fab_tech_sol/Screen/international_suppliers_details.dart';
import 'package:fab_tech_sol/ui/supplier_widget.dart'; // Import your SupplierScreen here

class SupplierScreenIndexs extends StatefulWidget {
  const SupplierScreenIndexs({super.key});

  @override
  _SupplierScreenIndexsState createState() => _SupplierScreenIndexsState();
}

class _SupplierScreenIndexsState extends State<SupplierScreenIndexs> {
  String selectedOption = 'Supplier'; // Default selected option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // PopupMenuButton to select between Local and International Supplier inside the Supplier tab
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              PopupMenuButton<String>(
                onSelected: (String value) {
                  setState(() {
                    selectedOption = value; // Update the selected option
                  });
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem<String>(
                      value: 'Supplier',
                      child: Text('Local Supplier'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'International Supplier',
                      child: Text('International Supplier'),
                    ),
                  ];
                },
                icon: const Icon(Icons.more_vert), // Icon for the menu button
              ),
            ],
          ),
          
          Expanded(
            child: selectedOption == 'Supplier'
                ? const SupplierScreen() // Show Local Supplier Screen
                : const InternationalSuppliersDetails(), // Show International Supplier Screen
          ),
        ],
      ),
    );
  }
}
