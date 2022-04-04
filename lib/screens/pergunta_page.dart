import 'package:flutter/material.dart';
import 'package:projeto_perguntas/widgets/resposta.dart';
import '../widgets/questao.dart';

class PerguntaPage extends StatefulWidget {
  const PerguntaPage({Key? key}) : super(key: key);

  @override
  State<PerguntaPage> createState() => _PerguntaPageState();
}

class _PerguntaPageState extends State<PerguntaPage> {
  int perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Rosa', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual a sua linguagem favorita?',
        'respostas': ['Python', 'Dart', 'Java', 'Objective-c']
      }
    ];
    List<String> respostas = perguntas[perguntaSelecionada].cast()['respostas'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Center(
          child: Column(
            children: [
              Questao(
                  texto: perguntas[perguntaSelecionada]['texto'].toString()),
              ...respostas
                  .map((String t) =>
                      BotaoResposta(texto: t, quandoSelecionado: responder))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
