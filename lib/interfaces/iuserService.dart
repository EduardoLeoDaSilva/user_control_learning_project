import 'package:user_control_learning_project/models/Admin.dart';
import 'package:user_control_learning_project/models/Client.dart';

abstract class IUserService {
  removeUser({required String userId});
  removeCourseFromUser({required String userId, required String courseName});
  registerNewUSer({Admin? admin, Client? client});
  updateUser({required String userId, Admin? admin, Client? client});
}
