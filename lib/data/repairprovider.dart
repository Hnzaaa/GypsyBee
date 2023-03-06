import 'package:gypsybee/data/repairmodel.dart';
import 'package:gypsybee/data/usdata.dart';



class Repairprovider{
   Future<Searchrepairmodel> getrepair( {required String url,required String id, required String sub_name}) async { 
    final response =
        await Restapi().get(Uri.parse('$url?id=${id.toString()}&sub_name=${sub_name.toString()}')); 
    return Searchrepairmodel.fromJson(response);
  }
}

 