Future<String> name() {
  return Future.value('Andi Kurniawan');
}

void main() {
  name()
      .then((value) => value.split(' '))
      .then((value) => value.reversed)
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((value) => value.join(' '))
      .then((value) => print(value));
  
  print('Done');
}
