import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo ao Cidadão Ativo'),
        backgroundColor: Color(0xFFFF7F7F), // Cor de fundo do AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Lógica para deslogar (pode ser integrado com Firebase Auth)
              Navigator.pushNamed(
                context,
                '/login',
              ); // Redirecionar para a tela de login
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Texto de boas-vindas
            Text(
              'Olá, cidadão!',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6F4F28), // Cor do texto
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Você está pronto para ajudar a sua cidade.\nEscolha uma das opções abaixo para começar.',
              style: TextStyle(
                fontSize: 18.0,
                color: Color(0xFF8D5A3B), // Cor do texto
              ),
            ),
            SizedBox(height: 40.0),

            // Botões para navegação
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(
                  0xFFFF7F7F,
                ), // Substituindo 'primary' por 'backgroundColor'
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                // Navegar para a tela de denúncia
                Navigator.pushNamed(context, '/report');
              },
              child: Text(
                'Denunciar Problema',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 16.0),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(
                  0xFFFF7F7F,
                ), // Substituindo 'primary' por 'backgroundColor'
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                // Navegar para a tela de eventos
                Navigator.pushNamed(context, '/events');
              },
              child: Text(
                'Ver Eventos',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
