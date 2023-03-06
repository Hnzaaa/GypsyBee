import 'dart:convert';

import 'package:gypsybee/data/blocmodel.dart';
import 'bloc.dart';
import 'package:http/http.dart' as http;

class BlocProvider {
  
  Future<List<Blocmodel>> getbloc() async {
    var url = 'http://universities.hipolabs.com/search';
    final res = await http.get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=utf-8',
      },
    );
    if (res.statusCode == 200) {
      List jsonResponse = json.decode(res.body); 
      return jsonResponse
          .map((university) =>  Blocmodel.fromJson(university))
          .toList();
    } else {
      throw Exception('Failed');
    }
    }
}