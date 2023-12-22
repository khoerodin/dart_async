import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test('Test Say Hello', () {
    expect(sayHello('Dart'), endsWith('Dart'));
    expect(sayHello('Dart'), startsWith('Hello'));
    expect(sayHello('Dart'), equalsIgnoringCase('hello dart'));
    expect(sayHello('Dart'), isA<String>());
  });

  test('Test sum with matcher', () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(3));
  });
}
