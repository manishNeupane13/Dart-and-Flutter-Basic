import 'dart:io';

void main() {
  int? i = 1;
  do {
    print("Hellow");
   
  } while (i <= 5);
  Student obj = Student("Manish", 123, "thinkune");
  // int roll = int.parse(stdin.readLineSync()!);
  print("Enter the name ::: ");
  String? name = stdin.readLineSync();
  name.toString();
  Student obj2 = Student.manish(name!, 12, "koteshowr");
  obj2.display_result();
  print(obj2.rollno);

}

class Student {
  String name;
  int rollno;
  String address;
  Student(this.name, this.rollno, this.address) {
    print("This is the constructor");
  }
  Student.manish(this.name, this.rollno, this.address);
  void display_result() {
    print('${this.address},${this.name},${this.rollno}');
  }
}
