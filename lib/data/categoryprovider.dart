import 'category.dart';
import 'categorymodel.dart';

class CategoryProvider {
  Future<Categorymodel> getcategory(String url) async {
    // ignore: non_constant_identifier_names
    final Response = await Restapi().get(url: Uri.parse(url),);
    return Categorymodel.fromJson(Response);
  }
}
