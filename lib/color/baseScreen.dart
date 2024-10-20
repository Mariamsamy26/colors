import 'package:flutter/material.dart';

import 'colorScreen.dart';

class BaseColorScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar :AppBar(
        centerTitle: true,
        title: Text(
          "colors",
          style: TextStyle(color: Colors.white, fontSize: 45),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black38,
                Colors.purple,
                Color.fromRGBO(231, 19, 160, 1.0),
                Color.fromRGBO(100, 231, 19, 1.0),
                Color.fromRGBO(19, 206, 231, 1.0),
                Colors.white,
              ],
              stops: [
                0.0,
                0.2,
                0.4,
                0.6,
                0.8,
                1.0,
              ],
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Container(
          color: Colors.black12,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < colors.length; i++)
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ColorScreen(colors[i]),
                        ),
                      );
                    },
                    child: Text(
                      colors[i]["Text"] !, // Accessing the key "Text"
                      style: TextStyle(
                        fontSize: 30,
                        color: colors[i]["Color"], // Accessing the key "Color"
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  final List<Map<String, dynamic>> colors = [
    {"Text": "Amber", "Color": Colors.amber},
    {"Text": "Amber Accent", "Color": Colors.amberAccent},
    {"Text": "Black", "Color": Colors.black},
    {"Text": "Blue", "Color": Colors.blue},
    {"Text": "Blue Accent", "Color": Colors.blueAccent},
    {"Text": "Blue Grey", "Color": Colors.blueGrey},
    {"Text": "Brown", "Color": Colors.brown},
    {"Text": "Cyan", "Color": Colors.cyan},
    {"Text": "Cyan Accent", "Color": Colors.cyanAccent},
    {"Text": "Deep Orange", "Color": Colors.deepOrange},
    {"Text": "Deep Orange Accent", "Color": Colors.deepOrangeAccent},
    {"Text": "Deep Purple", "Color": Colors.deepPurple},
    {"Text": "Deep Purple Accent", "Color": Colors.deepPurpleAccent},
    {"Text": "Forest Green", "Color": Colors.green[900]},
    {"Text": "Gold", "Color": Colors.amber[600]},
    {"Text": "Green", "Color": Colors.green},
    {"Text": "Green Accent", "Color": Colors.greenAccent},
    {"Text": "Indigo", "Color": Colors.indigo},
    {"Text": "Indigo Accent", "Color": Colors.indigoAccent},
    {"Text": "Lime", "Color": Colors.lime},
    {"Text": "Lime Accent", "Color": Colors.limeAccent},
    {"Text": "Light Blue", "Color": Colors.lightBlue},
    {"Text": "Light Blue Accent", "Color": Colors.lightBlueAccent},
    {"Text": "Light Green", "Color": Colors.lightGreen},
    {"Text": "Light Green Accent", "Color": Colors.lightGreenAccent},
    {"Text": "Magenta", "Color": Colors.pink[900]},
    {"Text": "Mint", "Color": Colors.green[300]},
    {"Text": "Navy", "Color": Colors.blue[900]},
    {"Text": "Olive", "Color": Colors.green[800]},
    {"Text": "Orange", "Color": Colors.orange},
    {"Text": "Peach", "Color": Colors.orange[300]},
    {"Text": "Pink", "Color": Colors.pink},
    {"Text": "Pink Accent", "Color": Colors.pinkAccent},
    {"Text": "Purple", "Color": Colors.purple},
    {"Text": "baby Purple ", "Color": Colors.purpleAccent},
    {"Text": "Red", "Color": Colors.red},
    {"Text": "Red Accent", "Color": Colors.redAccent},
    {"Text": "Scarlet", "Color": Colors.red[900]},
    {"Text": "Silver", "Color": Colors.blueGrey[300]},
    {"Text": "Teal", "Color": Colors.teal},
    {"Text": "Teal Accent", "Color": Colors.tealAccent},
    {"Text": "Turquoise", "Color": Colors.cyan[700]},
    {"Text": "Violet", "Color": Colors.deepPurple[700]},
    {"Text": "Yellow", "Color": Colors.yellow},
    {"Text": "Yellow Accent", "Color": Colors.yellowAccent},
  ];
}
