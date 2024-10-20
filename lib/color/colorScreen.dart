import 'package:flutter/material.dart';

class ColorScreen extends StatelessWidget {
  Map data = {};

  ColorScreen(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: data["Color"] !,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              data["Text"] !,
              style: TextStyle(color: Colors.white
              ,fontSize: 80),
            )
          ],
        ),
      ),
    );
  }
}
