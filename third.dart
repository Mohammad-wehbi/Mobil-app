import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);

  @override
  ThirdState createState() => ThirdState();
}

class ThirdState extends State<Third> {
  TextEditingController destinationController = TextEditingController(); //A controller for an editable text field.
  TextEditingController dateController = TextEditingController();
  TextEditingController travelersController = TextEditingController();
  TextEditingController preferencesController = TextEditingController();

  String availabilityMessage = '';
  String selectedPreference = '';

  void checkAvailability() {
    setState(() {
      availabilityMessage = 'Availability confirmed! Proceed to payment.'; //when i click on the button they will give me this sentence

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Booking App'), //title of the page
        centerTitle: true, //Centered
        backgroundColor: Colors.grey[600],  //color of the page
      ),
    body: Container(    //wallpaper
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/wall3.webp'),
    fit: BoxFit.cover,
    ),
    ),

      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: destinationController,
              decoration: const InputDecoration(labelText: 'Destination', //before we write what its the sentence
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),

            TextField(
              controller: dateController,
              decoration: const InputDecoration(labelText: 'Select Dates',//before we write what its the sentence
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              keyboardType: TextInputType.datetime, //the input is (date)

            ),
            const SizedBox(height: 10),
            TextField(
              controller: travelersController,
              decoration: const InputDecoration(labelText: 'Number of Travelers',
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              keyboardType: TextInputType.number, //the input is (number)
            ),

            const SizedBox(height: 10),
            TextField(
              controller: preferencesController,
              decoration: const InputDecoration(labelText: 'Preferences',
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
              ),
              maxLines: 4,
            ),

            const SizedBox(height: 20),
            // Radio buttons for preferences
            Column(
              crossAxisAlignment: CrossAxisAlignment.start, //controlling the alignment of child widgets
              children: [
                const Text('Select Preference:'),
                Row(
                  children: [
                    Radio(
                      value: 'Adventure',
                      groupValue: selectedPreference,
                      onChanged: (value) {
                        setState(() {
                          var selectedPreference = value as String;
                        });
                      },
                    ),
                    const Text('Adventure'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 'Relaxation',
                      groupValue: selectedPreference,
                      onChanged: (value) {
                        setState(() {
                          selectedPreference = value as String;
                        });
                      },
                    ),
                    const Text('Relaxation'),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: checkAvailability,
              child: const Text('Check Availability'),
            ),
            const SizedBox(height: 10),
            // Button to show selected preference
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Selected Preference'),
                      content: Text(selectedPreference),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Show Selected Preference'),
            ),
            const SizedBox(height: 10),
            Text(
              availabilityMessage,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
     ),
    );
  }
}