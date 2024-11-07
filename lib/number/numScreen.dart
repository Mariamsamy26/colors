import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../combonent/conbonent_buttome.dart';
import 'dataNam.dart';

class BaseNumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: Text(
          "Numbers",
          style: GoogleFonts.sevillana(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backNum.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < numbers.length; i++)
                    CustomNews(
                      width: 300,
                      height: 200,
                      urlImage: numbers[i]["img"]!,
                      title: numbers[i]["Text"]!,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
