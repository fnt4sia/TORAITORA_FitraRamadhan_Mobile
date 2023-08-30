import 'package:flutter/material.dart';
import '../system/inventory.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          children: [
            for (int i = 0; i < Inventory.inventoryBackpack.length; i++)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      '${Inventory.inventoryBackpack[i]}',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
