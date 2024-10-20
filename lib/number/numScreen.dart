import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../combonent/conbonent_buttome.dart';

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
            Image.asset('assets/images/backNum.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,),
            Container(
              color: Colors.transparent,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < num.length; i++)
                      CustomNews(
                        width: 300,
                        height: 200,
                        urlImage: num[i]["img"]!,
                        title: num[i]["Text"]!,
                        onTap: () {},
                      ),
                  ],
                ),
              ),
            ),
          ],
      ),
    );
  }

  final List<Map<String, dynamic>> num = [
    {
      "Text": "One",
      "img": "assets/images/1.png",
    },
    {
      "Text": "two",
      "img": "assets/images/2.png",
    },
    {
      "Text": "three",
      "img": "assets/images/3.png",
    },
    {
      "Text": "four",
      "img": "assets/images/4.png",
    },
    {
      "Text": "five",
      "img": "assets/images/5.png",
    },
    {
      "Text": "six",
      "img": "assets/images/6.png",
    },
    {
      "Text": "seven",
      "img": "assets/images/7.png",
    },
    {
      "Text": "eight",
      "img": "assets/images/8.png",
    },
    {
      "Text": "nine",
      "img": "assets/images/9.png",
    },
    {
      "Text": "ten",
      "img": "assets/images/10.png",
    },
  ];
}
