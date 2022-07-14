// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controlador_placar.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControladorPlacar on ControladorPlacarBase, Store {
  late final _$pontosJogadorAtom =
      Atom(name: 'ControladorPlacarBase.pontosJogador', context: context);

  @override
  int get pontosJogador {
    _$pontosJogadorAtom.reportRead();
    return super.pontosJogador;
  }

  @override
  set pontosJogador(int value) {
    _$pontosJogadorAtom.reportWrite(value, super.pontosJogador, () {
      super.pontosJogador = value;
    });
  }

  late final _$pontosMaquinaAtom =
      Atom(name: 'ControladorPlacarBase.pontosMaquina', context: context);

  @override
  int get pontosMaquina {
    _$pontosMaquinaAtom.reportRead();
    return super.pontosMaquina;
  }

  @override
  set pontosMaquina(int value) {
    _$pontosMaquinaAtom.reportWrite(value, super.pontosMaquina, () {
      super.pontosMaquina = value;
    });
  }

  late final _$ControladorPlacarBaseActionController =
      ActionController(name: 'ControladorPlacarBase', context: context);

  @override
  dynamic jogada(
      {required ControladorAnimacao controladorAnimacao,
      required int escolhaJogador,
      required int pagina}) {
    final _$actionInfo = _$ControladorPlacarBaseActionController.startAction(
        name: 'ControladorPlacarBase.jogada');
    try {
      return super.jogada(
          controladorAnimacao: controladorAnimacao,
          escolhaJogador: escolhaJogador,
          pagina: pagina);
    } finally {
      _$ControladorPlacarBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic resetarPartidas({required ControladorAnimacao controladorAnimacao}) {
    final _$actionInfo = _$ControladorPlacarBaseActionController.startAction(
        name: 'ControladorPlacarBase.resetarPartidas');
    try {
      return super.resetarPartidas(controladorAnimacao: controladorAnimacao);
    } finally {
      _$ControladorPlacarBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pontosJogador: ${pontosJogador},
pontosMaquina: ${pontosMaquina}
    ''';
  }
}
