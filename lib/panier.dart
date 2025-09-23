import 'package:flutter/material.dart';

class Panier extends StatelessWidget {
  const Panier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Panier')),
      body: ListView(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Prix Total:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
