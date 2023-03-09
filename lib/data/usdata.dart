import 'dart:convert';
import 'package:http/http.dart' as http;

class Restapi {
  // String token = '';
  // Future get({
  //   required Uri url,  required String drilldown, required String measures
  // }) async {
  //   try {
  //     final  Response = await http.get(url, headers: {
  //       'Accept': 'application/json',
  //     });
  //     // ignore: avoid_print
  //     print(Response);
  //     return json.decode(Response.body);
  //   } catch (e) {
  //     rethrow;
  //   }
  // }

  Future<T> get<T>(Uri url, [String? t]) async {
    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiN2U0OGY1NmU4ZTk2MWQ5ZDJjYmJkYzI2Mjc2MjY1M2I5OWUxYjk4OTBhYjAyZTNiYTZlY2QwNmJiMmNmMmVmY2NkYTg5YzdjZjBjYTRmNjAiLCJpYXQiOjE2NzgyNTQwOTIuMDI1NjksIm5iZiI6MTY3ODI1NDA5Mi4wMjU2OTIsImV4cCI6MTcwOTg3NjQ5Mi4wMjI5MTYsInN1YiI6IjQ3OCIsInNjb3BlcyI6W119.zjAgDgo9N_LzQ1eaMKTwSqs_-UONGlVC2-LvipPcqCoB8warWOfWksuUgsM7_cfjk6wmM2ZBbb9052kbg_1ASvheZJyENajq1ICt7DIlt8E27rco7IZ8VCN1GTRqjeg6tWmgV5baprbmu25zWwDrXCgYRzKpgsw05MVCyTWw4TG4yEGjIqCzEmM5kFyoAejynmdP_YbPifOnSaj8mklhAm6t_Z7kxz00u9GUbPWOrJ5eRWqQLsYP1XEn_ERfnoHi6QG4hiTNRfCD4vKPn826MNA-1dV_kE89SGLCM-vf0YPjmTsP0uZ8AiOi3QY-yFUnsrJnMpY5aFFbRfcmlxZY9NPlGt2jx07SKhtrslZt3ebXUdAnQgeen1gnnkxX-oEGx4O8_DuQJkJcBvSA6QMSZszjm0Yu5pRP9N-4JI706oCvvs65BHaA5WMcI_BHf2gUzTqr2vLdp4Z-EdTZftQ3zQt7LIc9Mhvr1zySF73x5xTnsT3x3krvoNuw8B8SVRiScAzLYyAz9Y_nR6eenaucsgYFsJsjAGvtoN5oKDA81I-APqugDKXaSg-GbjRycZyMPpcvAO4Z_CEcPWiz1yfDH_aS026NuDZvy5swDiGbHTcNSIB0klEt9JoexhSlbRkXIvUyWWCrAMMUjF9r1kJsQtADh2uFNr_pArT11wsABVw';

    T responseJson;
   try {
      final  Response = await http.get(url, headers: {
        'Accept': 'application/json', 
        'Authorization': 'Bearer $token',
      });
      // ignore: avoid_print
      print(Response);
      return json.decode(Response.body);
    } catch (e) {
      rethrow;
    }
    // print('api get recieved!');
    // return responseJson;
  }
}


