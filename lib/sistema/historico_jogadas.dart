class HistoricoJogadas {
  // --------------------------------------------------------------------------- Histórico de jogadas Realizadas Pelo Jogador
  static List<int> jogadaAntJogador = [];
  // --------------------------------------------------------------------------- Histórico de jogadas Realizadas Pela Maquina
  static List<int> jogadaAntMaquina = [];
  // --------------------------------------------------------------------------- Histórico de Partidas
  static int nPartidas = 0;

  // --------------------------------------------------------------------------- Função Salvar Partida
  static void salvarPartida({
    required int resultado,
    required int escolhaJogador,
    required int escolhaMaquina,
  }) {
    jogadaAntJogador.add(escolhaJogador);
    jogadaAntMaquina.add(escolhaMaquina);
    nPartidas++;
  }

  // --------------------------------------------------------------------------- Função Limpar Histórico
  static void limparHistorico() {
    jogadaAntJogador.clear();
    jogadaAntMaquina.clear();
    nPartidas = 0;
  }
}
