import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/pergunta_tela.dart';

void main() => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PerguntaPage(),
    );
  }
}
