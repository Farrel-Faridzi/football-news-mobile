import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Import your main app file. 
// CHANGE 'football_news' to match your actual package name if different.
import 'package:football_news/main.dart'; 

void main() {
  testWidgets('App starts correctly smoke test', (WidgetTester tester) async {
    // 1. Load the app
    await tester.pumpWidget(const MyApp());

    // 2. Wait for any animations to settle
    await tester.pumpAndSettle();

    // 3. Simple check: Verify that we have at least one specific widget
    // For example, check if there is an AppBar or a Scaffold
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}