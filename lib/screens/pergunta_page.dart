import 'package:flutter/material.dart';
import 'package:projeto_perguntas/widgets/questionario.dart';
import 'package:projeto_perguntas/widgets/resultado.dart';

class PerguntaPage extends StatefulWidget {
  const PerguntaPage({Key? key}) : super(key: key);

  @override
  State<PerguntaPage> createState() => _PerguntaPageState();
}

class _PerguntaPageState extends State<PerguntaPage> {
  List<Map<String, Object>> perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': [
        {'texto': 'Rosa', 'pontuacao': 1},
        {'texto': 'Vermelho', 'pontuacao': 3},
        {'texto': 'Verde', 'pontuacao': 8},
        {'texto': 'Branco', 'pontuacao': 5},
      ],
    },
    {
      'texto': 'Qual o seu animal favorito?',
      'respostas': [
        {'texto': 'Coelho', 'pontuacao': 5},
        {'texto': 'Cobra', 'pontuacao': 6},
        {'texto': 'Elefante', 'pontuacao': 7},
        {'texto': 'Leão', 'pontuacao': 8},
      ],
    },
    {
      'texto': 'Qual a sua linguagem favorita?',
      'respostas': [
        {'nome': 'Python', 'pontuacao': 9},
        {'nome': 'Dart', 'pontuacao': 10},
        {'nome': 'Java', 'pontuacao': 4},
        {'nome': 'Objective-c', 'pontuacao': 2},
      ]
    }
  ];
  int pontuacaoTotal = 0;
  int perguntaSelecionada = 0;
  void responder(int pontuacao) {
    setState(() {
      perguntaSelecionada++;
      pontuacaoTotal += pontuacao;
    });
    print(pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Center(
          child: temPerguntaSelecionada
              ? Questionario(
                  perguntaSelecionada: perguntaSelecionada,
                  perguntas: perguntas,
                  quandoResponder: responder,
                )
              : const Resultado(),
        ),
      ),
    );
  }
}
