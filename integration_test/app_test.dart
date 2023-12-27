import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:test_practice/main.dart' as app;

void main() {
  group('Integration Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('Tap increment 10 times with 1 second delay',
        (WidgetTester tester) async {
      // Prepare the object
      app.main();
      await tester.pumpAndSettle();
      final Finder button = find.byIcon(Icons.add);

      // Write the body of the test
      for (var i = 0; i < 10; i++) {
        await tester.tap(button);
        await Future.delayed(const Duration(seconds: 1));
      }
      await tester.pumpAndSettle();

      // Define expectations
      expect(find.text('10'), findsOneWidget);
    });
    testWidgets('Tap decrement 10 times with 1 second delay',
        (WidgetTester tester) async {
      //Prepare the object
      app.main();
      await tester.pumpAndSettle();
      final Finder button = find.byIcon(Icons.remove);

      // Write the body of the test
      for (var i = 0; i < 10; i++) {
        await tester.tap(button);
        await Future.delayed(const Duration(seconds: 1));
      }
      await tester.pumpAndSettle();

      // Define expectations
      expect(find.text('-10'), findsOneWidget);
    });
  });
}
// flutter test integration_test/app_test.dart
