// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_sample/main.dart';

void main() {
  testWidgets('first test', (WidgetTester tester) async {
    expect(0, 0);
  });

  group('other tests', () {
    testWidgets('second test', (WidgetTester tester) async {
      expect(1, 1);
    });

    testWidgets('third test', (WidgetTester tester) async {
      expect(2, 2);
    });

    test("fourth test", () {
      expect(3, 3);
    });
  });
}
