import 'package:flutter/material.dart';
import 'package:jokenpo/importar_dependencias.dart';
import 'package:jokenpo/sistema/controlador_animacao.dart';
import 'package:jokenpo/sistema/controlador_pagina.dart';
import 'package:jokenpo/sistema/controlador_placar.dart';
import 'package:jokenpo/sistema/historico_jogadas.dart';

class Conteudo {
  // --------------------------------------------------------------------------- Conteúdo
  static List<Widget> layout(
    BuildContext context,
    BoxConstraints constraints, {
    required ControladorPagina controladorPagina,
    required ControladorPlacar controladorPlacar,
    required HistoricoJogadas historicoJogadas,
    required ControladorAnimacao controladorAnimacao,
  }) {
    // ------------------------------------------------------------------------- Variável Que Receberá Posteriormente o Layout.
    late List<Widget> layout;
    // ------------------------------------------------------------------------- Verifica Qual é a Página Para Atribuir o layout.
    switch (controladorPagina.paginaAtual) {
      // ----------------------------------------------------------------------- Caso Página Combate
      case 0:
        layout = <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // --------------------------------------------------------------- Titulo Resultado
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AjusteLayout.ajusteTexto(
                    constraints,
                    ajuste: 1,
                    ajusteMin: 5,
                    ajusteMax: 10,
                  ),
                ),
                child: Text(
                  controladorAnimacao.tituloResultado,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: controladorAnimacao.corResultado,
                    fontSize: AjusteLayout.ajusteTexto(
                      constraints,
                      ajuste: 90,
                      ajusteMin: 25,
                      ajusteMax: 55,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ------------------------------------------------------------------- Painel Jogada
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ------------------------------------------------------------- Escolha Jogador
                AnimatedContainer(
                  width: (AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 100,
                        ajusteMax: 200,
                      ) *
                      controladorAnimacao.ajusteImagemJogador),
                  height: (AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 100,
                        ajusteMax: 200,
                      ) *
                      controladorAnimacao.ajusteImagemJogador),
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 1,
                        ajusteMin: 1,
                        ajusteMax: 6,
                      ),
                      color: AjusteCor.conteudo.bordaJogador,
                    ),
                  ),
                  // ----------------------------------------------------------- Icone Escolha
                  child: Image(
                    fit: BoxFit.contain,
                    image: controladorAnimacao.imagemEscolhaJogador,
                    width: (AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 40,
                          ajusteMin: 90,
                          ajusteMax: 190,
                        ) *
                        controladorAnimacao.ajusteImagemJogador),
                    height: (AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 40,
                          ajusteMin: 90,
                          ajusteMax: 190,
                        ) *
                        controladorAnimacao.ajusteImagemJogador),
                  ),
                ),
                // ------------------------------------------------------------- Titulo Vs
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Vs",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.conteudo.erro,
                      fontSize: AjusteLayout.ajusteTexto(
                        constraints,
                        ajuste: 90,
                        ajusteMin: 25,
                        ajusteMax: 55,
                      ),
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Escolha Máquina
                AnimatedContainer(
                  width: (AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 100,
                        ajusteMax: 200,
                      ) *
                      controladorAnimacao.ajusteImagemMaquina),
                  height: (AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 100,
                        ajusteMax: 200,
                      ) *
                      controladorAnimacao.ajusteImagemMaquina),
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 1,
                        ajusteMin: 1,
                        ajusteMax: 6,
                      ),
                      color: AjusteCor.conteudo.bordaMaquina,
                    ),
                  ),
                  // ----------------------------------------------------------- Icone Escolha
                  child: Image(
                    fit: BoxFit.contain,
                    image: controladorAnimacao.imagemEscolhaMaquina,
                    width: (AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 40,
                          ajusteMin: 90,
                          ajusteMax: 190,
                        ) *
                        controladorAnimacao.ajusteImagemMaquina),
                    height: (AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 40,
                          ajusteMin: 90,
                          ajusteMax: 190,
                        ) *
                        controladorAnimacao.ajusteImagemMaquina),
                  ),
                ),
              ],
            ),
          ),
          // ------------------------------------------------------------------- Titulo Escolha
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Escolha",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AjusteCor.conteudo.erro,
                fontSize: AjusteLayout.ajusteTexto(
                  constraints,
                  ajuste: 30,
                  ajusteMin: 15,
                  ajusteMax: 25,
                ),
              ),
            ),
          ),
          // ------------------------------------------------------------------- Opções Jogada
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ------------------------------------------------------------- Botão Pedra
                AnimatedContainer(
                  width: AjusteLayout.ajusteCircular(
                    constraints,
                    ajuste: 20,
                    ajusteMin: 50,
                    ajusteMax: 100,
                  ),
                  height: AjusteLayout.ajusteCircular(
                    constraints,
                    ajuste: 20,
                    ajusteMin: 50,
                    ajusteMax: 100,
                  ),
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 1,
                        ajusteMin: 1,
                        ajusteMax: 4,
                      ),
                      color: AjusteCor.conteudo.bordaMoldura.withOpacity(
                        controladorAnimacao.opacidadePedra,
                      ),
                    ),
                  ),
                  // ----------------------------------------------------------- Detector de Ação
                  child: GestureDetector(
                    onTapDown: (_) => controladorAnimacao.opacidadePedra = 0.8,
                    onTapUp: (_) => controladorPlacar.jogada(
                      controladorAnimacao: controladorAnimacao,
                      historicoJogadas: historicoJogadas,
                      escolhaJogador: 0,
                      pagina: controladorPagina.paginaAtual,
                    ),
                    // --------------------------------------------------------- Icone Pedra
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AjusteImagem.icones.pedra,
                        width: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 30,
                          ajusteMin: 65,
                          ajusteMax: 85,
                        ),
                        height: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 30,
                          ajusteMin: 65,
                          ajusteMax: 85,
                        ),
                      ),
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Botão Papel
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AnimatedContainer(
                    width: AjusteLayout.ajusteCircular(
                      constraints,
                      ajuste: 20,
                      ajusteMin: 50,
                      ajusteMax: 100,
                    ),
                    height: AjusteLayout.ajusteCircular(
                      constraints,
                      ajuste: 20,
                      ajusteMin: 50,
                      ajusteMax: 100,
                    ),
                    alignment: Alignment.center,
                    duration: const Duration(microseconds: 150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 1,
                          ajusteMin: 1,
                          ajusteMax: 4,
                        ),
                        color: AjusteCor.conteudo.bordaMoldura.withOpacity(
                          controladorAnimacao.opacidadePapel,
                        ),
                      ),
                    ),
                    // --------------------------------------------------------- Detector de Ação
                    child: GestureDetector(
                      onTapDown: (_) =>
                          controladorAnimacao.opacidadePapel = 0.8,
                      onTapUp: (_) => controladorPlacar.jogada(
                        controladorAnimacao: controladorAnimacao,
                        historicoJogadas: historicoJogadas,
                        escolhaJogador: 1,
                        pagina: controladorPagina.paginaAtual,
                      ),
                      // ------------------------------------------------------- Icone Papel
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AjusteImagem.icones.papel,
                          width: AjusteLayout.ajusteCircular(
                            constraints,
                            ajuste: 30,
                            ajusteMin: 65,
                            ajusteMax: 85,
                          ),
                          height: AjusteLayout.ajusteCircular(
                            constraints,
                            ajuste: 30,
                            ajusteMin: 65,
                            ajusteMax: 85,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Botão Tesoura
                AnimatedContainer(
                  width: AjusteLayout.ajusteCircular(
                    constraints,
                    ajuste: 20,
                    ajusteMin: 50,
                    ajusteMax: 100,
                  ),
                  height: AjusteLayout.ajusteCircular(
                    constraints,
                    ajuste: 20,
                    ajusteMin: 50,
                    ajusteMax: 100,
                  ),
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 1,
                        ajusteMin: 1,
                        ajusteMax: 4,
                      ),
                      color: AjusteCor.conteudo.bordaMoldura.withOpacity(
                        controladorAnimacao.opacidadeTesoura,
                      ),
                    ),
                  ),
                  // ----------------------------------------------------------- Detector de Ação
                  child: GestureDetector(
                    onTapDown: (_) =>
                        controladorAnimacao.opacidadeTesoura = 0.8,
                    onTapUp: (_) => controladorPlacar.jogada(
                      controladorAnimacao: controladorAnimacao,
                      historicoJogadas: historicoJogadas,
                      escolhaJogador: 2,
                      pagina: controladorPagina.paginaAtual,
                    ),
                    // --------------------------------------------------------- Icone Tesoura
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AjusteImagem.icones.tesoura,
                        width: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 30,
                          ajusteMin: 65,
                          ajusteMax: 85,
                        ),
                        height: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 30,
                          ajusteMin: 65,
                          ajusteMax: 85,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ];
        break;
      // ----------------------------------------------------------------------- Caso Página Adivinhe
      case 1:
        layout = <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // --------------------------------------------------------------- Titulo Resultado
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: AjusteLayout.ajusteTexto(
                    constraints,
                    ajuste: 1,
                    ajusteMin: 5,
                    ajusteMax: 10,
                  ),
                ),
                child: Text(
                  controladorAnimacao.tituloResultado,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: controladorAnimacao.corResultado,
                    fontSize: AjusteLayout.ajusteTexto(
                      constraints,
                      ajuste: 90,
                      ajusteMin: 25,
                      ajusteMax: 55,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // ------------------------------------------------------------------- Painel Jogada
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ------------------------------------------------------------- Escolha Jogador
                AnimatedContainer(
                  width: (AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 100,
                        ajusteMax: 200,
                      ) *
                      controladorAnimacao.ajusteImagemJogador),
                  height: (AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 100,
                        ajusteMax: 200,
                      ) *
                      controladorAnimacao.ajusteImagemJogador),
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 1,
                        ajusteMin: 1,
                        ajusteMax: 6,
                      ),
                      color: AjusteCor.conteudo.bordaJogador,
                    ),
                  ),
                  // ----------------------------------------------------------- Icone Escolha
                  child: Image(
                    fit: BoxFit.contain,
                    image: controladorAnimacao.imagemEscolhaJogador,
                    width: (AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 40,
                          ajusteMin: 90,
                          ajusteMax: 190,
                        ) *
                        controladorAnimacao.ajusteImagemJogador),
                    height: (AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 40,
                          ajusteMin: 90,
                          ajusteMax: 190,
                        ) *
                        controladorAnimacao.ajusteImagemJogador),
                  ),
                ),
                // ------------------------------------------------------------- Titulo <>
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  child: Text(
                    "<>",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AjusteCor.conteudo.erro,
                      fontSize: AjusteLayout.ajusteTexto(
                        constraints,
                        ajuste: 90,
                        ajusteMin: 25,
                        ajusteMax: 55,
                      ),
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Escolha Máquina
                AnimatedContainer(
                  width: (AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 100,
                        ajusteMax: 200,
                      ) *
                      controladorAnimacao.ajusteImagemMaquina),
                  height: (AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 30,
                        ajusteMin: 100,
                        ajusteMax: 200,
                      ) *
                      controladorAnimacao.ajusteImagemMaquina),
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 1,
                        ajusteMin: 1,
                        ajusteMax: 6,
                      ),
                      color: AjusteCor.conteudo.bordaMaquina,
                    ),
                  ),
                  // ----------------------------------------------------------- Icone Escolha
                  child: Image(
                    fit: BoxFit.contain,
                    image: controladorAnimacao.imagemEscolhaMaquina,
                    width: (AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 40,
                          ajusteMin: 90,
                          ajusteMax: 190,
                        ) *
                        controladorAnimacao.ajusteImagemMaquina),
                    height: (AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 40,
                          ajusteMin: 90,
                          ajusteMax: 190,
                        ) *
                        controladorAnimacao.ajusteImagemMaquina),
                  ),
                ),
              ],
            ),
          ),
          // ------------------------------------------------------------------- Titulo Escolha
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Escolha",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AjusteCor.conteudo.erro,
                fontSize: AjusteLayout.ajusteTexto(
                  constraints,
                  ajuste: 30,
                  ajusteMin: 15,
                  ajusteMax: 25,
                ),
              ),
            ),
          ),
          // ------------------------------------------------------------------- Opções Jogada
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ------------------------------------------------------------- Botão Pedra
                AnimatedContainer(
                  width: AjusteLayout.ajusteCircular(
                    constraints,
                    ajuste: 20,
                    ajusteMin: 50,
                    ajusteMax: 100,
                  ),
                  height: AjusteLayout.ajusteCircular(
                    constraints,
                    ajuste: 20,
                    ajusteMin: 50,
                    ajusteMax: 100,
                  ),
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 1,
                        ajusteMin: 1,
                        ajusteMax: 4,
                      ),
                      color: AjusteCor.conteudo.bordaMoldura.withOpacity(
                        controladorAnimacao.opacidadePedra,
                      ),
                    ),
                  ),
                  // ----------------------------------------------------------- Detector de Ação
                  child: GestureDetector(
                    onTapDown: (_) => controladorAnimacao.opacidadePedra = 0.8,
                    onTapUp: (_) => controladorPlacar.jogada(
                      controladorAnimacao: controladorAnimacao,
                      historicoJogadas: historicoJogadas,
                      escolhaJogador: 0,
                      pagina: controladorPagina.paginaAtual,
                    ),
                    // --------------------------------------------------------- Icone Pedra
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AjusteImagem.icones.pedra,
                        width: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 30,
                          ajusteMin: 65,
                          ajusteMax: 85,
                        ),
                        height: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 30,
                          ajusteMin: 65,
                          ajusteMax: 85,
                        ),
                      ),
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Botão Papel
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AnimatedContainer(
                    width: AjusteLayout.ajusteCircular(
                      constraints,
                      ajuste: 20,
                      ajusteMin: 50,
                      ajusteMax: 100,
                    ),
                    height: AjusteLayout.ajusteCircular(
                      constraints,
                      ajuste: 20,
                      ajusteMin: 50,
                      ajusteMax: 100,
                    ),
                    alignment: Alignment.center,
                    duration: const Duration(microseconds: 150),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        width: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 1,
                          ajusteMin: 1,
                          ajusteMax: 4,
                        ),
                        color: AjusteCor.conteudo.bordaMoldura.withOpacity(
                          controladorAnimacao.opacidadePapel,
                        ),
                      ),
                    ),
                    // --------------------------------------------------------- Detector de Ação
                    child: GestureDetector(
                      onTapDown: (_) =>
                          controladorAnimacao.opacidadePapel = 0.8,
                      onTapUp: (_) => controladorPlacar.jogada(
                        controladorAnimacao: controladorAnimacao,
                        historicoJogadas: historicoJogadas,
                        escolhaJogador: 1,
                        pagina: controladorPagina.paginaAtual,
                      ),
                      // ------------------------------------------------------- Icone Papel
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AjusteImagem.icones.papel,
                          width: AjusteLayout.ajusteCircular(
                            constraints,
                            ajuste: 30,
                            ajusteMin: 65,
                            ajusteMax: 85,
                          ),
                          height: AjusteLayout.ajusteCircular(
                            constraints,
                            ajuste: 30,
                            ajusteMin: 65,
                            ajusteMax: 85,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Botão Tesoura
                AnimatedContainer(
                  width: AjusteLayout.ajusteCircular(
                    constraints,
                    ajuste: 20,
                    ajusteMin: 50,
                    ajusteMax: 100,
                  ),
                  height: AjusteLayout.ajusteCircular(
                    constraints,
                    ajuste: 20,
                    ajusteMin: 50,
                    ajusteMax: 100,
                  ),
                  alignment: Alignment.center,
                  duration: const Duration(microseconds: 150),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: AjusteLayout.ajusteCircular(
                        constraints,
                        ajuste: 1,
                        ajusteMin: 1,
                        ajusteMax: 4,
                      ),
                      color: AjusteCor.conteudo.bordaMoldura.withOpacity(
                        controladorAnimacao.opacidadeTesoura,
                      ),
                    ),
                  ),
                  // ----------------------------------------------------------- Detector de Ação
                  child: GestureDetector(
                    onTapDown: (_) =>
                        controladorAnimacao.opacidadeTesoura = 0.8,
                    onTapUp: (_) => controladorPlacar.jogada(
                      controladorAnimacao: controladorAnimacao,
                      historicoJogadas: historicoJogadas,
                      escolhaJogador: 2,
                      pagina: controladorPagina.paginaAtual,
                    ),
                    // --------------------------------------------------------- Icone Tesoura
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Image(
                        fit: BoxFit.contain,
                        image: AjusteImagem.icones.tesoura,
                        width: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 30,
                          ajusteMin: 65,
                          ajusteMax: 85,
                        ),
                        height: AjusteLayout.ajusteCircular(
                          constraints,
                          ajuste: 30,
                          ajusteMin: 65,
                          ajusteMax: 85,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ];
        break;
      // ----------------------------------------------------------------------- Caso Página Histórico
      case 2:
        layout = <Widget>[
          // ------------------------------------------------------------------- Titulo Histórico
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Histórico de Jogadas",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AjusteCor.conteudo.erro,
                fontSize: AjusteLayout.ajusteTexto(
                  constraints,
                  ajuste: 30,
                  ajusteMin: 15,
                  ajusteMax: 25,
                ),
              ),
            ),
          ),
          // ------------------------------------------------------------------- Histórico de Jogadas
          Container(
            width: AjusteLayout.ajusteLargura(
              constraints,
              ajuste: 80,
              ajusteMax: 650,
            ),
            height: AjusteLayout.ajusteAltura(constraints, ajuste: 85),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: AjusteCor.conteudo.bordaMoldura,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            // ----------------------------------------------------------------- Lista Histórico
            child: ListHistorico.executar(
              context,
              constraints,
              historicoJogadas,
            ),
          ),
        ];
        break;
      // ----------------------------------------------------------------------- Caso Página Não Encontrada
      default:
        layout = <Widget>[
          // ------------------------------------------------------------------- Imagem Emoji
          Padding(
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
          // ------------------------------------------------------------------- Titulo Página Não Encontrada
          Text(
            "Ops... Página Não Encontrada!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AjusteCor.conteudo.erro,
              fontSize: AjusteLayout.ajusteTexto(
                constraints,
                ajuste: 30,
                ajusteMin: 10,
                ajusteMax: 20,
              ),
            ),
          ),
        ];
    }
    // ------------------------------------------------------------------------- Retorna o Layout
    return layout;
  }
}
