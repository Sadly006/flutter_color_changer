// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_color_changer/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Color generator test', (WidgetTester tester) async {
    // Build your app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Find the element that handels the taps.
    final gesterDetectorElement = 
          find.byKey(const Key('gesture_detector_element'));

    // Find the element that displays the generated color.
    final colorContainer = find.byKey(const Key('color_container'));

    // Get the initial color from the container.
    final initialColor = _getColorFromContainer(colorContainer, tester);

    // Tap the container to change the color.
    await tester.tap(gesterDetectorElement);
    await tester.pump();

    // Get the new color from the container.
    final newColor = _getColorFromContainer(colorContainer, tester);

    // Verify that the color has changed.
    expect(newColor, isNot(equals(initialColor)));
  });
}

Color? _getColorFromContainer(Finder finder, WidgetTester tester) {
  final container = tester.widget<Container>(finder);

  return container.color;
}
