import 'student.dart';
import 'teacher.dart';

void main() {
  Student s = new Student("Dijul M", 35);
  s.displayStudent();
  Teacher t = Teacher("Basil", "CSE 20123", 40);
  t.displayTeacher();
}
