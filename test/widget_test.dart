import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() async {});
  testWidgets("root test", (WidgetTester tester) async {
    expect(0, 0);
  });

  group('foo some group', () {
    testWidgets("test foo", (WidgetTester tester) async {
      expect(0, 0);
    });
  });

  testWidgets("other test", (WidgetTester tester) async {
    expect(0, 0);
  }, skip: true);

  group('another group', () {
    testWidgets('second (test)', (WidgetTester tester) async {
      expect(2, 2);
    });

    testWidgets('third', (WidgetTester tester) async {
      await sleep(Duration(seconds: 2));
      expect(3, 3);
    });

    group('almost group', () {
      test("fourth test", () {
        expect(3, 2);
      });

      group('last group', () {
        test("the last test", () {
          expect(3, 3);
          expect(3, 2);
        });
      });
    });
  });
}
