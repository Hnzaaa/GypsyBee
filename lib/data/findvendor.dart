import 'dart:convert';
import 'package:http/http.dart' as http;

class Restapi {
  Future<T> get<T>(Uri url, [String? t]) async {
    T responseJson;
    try {
      // ignore: non_constant_identifier_names
      final Response = await http.get(url, headers: {
        'Accept': 'application/json',
      });
      return json.decode(Response.body);
    } catch (e) {
      rethrow;
    }
  } 
}
