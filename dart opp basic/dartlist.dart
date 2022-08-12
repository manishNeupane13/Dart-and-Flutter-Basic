void main() {
  // creating growable list
  List? mylist = List<int>.filled(5, 100, growable: true);
  // if growable is false then new data cannot be added
  // growable = false means it has fixed sized in array
  mylist[0] = 50;
  mylist[1] = 30;
  mylist[2] = 20;
  // adding more data inside the growable list
  mylist.add(23);
  mylist.add(07);
  print(mylist);

  // another growable list
  List? grow_list = ['hello', 'dart', 'from', 'sunway', 'college'];
  print(grow_list);
  grow_list.add("located");
  grow_list.add("in");
  print(grow_list);

  //  operation of list
  print(grow_list.length);
  print(grow_list.isEmpty);
  print(grow_list.isNotEmpty);
  print(grow_list.last);
  print(grow_list.first);
  print(grow_list.reversed);
  // insert inside the index
  grow_list.insert(3, "maitidevi");
  print(grow_list);
}
