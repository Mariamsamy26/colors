import 'package:flutter/material.dart';

import '../combonent/conbonent_buttome.dart';
import 'dataColo.dart';

class ColorScreen extends StatelessWidget {

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

      body: Container(
        color: Colors.black12,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (int i = 0; i < colors.length; i++)
                CustomNews(
                  width: 300,
                  height: 200,
                  title: colors[i]["Text"] ,
                  backgroundColor: colors[i]["Color"],
                ),

            ],
          ),
        ),
      ),
    );
  }

}
