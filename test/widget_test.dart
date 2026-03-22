import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:help_instruction_application/main.dart';

void main() {
  testWidgets('App loads and shows Home Screen', (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(const HelpApp());

    // Check AppBar title
    expect(find.text('Help & Instructions'), findsOneWidget);

    // Check if at least one help topic is visible
    expect(find.text('How to Login'), findsOneWidget);
  });
}
