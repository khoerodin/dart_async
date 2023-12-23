@TestOn('windows || mac-os || linux')

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group('Test sum', () {
    test('Positive', () {
      expect(sum(1, 1), equals(2));
    });

    test('Negative', () {
      expect(sum(10, -2), equals(8));
    }, testOn: 'windows');
  }, testOn: 'windows || mac-os');
}
