import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  const SegundaTela({super.key});

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
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFF3EAEA),
                border: Border.all(color: Colors.grey, width: 2),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Sua escolha",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFF3EAEA),
                border: Border.all(color: Colors.grey, width: 2),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Você ganhou!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFF3EAEA),
                border: Border.all(color: Colors.grey, width: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}