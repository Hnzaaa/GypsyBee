 import 'findvendor.dart';
import 'findvendormodel.dart';

class FindvendorProvider{
   Future<Findvendormodel> getvendor( {required String url,required String subservice_id}) async { 
    final response =
        await Restapi().get(Uri.parse('$url?subservice_id=${subservice_id.toString()}'), ); 
    return Findvendormodel.fromJson(response);
  }
}