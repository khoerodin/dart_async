import 'dart:async';

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
  Stream<String> abc = streamingDab();
  // ignore: unused_local_variable
  StreamSubscription<String> listen = abc.listen((data) {
    print(data); // akan direplace oleh listen.onData((data) {});
  });

  listen.onData((data) {
    print('Stream Subscribtion: $data');
  });

  // Tidak bisa dilisten 2 kali
  // StreamSubscription<String> listen2 = abc.listen((data) {
  //   print(data);
  // });

  print('Done');
}
