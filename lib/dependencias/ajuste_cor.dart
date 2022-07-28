import 'package:flutter/material.dart';

class _Cor {
  // --------------------------------------------------------------------------- Cor Principal
  static Color get principal => Colors.green;
  // --------------------------------------------------------------------------- Cor Fundo
  static Color get fundo => Colors.white;
  // --------------------------------------------------------------------------- Cor Jogador
  static Color get jogador => Colors.blue;
  // --------------------------------------------------------------------------- Cor Máquina
  static Color get maquina => Colors.red;
  // --------------------------------------------------------------------------- Cor Neutra
  static Color get neutra => Colors.grey;
}

// ----------------------------------------------------------------------------- Ajuste Cor
class AjusteCor {
  const AjusteCor();
  static $BarraSuperior get barraSuperior => const $BarraSuperior();
  static $Conteudo get conteudo => const $Conteudo();
  static $BarraInferior get barraInferior => const $BarraInferior();
}

// ----------------------------------------------------------------------------- Barra Superior
class $BarraSuperior {
  const $BarraSuperior();
  Color get fundoBarra => _Cor.principal;
  Color get fundoTitulo => _Cor.fundo;
  Color get tituloBarra => _Cor.fundo;
  Color get tituloJogador => _Cor.jogador;
  Color get tituloMaquina => _Cor.maquina;
}

// ----------------------------------------------------------------------------- Conteúdo
class $Conteudo {
  const $Conteudo();
  Color get fundoConteudo => _Cor.fundo;
  Color get tituloHistorico => _Cor.principal;
  Color get resultadoVitoria => _Cor.jogador;
  Color get resultadoDerrota => _Cor.maquina;
  Color get resultadoEmpate => _Cor.neutra;
  Color get erro => _Cor.principal;
  Color get botaoNao => _Cor.neutra;
  Color get botaoSim => _Cor.principal;
  Color get bordaMoldura => _Cor.principal;
  Color get bordaJogador => _Cor.jogador;
  Color get bordaMaquina => _Cor.maquina;
}

// ----------------------------------------------------------------------------- Barra Inferior
class $BarraInferior {
  const $BarraInferior();
  Color get fundoBarra => _Cor.fundo;
  Color get tituloBotao => _Cor.fundo;
  Color get ativoBotao => _Cor.principal;
  Color get desativadoBotao => _Cor.neutra;
}
