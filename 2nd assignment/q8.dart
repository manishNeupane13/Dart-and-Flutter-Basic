void main() {
  // creating growable list
  List? mylist = List<String>.filled(5, "friend name", growable: true);
  // if growable is false then new data cannot be added
  // growable = false means it has fixed sized in array
  mylist[0] = "anish";
  mylist[1] = "nisha";
  mylist[2] = "manish";
  // adding more data inside the growable list
  mylist.add("pravesh");
  mylist.add("Nisesh");
  print(mylist);

  // another growable list
  List? grow_list = ['manisha', 'david', 'Jonny', 'sunny', 'annu'];
  grow_list.forEach((item) {
    print("Friends Name :: ${item}");
  });
  // print(grow_list);
  grow_list.add("luna");
  grow_list.add("alina");
  print("List of element :: ");
  print(grow_list.getRange(1, 4));
  print(grow_list.getRange(2, 4));
  // print(grow_list);

  //  operation of list
  // print(grow_list.length);
  // print(grow_list.isEmpty);
  // print(grow_list.isNotEmpty);
  print("last");
  print(grow_list.last);
  print("First");
  print(grow_list.first);
  // print(grow_list.reversed);
  // insert inside the index
  // grow_list.insert(3, "maitidevi");
  // print(grow_list);
}
