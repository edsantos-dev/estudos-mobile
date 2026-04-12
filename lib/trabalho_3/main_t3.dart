import 'package:flutter/material.dart';
import 'calculadora.dart'; // Importando o arquivo que criamos no passo anterior

void main() {
  runApp(const CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  const CalculadoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const Calculadora(),
      debugShowCheckedModeBanner: false, 
    );
  }
}