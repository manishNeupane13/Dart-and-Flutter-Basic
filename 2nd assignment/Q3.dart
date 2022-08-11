abstract class Parent {
  void message();
}

class firstsubclass extends Parent {
  @override
  void message() {
    // overwriting the data than parent method
    print('====This is the first Subclass.=======');
  }
}

class secondsubclass extends Parent {
  @override
  void message() {
    // overwriting the data than parent method
    print("=======This is the second Subclass.======");
  }
}

void main() {
  // creating object of the classes
  firstsubclass first = firstsubclass();
  secondsubclass second = secondsubclass();
// calling the messsge method on the respective classes
  first.message();
  second.message();
}
