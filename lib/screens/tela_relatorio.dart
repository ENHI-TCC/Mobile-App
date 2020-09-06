import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:projeto_baba/components/delete.dart';
import 'package:projeto_baba/components/lista.dart';
import 'package:projeto_baba/models/post.dart';

class tela_relatorio extends StatefulWidget {
  @override
  _tela_relatorioState createState() => _tela_relatorioState();
}

class _tela_relatorioState extends State<tela_relatorio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'RELATÓRIO',
              style: TextStyle(fontFamily: 'Raleway', color: Colors.white),
            ),
            Text(
              'Incidência de choro',
              style: TextStyle(color: Colors.blueGrey[100]),
            ),
            /*leading: Icon(Icons.assignment, color: Colors.white,),*/
          ],
        ),
      ),
      body: lista(fetchPost(http.Client())), //CHAMA O POVO AQUI
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final bool resp = await showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: Colors.yellow[100],
                  content: Text(
                    "Deletar lista?",
                    style: TextStyle(color: Colors.blueGrey[300]),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      color: Colors.blue[200],
                      child: Text(
                        "Cancelar",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    FlatButton(
                      color: Colors.red[300],
                      child: Text(
                        "Deletar",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        setState(() {
                          deleteAll();
                          print('PEDIU DELETE TUDO');
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              });
          return resp;
        },
        label: Text(
          'Limpar Lista',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(Icons.delete_forever, color: Colors.white),
        backgroundColor: Colors.red[200],
      ),
    );
  }
}

List<Post> parsePost(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed
      .map<Post>((json) => Post.fromJson(json))
      .toList(); //TRANSFORMA O QUE VEM DO BANCO EM LISTA
}

Future<List<Post>> fetchPost(http.Client client) async {
  final response = await http.get(
      'http://192.168.100.33:8080/ServerRequest/CryReport'); //ENDEREÇO DO BANCO, REQUEST

  if (response.statusCode == 200) {
    print(response.body);

    return compute(parsePost, response.body);
  } else {
    throw Exception('Falha ao carregar');
  }
}
