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
    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiNDIyZWYyODQ4ODk5ZGY5ZTg5OGRlMTg4ZGZlOWVkY2U2ZDlhOWEyZDA4MmZlYzU5NjMyYWQ1OGZkNTBlOTRkYTMxNWM2NDNiNzkzOGVmZmEiLCJpYXQiOjE2Nzc4MzY0MDcuOTUyMDg4LCJuYmYiOjE2Nzc4MzY0MDcuOTUyMDksImV4cCI6MTcwOTQ1ODgwNy45NDk4NDIsInN1YiI6IjQ3OCIsInNjb3BlcyI6W119.coBu6m5kS430bEV4k3GOmxiy9tGcZpBUMoHUJzSPKb8Bm98DkWKpDWFxCSTIZa3BmpttmAulFMhtV-ga3-GjoNdQQMwks83VTe993HNXePNDE3wWSJrrxNM_SM2zyWTt3KRMa1CPjbhD1-EylH42JKJQ53qaCtxRKGQb68IzTeLbKsdQmR7cEQUmPZSPCE8QhXAw7T6SpyadGAdFMOpORXEHl6GsEZcGSehLtVNR5e-XEcCQ_mYNc3ujkEO6dXS-xJwnC2Nbb1eBr0NZna94FAPJJMrJo19PhaOdnitznbALkEdEHEkj2CNok4NBe_dRNwoj_0T79Lr0m3qcKRfTjmV2T99a9guVf6Mc-qz21qB7lQ4ztQC-m9deQiIxPgDEEAC_AQ85chKUWbwh2DQFpAXzVRlxYmEen8JLJqwM1qneKkOMQUPVipIhLo3ExecdtzITTsyBwcAK0ZEZhS_5EaoftI-1CzgNSn4rhjCJ4vzCpUzDtP0rbj0sQPRubPODeDgIjF-98DqP6_BQh65nfKGdGrp2urwiLaZDYvc4SZb4Fwn8sURzpzgjbvngLxna3cffkNkanyMITL1IyCsa7TfNbr9PLUmXC0zf9XSzH_oprjxPrT6r9hOSWRedtunzjVVh7xaMeMjbqc5cjS6RGqRfUdNpg7wpxzK6UpIKcoY';

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


