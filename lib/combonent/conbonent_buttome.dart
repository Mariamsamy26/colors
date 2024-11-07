import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class CustomNews extends StatelessWidget {
  final String urlImage;
  final String title;
  final double width;
  final double height;
  final FlutterTts flutterTts = FlutterTts();
  final Color backgroundColor;

  CustomNews({
    this.urlImage = '',
    required this.title,
    this.width = 120,
    this.height = 150,
    this.backgroundColor = Colors.white54, // Default background color
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: backgroundColor, // Set background color here
        child: Card(
            color:backgroundColor,
          child: InkWell(
            onTap: () async {
              await flutterTts.speak(title);
            },
            child: Column(
              children: [
                urlImage.isNotEmpty
                    ? SizedBox(
                        width: width,
                        height: height,
                        child: Image.asset(
                          urlImage,
                          fit: BoxFit.contain,
                        ),
                      )
                    : Container(
                        color: backgroundColor,
                        // width: width,
                        // height: height,
                      ), // Empty space if no image
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
