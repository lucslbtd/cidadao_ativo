import 'package:flutter/material.dart';
import 'package:myfirstapp/onboard_page.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'forgot_password_page.dart';
import 'home_page.dart'; // Importando a HomePage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cidadão Ativo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/onboard',
      routes: {
        '/onboard': (context) => OnboardingPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/forgot-password': (context) => ForgotPasswordPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
