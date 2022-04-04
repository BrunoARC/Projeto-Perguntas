import 'package:flutter/material.dart';

class BotaoResposta extends StatelessWidget {
  const BotaoResposta({
    Key? key,
    required this.texto,
    required this.quandoSelecionado,
  }) : super(key: key);

  final String texto;

  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(texto),
      ),
    );
  }
}
