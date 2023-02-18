// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_intro/main.dart';

void setUser(String name, {int age = 27}) {
  debugPrint('$name的年紀為$age歲');
}

Future<String> loadData() {
  // Future.delayed(const Duration(seconds: 3), () {
  //   return "hello";
  // });
  return Future<String>(() {
    sleep(const Duration(seconds: 3));
    return "network data";
  });
}

String getNetworkData() {
  sleep(Duration(seconds: 3));
  return "network data";
}

void main() {
  debugPrint('start...');
  debugPrint(getNetworkData());
  debugPrint('end...');
}


  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());
  //
  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);
  //
  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();
  //
  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
// }
