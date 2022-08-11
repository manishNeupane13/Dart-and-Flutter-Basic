import 'dart:io';

void main() {
  print("Enter the Princiapl :: ");
  double principal = double.parse(stdin.readLineSync()!);
  print("Enter the time :: ");
  int time = int.parse(stdin.readLineSync()!);
  print("Enter the rate :: ");
  double rate = double.parse(stdin.readLineSync()!);

  print("The simpler interest = ${principal * time * rate / 100}");
}
