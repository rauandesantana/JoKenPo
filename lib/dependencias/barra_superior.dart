import 'package:flutter/material.dart';
import 'package:jokenpo/importar_dependencias.dart';

class BarraSuperior {
  // --------------------------------------------------------------------------- Barra Superior
  static List<Widget> layout(BoxConstraints constraints,
      {required int pontosJogador, required int pontosMaquina}) {
    // ------------------------------------------------------------------------- Variável que receberá posteriormente o Layout.
    late List<Widget> layout;
    // ------------------------------------------------------------------------- Verifica qual é a escala para atribuir o layout adequado.
    switch (AjusteLayout.escalaLayout(constraints)) {
      // ----------------------------------------------------------------------- Caso Escala A
      case "A":
        layout = <Widget>[
          // ------------------------------------------------------------------- Título Barra Superior
          Text(
            "JoKenPo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AjusteCor.barraSuperior.tituloBarra,
            ),
          ),
          // ------------------------------------------------------------------- Imagem Logo
          Image(
            image: AjusteImagem.principais.logo,
            fit: BoxFit.contain,
            width: 35,
            height: 35,
          ),
          // ------------------------------------------------------------------- Placar
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // ------------------------------------------------------------- Título Jogador
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AjusteCor.barraSuperior.fundoTitulo,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "J",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloJogador,
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Placar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Text(
                    "$pontosJogador vs $pontosMaquina",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloBarra,
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Título Máquina
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AjusteCor.barraSuperior.fundoTitulo,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "M",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloMaquina,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ];
        break;
      // ----------------------------------------------------------------------- Caso Escala B
      case "B":
        layout = <Widget>[
          // ------------------------------------------------------------------- Título Barra Superior
          Text(
            "JoKenPo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AjusteCor.barraSuperior.tituloBarra,
            ),
          ),
          // ------------------------------------------------------------------- Imagem Logo
          Image(
            image: AjusteImagem.principais.logo,
            width: 35,
            height: 35,
          ),
          // ------------------------------------------------------------------- Placar
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // ------------------------------------------------------------- Título Jogador
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AjusteCor.barraSuperior.fundoTitulo,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Jogador",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloJogador,
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Placar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Text(
                    "$pontosJogador vs $pontosMaquina",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloBarra,
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Título Máquina
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AjusteCor.barraSuperior.fundoTitulo,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "Máquina",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloMaquina,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ];
        break;
      // ----------------------------------------------------------------------- Caso Escala Não Definida
      default:
        layout = <Widget>[
          // ------------------------------------------------------------------- Título Barra Superior
          Text(
            "JoKenPo",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AjusteCor.barraSuperior.tituloBarra,
            ),
          ),
          // ------------------------------------------------------------------- Imagem Logo
          Image(
            image: AjusteImagem.principais.logo,
            width: 35,
            height: 35,
          ),
          // ------------------------------------------------------------------- Placar
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // ------------------------------------------------------------- Título Jogador
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AjusteCor.barraSuperior.fundoTitulo,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "J",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloJogador,
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Placar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Text(
                    "$pontosJogador vs $pontosMaquina",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloBarra,
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Título Máquina
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AjusteCor.barraSuperior.fundoTitulo,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Text(
                    "M",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.barraSuperior.tituloMaquina,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ];
    }
    // ------------------------------------------------------------------------- Retorna o Layout
    return layout;
  }
}
