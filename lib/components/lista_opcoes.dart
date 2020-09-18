//PAGINA OPÇOES
import 'package:flutter/material.dart';
import 'package:projeto_baba/models/caixa_info.dart';
import 'package:projeto_baba/screens/tela_relatorio.dart';

class Opcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
     body: Container(
      
       padding: EdgeInsets.fromLTRB(width*0.05, height*0.15, width*0.05, height*0.05),
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
        child: Center(

          child: ListView(
            children: <Widget>[
              Card(
                color: Colors.blueAccent[200],
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueAccent[200],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 180,
                  width: 900,
                  child: Center(
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
                                fontSize: 20),
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
                ),
              ),
              Card(
                color: Colors.blueAccent[200],
                child: Container(
                  height: 180,
                  width: 900,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blueAccent[200],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
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
                                  fontSize: 20)),
                        ],
                      ),
                      /* subtitle: Text(''), */
                      onTap: () {
                        debugPrint('PEDIU INFO');
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) {
                        //       return tela_info();
                        //     },
                        //   ),
                        // );
                        info(context);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
