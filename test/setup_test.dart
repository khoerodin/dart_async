import 'package:test/test.dart';

void main() {
  var data = 'Adi';

  setUp(() {
    data = 'Eko';
  });

  group('Test string', () {
    test('String fisrt', () {
      data = '$data Kurniawan';
      expect(data, 'Eko Kurniawan');
    });

    test('String second', () {
      data = '$data Firmansyah';
      expect(data, 'Eko Firmansyah');
    });
  });
}
