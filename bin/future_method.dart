Future<String> hello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Halo, saya $name, saya dari masa depan';
  });
}

Future<String> hi(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    throw Error();
  });
}

Future<String> salam(String name) {
  return Future.error(Exception('Oow'));
}

void main() {
  hello('Adi').then((value) => print(value));

  hi('Adi') // error
      .onError((error, stackTrace) =>
          'Fallback') // ketika error datanya diubah jadi Fallback
      .then((value) => print(value)) // value menjadi Fallback
      .whenComplete(() => print('Selesai')); // gagal atau sukses, ini tetap dieksekusi

  salam('Bambang')
      .then((value) => print(value))
      .catchError((error) => print('Error bang: $error'));

  print('Halo saya dari current!');
}
