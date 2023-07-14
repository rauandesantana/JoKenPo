import 'package:flutter/material.dart';
import 'package:jokenpo/importar_dependencias.dart';
import 'package:jokenpo/sistema/historico_jogadas.dart';

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
          // ------------------------------------------------------------------- Variável Indice Invertido
          int i = (historicoJogadas.nPartidas - 1) - indice;

          // ------------------------------------------------------------------- Variável Cor do Resultado
          late Color corResultado;
          // ------------------------------------------------------------------- Variável Titulo do Resultado
          late String tituloResultado;
          // ------------------------------------------------------------------- Verifica Qual o Resultado da Partida
          switch (historicoJogadas.resultadoPartida[i]) {
            case 0:
              corResultado = AjusteCor.conteudo.resultadoEmpate;
              tituloResultado = "Empate";
              break;
            case 1:
              corResultado = AjusteCor.conteudo.resultadoVitoria;
              tituloResultado = "Vitória";
              break;
            case 2:
              corResultado = AjusteCor.conteudo.resultadoDerrota;
              tituloResultado = "Derrota";
              break;
            default:
              corResultado = AjusteCor.conteudo.erro;
              tituloResultado = "Erro";
              break;
          }
          // ------------------------------------------------------------------- Variável Imagem Escolha do Jogador
          late AssetImage escolhaJogador;
          // ------------------------------------------------------------------- Verifica Qual a Escolha do Jogador
          switch (historicoJogadas.jogadaAntJogador[i]) {
            case 0:
              escolhaJogador = AjusteImagem.icones.pedra;
              break;
            case 1:
              escolhaJogador = AjusteImagem.icones.papel;
              break;
            case 2:
              escolhaJogador = AjusteImagem.icones.tesoura;
              break;
            default:
              escolhaJogador = AjusteImagem.icones.padrao;
              break;
          }
          // ------------------------------------------------------------------- Variável Titulo do Modo
          late String tituloModo;
          // ------------------------------------------------------------------- Verifica Qual o Modo da Partida
          switch (historicoJogadas.modoPartida[i]) {
            case 0:
              tituloModo = "Vs";
              break;
            case 1:
              tituloModo = "<>";
              break;
            default:
              tituloModo = "Err";
              break;
          }
          // ------------------------------------------------------------------- Variável Imagem Escolha da Máquina
          late AssetImage escolhaMaquina;
          // ------------------------------------------------------------------- Verifica Qual a Escolha da Máquina
          switch (historicoJogadas.jogadaAntMaquina[i]) {
            case 0:
              escolhaMaquina = AjusteImagem.icones.pedra;
              break;
            case 1:
              escolhaMaquina = AjusteImagem.icones.papel;
              break;
            case 2:
              escolhaMaquina = AjusteImagem.icones.tesoura;
              break;
            default:
              escolhaMaquina = AjusteImagem.icones.padrao;
              break;
          }
          return ListTile(
            title: Container(
              padding: EdgeInsets.all(
                AjusteLayout.ajusteAltura(
                  constraints,
                  ajuste: 1,
                  ajusteMin: 2,
                  ajusteMax: 10,
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                  color: corResultado,
                ),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // ----------------------------------------------------------- Titulo Histórico Nº Jogada e Resultado
                  Text(
                    "${i + 1}º ($tituloResultado)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: corResultado,
                      fontSize: AjusteLayout.ajusteTexto(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 10,
                        ajusteMax: 20,
                      ),
                    ),
                  ),
                  // ------------------------------------------------------------- Escolha Jogador
                  Container(
                    width: AjusteLayout.ajusteCircular(
                      constraints,
                      ajuste: 15,
                      ajusteMin: 50,
                      ajusteMax: 100,
                    ),
                    height: AjusteLayout.ajusteCircular(
                      constraints,
                      ajuste: 15,
                      ajusteMin: 50,
                      ajusteMax: 100,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 2,
                        color: AjusteCor.conteudo.bordaJogador,
                      ),
                    ),
                    // ----------------------------------------------------------- Icone Escolha
                    child: Image(
                      fit: BoxFit.contain,
                      image: escolhaJogador,
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 20,
                        ajusteMin: 45,
                        ajusteMax: 95,
                      ),
                      height: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 20,
                        ajusteMin: 45,
                        ajusteMax: 95,
                      ),
                    ),
                  ),
                  // ----------------------------------------------------------- Titulo do Modo
                  Text(
                    tituloModo,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: corResultado,
                      fontSize: AjusteLayout.ajusteTexto(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 10,
                        ajusteMax: 20,
                      ),
                    ),
                  ),
                  // ------------------------------------------------------------- Escolha Máquina
                  Container(
                    width: AjusteLayout.ajusteCircular(
                      constraints,
                      ajuste: 15,
                      ajusteMin: 50,
                      ajusteMax: 100,
                    ),
                    height: AjusteLayout.ajusteCircular(
                      constraints,
                      ajuste: 15,
                      ajusteMin: 50,
                      ajusteMax: 100,
                    ),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: 2,
                        color: AjusteCor.conteudo.bordaMaquina,
                      ),
                    ),
                    // ----------------------------------------------------------- Icone Escolha
                    child: Image(
                      fit: BoxFit.contain,
                      image: escolhaMaquina,
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 20,
                        ajusteMin: 45,
                        ajusteMax: 95,
                      ),
                      height: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 20,
                        ajusteMin: 45,
                        ajusteMax: 95,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
}
