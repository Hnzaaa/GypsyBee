import 'dart:convert';
import 'package:http/http.dart' as http;

class Restapi {
  // String token = '';
  Future get({
    required Uri url,
  }) async {
    try {
      final Response = await http.get(url, headers: {
        'Accept': 'application/json',
      });
      // ignore: avoid_print
      print(Response);
      return json.decode(Response.body);
    } catch (e) {
      rethrow;
    }
  }
}
