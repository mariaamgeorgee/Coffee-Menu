import 'package:flutter/material.dart';
import 'screens/SplashScreen.dart';
import 'utils/palette.dart';

void main() {
  runApp(CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Menu',
      theme: ThemeData(
        primaryColor: Palette.coffeeBrown,
        scaffoldBackgroundColor: Palette.beige,
      ),
      home: SplashScreen(),
    );
  }
}
