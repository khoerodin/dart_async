import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group('Test sum', () {
    test('Positive', () {
      expect(sum(1, 1), equals(2));
    }, skip: 'Ini masih ada problem: yaitu bla bla bla');

    test('Negative', () {
      expect(sum(10, -2), equals(8));
    });
  });
}
