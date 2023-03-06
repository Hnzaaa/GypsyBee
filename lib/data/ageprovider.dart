import 'age.dart';
import 'agemodel.dart';

class AgeProvider {
  Future<Agemodel> getage({required String url, required String name}) async {
    //  final Response = await Restapi().get(Uri.parse(url), name);
    var response =
        await Restapi().get(Uri.parse('$url?name=${name.toString()}'));

    return Agemodel.fromJson(response);
  }
}
