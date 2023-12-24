Future<String> sayHello(String name) {
  return Future.value('Hello $name');
}

Future<String> hi(String name) {
  return Future.error(Exception('Oww'));
}

void main() {
  sayHello('Adi')
      .then((value) => print(value))
      .catchError((error) => print('Error: $error'))
      .whenComplete(() => print('Selesai'));

  hi('Adi')
      .then((value) => print(value))
      .catchError((error) => print('Error: $error'))
      .whenComplete(() => print('Selesai'));

  print('Done');
}
