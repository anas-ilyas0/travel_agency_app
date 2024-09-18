import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  bool isExpanded = false;
  List<String> agents = [
    'agenr',
    'agent',
    'agent',
    'agenr',
    'agent',
    'agent',
    'agenr',
    'agent',
    'agent',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: context.screenHeight*0.075,
            
            width: context.screenWidth*0.15,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Row(
                    children: [
                      Text('Add Here', style: TextStyle(fontSize: 16)),
                      Icon(isExpanded
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down)
                    ],
                  ),
                ),
                if (isExpanded) ...[
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                     
                    },
                    child: Text('Add a new agent'), // The button's label
                  ),
                  SizedBox(height: 10),
                  Container(
                      height: 200, // Defines the height of the list area
                      child: ListView.builder(
                          itemCount: agents
                              .length, // Total number of items in the list
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5), // Adding padding between rows
                                child: Row(children: [
                                  // CircleAvatar with the first letter of the agent's name
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    child: Text(agents[index][
                                        0]), // Display first letter of the agent's name
                                  ),
                                  SizedBox(
                                      width:
                                          10), // Space between avatar and text
                                  Flexible(child: Text(agents[index])),
                                ]));
                          }))
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }
}
