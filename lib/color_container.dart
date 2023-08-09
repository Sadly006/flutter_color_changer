import 'dart:math';

import 'package:flutter/material.dart';

class ColorContainer extends StatefulWidget {
  const ColorContainer({super.key});

  @override
  _ColorContainerState createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  Color _currentColor = Colors.white;
  int argb = 255;

  @override
  void initState() {
    super.initState();
  }

  void _generateRandomColor() {
    final random = Random();
    setState(() {
      _currentColor = Color.fromARGB(
        argb,
        random.nextInt(argb +1),
        random.nextInt(argb +1),
        random.nextInt(argb +1),
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
        color: _currentColor,
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
