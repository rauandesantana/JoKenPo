import 'package:jokenpo/importar_dependencias.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'controlador_animacao.g.dart';

/*
########## Comando no Terminal para gerar o Controlador ##########
Atualizar Automaticamente => '$ flutter pub run build_runner watch'
Atualizar Manualmente => '$ flutter pub run build_runner build'
 */
class ControladorAnimacao = ControladorAnimacaoBase with _$ControladorAnimacao;

// A Utilização do Mixin Store Serve para Gerar os Controles de Estado.
abstract class ControladorAnimacaoBase with Store {
  // --------------------------------------------------------------------------- Opacidade da Imagem Pedra
  @observable
  double opacidadePedra = 1;
  // --------------------------------------------------------------------------- Opacidade da Imagem Papel
  @observable
  double opacidadePapel = 1;
  // --------------------------------------------------------------------------- Opacidade da Imagem Tesoura
  @observable
  double opacidadeTesoura = 1;

  // --------------------------------------------------------------------------- Função da Animação da Escolha
  @action
  animacaoEscolha({required int escolhaJogador}) {
    // ------------------------------------------------------------------------- Animação do Botão
    switch (escolhaJogador) {
      // ----------------------------------------------------------------------- Caso a Escolha Seja Pedra
      case 0:
        opacidadePedra = 0.5;
        Future.delayed(
          const Duration(milliseconds: 150),
          () {
            opacidadePedra = 1.0;
          },
        );
        break;
      // ----------------------------------------------------------------------- Caso a Escolha Seja Papel
      case 1:
        opacidadePapel = 0.5;
        Future.delayed(
          const Duration(milliseconds: 150),
          () {
            opacidadePapel = 1.0;
          },
        );
        break;
      // ----------------------------------------------------------------------- Caso a Escolha Seja Tesoura
      case 2:
        opacidadeTesoura = 0.5;
        Future.delayed(
          const Duration(milliseconds: 150),
          () {
            opacidadeTesoura = 1.0;
          },
        );
        break;
    }
  }

  // --------------------------------------------------------------------------- Imagem da Escolha do Jogador
  @observable
  AssetImage imagemEscolhaJogador = AjusteImagem.icones.padrao;
  // --------------------------------------------------------------------------- Imagem da Escolha da Máquina
  @observable
  AssetImage imagemEscolhaMaquina = AjusteImagem.icones.padrao;
  // --------------------------------------------------------------------------- Ajuste da Imagem Jogador
  @observable
  double ajusteImagemJogador = 1.0;
  // --------------------------------------------------------------------------- Ajuste da Imagem Máquina
  @observable
  double ajusteImagemMaquina = 1.0;
  // --------------------------------------------------------------------------- Ajuste da Imagem Máquina
  @observable
  String tituloResultado = "";
  // --------------------------------------------------------------------------- Ajuste da Imagem Máquina
  @observable
  Color corResultado = AjusteCor.conteudo.resultadoEmpate;

  // --------------------------------------------------------------------------- Função da Animação do Resultado
  @action
  animacaoResultado({
    required int resultado,
    required int escolhaJogador,
    required int escolhaMaquina,
  }) {
    // ------------------------------------------------------------------------- Verifica Qual a Escolha do Jogador
    switch (escolhaJogador) {
      // ----------------------------------------------------------------------- Caso Seja Pedra
      case 0:
        imagemEscolhaJogador = AjusteImagem.icones.pedra;
        break;
      // ----------------------------------------------------------------------- Caso Seja Papel
      case 1:
        imagemEscolhaJogador = AjusteImagem.icones.papel;
        break;
      // ----------------------------------------------------------------------- Caso Seja Tesoura
      case 2:
        imagemEscolhaJogador = AjusteImagem.icones.tesoura;
        break;
    }
    // ------------------------------------------------------------------------- Verifica Qual a Escolha da Máquina
    switch (escolhaMaquina) {
      // ----------------------------------------------------------------------- Caso Seja Pedra
      case 0:
        imagemEscolhaMaquina = AjusteImagem.icones.pedra;
        break;
      // ----------------------------------------------------------------------- Caso Seja Papel
      case 1:
        imagemEscolhaMaquina = AjusteImagem.icones.papel;
        break;
      // ----------------------------------------------------------------------- Caso Seja Tesoura
      case 2:
        imagemEscolhaMaquina = AjusteImagem.icones.tesoura;
        break;
    }
    // ------------------------------------------------------------------------- Verifica Qual o Valor do Resultado
    switch (resultado) {
      // ----------------------------------------------------------------------- Caso Seja Empate
      case 0:
        tituloResultado = "Empate";
        corResultado = AjusteCor.conteudo.resultadoEmpate;
        ajusteImagemJogador = 1.0;
        ajusteImagemMaquina = 1.0;
        break;
      // ----------------------------------------------------------------------- Caso Seja Vitória
      case 1:
        tituloResultado = "Vitória";
        corResultado = AjusteCor.conteudo.resultadoVitoria;
        ajusteImagemJogador = 1.0;
        ajusteImagemMaquina = 0.5;
        break;
      // ----------------------------------------------------------------------- Caso Seja Derrota
      case 2:
        tituloResultado = "Derrota";
        corResultado = AjusteCor.conteudo.resultadoDerrota;
        ajusteImagemJogador = 0.5;
        ajusteImagemMaquina = 1.0;
        break;
    }
  }

  // --------------------------------------------------------------------------- Função da Animação do Limpar
  @action
  animacaoLimpar() {
    imagemEscolhaJogador = AjusteImagem.icones.padrao;
    imagemEscolhaMaquina = AjusteImagem.icones.padrao;
    ajusteImagemJogador = 1.0;
    ajusteImagemMaquina = 1.0;
    tituloResultado = "";
    corResultado = AjusteCor.conteudo.resultadoEmpate;
  }
}
