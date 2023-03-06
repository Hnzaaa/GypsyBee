import 'dart:convert';

import 'package:gypsybee/data/blocmodel.dart';
import 'bloc.dart';

class BlocProvider {
  // Future<Blocmodel> getbloc(String url) async {
  //   // ignore: non_constant_identifier_names
  //   final Response = await Restapi().get(
  //     url: Uri.parse(url),
  //   );
  //   return Blocmodel.fromJson(Response);
  // }
 Future<List<Blocmodel>> getbloc(String url) async {
  print("comes");
    final response = await Restapi().get(
      url: Uri.parse(url),
    );
  List jsonResponse = json.decode(response.body);
  return jsonResponse.map((job) => Blocmodel.fromJson(job)).toList();
  
}
}
