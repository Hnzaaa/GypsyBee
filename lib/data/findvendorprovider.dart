import 'findvendor.dart';
import 'findvendormodel.dart';

class FindvendorProvider {
  Future<Findvendormodel> getvendor(
      { required String url }) async { 
    var response =
        await Restapi().get(Uri.parse(url));

    return Findvendormodel.fromJson(response);
  }
}