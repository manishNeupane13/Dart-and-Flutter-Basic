import 'dart:io';

void main() {
  print("Enter the number :: ");
  // taking input from the terminal
  int? natural_number = int.parse(stdin.readLineSync()!);

  bool isprime = true;
  for (int i = 2; i <=natural_number ~/2; i++) {
    print(i);
    if (natural_number % i == 0) {
      isprime = false;
    }
  }
  if (isprime) {
    print("${natural_number} is prime number");
  } else {
    print("${natural_number} is composite number.");
  }

//   print("Enter the number :: ");
//   // taking input from the terminal
//   int? natural_number = int.parse(stdin.readLineSync()!);
//   // declaring function with parameters to implement prime or not logic
//   bool isPrimeNumber(int natural_number) {
// // for loop
//     for (int i = 2; i < natural_number / i; ++i) {
//       // condition whether the given number are divisible by number less than it
//       if (natural_number % i == 0) {
//         // return false if it is divide by the other number
//         return false;
//       }
//     }
//     // return ture if it is not divisible by other number
//     return true;
//   }
// // function to show the final result

//   void show_resutl() {
//     if (isPrimeNumber(natural_number)) {
//       print("${natural_number} is prime number");
//     } else {
//       print("${natural_number} is composite number.");
//     }
//   }
// // calling functions inside the main
//   show_resutl();

  // int? name;
  // if (name != "Manish") {
  //   print("${name}<Manish> not in the variable");
  // }
}
