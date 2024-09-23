import 'package:fab_tech_sol/AppColor/app_color.dart';
import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/media_query_extension.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewLeadForm extends StatefulWidget {
  const AddNewLeadForm({super.key});

  @override
  State<AddNewLeadForm> createState() => _AddNewLeadFormState();
}

class _AddNewLeadFormState extends State<AddNewLeadForm> {
 // List<String> agents = ['John Doe', 'Jane Smith', 'James Bond', 'Tony Stark'];
  //List<String> filteredAgents = [];

  // TextController for the search field
  TextEditingController searchController = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   filteredAgents = agents;
  // }

  // void filterAgents(String query) {
  //   setState(() {
  //     if (query.isEmpty) {
  //       filteredAgents = agents;
  //     } else {
  //       filteredAgents = agents
  //           .where((agent) => agent.toLowerCase().contains(query.toLowerCase()))
  //           .toList();
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //  leading: const Text(''),
        title: Padding(
          padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(5),
                      minimumSize: const Size(40, 40),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.arrow_back, color: Colors.black),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Add New Lead',
                    style: TextStyle(
                        color: addLeadButtonColor,
                        fontSize: 17,

                       // fontFamily: fontFamilys),

                        fontFamily: readexPro),

                  ),
                ],
              ),
              Widgets().circularAvatar(),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5),
            const Divider(
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add New Lead Details',
                          style: TextStyle(
                              color: color,

                              fontFamily: fontFamilys,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),

                              // fontFamily: readexPro,
                              // fontWeight: FontWeight.bold,
                              // fontSize: 15),
                        ),
                        
                        const SizedBox(height: 20),
                        Text(
                          'Agent Details',
                          style: TextStyle(
                              color: color,

                              fontFamily: fontFamilys,
                              fontWeight: FontWeight.w600,
                              fontSize: 22),

                              // fontFamily: readexPro,
                              // fontWeight: FontWeight.bold,
                              // fontSize: 17),

                        ),
                        const SizedBox(height: 15),
                        Text(
                          'Agent Name',
                          style: TextStyle(
                              color: Colors.black,

                              fontSize: 16,
                              fontFamily: fontFamilys,
                              fontWeight: FontWeight.w400),

                              // fontSize: 13,
                              // fontFamily: readexPro,
                              // fontWeight: FontWeight.bold),

                        ),
                        const SizedBox(height: 5),
                        Widgets().textFormField('John Doe',context),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Image(
                        height: 200,
                        width: 200,
                        image: AssetImage('${imageUrl}form.png')),
                  ),
                
              
            
            const Divider(
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: Text(
                'Client Details',
                style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,

                    fontFamily: fontFamilys,

                  //  fontFamily: readexPro,

                    fontSize: 17),
              ),
            ),
            const SizedBox(height: 15),

          MediaQuery(
    data: MediaQuery.of(context), // Access screen size information
    child: Padding(
      padding: const EdgeInsets.only(left: 110),
      child: Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribute evenly
        crossAxisAlignment: CrossAxisAlignment.start, // Align vertically
        children: [
          Flexible( // Wraps Column1 to fill available space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Client Name',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: fontFamilys,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Widgets().textFormField('John Alen', context),
              

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Client Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: readexPro,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Widgets().textFormField('',context),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone Number',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: readexPro,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Widgets().textFormField('',context),
                    ],
                  )
                ],
              ),

            ),
          
          const SizedBox(width: 15), // Maintain spacing on smaller screens
          Flexible( // Wraps Column2 to fill available space
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Phone Number',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize:  
       13,
                    fontFamily: fontFamilys,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Widgets().textFormField('+1 (555) 987-6543',context),
              ],
            ),
          ),
        ],
      ),
    ),
  
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: SizedBox(
                width: 800,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Different rates for different category',
                      style: TextStyle(
                        color: addLeadButtonColor,
                        fontFamily: fontFamilys,

                       // fontFamily: readexPro,

                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Name',
                            style: TextStyle(
                                color: addLeadButtonColor,
                                fontSize: 16,

                                fontFamily: fontFamilys),

                              //  fontFamily: readexPro),

                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Number of People',
                            style: TextStyle(
                                color: addLeadButtonColor,
                                fontSize: 16,))),

        

                          
                        
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Budget',
                              style: TextStyle(
                                  color: addLeadButtonColor,
                                  fontSize: 16,

                                  fontFamily: fontFamilys),

                                //  fontFamily: readexPro),

                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          'Adult',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,

                              fontFamily: fontFamilys),

                            //  fontFamily: readexPro),

                        )),
                        Expanded(
                          child: Widgets().textFormField('500',context),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField('\$200',context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        Expanded(
                          child: Text('Child',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                  fontFamily: fontFamilys)),

                                 // fontFamily: readexPro)),

                        ),
                        Expanded(
                          child: Widgets().textFormField('600',context),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField('\$300',context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        Expanded(
                          child: Text('Infant',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                  fontFamily: fontFamilys)),

                                //  fontFamily: readexPro)),

                        ),
                        Expanded(
                          child: Widgets().textFormField('350',context),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField('\$150',context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        Expanded(
                          child: Text('Senior Citizen',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                  fontFamily: fontFamilys)),

                                //  fontFamily: readexPro)),

                        ),
                        Expanded(
                          child: Widgets().textFormField('500',context),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField('\$500',context),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        Expanded(
                          child: Text('Other',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,

                                  fontFamily: fontFamilys)),

                                 // fontFamily: readexPro)),

                        ),
                        Expanded(
                          child: Widgets().textFormField('500',context),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField('\$350',context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Trip Details',
                      style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,

                          fontFamily: fontFamilys,

                         // fontFamily: readexPro,

                          fontSize: 17),
                    ),
                  ),
                  Row(
                    children: [

                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Destination',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.bold),
                            ),
                            Widgets().textFormField('London',context),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Travel Date',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.bold),
                            ),
                            Widgets().textFormField('05/07/2024',context),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Departure Date',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontFamily: fontFamilys,
                                  fontWeight: FontWeight.bold),
                            ),
                            Widgets().textFormField('22/07/2024',context),
                          
                        

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Destination',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          Widgets().textFormField('',context)
                        ],
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Travel Date',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          Widgets().textFormField('',context),
                        ],
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Departure Date',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: readexPro,
                                fontWeight: FontWeight.bold),
                          ),
                          Widgets().textFormField('',context),
                        ],

                      ),
                    ],
                  ),
                      ),
                ],
              ),
            
            const Divider(thickness: 0.5),
            Padding(
              padding: const EdgeInsets.only(left: 115),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Additional Notes',
                      style: TextStyle(
                          color: color,

                          fontFamily: fontFamilys,

                         // fontFamily: readexPro,

                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  Text(
                    'Add Note',
                    style: TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 13,

                        fontFamily: fontFamilys,

                      //  fontFamily: readexPro,

                        fontWeight: FontWeight.bold),
                  ),
                  Widgets().textFormNoteField(context.screenWidth*0.58,context.screenHeight*0.25,2),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Best Way to Reach You',
                      style: TextStyle(
                          color: color,

                          fontFamily: fontFamilys,

                         // fontFamily: readexPro,

                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  Consumer<UserProvider>(
                    builder: (context, userProvider, child) {

                      return Wrap(
  spacing: context.screenWidth * 0.05, // Adds spacing between elements
  runSpacing: 10, // Adds spacing when wrapping to a new line
  children: [
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Widgets().checkBox(userProvider.isCheckedEmail, (bool? newValue) {
          userProvider.toggleCheckboxEmail(newValue ?? false);
        }),
        const SizedBox(width: 5),
        Flexible(
          child: Text(
            'Email',
            style: TextStyle(
              color: Colors.black,
              fontFamily: fontFamilys,
            ),
          ),
        ),
      ],
    ),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Widgets().checkBox(userProvider.isCheckedSMS, (bool? newValue) {
          userProvider.toggleCheckboxSMS(newValue ?? false);
        }),
        const SizedBox(width: 5),
        Flexible(
          child: Text(
            'SMS',
            style: TextStyle(
              color: Colors.black,
              fontFamily: fontFamilys,
            ),
          ),
        ),
      ],
    ),
    Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Widgets().checkBox(userProvider.isCheckedWhatsApp, (bool? newValue) {
          userProvider.toggleCheckboxWhatsApp(newValue ?? false);
        }),
        const SizedBox(width: 5),
        Flexible(
          child: Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.black,
              fontFamily: fontFamilys,
            ),
          ),
        ),
      
    
  



                       Row(
                        children: [
                          Widgets().checkBox(userProvider.isCheckedEmail,
                              (bool? newValue) {
                            userProvider.toggleCheckboxEmail(newValue ?? false);
                          }),
                          const SizedBox(width: 5),
                          Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.black, fontFamily: readexPro),
                          ),
                          const SizedBox(width: 80),
                          Widgets().checkBox(userProvider.isCheckedSMS,
                              (bool? newValue) {
                            userProvider.toggleCheckboxSMS(newValue ?? false);
                          }),
                          Text(
                            'SMS',
                            style: TextStyle(
                                color: Colors.black, fontFamily: readexPro),
                          ),
                          const SizedBox(width: 80),
                          Widgets().checkBox(userProvider.isCheckedWhatsApp,
                              (bool? newValue) {
                            userProvider
                                .toggleCheckboxWhatsApp(newValue ?? false);
                          }),
                          Text(
                            'WhatsApp',
                            style: TextStyle(
                                color: Colors.black, fontFamily: readexPro),
                          ),
                          const SizedBox(width: 5),
                        ]
      

                ,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 70),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Widgets().finalButton(
                              'Cancel', const Color(0XFFE7E7E7), () {}),
                        ),
                        const SizedBox(width: 15),
                        Flexible(
                          flex: 2,
                          child: Widgets()
                              .finalButton('Save', const Color(0XFF83D0E3), () {}),
                        )
                      ],
                    ),
                  ),])]);})]))]))])))]))])));}}
                
              
            
                
        
      
                


