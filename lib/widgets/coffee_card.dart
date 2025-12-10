import 'package:flutter/material.dart';
import '../models/coffee.dart';
import '../screens/detail_screen.dart';
import '../utils/palette.dart';

class CoffeeCard extends StatefulWidget {
  final Coffee coffee;
  final Function() onOrderChanged;

  CoffeeCard({required this.coffee, required this.onOrderChanged});

  @override
  _CoffeeCardState createState() => _CoffeeCardState();
}

class _CoffeeCardState extends State<CoffeeCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Palette.cream,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailScreen(coffee: widget.coffee),
                  ),
                );
              },
              child: Image.asset(widget.coffee.image, width: 80, height: 80),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.coffee.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Palette.coffeeBrown,
                    ),
                  ),
                  Text(
                    "\$${widget.coffee.price.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 16, color: Palette.darkBrown),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          setState(() {
                            if (widget.coffee.quantity > 0) {
                              widget.coffee.quantity--;
                              widget.onOrderChanged();
                            }
                          });
                        },
                      ),
                      Text('${widget.coffee.quantity}'),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          setState(() {
                            widget.coffee.quantity++;
                            widget.onOrderChanged();
                          });
                        },
                      ),
                    ],
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
