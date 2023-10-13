import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home screen widget test', (WidgetTester tester) async {
    Finder photoDisplayFinder = find.byKey(const Key('photo_display'));
    Finder uploadPhotoBtnFinder = find.byKey(const Key('upload_photo_btn'));
    Finder takePhotoBtnFinder = find.byKey(const Key('take_photo_btn'));

    /* 1. Make sure that all the widgets are present on the home screen */
    // Use the following: expect(<finder>, findsOneWidget);
  });
}
