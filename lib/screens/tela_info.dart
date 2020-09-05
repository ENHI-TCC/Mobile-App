import 'package:flutter/material.dart';

class tela_info extends StatefulWidget {
  @override
  _tela_infoState createState() => _tela_infoState();
}

class _tela_infoState extends State<tela_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            'RELATÓRIOS',
            style: TextStyle(fontFamily: 'Raleway', color: Colors.white),
          )
          /*leading: Icon(Icons.assignment, color: Colors.white,),*/
          ),
      body: ListView(
        children: <Widget>[
          Card(
            elevation: 1,
            color: Colors.blue[800],
            child: ListTile(
              // trailing: Icon(
              //   Icons.arrow_forward_ios,
              //   color: Colors.white,
              // ),
              title: Text(
                'App desenvolvido com o intuito de auxiliar ao dispositivo Babá Eletrônica.',
                style: TextStyle(
                  fontFamily: "Raleway",
                  color: Colors.white,
                ),
              ),
              /* subtitle: Text(''), */
            ),
          ),
          Card(
            elevation: 1,
            color: Colors.blue[800],
            child: ListTile(
              // trailing: Icon(
              //   Icons.arrow_forward_ios,
              //   color: Colors.white,
              // ),
              title: Text(
                'Trabalho de conclusão de curso de Engenharia da Computação e Elétrica.',
                style: TextStyle(
                  fontFamily: "Raleway",
                  color: Colors.white,
                ),
              ),
              /* subtitle: Text(''), */
            ),
          ),
        ],
      ),
    );
  }
}
