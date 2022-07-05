const pedra = 'Pedra';
const papel = 'Papel';
const tesoura = 'Tesoura';
const lagarto = 'Lagarto';
const spock = 'Spock';

const opcoes = [pedra, papel, tesoura, lagarto, spock];

class Partida {
  final regras = <String, Map<String, String>>{};

  void criarRegra(String vencedor,
      {required String acao, required String perdedor}) {
    if (!regras.containsKey(vencedor)) {
      regras[vencedor] = {};
    }
    regras[vencedor]![acao] = perdedor;
  }

  Partida configurarPartida() {
    return Partida()
      ..criarRegra(tesoura, acao: 'cortar', perdedor: papel)
      ..criarRegra(tesoura, acao: 'decapita', perdedor: lagarto)
      ..criarRegra(papel, acao: 'cobre', perdedor: pedra)
      ..criarRegra(papel, acao: 'refuta', perdedor: spock)
      ..criarRegra(pedra, acao: 'esmaga', perdedor: lagarto)
      ..criarRegra(pedra, acao: 'quebra', perdedor: tesoura)
      ..criarRegra(lagarto, acao: 'envenena', perdedor: spock)
      ..criarRegra(lagarto, acao: 'come', perdedor: papel)
      ..criarRegra(spock, acao: 'esmaga', perdedor: tesoura)
      ..criarRegra(spock, acao: 'vaporiza', perdedor: pedra);
  }
}
