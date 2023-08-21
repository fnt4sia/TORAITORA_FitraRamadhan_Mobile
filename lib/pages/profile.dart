import 'package:flutter/material.dart';
import '../yes/character.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF272829),
        appBar: AppBar(
          leading: Container(),
          backgroundColor: Colors.black,
          title: Text(
            'TORAITORA',
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 3,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 175,
              color: Colors.amber,
              child: Center(
                child: Text(
                  'Image',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 350,
              color: Colors.green,
            ),
            Container(
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    label: Text(
                      'Battle',
                    ),
                    onPressed: () {
                      print('a');
                    },
                    icon: Icon(Icons.forest),
                  ),
                  ElevatedButton.icon(
                    label: Text(
                      'Shop',
                    ),
                    onPressed: () {
                      print('a');
                    },
                    icon: Icon(Icons.shopping_cart),
                  ),
                  ElevatedButton.icon(
                    label: Text(
                      'Inventory',
                    ),
                    onPressed: () {
                      print('a');
                    },
                    icon: Icon(Icons.backpack_sharp),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
