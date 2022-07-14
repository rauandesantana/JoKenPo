import 'package:flutter/material.dart';
import 'package:jokenpo/importar_dependencias.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JoKenPo",
      home: Main(),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  // --------------------------------------------------------------------------- Instanciar Controlador Página
  ControladorPagina controladorPagina = ControladorPagina();
  // --------------------------------------------------------------------------- Instanciar Controlador Placar
  ControladorPlacar controladorPlacar = ControladorPlacar();
  // --------------------------------------------------------------------------- Instanciar Controlador Animação
  ControladorAnimacao controladorAnimacao = ControladorAnimacao();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ----------------------------------------------------------------------- Barra Superior
      appBar: AppBar(
        backgroundColor: AjusteCor.barraSuperior.fundoBarra,
        title: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            // ----------------------------------------------------------------- Atualiza a Barra Superior Quando Houver Alteração de Estado
            return Observer(
              builder: (_) {
                return Row(
                  children: BarraSuperior.layout(
                    constraints,
                    // --------------------------------------------------------- Valor Pontos Jogador
                    pontosJogador: controladorPlacar.pontosJogador,
                    // --------------------------------------------------------- Valor Pontos Máquina
                    pontosMaquina: controladorPlacar.pontosMaquina,
                  ),
                );
              },
            );
          },
        ),
      ),
      // ----------------------------------------------------------------------- Conteúdo
      body: Container(
        color: AjusteCor.conteudo.fundoConteudo,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            // ----------------------------------------------------------------- Atualiza o Conteúdo Quando Houver Alteração de Estado
            return Observer(
              builder: (_) {
                return Center(
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: Conteudo.layout(
                        constraints,
                        controladorPagina: controladorPagina,
                        controladorPlacar: controladorPlacar,
                        controladorAnimacao: controladorAnimacao,
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      // ----------------------------------------------------------------------- Barra Inferior
      bottomNavigationBar: BottomAppBar(
        color: AjusteCor.barraInferior.fundoBarra,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            // ----------------------------------------------------------------- Atualiza a Barra Inferior Quando Houver Alteração de Estado
            return Observer(
              builder: (_) {
                return Row(
                  children: BarraInferior.layout(
                    context,
                    constraints,
                    controladorPagina: controladorPagina,
                    controladorPlacar: controladorPlacar,
                    controladorAnimacao: controladorAnimacao,
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
