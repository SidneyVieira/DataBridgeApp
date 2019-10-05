import 'dart:convert';

import 'package:databridge/TelaAcesso.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PortalDetran extends StatefulWidget {
  @override
  _PortalDetranState createState() => _PortalDetranState();
}

class _PortalDetranState extends State<PortalDetran> {
  //EXTRAINDO DADOS, PORÉM NAO ENCONTRA
  Future<String> getJSONData() async {
    var response = await http.get(
        Uri.encodeFull("ttp://databridge-webscraping.herokuapp.com/webscrap-mpsp/6"),
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
        title: Text("Portal DETRAN"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bem-vindo ao Portal DETRAN\n\n',
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

