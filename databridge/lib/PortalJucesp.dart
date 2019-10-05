import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() => runApp(new MaterialApp(
      home: new PortalJucesp(),
    ));

class PortalJucesp extends StatefulWidget {
  @override
  PortalJucespState createState() => new PortalJucespState();
}

class PortalJucespState extends State<PortalJucesp> {
  final String url =
      "https://databridge-api.herokuapp.com/api/relatorio/v1/consulta_relatorio";

  List data;

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }
  // EXIBINDO AS INFORMAÇÕES NO DEBUG CONSOLE E NA TELA DO APP

  Future<String> getJsonData() async {
    var response = await http.get(

        //Encode URL
        Uri.encodeFull(url),
        //Only accept json response
        headers: {"usuario": "teste1"});
    print(response.body);

    setState(() {
      var convertDataToJson = json.decode(response.body);
      
      data = convertDataToJson['results'];
      
    });
    return "Sucesso";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Portal JUCESP"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return new Container(
              child: new Center(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Card(
                      child: new Container(
                          child: new Text(data[index].parsedJson['nome']),
                          padding: const EdgeInsets.all(20)),
                          
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
