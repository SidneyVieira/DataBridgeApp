import 'dart:convert';

import 'package:databridge/TelaAcesso.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaExibeDados extends StatefulWidget {
  @override
  _TelaExibeDadosState createState() => _TelaExibeDadosState();
}

class _TelaExibeDadosState extends State<TelaExibeDados> {
  Future<String> getJSONData() async {
    var response = await http.get(
        Uri.encodeFull("ttp://databridge-webscraping.herokuapp.com/webscrap-mpsp"),
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TelaAcesso()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  
  }
}

