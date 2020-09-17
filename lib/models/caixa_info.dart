import 'package:flutter/material.dart';

info(BuildContext context) {
    Widget botOK = FlatButton(
      textColor: Colors.grey[600],
      child: Text('ok'),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      content: Text(
        'Versão 1.0 \nDev: V. Chemin e W. Bescrovaine \n \n \n Ano 2020 \n \n \n \n Projeto de conclusão de curso Eng. da Computação e Eng. Elétrica.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey[600],
          fontStyle: FontStyle.italic,
        ),
      ),
      actions: <Widget>[
        botOK,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }