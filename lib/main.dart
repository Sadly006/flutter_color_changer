import 'package:flutter/material.dart';

import 'package:flutter_color_changer/color_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Color Generator Test')),
        body: const Center(
          child: ColorContainer(),
        ),
      ),
    );
  }
}