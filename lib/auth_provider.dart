import 'package:flutter/foundation.dart';
import 'package:flutter_application_meio_ambiente/user.dart';

class AuthProvider with ChangeNotifier {
  List<User> _registeredUsers = [
    User(username: 'admin', password: 'admin'),
    User(username: 'outrousuario', password: 'outrasenha'),
    // Adicione outros usuários registrados aqui
  ];

  User? _user;

  User? get user => _user;

  bool isLoggedIn() {
    return _user != null;
  }

  void login(String username, String password) {
    User? user;
    try {
      user = _registeredUsers.firstWhere(
        (user) => user.username == username && user.password == password,
      );
    } catch (e) {
      user = null;
    }

    if (user != null) {
      _user = user;
      notifyListeners();
    } else {
      // Lógica para tratamento de erro de login inválido
    }
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
