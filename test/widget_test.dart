import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:review/main.dart';

void main() {
  testWidgets('Review page opens and renders its prompt', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(MyApp());
    await tester.pumpAndSettle();

    expect(find.text('How was your experience with us?'), findsOneWidget);
    expect(find.text('SUBMIT'), findsOneWidget);
  });
}
