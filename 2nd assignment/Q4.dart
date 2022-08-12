abstract class Demo_cls {
  // creating constructor
  Demo_cls() {
    // whenever constructor is called
    // this statement will run
    print("This is a constructor of abstract class");
  }
  // creating abstract method
  void a_method();
  // creating non-abstract method
  void a_normal_method() {
    print("This is a normal method of abstract class");
  }
}
// creating sub class
class Subclass extends Demo_cls {
  @override
  void a_method() {
    // TODO: implement a_method
    print("This is a abstract method");
  }
}

void main() {
  // ignore: unused_local_variable

  // Demo_cls obj = Demo_cls();
  // creating obj for subclass
  Subclass sub_obj = Subclass();
  // calling non abstract method
  sub_obj.a_normal_method();
  // calling abstract method
  sub_obj.a_method();
}
