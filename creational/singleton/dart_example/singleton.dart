import 'school.dart';

void main(List<String> args) {
  School school = School.instance;
  School two = School.instance;
  print(school == two);
}