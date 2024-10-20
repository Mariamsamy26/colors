import 'package:flutter/material.dart';

class CustomNews extends StatelessWidget {
  final String urlImage;
  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;

  CustomNews({
    required this.urlImage,
    required this.title,
    required this.onTap,
    this.width = 120,
    this.height = 150,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            SizedBox(
              width: width,
              height: height,
              child: Image.asset(
                urlImage,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
