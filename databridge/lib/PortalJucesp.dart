import 'dart:convert';

import 'package:databridge/TelaAcesso.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PortalJucesp extends StatefulWidget {
  @override
  _PortalJucespState createState() => _PortalJucespState();
}

class _PortalJucespState extends State<PortalJucesp> {
    //EXTRAINDO DADOS, ENCONTRADO
  Future<String> getJSONData() async {
    var response = await http.get(
        Uri.encodeFull("ttp://databridge-webscraping.herokuapp.com/webscrap-mpsp/8"),
        headers: {"Accept": "application/json"}
    );
    setState(() {
      // otem os dados JSON
      var data = json.decode(response.body)['results'];
    });
    return "Dados obtidos com sucesso";
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portal JUCESP"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo ao Portal Jucesp \n\n',
            ),



            Text('cnpj_cpf_cei:     20.501.854/0001-69,\n'),
            Text('razao_social:     MARRETA ENGENHARIA E CONSTRUCAO LTD,\n'),
            Text('logradouro:     RUA TEODOLINO PEREIRA,\n'),
            Text('bairro:     GRAO PARA,\n'),
            Text('municipio:     0031686.0 - TEOFILO OTONI,\n'),
            Text('uf:     MINAS GERAIS,\n'),
            Text('cep:     39.800-151,\n'),
            Text('nome:     CRISTIANO ROMARIO RAMOS,\n'),
            Text('cpf:     078.537.067-21,\n'),
            Text('telefone:     (33)3521-6616,\n'),
            Text('ramal:     202\n'),
            Text('email: crisromario@construtora.com.br\n'),
            Text('empresa:      \n'),
            Text('atividade_economica_cnae: 4120400\n'),
            Text('atividade_economica_cnae: CONSTRUCAO DE EDIFICIOS,\n'),
            Text('totais:      \n'),
            Text('numero_filiais:     2\n'),
            Text('admissoes:     80\n'),
            Text('variacao_absoluta:     41\n'),
            Text('total_vinculos:     420\n'),
            Text('desligamentos:     39\n'),
            Text('primeiro_dia:     379\n'),
            Text('ultimo_dia:     420\n'),
            Text('trabalhador:      \n'),
            Text('nome:     KLAUDIO TAFFAREL,\n'),
            Text('pis_base:     207.80809.81-2,\n'),
            Text('cpf:     360.123.198-74,\n'),
            Text('ctps:     80809/00357,\n'),
            Text('situacao_pis:     Faixa SUS,\n'),
            Text('nacionalidade:     10 - BRASILEIRA,\n'),
            Text('grau_de_instrucao:     9 - SUPERIOR COMPLETO,\n'),
            Text('pcd:     Não,\n'),
            Text('data_nascimento:       ,\n'),
            Text('sexo:     Masculino,\n'),
            Text('raca:     2 - BRANCA,\n'),
            Text('tempo_trabalho:      \n'),
            Text('caged:     9\n'),
            Text('rais:     118\n'),
            Text('vinculos_trabalhador:     [\n'),
            Text('fonte:     RAIS/RAIS,\n'),
            Text('razao_social:     MINISTERIO PUBLICO,\n'),
            Text('cnpj:     01.468.760/0001-90,\n'),
            Text('cei:     ,\n'),
            Text('entrada:     01/04/2014,\n'),
            Text('saida:     ,\n'),
            Text('situacao:     Aberto\n'),
            Text('fonte:     RAIS/RAIS,\n'),
            Text('razao_social:     TRIBUNAL DE JUSTICA DO ESTADO DE SAO PAULO,\n'),
            Text('cnpj:     51.174.001/0001-93,\n'),
            Text('cei:     ,\n'),
            Text('entrada:     30/07/2013,\n'),
            Text('saida:     01/04/2014,\n'),
            Text('situacao:     Fechado\n'),
            Text('fonte:     RAIS/RAIS,\n'),
            Text('razao_social:     MINISTERIO DA FAZENDA,\n'),
            Text('cnpj:     00.394.460/0024-38,\n'),
            Text('cei:     ,\n'),
            Text('entrada:     09/01/2013,\n'),
            Text('saida:     30/07/2013,\n'),
            Text('situacao:     Fechado\n'),
            Text('fonte:     CAGED/CAGED,\n'),
            Text('razao_social:     SERVICE BANK PROCESSAMENTO E GESTAO EMPR,\n'),
            Text('cnpj:     01.679.974/0001-06,\n'),
            Text('cei:     ,\n'),
            Text('entrada:     22/12/2009,\n'),
            Text('saida:     16/08/2010,\n'),
            Text('situacao:     Fechado\n'),
            Text('fonte:     RAIS/RAIS,\n'),
            Text('razao_social:     RHBRASIL SERVICOS TEMPORARIOS LTDA,\n'),
            Text('cnpj:     01.395.176/0016-39,\n'),
            Text('cei:     ,\n'),
            Text('entrada:     03/08/2009,\n'),
            Text('saida:     18/12/2009,\n'),
            Text('situacao:     Fechado\n'),
            Divider(),
            ButtonTheme(
              height: 60.0,
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TelaAcesso()));
                  },
                  child: Text(
                    "Voltar Menu",
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                  color: Colors.white),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
