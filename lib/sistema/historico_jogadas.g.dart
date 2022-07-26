// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historico_jogadas.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HistoricoJogadas on HistoricoJogadasBase, Store {
  late final _$modoPartidaAtom =
      Atom(name: 'HistoricoJogadasBase.modoPartida', context: context);

  @override
  List<int> get modoPartida {
    _$modoPartidaAtom.reportRead();
    return super.modoPartida;
  }

  @override
  set modoPartida(List<int> value) {
    _$modoPartidaAtom.reportWrite(value, super.modoPartida, () {
      super.modoPartida = value;
    });
  }

  late final _$resultadoPartidaAtom =
      Atom(name: 'HistoricoJogadasBase.resultadoPartida', context: context);

  @override
  List<int> get resultadoPartida {
    _$resultadoPartidaAtom.reportRead();
    return super.resultadoPartida;
  }

  @override
  set resultadoPartida(List<int> value) {
    _$resultadoPartidaAtom.reportWrite(value, super.resultadoPartida, () {
      super.resultadoPartida = value;
    });
  }

  late final _$jogadaAntJogadorAtom =
      Atom(name: 'HistoricoJogadasBase.jogadaAntJogador', context: context);

  @override
  List<int> get jogadaAntJogador {
    _$jogadaAntJogadorAtom.reportRead();
    return super.jogadaAntJogador;
  }

  @override
  set jogadaAntJogador(List<int> value) {
    _$jogadaAntJogadorAtom.reportWrite(value, super.jogadaAntJogador, () {
      super.jogadaAntJogador = value;
    });
  }

  late final _$jogadaAntMaquinaAtom =
      Atom(name: 'HistoricoJogadasBase.jogadaAntMaquina', context: context);

  @override
  List<int> get jogadaAntMaquina {
    _$jogadaAntMaquinaAtom.reportRead();
    return super.jogadaAntMaquina;
  }

  @override
  set jogadaAntMaquina(List<int> value) {
    _$jogadaAntMaquinaAtom.reportWrite(value, super.jogadaAntMaquina, () {
      super.jogadaAntMaquina = value;
    });
  }

  late final _$nPartidasAtom =
      Atom(name: 'HistoricoJogadasBase.nPartidas', context: context);

  @override
  int get nPartidas {
    _$nPartidasAtom.reportRead();
    return super.nPartidas;
  }

  @override
  set nPartidas(int value) {
    _$nPartidasAtom.reportWrite(value, super.nPartidas, () {
      super.nPartidas = value;
    });
  }

  @override
  String toString() {
    return '''
modoPartida: ${modoPartida},
resultadoPartida: ${resultadoPartida},
jogadaAntJogador: ${jogadaAntJogador},
jogadaAntMaquina: ${jogadaAntMaquina},
nPartidas: ${nPartidas}
    ''';
  }
}
