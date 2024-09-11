import 'package:fab_tech_sol/consts/consts.dart';
import 'package:fab_tech_sol/providers/provider.dart';
import 'package:fab_tech_sol/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNewLead extends StatefulWidget {
  const AddNewLead({super.key});

  @override
  State<AddNewLead> createState() => _AddNewLeadState();
}

class _AddNewLeadState extends State<AddNewLead> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(''),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
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
                    style: TextStyle(color: addLeadButtonColor, fontSize: 17),
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
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add New Lead Details',
                          style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Agent Details',
                          style: TextStyle(
                              color: color,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Agent Name',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Widgets().textFormField(),
                      ],
                    ),
                  ),
                  Image(
                      height: 200,
                      width: 200,
                      image: AssetImage('${imageUrl}form.png')),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: Text(
                'Client Details',
                style: TextStyle(
                    color: color, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 115),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Client Name',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Widgets().textFormField(),
                    ],
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Widgets().textFormField(),
                    ],
                  )
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
                      style: TextStyle(color: addLeadButtonColor),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Name',
                            style: TextStyle(
                                color: addLeadButtonColor, fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Number of People',
                            style: TextStyle(
                                color: addLeadButtonColor, fontSize: 16),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Budget',
                              style: TextStyle(
                                  color: addLeadButtonColor, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: Text(
                          'Adult',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        const Expanded(
                          child: Text('Child',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        const Expanded(
                          child: Text('Infant',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        const Expanded(
                          child: Text('Senior Citizen',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Row(
                      children: [
                        const Expanded(
                          child: Text('Other',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                          child: Widgets().textFormField(),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Widgets().textFormField(),
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
                          fontSize: 17),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Destination',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          Widgets().textFormField(),
                        ],
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Travel Date',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          Widgets().textFormField(),
                        ],
                      ),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Departure Date',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          Widgets().textFormField(),
                        ],
                      ),
                    ],
                  )
                ],
              ),
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
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  const Text(
                    'Add Note',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  Widgets().textFormField(maxLines: 5),
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
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                  Consumer<UserProvider>(
                    builder: (context, userProvider, child) {
                      return Row(
                        children: [
                          Widgets().checkBox(userProvider.isCheckedEmail,
                              (bool? newValue) {
                            userProvider.toggleCheckboxEmail(newValue ?? false);
                          }),
                          const SizedBox(width: 5),
                          const Text(
                            'Email',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(width: 80),
                          Widgets().checkBox(userProvider.isCheckedSMS,
                              (bool? newValue) {
                            userProvider.toggleCheckboxSMS(newValue ?? false);
                          }),
                          const Text('SMS'),
                          const SizedBox(width: 80),
                          Widgets().checkBox(userProvider.isCheckedWhatsApp,
                              (bool? newValue) {
                            userProvider
                                .toggleCheckboxWhatsApp(newValue ?? false);
                          }),
                          const Text('WhatsApp'),
                          const SizedBox(width: 5),
                        ],
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
