import 'package:flutter/material.dart';
import 'package:project1/second.dart';


void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explore the World with Us'), //title
          centerTitle: true, //center
          backgroundColor: Colors.grey[600], //color
          elevation: 0, //ertifa3
          actions: [ //for the button to take us to another page
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Second()),
                );
              },
              icon: const Icon(Icons.login), //icon for the button
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              height: 250,
              color: Colors.deepPurple[100],
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center, //helps us to control the positioning of our widgets
                children: [
                  Icon(Icons.star, size: 50, color: Colors.white), //icon for the middle of the page
                  SizedBox(height: 10),
                  Text("Explore the world, collect moments.",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Container(
              height: 350,
              color: Colors.deepPurple[200],
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center, //helps us to control the positioning of our widgets
                children: [
                  Icon(Icons.favorite, size: 50, color: Colors.white),//icon for the middle of the page
                  SizedBox(height: 10),
                  Text("Roam far, collect stories.", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            Container(
              height: 250,
              color: Colors.deepPurple[300],
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center, //helps us to control the positioning of our widgets
                children: [
                  Icon(Icons.arrow_forward, size: 50, color: Colors.white),//icon for the middle of the page
                  SizedBox(height: 10),
                  Text("Go To The Next Page.", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
