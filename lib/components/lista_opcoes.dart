//PAGINA OPÇOES
import 'package:flutter/material.dart';
import 'package:projeto_baba/screens/tela_info.dart';
import 'package:projeto_baba/screens/tela_relatorio.dart';

class Opcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 1,
              color: Colors.blue[800],
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Row(
                  children: <Widget>[
                    Icon(Icons.assignment, color: Colors.white),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                    ),
                    Text(
                      'RELATÓRIO DE CHORO',
                      style: TextStyle(
                        fontFamily: "Raleway",
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  debugPrint('PEDIU RELATÓRIO');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return tela_relatorio();
                      },
                    ),
                  );
                },
              ),
            ),
            Card(
              elevation: 1,
              color: Colors.blue[800],
              child: ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Row(
                  children: <Widget>[
                    Icon(Icons.info, color: Colors.white),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                    ),
                    Text('INFORMAÇÕES',
                        style: TextStyle(
                          fontFamily: "Raleway",
                          color: Colors.white,
                        )),
                  ],
                ),
                /* subtitle: Text(''), */
                onTap: () {
                  debugPrint('PEDIU INFO');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return tela_info();
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
