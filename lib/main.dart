import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 200,
                          height: 200,
                          color: Color.fromARGB(255, 4, 59, 104),
                        ))),
              ),
              Expanded(
                flex: 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    FractionallySizedBox(
                      widthFactor: 2 / 3,
                      child: Container(
                        child: const Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "NSBM",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ColoredRectangle(
                            color: Color.fromARGB(255, 116, 243, 13)),
                        SizedBox(width: 10),
                        ColoredRectangle(
                            color: const Color.fromARGB(255, 5, 197, 11)),
                        SizedBox(width: 10),
                        ColoredRectangle(color: Color.fromARGB(255, 2, 141, 7)),
                        SizedBox(width: 10),
                        ColoredRectangle(
                            color: const Color.fromARGB(255, 3, 114, 7)),
                        SizedBox(width: 10),
                        ColoredRectangle(
                            color: const Color.fromARGB(255, 2, 59, 4)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColoredRectangle extends StatelessWidget {
  final Color color;

  ColoredRectangle({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }
}
