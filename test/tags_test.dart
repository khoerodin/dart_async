@Tags(['tag1', 'tag2', 'tag3'])

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group('Test sum', () {
    test('Positive', () {
      expect(sum(1, 1), equals(2));
    }, tags: ['tag4', 'tag5']);

    test('Negative', () {
      expect(sum(10, -2), equals(8));
    }, tags: ['tag6', 'tag7']);
  });
}
