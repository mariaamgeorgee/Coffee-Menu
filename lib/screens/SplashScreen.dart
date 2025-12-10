import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../utils/palette.dart';

class SplashScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
children: [
  SizedBox.expand(
    child: Image.asset(
      'assets/images/cover.png',
      fit: BoxFit.cover,
    ),
  ),
  Column(
    children: [
      Spacer(flex: 25), 
      Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
            );
          },
          child: Text('Show Menu'),
          style: ElevatedButton.styleFrom(
            backgroundColor:  const Color.fromARGB(255, 213, 212, 200),
            foregroundColor: Palette.coffeeBrown,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 24),
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Spacer(flex: 6), 
    ],
  ),
],
),

  );
}
}
