import 'package:flutter/material.dart';
import 'widgets/botao.dart';
import 'widgets/display.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {

  String _valorDisplay = '0';
  double _primeiroNumero = 0;
  String _operacao = '';

  void _botaoPressionado(String texto) {

    setState(() {
      if (texto == 'C') {
        _valorDisplay = '0';
        _primeiroNumero = 0;
        _operacao = '';
      } 
      else if (texto == '+' || texto == '-' || texto == 'x' || texto == '/') {
        _primeiroNumero = double.parse(_valorDisplay);
        _operacao = texto;
        _valorDisplay = '0';
      } 
      else if (texto == '=') {
        double segundoNumero = double.parse(_valorDisplay);
        double resultado = 0;

        if (_operacao == '+') {
          resultado = _primeiroNumero + segundoNumero;
        } else if (_operacao == '-') {
          resultado = _primeiroNumero - segundoNumero;
        } else if (_operacao == 'x') {
          resultado = _primeiroNumero * segundoNumero;
        } else if (_operacao == '/') {
          if (segundoNumero == 0) {
            _valorDisplay = 'Erro';
            return;
          }
          resultado = _primeiroNumero / segundoNumero;
        }

        if (resultado == resultado.truncateToDouble()) {
          _valorDisplay = resultado.toInt().toString();
        } else {
          _valorDisplay = resultado.toString();
        }

        _operacao = '';
        _primeiroNumero = 0;
      } 
      else {
        if (_valorDisplay == '0') {
          _valorDisplay = texto;
        } else {
          _valorDisplay += texto;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora Flutter'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Display(valor: _valorDisplay),
          
          // 2. O teclado da calculadora
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Botao(texto: '7', aoClicar: () => _botaoPressionado('7')),
                      Botao(texto: '8', aoClicar: () => _botaoPressionado('8')),
                      Botao(texto: '9', aoClicar: () => _botaoPressionado('9')),
                      Botao(texto: '/', cor: Colors.orange, aoClicar: () => _botaoPressionado('/')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Botao(texto: '4', aoClicar: () => _botaoPressionado('4')),
                      Botao(texto: '5', aoClicar: () => _botaoPressionado('5')),
                      Botao(texto: '6', aoClicar: () => _botaoPressionado('6')),
                      Botao(texto: 'x', cor: Colors.orange, aoClicar: () => _botaoPressionado('x')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Botao(texto: '1', aoClicar: () => _botaoPressionado('1')),
                      Botao(texto: '2', aoClicar: () => _botaoPressionado('2')),
                      Botao(texto: '3', aoClicar: () => _botaoPressionado('3')),
                      Botao(texto: '-', cor: Colors.orange, aoClicar: () => _botaoPressionado('-')),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Botao(texto: 'C', cor: Colors.redAccent, aoClicar: () => _botaoPressionado('C')),
                      Botao(texto: '0', aoClicar: () => _botaoPressionado('0')),
                      Botao(texto: '=', cor: Colors.green, aoClicar: () => _botaoPressionado('=')),
                      Botao(texto: '+', cor: Colors.orange, aoClicar: () => _botaoPressionado('+')),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}