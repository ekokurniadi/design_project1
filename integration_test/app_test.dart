import 'package:flutter/material.dart';
import 'package:flutter_pos/app.dart';
import 'package:flutter_pos/gen/strings.g.dart';
import 'package:flutter_pos/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await App.init();
  });

  group('e2e-test', () {
    testWidgets(
      'tap on the floating action button, open realm studio manager',
      (tester) async {
        await tester.pumpWidget(TranslationProvider(child: const MyApp()));

        expect(find.byKey(const ValueKey('modeKey')), findsOneWidget);

        final fab = find.byType(FloatingActionButton);

        await tester.tap(fab);
        await tester.pumpAndSettle();

        expect(find.text('Realm Studio Manager'), findsOneWidget);
      },
    );
  });
}
