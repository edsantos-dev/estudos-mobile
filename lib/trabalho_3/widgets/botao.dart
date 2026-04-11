import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final Color cor;
  final VoidCallback aoClicar;

  const Botao({
    super.key, 
    required this.texto, 
    this.cor = Colors.grey,
    required this.aoClicar
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: cor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: aoClicar,
          child: Text(
            texto,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}