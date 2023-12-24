Stream<String> streamingDab() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (1 % 2 == 0) {
      return '$i: Genap';
    } else {
      return '$i: Ganjil';
    }
  });
}

void main() {
  streamingDab();
  print('Done');
}
