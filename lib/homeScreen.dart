import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color/colorScreen.dart';
import 'number/numScreen.dart';

class HomeScreen extends StatelessWidget {

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: Text(
          "Let's learn",
          style: GoogleFonts.sevillana(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.teal,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.transparent,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Column(
                children: [
                  for (int i = 0; i < buttons.length; i++)
                    InkWell(
                      onTap: () {
                        if (buttons[i]["pass"] != null) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => buttons[i]["pass"],
                            ),
                          );
                        } else {
                          // Handle case where "pass" is null
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("No screen available"),
                            ),
                          );
                        }
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            width: 150,
                            height: 120,
                            child: Image.asset(
                              buttons[i]["img"]!,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            buttons[i]["Text"]!,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> buttons = [
    {
      "Text": "Colors",
      "img": "assets/images/ColorPalette.png",
      "pass": ColorScreen(),
    },
    {
      "Text": "Numbers",
      "img": "assets/images/numbers.png",
      "pass": BaseNumScreen(),
    },
  ];
}
