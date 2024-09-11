class Teacher {
  String? name;
  String? emp_id;
  int? age;
  Teacher(this.name, this.emp_id, this.age);
  void displayTeacher() {
    print('\nTeacher');
    print(name);
    print(emp_id);
    print(age);
  }
}
