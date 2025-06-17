import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE9C8),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagem ou animação 3D (no caso, substituindo por um ícone para simplicidade)
            Container(
              height: 600.0,
              width: 600.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/mascote.png',
                  ), // Substitua com a sua imagem
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 40.0),
            // Título
            Text(
              'Ajude sua cidade',
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6F4F28), // Cor do texto
              ),
            ),
            SizedBox(height: 10.0),
            // Descrição
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Denuncie problemas, divulgue ações e promova eventos pelo bem da sua cidade!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xFF8D5A3B), // Cor do texto
                ),
              ),
            ),
            SizedBox(height: 40.0),
            // Botão Começar
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF7F7F),
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                // Navegar para a tela de login ou próxima ação
                Navigator.pushNamed(
                  context,
                  '/login',
                ); // Redireciona para a tela de login
              },
              child: Text(
                'Começar',
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
