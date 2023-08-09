import 'dart:math';

import 'package:flutter/material.dart';

class ColorContainer extends StatefulWidget {
  const ColorContainer({super.key});

  @override
  _ColorContainerState createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  Color? _generatedColor;

  @override
  void initState() {
    super.initState();
    _generateRandomColor();
  }

  void _generateRandomColor() {
    final random = Random();
    setState(() {
      _generatedColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('gesture_detector_element'),
      onTap: _generateRandomColor,
      child: Container(
        key: const Key('color_container'),
        color: _generatedColor,
        child: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
