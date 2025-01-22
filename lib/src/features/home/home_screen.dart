import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PetBuddy'), // App bar title
        actions: [
          IconButton(
            icon: Icon(Icons.search), // Search icon
            onPressed: () {
              // Add search functionality later
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart), // Cart icon
            onPressed: () {
              // Navigate to the cart screen later
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to PetBuddy!', // Welcome message
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
