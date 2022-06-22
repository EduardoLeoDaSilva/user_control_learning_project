import 'package:user_control_learning_project/models/User.dart';

class Client extends User {
  List<String>? courses = ['C#', 'JAVA', 'Flutter'];

  Client(
      {required super.id,
      required super.name,
      required super.documentNumber,
      required super.email,
      required super.password,
      required super.birthDate});

  void addNewCourse(String newCourse) {
    courses ??= [];
    if (newCourse.isEmpty) return;
    courses?.add(newCourse);
  }
}
