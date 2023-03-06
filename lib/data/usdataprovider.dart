 
import 'package:gypsybee/data/usdata.dart';
import 'package:gypsybee/data/usdatamodel.dart';


class UsdataProvider {
//   Future<Usmodel> getdata(String url) async {
//     // ignore: non_constant_identifier_names
//     final Response = await Restapi().get(url: Uri.parse(url),);
//     return Usmodel.fromJson(Response);
//   }
// }
  Future<Usmodel> getdata ({required String url, required String drilldownss, required String measures}) async {
    final resp = await Restapi().get(Uri.parse(
        '$url?drilldowns=${drilldownss.toString()}&measures=${measures.toString()}') 
     );
    return Usmodel.fromJson(resp);
  }}