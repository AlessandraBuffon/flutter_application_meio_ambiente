import 'package:flutter/material.dart';
import 'database.helper.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _registerUser() async {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Erro de registro'),
          content: Text('Por favor, preencha todos os campos.'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    final existingUser = await DatabaseHelper.instance.getUserByUsername(username);
    if (existingUser != null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Erro de registro'),
          content: Text('Nome de usuário já existe. Por favor, escolha outro nome.'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    await DatabaseHelper.instance.insertUser(username, password);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Registro bem-sucedido'),
        content: Text('Usuário registrado com sucesso.'),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );

    _usernameController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
      ),
      body: Container(
        // ...
      ),
    );
  }
}
