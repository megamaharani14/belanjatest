import 'package:flutter/material.dart';
import 'package:navigasi/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    final FontWeight fontWeight = FontWeight.bold;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemArgs.name ?? 'No Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: fontWeight, 
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Price: ${itemArgs.price.toString()}', 
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}