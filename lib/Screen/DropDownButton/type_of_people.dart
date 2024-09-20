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
              ),]);
    
  }
}