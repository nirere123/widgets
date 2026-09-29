// test/widget_test.dart

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_elevated/main.dart';

void main() {
  testWidgets('Buttons show a message when tapped', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify the starting message is shown.
    expect(find.text('Tap a button to see what happens'), findsOneWidget);

    // Tap the Basic Button.
    await tester.tap(find.text('Basic Button'));
    await tester.pump();

    // Verify the message updated.
    expect(find.text('You pressed the Basic Button!'), findsOneWidget);
  });
}