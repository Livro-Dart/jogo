import 'dart:html';

import 'package:jogo/srv/partida.dart';

late DivElement divOpcoes;
late DivElement divResultado;

void main() {
  inicializaReferencias();
  final partida = Partida().configurarPartida();
}

void inicializaReferencias() {
  divOpcoes = querySelector('#opcoes') as DivElement;
  divResultado = querySelector('#resultado') as DivElement;
}
