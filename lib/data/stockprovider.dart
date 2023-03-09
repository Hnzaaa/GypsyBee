import 'dart:convert'; 
import 'package:gypsybee/data/stockmodel.dart'; 
import 'package:http/http.dart' as http;

class StockProvider {
 
Future<List<Stockmodel>> getstock() async {
  var url = 'https://house-stock-watcher-data.s3-us-west-2.amazonaws.com/data/all_transactions.json';
  final res = await http.get(
    Uri.parse(url),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=utf-8',
    },
  );
  if (res.statusCode == 200) {
    List jsonResponse = json.decode(res.body); 
    return jsonResponse
        .map((stock) =>  Stockmodel.fromJson(stock)).toList();
  } else {
    throw Exception('Failed');
  }
}}