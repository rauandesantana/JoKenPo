import 'package:flutter/material.dart';
import 'package:jokenpo/importar_dependencias.dart';

class BarraInferior {
  // --------------------------------------------------------------------------- Função cor Botão
  static Color corBotao({required int botao, required int pagina}) {
    // ------------------------------------------------------------------------- Se Indice do Botão é igual ao da Página
    if (botao == pagina) {
      // ----------------------------------------------------------------------- Retorna Cor Neutra ao Botão
      return AjusteCor.barraInferior.desativadoBotao;
    } else {
      // ----------------------------------------------------------------------- Retorna Cor Ativa ao Botão
      return AjusteCor.barraInferior.ativoBotao;
    }
  }

  // --------------------------------------------------------------------------- Barra Inferior
  static List<Widget> layout(
    BuildContext context,
    BoxConstraints constraints, {
    required ControladorPagina controladorPagina,
    required ControladorPlacar controladorPlacar,
    required HistoricoJogadas historicoJogadas,
    required ControladorAnimacao controladorAnimacao,
  }) {
    // ------------------------------------------------------------------------- Retorna o Layout
    return <Widget>[
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            spacing: 5,
            runSpacing: 5,
            children: <Widget>[
              // --------------------------------------------------------------- Botão Modo Combate
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      AjusteLayout.ajusteLargura(
                        constraints,
                        ajuste: 15,
                        ajusteMax: 200,
                        ajusteMin: 170,
                      ),
                      AjusteLayout.ajusteAltura(
                        constraints,
                        ajuste: 10,
                        ajusteMax: 50,
                        ajusteMin: 20,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    // --------------------------------------------------------- Aplicar Cor do Botão
                    corBotao(
                      botao: 0,
                      pagina: controladorPagina.paginaAtual,
                    ),
                  ),
                ),
                // ------------------------------------------------------------- Função Botão Modo Combate
                onPressed: controladorPagina.paginaAtual != 0
                    ? () => controladorPagina.acessarPagina(pagina: 0)
                    : null,
                // ------------------------------------------------------------- Titulo Botão Modo Combate
                child: Text(
                  "Modo Combate",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AjusteCor.barraInferior.tituloBotao,
                  ),
                ),
              ),
              // --------------------------------------------------------------- Botão Modo Adivinhe
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      AjusteLayout.ajusteLargura(
                        constraints,
                        ajuste: 15,
                        ajusteMax: 200,
                        ajusteMin: 170,
                      ),
                      AjusteLayout.ajusteAltura(
                        constraints,
                        ajuste: 10,
                        ajusteMax: 50,
                        ajusteMin: 20,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    // --------------------------------------------------------- Aplicar Cor do Botão
                    corBotao(botao: 1, pagina: controladorPagina.paginaAtual),
                  ),
                ),
                // ------------------------------------------------------------- Função Botão Modo Adivinhe
                onPressed: controladorPagina.paginaAtual != 1
                    ? () => controladorPagina.acessarPagina(pagina: 1)
                    : null,
                // ------------------------------------------------------------- Titulo Botão Modo Adivinhe
                child: Text(
                  "Modo Adivinhe",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AjusteCor.barraInferior.tituloBotao,
                  ),
                ),
              ),
              // --------------------------------------------------------------- Botão Histórico
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      AjusteLayout.ajusteLargura(
                        constraints,
                        ajuste: 15,
                        ajusteMax: 200,
                        ajusteMin: 170,
                      ),
                      AjusteLayout.ajusteAltura(
                        constraints,
                        ajuste: 10,
                        ajusteMax: 50,
                        ajusteMin: 20,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    // --------------------------------------------------------- Aplicar Cor do Botão
                    corBotao(botao: 2, pagina: controladorPagina.paginaAtual),
                  ),
                ),
                // ------------------------------------------------------------- Função Botão Histórico
                onPressed: controladorPagina.paginaAtual != 2
                    ? () => controladorPagina.acessarPagina(pagina: 2)
                    : null,
                // ------------------------------------------------------------- Titulo Botão Histórico
                child: Text(
                  "Histórico de Jogadas",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AjusteCor.barraInferior.tituloBotao,
                  ),
                ),
              ),
              // --------------------------------------------------------------- Botão Resetar
              ElevatedButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(
                      AjusteLayout.ajusteLargura(
                        constraints,
                        ajuste: 15,
                        ajusteMax: 200,
                        ajusteMin: 170,
                      ),
                      AjusteLayout.ajusteAltura(
                        constraints,
                        ajuste: 10,
                        ajusteMax: 50,
                        ajusteMin: 20,
                      ),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    // --------------------------------------------------------- Aplicar Cor do Botão
                    AjusteCor.barraInferior.ativoBotao,
                  ),
                ),
                // ------------------------------------------------------------- Função Botão Resetar
                onPressed: () => DialogResetar.executar(
                  context,
                  controladorPlacar,
                  historicoJogadas,
                  controladorAnimacao,
                ),
                // ------------------------------------------------------------- Titulo Botão Resetar
                child: Text(
                  "Resetar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AjusteCor.barraInferior.tituloBotao,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
