import 'package:flutter/material.dart';

class AjusteLayout {
  // --------------------------------------------------------------------------- Escala Layout
  static String escalaLayout(BoxConstraints constraints) {
    // ------------------------------------------------------------------------- Se a Largura disponível é igual ou abaixo de 500.
    if (constraints.maxWidth <= 500) {
      return "A";
    }
    // ------------------------------------------------------------------------- Se a Largura disponível é maior que 500.
    else if (constraints.maxWidth > 500) {
      return "B";
    }
    // ------------------------------------------------------------------------- Se a Largura disponível não está entre os requisitos acima.
    else {
      return "Null";
    }
  }

  // --------------------------------------------------------------------------- Ajuste Texto
  static double ajusteTexto(
    BoxConstraints constraints, {
    required double ajuste,
    double? ajusteMin,
    double? ajusteMax,
  }) {
    // ------------------------------------------------------------------------- Atribui o Valor de Ajuste
    double ajusteTexto = constraints.maxHeight * (ajuste / 1000);
    // ------------------------------------------------------------------------- Se ajusteMin é Nulo Atribui-se 1
    ajusteMin ??= 1;
    // ------------------------------------------------------------------------- Se ajusteMax é Nulo Atribui-se Tamanho Maximo da Tela
    ajusteMax ??= constraints.maxHeight;
    // ------------------------------------------------------------------------- Se ajusteMin é Menor que 0
    if (ajusteMin <= 0) {
      ajusteMin = 1;
    }
    // ------------------------------------------------------------------------- Se ajusteMax é Maior que o Tamanho Maximo da Tela
    if (ajusteMax > constraints.maxHeight) {
      ajusteMax = constraints.maxHeight;
    }
    // ------------------------------------------------------------------------- Se ajusteMin é Maior que ajusteMax
    if (ajusteMin > ajusteMax) {
      ajusteMin = ajusteMax;
    }
    // ------------------------------------------------------------------------- Se ajusteTexto é Menor que ajusteMin
    if (ajusteTexto < ajusteMin) {
      ajusteTexto = ajusteMin;
    }
    // ------------------------------------------------------------------------- Se ajusteTexto é Maior que ajusteMax
    else if (ajusteTexto > ajusteMax) {
      ajusteTexto = ajusteMax;
    }
    // ------------------------------------------------------------------------- Retorna ajusteTexto
    return ajusteTexto;
  }

  // --------------------------------------------------------------------------- Ajuste Largura
  static double ajusteLargura(
    BoxConstraints constraints, {
    required double ajuste,
    double? ajusteMin,
    double? ajusteMax,
  }) {
    // ------------------------------------------------------------------------- Atribui o Valor de Ajuste
    double ajusteLargura = constraints.maxWidth * (ajuste / 100);
    // ------------------------------------------------------------------------- Se ajusteMin é Nulo Atribui-se 1
    ajusteMin ??= 1;
    // ------------------------------------------------------------------------- Se ajusteMax é Nulo Atribui-se Tamanho Maximo da Tela
    ajusteMax ??= constraints.maxWidth;
    // ------------------------------------------------------------------------- Se ajusteMin é Menor que 0
    if (ajusteMin <= 0) {
      ajusteMin = 1;
    }
    // ------------------------------------------------------------------------- Se ajusteMax é Maior que o Tamanho Maximo da Tela
    if (ajusteMax > constraints.maxWidth) {
      ajusteMax = constraints.maxWidth;
    }
    // ------------------------------------------------------------------------- Se ajusteMin é Maior que ajusteMax
    if (ajusteMin > ajusteMax) {
      ajusteMin = ajusteMax;
    }
    // ------------------------------------------------------------------------- Se ajusteLargura é Menor que ajusteMin
    if (ajusteLargura < ajusteMin) {
      ajusteLargura = ajusteMin;
    }
    // ------------------------------------------------------------------------- Se ajusteLargura é Maior que ajusteMax
    else if (ajusteLargura > ajusteMax) {
      ajusteLargura = ajusteMax;
    }
    // ------------------------------------------------------------------------- Retorna ajusteLargura
    return ajusteLargura;
  }

  // --------------------------------------------------------------------------- Ajuste Altura
  static double ajusteAltura(
    BoxConstraints constraints, {
    required double ajuste,
    double? ajusteMin,
    double? ajusteMax,
  }) {
    // ------------------------------------------------------------------------- Atribui o Valor de Ajuste
    double ajusteAltura = constraints.maxHeight * (ajuste / 100);
    // ------------------------------------------------------------------------- Se ajusteMin é Nulo Atribui-se 1
    ajusteMin ??= 1;
    // ------------------------------------------------------------------------- Se ajusteMax é Nulo Atribui-se Tamanho Maximo da Tela
    ajusteMax ??= constraints.maxHeight;
    // ------------------------------------------------------------------------- Se ajusteMin é Menor que 0
    if (ajusteMin <= 0) {
      ajusteMin = 1;
    }
    // ------------------------------------------------------------------------- Se ajusteMax é Maior que o Tamanho Maximo da Tela
    if (ajusteMax > constraints.maxHeight) {
      ajusteMax = constraints.maxHeight;
    }
    // ------------------------------------------------------------------------- Se ajusteMin é Maior que ajusteMax
    if (ajusteMin > ajusteMax) {
      ajusteMin = ajusteMax;
    }
    // ------------------------------------------------------------------------- Se ajusteAltura é Menor que ajusteMin
    if (ajusteAltura < ajusteMin) {
      ajusteAltura = ajusteMin;
    }
    // ------------------------------------------------------------------------- Se ajusteAltura é Maior que ajusteMax
    else if (ajusteAltura > ajusteMax) {
      ajusteAltura = ajusteMax;
    }
    // ------------------------------------------------------------------------- Retorna ajusteAltura
    return ajusteAltura;
  }

  // --------------------------------------------------------------------------- Ajuste Circular
  static double ajusteCircular(
    BoxConstraints constraints, {
    required double ajuste,
    double? ajusteMin,
    double? ajusteMax,
  }) {
    // ------------------------------------------------------------------------- Atribui o Menor Tamanho da Tela
    late double tamanho;
    // ------------------------------------------------------------------------- Se Largura da Tela For Menor
    if (constraints.maxWidth < constraints.maxHeight) {
      tamanho = constraints.maxWidth;
    }
    // ------------------------------------------------------------------------- Se Altura da Tela For Menor
    else {
      tamanho = constraints.maxHeight;
    }
    // ------------------------------------------------------------------------- Atribui o Valor de Ajuste
    double ajusteCircular = tamanho * (ajuste / 100);
    // ------------------------------------------------------------------------- Se ajusteMin é Nulo Atribui-se 1
    ajusteMin ??= 1;
    // ------------------------------------------------------------------------- Se ajusteMax é Nulo Atribui-se Tamanho Maximo da Tela
    ajusteMax ??= tamanho;
    // ------------------------------------------------------------------------- Se ajusteMin é Menor que 0
    if (ajusteMin <= 0) {
      ajusteMin = 1;
    }
    // ------------------------------------------------------------------------- Se ajusteMax é Maior que o Tamanho Maximo da Tela
    if (ajusteMax > tamanho) {
      ajusteMax = tamanho;
    }
    // ------------------------------------------------------------------------- Se ajusteMin é Maior que ajusteMax
    if (ajusteMin > ajusteMax) {
      ajusteMin = ajusteMax;
    }
    // ------------------------------------------------------------------------- Se ajusteCircular é Menor que ajusteMin
    if (ajusteCircular < ajusteMin) {
      ajusteCircular = ajusteMin;
    }
    // ------------------------------------------------------------------------- Se ajusteCircular é Maior que ajusteMax
    else if (ajusteCircular > ajusteMax) {
      ajusteCircular = ajusteMax;
    }
    // ------------------------------------------------------------------------- Retorna ajusteCircular
    return ajusteCircular;
  }
}
