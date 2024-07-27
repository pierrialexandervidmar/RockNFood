import 'package:comanda/splash/splash_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (_) => Scaffold(
        backgroundColor: Color(0xFFF4511E),
        body: Stack(
          children: [
            Image.asset(
              'assets/images/logo2.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              //fit: BoxFit.fill, // Adicionando BoxFit para ajustar a imagem
            ),
            const Center(
              child: Column(
                children: [
                  SizedBox(height: 45),
                  Text(
                    "Rock 'n' Food",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFCCBC), // Cor branca para o texto
                      fontFamily: "RocknRollOne",
                      shadows: [
                        Shadow(
                          blurRadius: 7.0,
                          color: Colors.black,
                          offset: Offset(0.2, 0.2),
                        ),
                      ], // Exemplo de fonte personalizada
                    ),
                  ),
                  Text(
                    "Comanda para Bares e Restaurantes",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFBE9E7), // Cor branca para o texto
                      fontFamily: 'RockSalt',
                    ),
                  ),
                  SizedBox(height: 35),
                  CupertinoActivityIndicator (
                    radius: 50,
                  ),
                  Spacer(),
                  SizedBox(height: 35),
                  Text(
                    "Desenvolvido por Rock'n'App",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFBE9E7),
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
