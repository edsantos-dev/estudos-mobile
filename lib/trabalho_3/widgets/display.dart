import 'package:flutter/material.dart';

class Display extends StatelessWidget {

  final String valor;

  const Display({super.key, required this.valor});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.black87, 
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(24.0),
        child: Text(
          valor,
          style: const TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}