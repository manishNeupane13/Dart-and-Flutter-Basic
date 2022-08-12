import 'dart:io';

void main() {
  var random_num = [-100,-30, -9, -14, -18, -6, -19, -24, -7,-10,130, 9, 14, 18, 6, 19, 24, 77];
  int maximum_num = random_num[0];
  int minimum_num = random_num[0];

  for (int i = 1; i < random_num.length; i++) {
    if (maximum_num < random_num[i]) {
      maximum_num = random_num[i];
    }
  }
  print("Maximum Number = ${maximum_num}");
  for (int i = 0; i < random_num.length; i++) {
    if (random_num[i] == maximum_num || random_num[i] == minimum_num) {
      continue;
    } else {
      if (random_num[i] > minimum_num && random_num[i] < maximum_num) {
        print(random_num[i]);
        minimum_num = random_num[i];
      }
    }
  }
  print("Second Largest Number ${minimum_num}");
}
