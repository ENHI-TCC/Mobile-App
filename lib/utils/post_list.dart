import 'package:flutter/material.dart';
import 'package:projeto_baba/components/delete.dart';

import 'package:projeto_baba/models/post.dart';

class PostList extends StatefulWidget {
  final List<Post> datas;

  PostList({Key key, this.datas}) : super(key: key);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  printjson(index, context) {
    //funçao que retorna coluna com minhas informações
    List<Post> datas = widget.datas;
    return Container(
      height: MediaQuery.of(context).size.height * 0.14,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
            child: Card(
              color: Colors.blue[800],
              child: ListTile(
                trailing: GestureDetector(
                  child: Container(
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    deleteItem(datas[index].id.toString()).then((value) {
                      if (value) {
                        setState(() {
                          datas.removeAt(index);
                        });
                      }
                    });

                    print('QUER DELETAR');
                  },
                ),
                // onTap: () {},
                leading: Text(
                  datas[index].id.toString(),
                  style:
                      TextStyle(color: Colors.white, fontSize: 24), //PRINTA ID
                ), //ID
                title: Text(
                    "Data: ${datas[index].data.toString().split('T')[0]}", //DIVIDE A INFO DO BANCO
                    style: TextStyle(color: Colors.white)), // data
                subtitle: Text(
                    "Hora: ${datas[index].data.toString().split('T')[1].split('Z')[0]}",
                    style: TextStyle(color: Colors.white)), //hora
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.datas.length,
      itemBuilder: (context, index) {
        return printjson(index, context); //chamo a função E PRINTA NA TELINHA
      },
    );
    ;
  }
}
