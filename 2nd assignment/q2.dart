class super1 {
  void sample() {
    print("Sample 1");
  }
}
class super2{
  void sample() {
    print("Sample 2");
  }
}
class sub_one extends super1 {
  // void sample() {
  //   print("Sample 1");
  // }
}

void main(List<String> args) {
  sub_one obj=sub_one();
  obj.sample();
  
}
