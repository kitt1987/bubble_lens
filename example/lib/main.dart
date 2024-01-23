import 'dart:math';

import 'package:flutter/material.dart';

import 'package:bubble_lens/bubble_lens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bubble Lens',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
        color: Colors.black,
        child: BubbleLens(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            widgets: [
              for (var i = 0; i < 100; i++)
                CircleAvatar(
                  radius: Random().nextInt(100).toDouble(),
                  backgroundColor: [
                    Colors.red,
                    Colors.green,
                    Colors.blue
                  ][i % 3],
                )
            ]),
      )),
    );
  }
}
