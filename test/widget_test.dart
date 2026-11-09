import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mochimelt_sweet_bar/main.dart';

void main() {
  testWidgets('Mochimelt App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MochimeltApp());
    expect(find.text('Mochimelt Sweet Bar'), findsOneWidget);
  });
}
