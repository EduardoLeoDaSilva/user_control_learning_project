import 'dart:io';
import 'dart:math';

import 'package:user_control_learning_project/models/Client.dart';
import 'package:user_control_learning_project/services/userService.dart';
import 'package:user_control_learning_project/user_control_learning_project.dart'
    as user_control_learning_project;

void main(List<String> arguments) {
  var userService = UserService();
  bool isRunning = true;
  while (isRunning) {
    print('Bem vindo ao sistema de controle de usuários');
    print('Digite a opção desejada 1 para login e 2 para cadastro');
    var entrance = stdin.readLineSync();
    if (entrance == '1') {
      print('Digite o email e a senha');
      var email = stdin.readLineSync();
      var password = stdin.readLineSync();
      var isSuccess =
          userService.login(email: email ?? '', password: password ?? '');
      if (isSuccess) {
        print("Usuário logado com sucesso");
      } else {
        print("Falha no logon");
      }
    } else if (entrance == '2') {
      print('Digite o nome, email, senha, nascimento, documento');
      var name = stdin.readLineSync();
      var email = stdin.readLineSync();
      var password = stdin.readLineSync();
      var birthDateString = stdin.readLineSync();
      var documentNumber = stdin.readLineSync();
      var birthDate = DateTime.tryParse(birthDateString!);
      var user = Client(
          id: Random().nextInt(1000).toString(),
          name: name!,
          documentNumber: documentNumber!,
          email: email!,
          password: password!,
          birthDate: birthDate!);
      userService.registerNewUSer(client: user);
    } else {
      isRunning = false;
    }
  }
}
