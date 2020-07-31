import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:leaf/helper/demo_values.dart';
import 'package:leaf/view/widgets/post_card.dart';

void main() {
  testWidgets("Testing Postcard widget", (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PostCard()));

    //Test: Finds AspectRatio
    expect(find.byType(AspectRatio), findsOneWidget);

    //Test: Finds Card
    expect(find.byType(Card), findsNothing);

    //Test: Finds CircleAvatar
    expect(find.byType(CircleAvatar), findsOneWidget);

    //Test: Finds Image
    expect(find.byType(Image), findsOneWidget);

    //Test: Finds text username
    expect(find.text(DemoValues.userName), findsOneWidget);

    //Test: Finds text useremail
    expect(find.text(DemoValues.userEmail), findsOneWidget);

    //Test: Finds text post title
    expect(find.text(DemoValues.postTitle), findsOneWidget);

    //Test: Finds post summary
    expect(find.text(DemoValues.postSummary), findsOneWidget);

    //Test: Finds post time
    expect(find.text(DemoValues.postTime), findsOneWidget);
  });
}
