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
    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMmU3M2YzYzIyYzYxM2U1ZDBmM2Y3MmMzZDE5YTZiMThjMmQwNGJhNmQyNDk0MDljNDA1Nzg0ZjRkMTY1MzIwMGRhMWZkYzIzOWExYjQ4Y2YiLCJpYXQiOjE2Nzg4NzYxMzAuMTA5NzExLCJuYmYiOjE2Nzg4NzYxMzAuMTA5NzEzLCJleHAiOjE3MTA0OTg1MzAuMTA3MzIyLCJzdWIiOiI0OTYiLCJzY29wZXMiOltdfQ.BS_30waMsGCGYYXUQjzQb943yNbpyQEknOIPqrgTdFQTEkthOf9igI1Qorn6aFOKQk0nsURsWrmUtLd1u2Ge466OmM3HiCVdkuEqvFLEYAiw4toJeG9x4L3MVMHsvj8MF-HS9B3b6_7xbQYGGAZKRg5nvBvSXMXqIzDggF4DX6PdB0D9Y6KjSTQtWvJo8j0mdZt3R53Ww1tO2LGRiOR1ENk-DwEtR6Nxmf9anCufXLFMpWCOE9TRu_NNiAtGChHI8OEyN-P3y8bhcxBpsCXWXWnhTAepwzaiilbrj1SOOfVhFTmkdCmO3NU3xFM4qlOZjKZGv_7bxN7AFZzegGiGgQBmQl_H7kaNLhn6swvgaOMi_KoAn7Mf9jiwsfaElh9mWmWKOgPov6VBanYXLo8T-tXr1uLoZMJzTtsi06M84g7AtVsZk--ulLTh1f2ARubN3VgrsRXh9Z8jVkEBAU0olrkqrK5ufqc_OLrMb88wg0esQh90GZYwUvG6kIdGUJw77BRDRw35qlNhAeZlP5LXSkNRuApVbMHKy_AEAW3NcXDLXyGSwn2C1Vqq9-LZkx1cvPR1SnkUvBviBBX-LSunFftBTPWiYkB-9M_2yUD4xhlSjB4LX4SLb5yyjdJpzD268csaFYw4leEHNnNzWRz9LyCMsBQmzyCtnGV5R-qzNGA';

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


