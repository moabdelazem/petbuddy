import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For SystemChrome

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to the home screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Hide the status bar for a full-screen experience
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App logo (replace with your logo asset)
            FlutterLogo(size: 100), // You can replace this with an Image.asset
            SizedBox(height: 20), // Spacing between logo and text
            // App name
            Text(
              'PetBuddy',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Customize the color
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Restore the system UI when the splash screen is disposed
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }
}
