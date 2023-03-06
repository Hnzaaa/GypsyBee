import 'knot.dart';
import 'knotmodel.dart';

class KnotProvider {
  Future<Knotmodel> getknot(String url) async {
    // ignore: non_constant_identifier_names
    final Response = await Restapi().get(url: Uri.parse(url),);
    return Knotmodel.fromJson(Response);
  }
}