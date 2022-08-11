import 'dart:io';

void main() {
  print("Enter your salary :: ");
  double salary = double.parse(stdin.readLineSync()!);
  print("Enter the number of year of service :: ");
  int year = int.parse(stdin.readLineSync()!);
  if (year > 5) {
    print("The net bonous amount = ${salary * 5 / 100}");
    print(
        "The total salary amount after bonous = ${salary + salary * 5 / 100}");
  } else {
    print("No bonous amount.");
  }
}
