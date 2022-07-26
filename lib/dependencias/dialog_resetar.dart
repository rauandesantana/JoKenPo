import 'package:flutter/material.dart';
import 'package:jokenpo/importar_dependencias.dart';

class DialogResetar {
  // --------------------------------------------------------------------------- Dialog Resetar
  static Future executar(
    BuildContext context,
    ControladorPlacar controladorPlacar,
    HistoricoJogadas historicoJogadas,
    ControladorAnimacao controladorAnimacao,
  ) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        content: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              // --------------------------------------------------------------- Imagem Emoji
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Image(
                  image: AjusteImagem.principais.emojiErro,
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
              // --------------------------------------------------------------- Titulo Confirmar
              Text(
                "Deseja mesmo resetar toda a partida?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AjusteCor.conteudo.tituloErro,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          // ------------------------------------------------------------------- Botão Não
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              "Não",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AjusteCor.conteudo.botaoNao,
              ),
            ),
          ),
          // ------------------------------------------------------------------- Botão Sim
          ElevatedButton(
            onPressed: () {
              controladorPlacar.resetarPartidas(
                controladorAnimacao: controladorAnimacao,
                historicoJogadas: historicoJogadas,
              );
              Navigator.of(context).pop();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                AjusteCor.conteudo.botaoSim,
              ),
            ),
            child: Text(
              "Sim",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AjusteCor.conteudo.fundoConteudo,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
