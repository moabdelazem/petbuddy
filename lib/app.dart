import 'package:flutter/material.dart';
import '/src/features/home/home_screen.dart';
import '/src/features/splash/splash_screen.dart';

class PetBuddyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PetBuddy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) => SplashScreen(), // Route for the splash screen
        '/home': (context) => HomeScreen(), // Route for the home screen
      },
    );
  }
}
