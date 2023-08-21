import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/profile.dart';
import 'pages/inventory.dart';
import 'pages/shop.dart';
import 'pages/battle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: registerScreen(),
      initialRoute: '/registerpage',
      routes: {
        '/register': (context) => registerScreen(),
        '/profile': (context) => ProfileScreen(),
        '/inventory': (context) => InventoryScreen(),
        '/shop': (context) => ShopScreen(),
        '/battle': (context) => BattleSscreen(),
      },
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 189, 188, 188),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
