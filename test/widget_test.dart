import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterr/main.dart';
import 'package:flutterr/models/coffee.dart';
import 'package:flutterr/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen displays coffee list and navigates to detail', (
    WidgetTester tester,
  ) async {
    // Build our Coffee app
    await tester.pumpWidget(CoffeeApp());

    // Check that Coffee list shows Espresso
    expect(find.text('Espresso'), findsOneWidget);
    expect(find.text('Cappuccino'), findsOneWidget);
    expect(find.text('Latte'), findsOneWidget);

    // Tap on Espresso card to open DetailScreen
    await tester.tap(find.text('Espresso'));
    await tester.pumpAndSettle(); // wait for navigation animation

    // Check that DetailScreen displays Espresso details
    expect(find.text('Espresso'), findsOneWidget);
    expect(find.text('Strong and bold coffee.'), findsOneWidget);
    expect(find.text('\$2.50'), findsOneWidget);
  });
}
