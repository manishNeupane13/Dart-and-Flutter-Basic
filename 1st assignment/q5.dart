import 'dart:io';

void main() {
  int product_function(int first_num, int second_num) {
    return (first_num * second_num);
  }

  int sum_function(int first_num, int second_num) {
    return first_num + second_num;
  }

  print("Enter the first number :: ");
  int? first_num = int.parse(stdin.readLineSync()!);
  print("Enter the second number");
  int? second_num = int.parse(stdin.readLineSync()!);
  print(
      "The product of $first_num and $second_num = ${product_function(first_num, second_num)}");
  print(
      "The sum of $first_num and $second_num = ${sum_function(first_num, second_num)}");
}
