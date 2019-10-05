import 'package:databridge/PortalCaged.dart';
import 'package:databridge/PortalDetran.dart';
import 'package:databridge/PortalJucesp.dart';
import 'package:databridge/PortalSiel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TelaAcesso extends StatefulWidget {
  @override
  _TelaAcessoState createState() => _TelaAcessoState();
}

class _TelaAcessoState extends State<TelaAcesso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Acesso"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Text(
              'ESCOLHA O PORTAL DESEJADO\n\n',
             
            ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PortalDetran()));
                    },
                    child: Text(
                      "DETRAN",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    color: Colors.white),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PortalSiel()));
                    },
                    child: Text(
                      "SIEL",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    color: Colors.white),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PortalCaged()));
                    },
                    child: Text(
                      "CAGED",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    color: Colors.white),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PortalJucesp()));
                    },
                    child: Text(
                      "JUCESP",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
