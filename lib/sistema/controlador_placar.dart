import 'package:jokenpo/importar_dependencias.dart';
import 'package:mobx/mobx.dart';
part 'controlador_placar.g.dart';

/*
########## Comando no Terminal para gerar o Controlador ##########
Atualizar Automaticamente => '$ flutter pub run build_runner watch'
Atualizar Manualmente => '$ flutter pub run build_runner build'
 */
class ControladorPlacar = ControladorPlacarBase with _$ControladorPlacar;

// A Utilização do Mixin Store Serve para Gerar os Controles de Estado.
abstract class ControladorPlacarBase with Store {
  // --------------------------------------------------------------------------- Pontos do Jogador
  @observable
  int pontosJogador = 0;
  // --------------------------------------------------------------------------- Pontos da Máquina
  @observable
  int pontosMaquina = 0;

  // --------------------------------------------------------------------------- Função jogada
  @action
  jogada({
    required ControladorAnimacao controladorAnimacao,
    required int escolhaJogador,
    required int pagina,
  }) {
    // ------------------------------------------------------------------------- Escolha da Máquina
    int escolhaMaquina = JogadaMaquina.escolha();
    // ------------------------------------------------------------------------- Verifica qual o Modo Atual
    switch (pagina) {
    // ----------------------------------------------------------------------- Caso Esteja no Modo Combate
      case 0:
      // --------------------------------------------------------------------- Executar Animação da Escolha
        controladorAnimacao.animacaoEscolha(escolhaJogador: escolhaJogador);
        // --------------------------------------------------------------------- Receberá o Resultado da Partida
        late int resultado;
        // --------------------------------------------------------------------- Se Resultar em Empate
        if (escolhaJogador == escolhaMaquina) {
          resultado = 0;
        }
        // --------------------------------------------------------------------- Se Não Resultar em Empate
        else {
          // ------------------------------------------------------------------- Se o Jogador Vencer
          if ((escolhaJogador == 0 && escolhaMaquina == 2) ||
              (escolhaJogador == 1 && escolhaMaquina == 0) ||
              (escolhaJogador == 2 && escolhaMaquina == 1)) {
            resultado = 1;
            pontosJogador++;
          }
          // ------------------------------------------------------------------- Se o Jogador Não Vencer
          else {
            resultado = 2;
            pontosMaquina++;
          }
        }
        // --------------------------------------------------------------------- Executar Animação de Resultado
        controladorAnimacao.animacaoResultado(
          resultado: resultado,
          escolhaJogador: escolhaJogador,
          escolhaMaquina: escolhaMaquina,
        );
        // --------------------------------------------------------------------- Salva no Histórico os Detalhes da Partida
        HistoricoJogadas.salvarPartida(
          resultado: resultado,
          escolhaJogador: escolhaJogador,
          escolhaMaquina: escolhaMaquina,
        );
        break;
    // ----------------------------------------------------------------------- Caso Esteja no Modo Adivinhe
      case 1:
      // --------------------------------------------------------------------- Executar Animação da Escolha
        controladorAnimacao.animacaoEscolha(escolhaJogador: escolhaJogador);
        // --------------------------------------------------------------------- Receberá o Resultado da Partida
        late int resultado;
        // --------------------------------------------------------------------- Se o Jogador Vencer
        if (escolhaJogador == escolhaMaquina) {
          resultado = 1;
          pontosJogador++;
        }
        // --------------------------------------------------------------------- Se o Jogador Não Vencer
        else {
          resultado = 2;
          pontosMaquina++;
        }
        // --------------------------------------------------------------------- Executar Animação de Resultado
        controladorAnimacao.animacaoResultado(
          resultado: resultado,
          escolhaJogador: escolhaJogador,
          escolhaMaquina: escolhaMaquina,
        );
        // --------------------------------------------------------------------- Salva no Histórico os Detalhes da Partida
        HistoricoJogadas.salvarPartida(
          resultado: resultado,
          escolhaJogador: escolhaJogador,
          escolhaMaquina: escolhaMaquina,
        );
        break;
    }
  }

  // --------------------------------------------------------------------------- Função Resetar as Partidas
  @action
  resetarPartidas({required ControladorAnimacao controladorAnimacao}) {
    pontosJogador = 0;
    pontosMaquina = 0;
    controladorAnimacao.animacaoLimpar();
    HistoricoJogadas.limparHistorico();
  }
}
