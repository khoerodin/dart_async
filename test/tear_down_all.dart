import 'package:test/test.dart';

void main() {
  var data = 'Adi';

  setUpAll(() => print('Start unit test'));

  setUp(() {
    data = 'Eko';
    print(data);
  });

  tearDownAll(() => print('End unit test'));

  tearDown(() => print(data));

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
