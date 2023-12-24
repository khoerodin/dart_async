Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Halo saya dari Future!');
  });
}

void main() {
  hello();
  print('Halo saya dari current!');
}
