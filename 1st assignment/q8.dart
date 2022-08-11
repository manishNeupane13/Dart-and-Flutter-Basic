import 'dart:io';

void main() {
  print("Enter the first number :: ");
  int first_number = int.parse(stdin.readLineSync()!);
  print("Enter the second number :: ");
  int second_number = int.parse(stdin.readLineSync()!);

  print(
      "The qutotients of $first_number divisible by $second_number =${first_number ~/ second_number}");
  print(
      "The qutotients of $second_number divisible by $first_number =${second_number ~/ first_number}");

  print(
      "The reminder of $first_number divisible by $second_number =${first_number%second_number}");
  print(
      "The reminder of $second_number divisible by $first_number =${second_number% first_number}");
}
