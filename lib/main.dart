import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_meio_ambiente/auth_provider.dart';
import 'package:flutter_application_meio_ambiente/login_screen.dart';
import 'package:flutter_application_meio_ambiente/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthProvider(),
      child: MaterialApp(
        title: 'Meu App',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Consumer<AuthProvider>(
          builder: (context, auth, _) {
            return auth.user != null ? HomeScreen() : LoginScreen();
          },
        ),
      ),
    );
  }
}
