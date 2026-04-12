import 'package:flutter/material.dart';

class Display extends StatelessWidget {

  final String valor;
  final String historico;

  const Display({super.key, required this.valor, required this.historico});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.black87,
        alignment: Alignment.bottomRight,
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              historico,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white54,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              valor,
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}