import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  final String escolhaJogador;
  final String escolhaMaquina;
  final String resultado;

  const SegundaTela({
    super.key,
    required this.escolhaJogador,
    required this.escolhaMaquina,
    required this.resultado,
  });

  String pegarImagemEscolha(String escolha) {
    if (escolha == "Pedra") {
      return "assets/images/pedra.png";
    } else if (escolha == "Papel") {
      return "assets/images/papel.png";
    } else {
      return "assets/images/tesoura.png";
    }
  }

  String pegarImagemResultado(String resultado) {
    if (resultado == "Você ganhou!") {
      return "assets/images/icons8-vitoria-48.png";
    } else if (resultado == "Você perdeu!") {
      return "assets/images/icons8-perder-48.png";
    } else {
      return "assets/images/icons8-aperto-maos-100.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF3D3D),
        foregroundColor: Colors.white,
        title: const Text("Resultado"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Escolha da máquina",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 15),
            Container(
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3EAEA),
              ),
              child: Center(
                child: Image.asset(
                  pegarImagemEscolha(escolhaMaquina),
                  width: 55,
                  height: 55,
                ),
              ),
            ),
            const SizedBox(height: 45),
            const Text(
              "Sua escolha",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 15),
            Container(
              width: 110,
              height: 110,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3EAEA),
              ),
              child: Center(
                child: Image.asset(
                  pegarImagemEscolha(escolhaJogador),
                  width: 55,
                  height: 55,
                ),
              ),
            ),
            const SizedBox(height: 45),
            Text(
              resultado,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              width: 90,
              height: 90,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF3EAEA),
              ),
              child: Center(
                child: Image.asset(
                  pegarImagemResultado(resultado),
                  width: 45,
                  height: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}