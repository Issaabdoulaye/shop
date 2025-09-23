import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Notifications')),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(25),
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: Color.fromARGB(255, 48, 75, 199),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Notifications",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 48, 75, 199),
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                size: 30,
                color: Color.fromARGB(255, 48, 75, 199),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
