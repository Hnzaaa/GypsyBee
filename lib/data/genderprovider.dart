import 'package:gypsybee/data/gender.dart';
import 'package:gypsybee/data/gendermodel.dart';

class GenderProvider {
  Future<Gendermodel> getgender(
      {required String url, required String name}) async { 
    var response =
        await Restapi().get(Uri.parse('$url?name=${name.toString()}')); 
    return Gendermodel.fromJson(response);
  }
}
