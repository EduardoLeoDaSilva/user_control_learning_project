import 'package:user_control_learning_project/models/User.dart';

class Admin extends User {
  Admin(
      {required super.id,
      required super.name,
      required super.documentNumber,
      required super.email,
      required super.password,
      required super.birthDate});

  List<String>? permissions;
}
