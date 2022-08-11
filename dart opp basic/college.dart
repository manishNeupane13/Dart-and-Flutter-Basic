

class College {
  String? name;
  int? noOfCourses;
  String? address;
  // making constructor in dart
  College(this.name, this.noOfCourses, this.address);
  // created name constructor.
  // multiple constructor with the smae name cannot be created
  // create multiple construcotes with a different name.
  College.sunway(this.name, this.address);
  College.whitehouse(this.name, this.noOfCourses);
  College.xyz(this.noOfCourses, this.name, this.address);

  //  getter ans setter in dart

  set set_clz_name(String? name) {
    this.name = name;
  }

  String? get clz_name {
    return this.name;
  }
}

void main() {
  College sunway1 = College.sunway("manish", "maitidevt");
  print(sunway1.clz_name);
  College obj = College("sunway", 5, "hadigaun");
  obj.set_clz_name = "SIG";
  print(obj.clz_name);
}
