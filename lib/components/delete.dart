import 'dart:convert';

import 'package:http/http.dart' as http;

Future<bool> deleteItem(String id) async {
  print(id);
  var response = await http.post(
    'http://192.168.100.33:8080/ServerRequest/DeleteCryById',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'id': id,
    }),
  );
  if (response.statusCode == 200) {
    return true;
  }
  return false;
}
