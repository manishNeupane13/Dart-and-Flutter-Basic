void main() {
  var a = [1, 0, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  bool checkPrime(int num) {
    for (int i = 2; i < num / 2; i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
  }

  void even_num(int num) {
    if (num % 2 == 0) {
      print(num);
    }
  }

  void divisible_by_8(num) {
    if (num % 8 == 0) {
      print(num);
    }
  }

  void divisible_by_5(num) {
    if (num % 5 == 0) {
      print(num);
    }
  }

  void odd_num(int num) {
    if (num % 2 != 0) {
      print(num);
    }
  }

  int max_num = a[0];
  int mini_num = a[0];
  int array_sum = 0;
  for (var data in a) {
    if (max_num > data) {
      max_num = data;
    }
    if (mini_num < data) {
      mini_num = data;
    }
    // if (data > 8) {
    // print(data);
    // }
    // if (data > 5) {
    //   print(data);
    // }
    // if (data % 2 == 0)
    //   print(data);
    // }
    // if (data % 2 != 0) {
    //   print(data);
    // }
    divisible_by_5(data);
    divisible_by_8(data);
    print("Even");
    even_num(data);
    print("odd");
    (odd_num(data));
    if (checkPrime(data)) {
      print(data);
    }
    array_sum = array_sum + data;
  }
  print("$max_num,$mini_num,$array_sum");
}
