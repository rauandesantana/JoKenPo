import 'package:flutter/material.dart';
import 'package:jokenpo/importar_dependencias.dart';

class ListHistorico {
  // --------------------------------------------------------------------------- Listagem do Histórico
  static Widget executar(
    BuildContext context,
    BoxConstraints constraints,
    HistoricoJogadas historicoJogadas,
  ) {
    // ------------------------------------------------------------------------- Se o Indice de jogadas é Menor ou Igual a 0.
    if (historicoJogadas.nPartidas <= 0) {
      // ----------------------------------------------------------------------- Retorna Histórico Vazio
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // ------------------------------------------------------------------- Imagem Emoji
          Visibility(
            visible: constraints.maxHeight > 250,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image(
                image: AjusteImagem.principais.emojiErro,
                fit: BoxFit.cover,
                height: AjusteLayout.ajusteAltura(
                  constraints,
                  ajuste: 30,
                  ajusteMin: 100,
                  ajusteMax: 200,
                ),
              ),
            ),
          ),
          // ------------------------------------------------------------------- Titulo Histórico Vazio
          Text(
            "Histórico Vazio!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AjusteCor.conteudo.tituloHistorico,
              fontSize: AjusteLayout.ajusteTexto(
                constraints,
                ajuste: 30,
                ajusteMin: 10,
                ajusteMax: 20,
              ),
            ),
          ),
        ],
      );
    }
    // ------------------------------------------------------------------------- Se Não
    else {
      // ----------------------------------------------------------------------- Retorna Lista Histórico
      return ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: historicoJogadas.nPartidas,
        itemBuilder: (context, indice) {
          //////////////////////////////////////////////////////////////////////




          //////////////////////////////////////////////////////////////////////
          return ListTile(
            title: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: AjusteCor.conteudo.bordaMoldura,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //////////////////////////////////////////////////////////////

                  // ------------------------------------------------------------------- Titulo Histórico Vazio
                  Text(
                    "${indice + 1}º",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.conteudo.tituloHistorico,
                      fontSize: AjusteLayout.ajusteTexto(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 10,
                        ajusteMax: 20,
                      ),
                    ),
                  ),



                  //////////////////////////////////////////////////////////////
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
