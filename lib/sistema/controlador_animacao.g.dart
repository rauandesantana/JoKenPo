// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controlador_animacao.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControladorAnimacao on ControladorAnimacaoBase, Store {
  late final _$opacidadePedraAtom =
      Atom(name: 'ControladorAnimacaoBase.opacidadePedra', context: context);

  @override
  double get opacidadePedra {
    _$opacidadePedraAtom.reportRead();
    return super.opacidadePedra;
  }

  @override
  set opacidadePedra(double value) {
    _$opacidadePedraAtom.reportWrite(value, super.opacidadePedra, () {
      super.opacidadePedra = value;
    });
  }

  late final _$opacidadePapelAtom =
      Atom(name: 'ControladorAnimacaoBase.opacidadePapel', context: context);

  @override
  double get opacidadePapel {
    _$opacidadePapelAtom.reportRead();
    return super.opacidadePapel;
  }

  @override
  set opacidadePapel(double value) {
    _$opacidadePapelAtom.reportWrite(value, super.opacidadePapel, () {
      super.opacidadePapel = value;
    });
  }

  late final _$opacidadeTesouraAtom =
      Atom(name: 'ControladorAnimacaoBase.opacidadeTesoura', context: context);

  @override
  double get opacidadeTesoura {
    _$opacidadeTesouraAtom.reportRead();
    return super.opacidadeTesoura;
  }

  @override
  set opacidadeTesoura(double value) {
    _$opacidadeTesouraAtom.reportWrite(value, super.opacidadeTesoura, () {
      super.opacidadeTesoura = value;
    });
  }

  late final _$imagemEscolhaJogadorAtom = Atom(
      name: 'ControladorAnimacaoBase.imagemEscolhaJogador', context: context);

  @override
  AssetImage get imagemEscolhaJogador {
    _$imagemEscolhaJogadorAtom.reportRead();
    return super.imagemEscolhaJogador;
  }

  @override
  set imagemEscolhaJogador(AssetImage value) {
    _$imagemEscolhaJogadorAtom.reportWrite(value, super.imagemEscolhaJogador,
        () {
      super.imagemEscolhaJogador = value;
    });
  }

  late final _$imagemEscolhaMaquinaAtom = Atom(
      name: 'ControladorAnimacaoBase.imagemEscolhaMaquina', context: context);

  @override
  AssetImage get imagemEscolhaMaquina {
    _$imagemEscolhaMaquinaAtom.reportRead();
    return super.imagemEscolhaMaquina;
  }

  @override
  set imagemEscolhaMaquina(AssetImage value) {
    _$imagemEscolhaMaquinaAtom.reportWrite(value, super.imagemEscolhaMaquina,
        () {
      super.imagemEscolhaMaquina = value;
    });
  }

  late final _$ajusteImagemJogadorAtom = Atom(
      name: 'ControladorAnimacaoBase.ajusteImagemJogador', context: context);

  @override
  double get ajusteImagemJogador {
    _$ajusteImagemJogadorAtom.reportRead();
    return super.ajusteImagemJogador;
  }

  @override
  set ajusteImagemJogador(double value) {
    _$ajusteImagemJogadorAtom.reportWrite(value, super.ajusteImagemJogador, () {
      super.ajusteImagemJogador = value;
    });
  }

  late final _$ajusteImagemMaquinaAtom = Atom(
      name: 'ControladorAnimacaoBase.ajusteImagemMaquina', context: context);

  @override
  double get ajusteImagemMaquina {
    _$ajusteImagemMaquinaAtom.reportRead();
    return super.ajusteImagemMaquina;
  }

  @override
  set ajusteImagemMaquina(double value) {
    _$ajusteImagemMaquinaAtom.reportWrite(value, super.ajusteImagemMaquina, () {
      super.ajusteImagemMaquina = value;
    });
  }

  late final _$tituloResultadoAtom =
      Atom(name: 'ControladorAnimacaoBase.tituloResultado', context: context);

  @override
  String get tituloResultado {
    _$tituloResultadoAtom.reportRead();
    return super.tituloResultado;
  }

  @override
  set tituloResultado(String value) {
    _$tituloResultadoAtom.reportWrite(value, super.tituloResultado, () {
      super.tituloResultado = value;
    });
  }

  late final _$corResultadoAtom =
      Atom(name: 'ControladorAnimacaoBase.corResultado', context: context);

  @override
  Color get corResultado {
    _$corResultadoAtom.reportRead();
    return super.corResultado;
  }

  @override
  set corResultado(Color value) {
    _$corResultadoAtom.reportWrite(value, super.corResultado, () {
      super.corResultado = value;
    });
  }

  late final _$ControladorAnimacaoBaseActionController =
      ActionController(name: 'ControladorAnimacaoBase', context: context);

  @override
  dynamic animacaoEscolha({required int escolhaJogador}) {
    final _$actionInfo = _$ControladorAnimacaoBaseActionController.startAction(
        name: 'ControladorAnimacaoBase.animacaoEscolha');
    try {
      return super.animacaoEscolha(escolhaJogador: escolhaJogador);
    } finally {
      _$ControladorAnimacaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic animacaoResultado(
      {required int resultado,
      required int escolhaJogador,
      required int escolhaMaquina}) {
    final _$actionInfo = _$ControladorAnimacaoBaseActionController.startAction(
        name: 'ControladorAnimacaoBase.animacaoResultado');
    try {
      return super.animacaoResultado(
          resultado: resultado,
          escolhaJogador: escolhaJogador,
          escolhaMaquina: escolhaMaquina);
    } finally {
      _$ControladorAnimacaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic animacaoLimpar() {
    final _$actionInfo = _$ControladorAnimacaoBaseActionController.startAction(
        name: 'ControladorAnimacaoBase.animacaoLimpar');
    try {
      return super.animacaoLimpar();
    } finally {
      _$ControladorAnimacaoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
opacidadePedra: ${opacidadePedra},
opacidadePapel: ${opacidadePapel},
opacidadeTesoura: ${opacidadeTesoura},
imagemEscolhaJogador: ${imagemEscolhaJogador},
imagemEscolhaMaquina: ${imagemEscolhaMaquina},
ajusteImagemJogador: ${ajusteImagemJogador},
ajusteImagemMaquina: ${ajusteImagemMaquina},
tituloResultado: ${tituloResultado},
corResultado: ${corResultado}
    ''';
  }
}
