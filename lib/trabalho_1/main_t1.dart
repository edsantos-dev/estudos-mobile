import 'package:flutter/material.dart';

void main() {
  runApp(const Trabalho1App());
}

class Trabalho1App extends StatelessWidget {
  const Trabalho1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trabalho 1',
      home: Scaffold(
        appBar: AppBar(title: const Text('Trabalho 1 - Faculdade')),
        body: const Center(
          child: Text('Olá, Trabalho 1!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}