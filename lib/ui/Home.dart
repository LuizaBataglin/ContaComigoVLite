import 'package:contacomigov2/ui/SolicitarDoacao.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 224, 1),
      appBar: AppBar(
          title: Text('Conta Comigo - Lite'),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(144, 238, 144, 0.5)),
      body:Center(
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 150),
          ),
          FlatButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => SolicitarDoacao()));
                },
              icon: Icon(Icons.add,
                  size: 50, color: Color.fromRGBO(130, 128, 129, 1)),
              label: Text(
                'Solicitar Doação',
                style: TextStyle(
                    fontSize: 30, color: Color.fromRGBO(130, 128, 129, 1)),
              ),
              color: Color.fromRGBO(60, 196, 124, 0.2),
              padding: EdgeInsets.all(40)),
          SizedBox(
            height: 80,
          ),
          FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add,
                  size: 50, color: Color.fromRGBO(130, 128, 129, 1)),
              label: Text(
                'Ver Pedidos',
                style: TextStyle(
                    fontSize: 30, color: Color.fromRGBO(130, 128, 129, 1)),
              ),
              color: Color.fromRGBO(60, 196, 124, 0.2),
              padding:
                  EdgeInsets.only(bottom: 40, top: 40, left: 60, right: 80)),
        ]),
      ),
    );
  }
}
