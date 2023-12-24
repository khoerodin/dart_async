import 'dart:io';

Future<String> block() async {
  sleep(Duration(seconds: 5)); // karna single thread, maka akan berhenti disini
  return "Block";
}

void main(){
  print("Before");

  block()
      .then((value) => print(value)); // tidak akan dieksekusi

  print("Done"); // tidak akan dieksekusi
}
