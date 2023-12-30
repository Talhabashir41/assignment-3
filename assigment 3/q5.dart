import 'dart:io';

void main() {
  stdout.writeln("prime number");
  int number = int.parse(stdin.readLineSync()!);
  if (number < 2) {
    print("in not prime number");
    return;
  }
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      print("not prime number");
      return;
    }
  }
  print("Is prime number");
}