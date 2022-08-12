import 'dart:io';

void main() {
  List? mylist = List<int>.filled(10, 0, growable: false);
  print("Enter the element inside the fixed array");
  for (int i = 0; i < 10; i++) {
    mylist[i] = int.parse(stdin.readLineSync()!);
  }
  print(mylist);
  // mylist.add(20);
  // var list= new List.filled(10, null, growable: false);
  // List lst = new List(3);
  // lst[0] = 12;
  // lst[1] = 13;
  // lst[2] = 11;
  // print(lst);

}
