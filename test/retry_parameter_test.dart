import 'package:test/test.dart';

void main() {
  test('Test failed', () {
    expect(1, 2);
  }, retry: 5);
}
