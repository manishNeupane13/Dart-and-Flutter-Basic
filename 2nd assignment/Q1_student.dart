class Student {
  String? name;
  int? roll_no;
  Student(this.name, this.roll_no);
  void display() {
    print("Student Name :: ${this.name}\nStudent Roll No :: ${this.roll_no}");
  }
}

void main() {
  Student student_obj = Student("Jhon", 2);
  student_obj.display();
}
