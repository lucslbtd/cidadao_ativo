import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();
  bool _emailSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE9C8),
      appBar: AppBar(title: Text('Recuperação de Senha'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // Campo de e-mail
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),

            // Se o e-mail foi enviado
            if (_emailSent)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Instruções de recuperação foram enviadas para o seu e-mail.',
                  style: TextStyle(color: Colors.green),
                ),
              ),

            // Botão de enviar e-mail de recuperação
            ElevatedButton(
              onPressed: () {
                // Implementar o envio do e-mail de recuperação de senha aqui
                setState(() {
                  _emailSent = true;
                });
              },
              child: Text('Enviar Link de Recuperação'),
            ),
            SizedBox(height: 16.0),

            // Link para voltar ao login
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Voltar para o Login'),
            ),
          ],
        ),
      ),
    );
  }
}
