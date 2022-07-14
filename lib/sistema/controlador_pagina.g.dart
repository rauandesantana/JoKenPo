// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controlador_pagina.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControladorPagina on ControladorPaginaBase, Store {
  late final _$paginaAtualAtom =
      Atom(name: 'ControladorPaginaBase.paginaAtual', context: context);

  @override
  int get paginaAtual {
    _$paginaAtualAtom.reportRead();
    return super.paginaAtual;
  }

  @override
  set paginaAtual(int value) {
    _$paginaAtualAtom.reportWrite(value, super.paginaAtual, () {
      super.paginaAtual = value;
    });
  }

  late final _$ControladorPaginaBaseActionController =
      ActionController(name: 'ControladorPaginaBase', context: context);

  @override
  dynamic acessarPagina({required int pagina}) {
    final _$actionInfo = _$ControladorPaginaBaseActionController.startAction(
        name: 'ControladorPaginaBase.acessarPagina');
    try {
      return super.acessarPagina(pagina: pagina);
    } finally {
      _$ControladorPaginaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
paginaAtual: ${paginaAtual}
    ''';
  }
}
