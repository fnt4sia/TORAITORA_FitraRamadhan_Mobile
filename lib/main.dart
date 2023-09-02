import 'package:flutter/material.dart';
import 'pages/register.dart';
import 'pages/home.dart';
import 'pages/inventory.dart';
import 'pages/shop.dart';
import 'pages/battle.dart';
import 'pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: registerScreen(),
      initialRoute: '/register',
      routes: {
        '/register': (context) => registerScreen(),
        '/home': (context) => HomeScreen(),
        '/inventory': (context) => InventoryScreen(),
        '/shop': (context) => ShopScreen(),
        '/battle': (context) => BattleSscreen(),
        '/profile': (context) => ProfileScreen(),
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
