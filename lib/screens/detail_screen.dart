import 'package:flutter/material.dart';
import '../models/coffee.dart';
import '../utils/palette.dart';

class DetailScreen extends StatelessWidget {
  final Coffee coffee;

  DetailScreen({required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(coffee.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(coffee.image, width: 400, height: 400),
            SizedBox(height: 16),
            Text(
              coffee.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Palette.coffeeBrown,
              ),
            ),
            SizedBox(height: 8),
            Text(
              coffee.description,
              style: TextStyle(fontSize: 16, color: Palette.darkBrown),
            ),
            SizedBox(height: 16),
            Text(
              "\$${coffee.price.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Palette.lightBrown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
