import 'dart:convert';

import 'cosmeticmodel.dart';
import 'package:http/http.dart' as http;

class CosmeticProvider {
 
Future<List<Cosmeticmodel>> getcosmetics() async {
  var url = 'http://makeup-api.herokuapp.com/api/v1/products.json';
  final res = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=utf-8',
    },
  );
  if (res.statusCode == 200) {
    List jsonResponse = json.decode(res.body); 
    return jsonResponse
        .map((cosmetics) =>  Cosmeticmodel.fromJson(cosmetics))
        .toList();
  } else {
    throw Exception('Failed');
  }
}}