import 'package:mobx/mobx.dart';
part 'controlador_pagina.g.dart';

/*
########## Comando no Terminal para gerar o Controlador ##########
Atualizar Automaticamente => '$ flutter pub run build_runner watch'
Atualizar Manualmente => '$ flutter pub run build_runner build'
 */
class ControladorPagina = ControladorPaginaBase with _$ControladorPagina;

// A Utilização do Mixin Store Serve para Gerar os Controles de Estado.
abstract class ControladorPaginaBase with Store {
  // --------------------------------------------------------------------------- Indice da Página
  @observable
  int paginaAtual = 0;

  // --------------------------------------------------------------------------- Função Acessar a Página
  @action
  acessarPagina({required int pagina, required controladorAnimacao}) {
    paginaAtual = pagina;
    controladorAnimacao.animacaoLimpar();
  }
}
