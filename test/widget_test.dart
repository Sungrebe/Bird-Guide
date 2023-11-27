import 'package:bird_guide/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home page test', (tester) async {
    await tester.pumpWidget(const App());

    expect(find.byKey(const Key('project_code_logo_img')), findsOneWidget);
    expect(find.text('Bird Guide'), findsOneWidget);
    expect(find.byKey(const Key('home_page_img')), findsOneWidget);
    expect(find.text('Photo ID'), findsOneWidget);
    expect(find.text('Sound ID'), findsOneWidget);
  });
}
