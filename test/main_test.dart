import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf/main.dart';
import 'package:leaf/view/pages/home_page.dart';

void main() {
  testWidgets("Testing Leaf Widgets", (WidgetTester tester) async {
    await tester.pumpWidget(Leaf());

    //Test: Material App Widget Presence
    expect(find.byType(MaterialApp), findsOneWidget);

    //Test: Home Page Widget Presence
    expect(find.byType(HomePage), findsOneWidget);
  });
}
