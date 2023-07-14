import 'dart:math';
import 'package:jokenpo/sistema/historico_jogadas.dart';

class JogadaMaquina {
  // --------------------------------------------------------------------------- Função Escolha da Máquina
  static int escolha({
    required HistoricoJogadas historicoJogadas,
  }) {
    // ------------------------------------------------------------------------- Ultima jogada Realizada Pela Maquina
    int nAntPartida = historicoJogadas.nPartidas - 1;
    late int jogadaAntJogador;
    late int jogadaAntMaquina;
    // ------------------------------------------------------------------------- Se o Indice é Menor Que 0
    if (nAntPartida < 0) {
      jogadaAntJogador = 0;
      jogadaAntMaquina = 0;
    }
    // ------------------------------------------------------------------------- Se o Indice Não é Menor Que 0
    else {
      // ----------------------------------------------------------------------- Ultima jogada Realizada Pelo Jogador
      jogadaAntJogador = historicoJogadas.jogadaAntJogador[nAntPartida];
      // ----------------------------------------------------------------------- Ultima jogada Realizada Pela Maquina
      jogadaAntMaquina = historicoJogadas.jogadaAntMaquina[nAntPartida];
    }
    // ------------------------------------------------------------------------- Receberá a Escolha da Máquina
    late int escolhaMaquina;
    // ------------------------------------------------------------------------- Verifica Aleatóriamente Qual Estratégia Usar
    switch (Random().nextInt(5)) {
      // ----------------------------------------------------------------------- Usar a Estratégia "Jogada Aleatóroia"
      case 0:
        // --------------------------------------------------------------------- Atribui a escolhaMaquina um Valor Aleatório
        escolhaMaquina = Random().nextInt(3);
        break;
      // ----------------------------------------------------------------------- Usar a Estratégia "Mirar na Derrota Para Acertar a Vitória"
      case 1:
        // --------------------------------------------------------------------- Verifica a Jogada Anterior do Jogador
        switch (jogadaAntJogador) {
          // ------------------------------------------------------------------- Caso Seja Pedra
          case 0:
            // ----------------------------------------------------------------- Escolher Tesoura
            escolhaMaquina = 2;
            break;
          // ------------------------------------------------------------------- Caso Seja Papel
          case 1:
            // ----------------------------------------------------------------- Escolher Pedra
            escolhaMaquina = 0;
            break;
          // ------------------------------------------------------------------- Caso Seja Tesoura
          case 2:
            // ----------------------------------------------------------------- Escolher Papel
            escolhaMaquina = 1;
            break;
        }
        break;
      // ----------------------------------------------------------------------- Usar a Estratégia "Espelho de Um Inimigo Antigo"
      case 2:
        // --------------------------------------------------------------------- Escolhe a Jogada Anterior do Jogador
        escolhaMaquina = jogadaAntJogador;
        break;
      // ----------------------------------------------------------------------- Usar a Estratégia "Corrigir Um Passado Perdido"
      case 3:
        // --------------------------------------------------------------------- Verifica a Jogada Anterior do Jogador
        switch (jogadaAntJogador) {
          // ------------------------------------------------------------------- Caso Seja Pedra
          case 0:
            // ----------------------------------------------------------------- Escolher Papel
            escolhaMaquina = 1;
            break;
          // ------------------------------------------------------------------- Caso Seja Papel
          case 1:
            // ----------------------------------------------------------------- Escolher Tesoura
            escolhaMaquina = 2;
            break;
          // ------------------------------------------------------------------- Caso Seja Tesoura
          case 2:
            // ----------------------------------------------------------------- Escolher Pedra
            escolhaMaquina = 0;
            break;
        }
        break;
      // ----------------------------------------------------------------------- Usar a Estratégia "Repetir a Jogada Anterior"
      case 4:
        // --------------------------------------------------------------------- Escolhe a Jogada Anterior da Máquina
        escolhaMaquina = jogadaAntMaquina;
        break;
    }
    // ------------------------------------------------------------------------- Retorna a Escolha da Maquina
    return escolhaMaquina;
  }
}
