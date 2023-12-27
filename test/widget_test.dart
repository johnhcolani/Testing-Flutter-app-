import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_practice/main.dart';

void main() {
  group('Testing Counter Widget', () {});
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Prepare the object
    await tester.pumpWidget(const MyApp());

    // Write the body of the test
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Define expectations
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Counter Decrement smoke test', (WidgetTester tester) async {
    // Prepare the object
    await tester.pumpWidget(const MyApp());

    // Write the body of the test
    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    // Define expectations

    expect(find.text('-1'), findsOneWidget);
  });
}
