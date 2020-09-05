import 'package:flutter/material.dart';
import 'package:projeto_baba/models/post.dart';
import 'package:http/http.dart' as http;
import 'package:projeto_baba/screens/tela_relatorio.dart';
import 'package:projeto_baba/utils/post_list.dart';

class lista extends StatefulWidget {
  final Future<List<Post>> post;
  lista(this.post);

  @override
  _listaState createState() => _listaState();
}

class _listaState extends State<lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Post>>(
        future: fetchPost(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print(snapshot.data);
            return snapshot.hasData
                ? PostList(datas: snapshot.data) //chamo todo mundo
                : Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                "SEM CONEXÃO.",
                style: TextStyle(color: Colors.black87, fontSize: 25),
              ),
            );
          }
          // By default, show a loading spinner
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
