import 'dart:convert';

import 'package:databridge/TelaAcesso.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PortalSiel extends StatefulWidget {
  @override
  _PortalSielState createState() => _PortalSielState();
}

class _PortalSielState extends State<PortalSiel> {
  //EXTRAINDO DADOS, PORÉM NAO ENCONTRA
  Future<String> getJSONData() async {
    var response = await http.get(
        Uri.encodeFull("ttp://databridge-webscraping.herokuapp.com/webscrap-mpsp/9"),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo ao Portal Jucesp\n\n',
            ),
            Text(
              'Portal Indisponível, Tente mais tarde! \n\n\n',
            ),
            Text(
              'Tente o JUCESP\n\n',
            ),
            Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaAcesso()));
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

