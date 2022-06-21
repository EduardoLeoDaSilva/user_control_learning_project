import 'package:user_control_learning_project/interfaces/iuserService.dart';
import 'package:user_control_learning_project/models/Client.dart';
import 'package:user_control_learning_project/models/Admin.dart';

class UserService implements IUserService {
  @override
  registerNewUSer({Admin? admin, Client? client}) {
    // TODO: implement registerNewUSer
    throw UnimplementedError();
  }

  @override
  removeCourseFromUser({required String userId, required String courseName}) {
    // TODO: implement removeCourseFromUser
    throw UnimplementedError();
  }

  @override
  removeUser({required String userId}) {
    // TODO: implement removeUser
    throw UnimplementedError();
  }

  @override
  updateUser({required String userId, Admin? admin, Client? client}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
