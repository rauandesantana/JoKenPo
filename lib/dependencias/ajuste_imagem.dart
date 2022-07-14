import 'package:flutter/material.dart';

// ----------------------------------------------------------------------------- Ajuste Imagem
class AjusteImagem {
  const AjusteImagem();
  static $Principais get principais => const $Principais();
  static $Icones get icones => const $Icones();
}

// ----------------------------------------------------------------------------- Icones
class $Principais {
  const $Principais();
  AssetImage get logo => const AssetImage("assets/principais/logo.png");
  AssetImage get emojiErro => const AssetImage("assets/principais/emoji_erro.png");
}

// ----------------------------------------------------------------------------- Icones
class $Icones {
  const $Icones();
  AssetImage get padrao => const AssetImage("assets/icones/padrao.png");
  AssetImage get papel => const AssetImage("assets/icones/papel.png");
  AssetImage get pedra => const AssetImage("assets/icones/pedra.png");
  AssetImage get tesoura => const AssetImage("assets/icones/tesoura.png");
}