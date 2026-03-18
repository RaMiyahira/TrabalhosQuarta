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
      debugShowCheckedModeBanner: false,
      title: 'Jokenpo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF3D3D),
        ),
      ),
      home: const MyHomePage(title: 'Pedra,Papel, Tesoura'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF3D3D),
        foregroundColor: Colors.white,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFEFEAEA),
                border: Border.all(color: Colors.grey, width: 2),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Escolha do APP",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color(0xFFF3EAEA),
                  ),
                  child: Image.asset(
                    "assets/images/pedra.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color(0xFFF3EAEA),
                  ),
                  child: Image.asset(
                    "assets/images/papel.png",
                    width: 40,
                    height: 40,
                  ),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(20),
                    backgroundColor: const Color(0xFFF3EAEA),
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