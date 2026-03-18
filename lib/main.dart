import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jokenpo/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokenpo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF3D3D),
        ),
      ),
      home: const MyHomePage(title: 'Pedra, Papel, Tesoura'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> opcoes = ["Pedra", "Papel", "Tesoura"];

  String sortearEscolhaMaquina() {
    final random = Random();
    int indice = random.nextInt(3);
    return opcoes[indice];
  }

  String verificarResultado(String jogador, String maquina) {
    if (jogador == maquina) {
      return "Empate!";
    }

    if ((jogador == "Pedra" && maquina == "Tesoura") ||
        (jogador == "Papel" && maquina == "Pedra") ||
        (jogador == "Tesoura" && maquina == "Papel")) {
      return "Você ganhou!";
    }

    return "Você perdeu!";
  }

  void jogar(String escolhaJogador) {
    String escolhaMaquina = sortearEscolhaMaquina();
    String resultado = verificarResultado(escolhaJogador, escolhaMaquina);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SegundaTela(
          escolhaJogador: escolhaJogador,
          escolhaMaquina: escolhaMaquina,
          resultado: resultado,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF3D3D),
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Escolha do jogador",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    jogar("Pedra");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Image.asset(
                    "assets/images/pedra.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    jogar("Papel");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Image.asset(
                    "assets/images/papel.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    jogar("Tesoura");
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                  ),
                  child: Image.asset(
                    "assets/images/tesoura.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}