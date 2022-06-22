import 'dart:math';

import 'package:user_control_learning_project/interfaces/iuserService.dart';
import 'package:user_control_learning_project/models/Client.dart';
import 'package:user_control_learning_project/models/Admin.dart';
import 'package:user_control_learning_project/models/User.dart';

class UserService implements IUserService {
  List<Client> clients = [];
  List<Admin> admins = [];

  @override
  void registerNewUSer({Admin? admin, Client? client}) {
    if (admin != null) admins.add(admin);
    if (client != null) clients.add(client);
  }

  @override
  void removeCourseFromUser(
      {required String userId, required String courseName}) {
    var user = clients.firstWhere((element) => element.id == userId);
    user.courses!.remove(courseName);
  }

  @override
  void removeUser({required String userId, required Type type}) {
    if (type == Client) {
      clients.removeWhere((element) => element.id == userId);
    } else if (type == Admin) {
      admins.removeWhere((element) => element.id == userId);
    }
  }

  @override
  void updateUser({required String userId, Admin? admin, Client? client}) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  bool login({required String email, required String password}) {
    // TODO: implement login
    List<User> users = [];
    users
      ..addAll(clients.map((e) => e as User))
      ..addAll(admins.map((e) => e as User));

    User? user =
        users.firstWhere((element) => element.email == email, orElse: () {
      print("Usuario não achado");
    });

    if (user == null) {
      print("Usuario não achado");
      return false;
    } else {
      if (user.password == password) {
        print("Usuário logado!!");
        return true;
      }
    }
    return false;
  }

  @override
  List<User> getByName({String? name}) {
    List<User> users = [];
    users
      ..addAll(clients.map((e) => e as User))
      ..addAll(admins.map((e) => e as User));
    if (name != null && name.isNotEmpty) {
      List<User> userList =
          users.where((element) => element.name == name).toList();
      return userList;
    } else {
      return users;
    }
  }
}
