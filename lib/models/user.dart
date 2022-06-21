abstract class User {
  String id;
  String name;
  String documentNumber;
  String email;
  String password;
  DateTime birthDate;

  User(
      {required this.id,
      required this.name,
      required this.documentNumber,
      required this.email,
      required this.password,
      required this.birthDate});

  void updatePassword({required String newPassword}) {
    if (newPassword.length < 5) print("return error");
    password = newPassword;
  }

  void updateDocumentNumber({required String newDocumentNumber}) {
    if (newDocumentNumber.isEmpty) print("return error");
    documentNumber = newDocumentNumber;
  }
}
