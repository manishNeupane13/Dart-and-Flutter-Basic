class Student {
  String? name;
  int? id;
  String? course;

  // Student(this.name, this.id, this.course);
  Student.manish(this.id, this.course);
  Student.sumina(this.id, this.course);
  Student.female(this.name, this.id, this.course);

  // set set_student_name(String? name) {
  //   this.name = name;
  // }

  // String? get get_student_name {
  //   return this.name;
  // }

  // set set_student_id(int? id) {
  //   this.id = id;
  // }

  // int? get get_student_id {
  //   return this.id;
  // }

  // set set_student_course(String? course) {
  //   this.course = course;
  // }

  // String? get get_student_course {
  //   return this.course;
  // }
}

void main() {
  Student common = Student.female("xyz", 2, "BCS");
  // common.set_student_name = 'Suman';
  // print(common.get_student_course);
  // print(common.get_student_name);
}
