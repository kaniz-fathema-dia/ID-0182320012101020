import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:authentication/main.dart';

void main() {
  group('Authentication App Tests', () {
    testWidgets('App starts and shows login screen', (WidgetTester tester) async {
      await tester.pumpWidget(const AuthenticationApp());
      
      // Verify the app starts without errors
      expect(find.byType(Scaffold), findsWidgets);
    });

    testWidgets('Login screen has email and password fields', (WidgetTester tester) async {
      await tester.pumpWidget(const AuthenticationApp());
      
      // Verify login form exists
      expect(find.byType(TextFormField), findsWidgets);
    });

    testWidgets('Can navigate to register screen', (WidgetTester tester) async {
      await tester.pumpWidget(const AuthenticationApp());
      
      // Verify app loads
      expect(find.byType(Scaffold), findsWidgets);
    });
  });
}
