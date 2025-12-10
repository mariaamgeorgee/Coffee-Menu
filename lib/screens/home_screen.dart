import 'package:flutter/material.dart';
import '../models/coffee.dart';
import '../widgets/coffee_card.dart';
import '../utils/palette.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Coffee> coffeeList = [
    Coffee(
      name: 'Espresso',
      description: 'Strong and bold coffee.',
      price: 2.5,
      image: 'assets/images/espresso.png',
    ),
    Coffee(
      name: 'Cappuccino',
      description: 'Coffee with steamed milk foam.',
      price: 3.0,
      image: 'assets/images/cappuccino.png',
    ),
    Coffee(
      name: 'Latte',
      description: 'Coffee with milk.',
      price: 3.5,
      image: 'assets/images/latte.png',
    ),
     
      Coffee(
    name: 'Milkshake',
    description: 'Cold and creamy milkshake.',
    price: 4.0,
    image: 'assets/images/milkshake.png',
  ),
  Coffee(
    name: 'Salted Caramel',
    description: 'Sweet coffee with salted caramel flavor.',
    price: 4.5,
    image: 'assets/images/salted caramel.png',
  ),
  Coffee(
    name: 'Hot Chocolate',
    description: 'Rich and warm chocolate drink.',
    price: 3.5,
    image: 'assets/images/Hot Chocolate.png',
  ),
  Coffee(
    name: 'Spanish Latte',
    description: 'Sweet latte with a touch of condensed milk.',
    price: 4.0,
    image: 'assets/images/Spanish Latte.png',
  ),
  Coffee(
    name: 'Ice Coffee',
    description: 'Chilled coffee over ice.',
    price: 3.5,
    image: 'assets/images/ice coffee.png',
  ),

  ];

  double get totalPrice {
    double total = 0;
    for (var coffee in coffeeList) {
      total += coffee.price * coffee.quantity;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Menu'),
        backgroundColor: Palette.coffeeBrown,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: coffeeList.length,
              itemBuilder: (context, index) {
                return CoffeeCard(
                  coffee: coffeeList[index],
                  onOrderChanged: () {
                    setState(() {}); // تحديث السعر الكلي
                  },
                );
              },
            ),
          ),
          Container(
            color: Palette.lightBrown,
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: \$${totalPrice.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Palette.coffeeBrown,
                  ),
                ),
                ElevatedButton(
                  onPressed: totalPrice > 0
                      ? () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Order placed!')),
                          );
                        }
                      : null,
                  child: Text('Place Order'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.coffeeBrown,
                     foregroundColor: Colors.white,
                  ),
                
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
