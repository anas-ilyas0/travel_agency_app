import 'package:fab_tech_sol/dimensions.dart';
import 'package:flutter/material.dart';

class TypesDropDownButton
 extends StatefulWidget {
  const TypesDropDownButton
  ({super.key});

  @override
  State<TypesDropDownButton> createState() => _TypesDropDownButtonState();
}

class _TypesDropDownButtonState extends State<TypesDropDownButton> {
  bool isExpanded=false;
  @override
  Widget build(BuildContext context) {
    return 
     Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: context.screenHeight* 0.08,
                width: context.screenWidth * 0.12,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Filter', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                    Icon(isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                                  ],
                                ),
                  ),
                ),
              ),]);
    
  }
}