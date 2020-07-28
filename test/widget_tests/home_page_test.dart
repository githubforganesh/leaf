import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf/view/pages/home_page.dart';

void main() {
  testWidgets("Testing HomePage widgets", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: HomePage()));

    //Test: Scaffold widget
    expect(find.byType(Scaffold), findsOneWidget);

    //Test: AppBar widget
    expect(find.byType(AppBar), findsOneWidget);

    //Test: 2 Test Widgets
    expect(find.byType(Text), findsNWidgets(2));

    //Test: "Leaf" Text
    expect(find.text("Leaf"), findsOneWidget);

    //Test: "Hello World" Text
    expect(find.text("Hello World"), findsOneWidget);
  });
}
