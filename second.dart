import 'package:flutter/material.dart';
import 'main.dart';
import 'package:project1/third.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel Destinations'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],

        actions: [
          IconButton(   //icon to take us to the next page
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Third()),
              );
            },
            icon: const Icon(Icons.login),
          )
        ],
      ),
      body: ListView(
        children: [
          _buildDestinationCard(
            context,
            'Paris',
            'Explore the romantic city of Paris.',
            'images/paris.jpg', // Add an image asset for each destination
          ),
          _buildDestinationCard(
            context,
            'Tokyo',
            'Experience the vibrant culture of Tokyo.',
            'images/tokyo.jpg',
          ),

          _buildDestinationCard(
            context,
            'Beirut',
            'Beirut: A vibrant city where history meets modernity, and hospitality resonates in every corner.',
            'images/lebanon.jpg',
          ),
          _buildDestinationCard(
            context,
            'Switzerland',
            'Switzerland:Switzerland, a tapestry of timeless beauty, boasts snow-capped peaks, idyllic meadows, and the enchanting allure of Swiss precision and hospitality.',
            'images/Switzerland.webp',
          ),
          _buildDestinationCard(
            context,
            'Italy',
            'Italy:where every cobblestone tells a story, Renaissance masterpieces grace every corner, and the aroma of authentic pasta fills the air, creating a timeless allure for explorers.',
            'images/Italy.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildDestinationCard(BuildContext context, String title, String description, String imagePath) {
    return GestureDetector(

      onTap: () { //when we pressed on the image example:selected paris
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected: $title')),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, //controlling the alignment of child widgets
          children: [
            Image.asset(
              imagePath,
              width: 400,

              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,//controlling the alignment of child widgets
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
