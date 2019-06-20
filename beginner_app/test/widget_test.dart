// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:beginner_app/main.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Test code goes here.
    await tester.pumpWidget(MyWidget(title: 'T', message: 'M'));
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');
    print(titleFinder);
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
