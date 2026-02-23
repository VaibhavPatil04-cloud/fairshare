import 'package:flutter_test/flutter_test.dart';

import 'package:fairshare/main.dart';

void main() {
  testWidgets('Shows Firebase not configured screen when Firebase is unavailable', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyApp(firebaseReady: false, firebaseError: 'Firebase not available in test'),
    );

    expect(find.text('Firebase not configured'), findsOneWidget);
  });
}
