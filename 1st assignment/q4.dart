
import 'dart:io';

void main() {
  double bill_calculator(double unitfee, int unit) {
    return unitfee * unit;
  }

  print("Enter the number of unit in electrcity bill :: ");
  int? unit_num = int.parse(stdin.readLineSync()!);
  double? final_amount;
  if (unit_num <=100) {
    print("The bill amount =${bill_calculator(0.0, unit_num)}");
  } else if (unit_num > 100 && unit_num - 100 <=100) {
    print("The bill amount = ${bill_calculator(5.0,unit_num-100)}");
  } else {
    print(
        "The bill amount = ${bill_calculator(5.0,100)+bill_calculator(10.0, unit_num-200)}");
  }
}
