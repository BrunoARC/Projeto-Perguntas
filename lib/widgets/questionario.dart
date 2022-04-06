import 'package:flutter/material.dart';
import 'package:projeto_perguntas/widgets/questao.dart';
import 'package:projeto_perguntas/widgets/botao_resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    Key? key,
    required this.perguntas,
    required this.responder,
    required this.perguntaSelecionada,
  }) : super(key: key);

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    return Column(
      children: [
        Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((String textoRespostas) => BotaoResposta(
                texto: textoRespostas, quandoSelecionado: responder))
            .toList(),
      ],
    );
  }
}
