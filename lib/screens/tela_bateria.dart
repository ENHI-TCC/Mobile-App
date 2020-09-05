import 'package:flutter/material.dart';

class tela_bateria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            'NÍVEL DE BATERIA',
            style: TextStyle(fontFamily: 'Raleway', color: Colors.white),
          )
          /*leading: Icon(Icons.assignment, color: Colors.white,),*/
          ),
      body: NivelBat(),
    );
  }
}

class NivelBat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: <Widget>[
          CircularProgressIndicator()
          ]
      ),
      );
  }
}
