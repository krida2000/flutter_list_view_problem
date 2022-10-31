// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:list_view_sample/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('second', skipOffstage: false));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    expect(
      find.text('second', skipOffstage: false),
      findsNothing,
    );

    await tester.tap(find.text('first', skipOffstage: false));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    expect(
      find.text('first', skipOffstage: false),
      findsNothing,
    );
  });
}
