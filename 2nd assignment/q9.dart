class super1 {
  void sample() {
    print("Sample 1");
  }

  void onlysuper1() {
    print("onlly super one");
  }
}

class super2 {
  void sample() {
    print("Sample 2");
  }
   void onlysuper2() {
    print("onlly super one");
  }
}

class sub_one extends super1 implements super2 {
  // @override
  // void sample() {
  //   // print("sample 1 and 2");
  // }
  
  // @override
  // void onlysuper1() {
  //   // TODO: implement onlysuper1
  // }
  
  @override
  void onlysuper2() {
    // TODO: implement onlysuper2
  } //   // TODO: implement sample
  // }
  // void sample() {
  //   print("Sample 1");
  // }
}

void main(List<String> args) {
  sub_one obj = sub_one();
  obj.sample();
}
