import 'package:mobx/mobx.dart';
part 'historico_jogadas.g.dart';

/*
########## Comando no Terminal para gerar o Controlador ##########
Atualizar Automaticamente => '$ flutter pub run build_runner watch'
Atualizar Manualmente => '$ flutter pub run build_runner build'
 */
class HistoricoJogadas = HistoricoJogadasBase with _$HistoricoJogadas;

// A Utilização do Mixin Store Serve para Gerar os Controles de Estado.
abstract class HistoricoJogadasBase with Store {
  // --------------------------------------------------------------------------- Histórico de jogadas Realizadas Pelo Jogador
  @observable
  List<int> modoPartida = [];
  // --------------------------------------------------------------------------- Histórico de jogadas Realizadas Pelo Jogador
  @observable
  List<int> resultadoPartida = [];
  // --------------------------------------------------------------------------- Histórico de jogadas Realizadas Pelo Jogador
  @observable
  List<int> jogadaAntJogador = [];
  // --------------------------------------------------------------------------- Histórico de jogadas Realizadas Pela Maquina
  @observable
  List<int> jogadaAntMaquina = [];
  // --------------------------------------------------------------------------- Histórico de Partidas
  @observable
  int nPartidas = 0;

  // --------------------------------------------------------------------------- Função Salvar Partida
  salvarPartida({
    required int pagina,
    required int resultado,
    required int escolhaJogador,
    required int escolhaMaquina,
  }) {
    modoPartida.add(pagina);
    resultadoPartida.add(resultado);
    jogadaAntJogador.add(escolhaJogador);
    jogadaAntMaquina.add(escolhaMaquina);
    nPartidas++;
  }

  // --------------------------------------------------------------------------- Função Limpar Histórico
  limparHistorico() {
    modoPartida.clear();
    resultadoPartida.clear();
    jogadaAntJogador.clear();
    jogadaAntMaquina.clear();
    nPartidas = 0;
  }
}
