import 'package:gypsybee/data/service.dart';
import 'package:gypsybee/data/servicemodel.dart';

class Serviceprovider{
  Future<Servicemodel>getservice(String url)async{
    final response=await Restapi().get(url: Uri.parse(url));
    return Servicemodel.fromJson(response);
  }
}