import 'package:user_control_learning_project/models/Admin.dart';
import 'package:user_control_learning_project/models/Client.dart';

import '../models/User.dart';

abstract class IUserService {
  void removeUser({required String userId, required Type type});
  void removeCourseFromUser(
      {required String userId, required String courseName});
  void registerNewUSer({Admin? admin, Client? client});
  void updateUser({required String userId, Admin? admin, Client? client});
  List<User> getByName({String name});
  void login({required String email, required String password});
}
