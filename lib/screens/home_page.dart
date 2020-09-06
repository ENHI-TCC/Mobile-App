import 'package:flutter/material.dart';
import 'package:projeto_baba/components/lista_opcoes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0.2,
        centerTitle: true,
        leading: Image.asset(
          'Image/NENE_ICON.png',
          scale: 1,
        ),
        title: Column(
          children: <Widget>[
            Text(
              'BABÁ ELETRÔNICA',
              style: TextStyle(
                  fontSize: 25, fontFamily: "Raleway", color: Colors.white),
            ),
            Visibility(
              //SUBTITULO
              visible: true,
              child: Text(
                'Para pessoas com deficiência auditiva',
                style: TextStyle(
                    fontSize: 13.0, fontFamily: "Raleway", color: Colors.white),
              ),
            ),
          ],
        ),
      ),

      body: Opcoes(),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.battery_std,
      //     color: Colors.white,
      //   ),
      //   backgroundColor: Colors.red,
      //   elevation: 1,
      //   onPressed: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(
      //       builder: (context){
      //         return tela_bateria();
      //     }
      //     ),
      //     );
      //   },
      // ),
    );
  }
}
