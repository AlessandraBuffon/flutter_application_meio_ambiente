// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_meio_ambiente/auth_provider.dart';
import 'package:flutter_application_meio_ambiente/home_screen.dart';


class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(98, 255, 66, 0.388),
              Color.fromARGB(255, 24, 77, 44),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      '🍃EcoWorld🌎',
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ),
                Text(
                  'juntos pelo planeta: dicas sustentáveis na palma da sua mão',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                    color: Color.fromARGB(255, 7, 90, 51),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.0),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      labelText: 'Nome de Usuário👤',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha 🔒',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                SizedBox(
                  width: 200.0,
                  height: 60.0,
                  child: ElevatedButton(
                    onPressed: () {
                      final String username = _usernameController.text;
                      final String password = _passwordController.text;

                      if (username.isEmpty || password.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Erro de login'),
                            content: Text('Por favor, preencha todos os campos.'),
                            actions: [
                              ElevatedButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        final authProvider = Provider.of<AuthProvider>(context, listen: false);
                        authProvider.login(username, password);

                        // Verificação de sucesso no login e exibição da tela home_screen
                        if (authProvider.isLoggedIn()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomeScreen()),
                          );
                        }
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Nome de usuário: admin \nSenha: admin',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    // Outras propriedades de estilo
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
