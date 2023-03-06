import 'drinks.dart';
import 'drinksmodel.dart';

class DrinksProvider {
  Future<Drinksmodel> getdrink(
      {required String url }) async { 
    var response =
        await Restapi().get(Uri.parse(url));

    return Drinksmodel.fromJson(response);
  }
}
