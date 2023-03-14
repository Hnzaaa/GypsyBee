import 'dart:convert';

import 'package:http/http.dart' as http;

class Restapi {  
  String token ='eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiN2FlNmRmMjRhNWQxYmM0OGZiMWQ4Y2U2YjNlYWJmZTJmNzAxODM5NWNjOGIzZTQ0NjliMmE2ZjU2NjdjZjdiNDhkMTBiNzdhNWJjMDgwYjQiLCJpYXQiOjE2Nzg2OTI4NzQuMzA5OTM3LCJuYmYiOjE2Nzg2OTI4NzQuMzA5OTM4LCJleHAiOjE3MTAzMTUyNzQuMzA1NjkzLCJzdWIiOiI0NzciLCJzY29wZXMiOltdfQ.BTW62HeDhmXD3zgymYWRKZJUwTttcMApo5wYXnnH2ZLWAiDqCbE9GcKAlWYHIYT5f2R3g2GLSgteLx_hp-1R982goRNoE62UP-Yp9HagZHHO-dZyTdVefK6MuKKtCwbsGCevCALAIm8--XEHgCPz_F3KIeE5hWEsCl26Kjb6C9f_q_X8Y-iwffRkLaktdOO-CpzYWVMBKf5qLLP6AcZU7iIFmX4DNUAUMLNyddPtzqBKLyDF6XIGsjdOn-MPcWJJOm2MBKfug5ni99I0pUCdbbIb72SeAMJbIRn00XMsJjn18wTRdfwHU-j1GwKA0vv4cpZR7FjGKMUmeicjKMvZV66XzO1NTgkUA-2EjiSSlnSfMTbneqCRShWig6C76FQPh-UsaZuI4zdRGZW9XZeslIokA0rN0umJa5YuVj1jFGbSnR3JEPtxrovlN2IYIonAGBaApgjLp3zXue8uxGW2Wp1FG06w_QWgwiNc6RWiDW6sm5vTmR6xQOVow4liU4hmA0r9mXP2YSaHyciqcB9ugUCapXjrylBe1B1CMBwTSWPHc5iObwYKMADu4k75uYTjih7i8WQrOlHRyOZ4VIoqjhO_LzJZWIg0UJ02yD6ynN_Q-pd4sVrb4pzhFd5h2SuLRaZlpwrRzOQw2Mx36ITrG_zJo7Q4w6giSxsvTXZ_BCk';
  Future get({required Uri url}) async {
    try {
      final response = await http.get(url, headers: {
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        'Charset': 'utf-8'
      });
      // ignore: avoid_print
      print(response);
      return json.decode(response.body);
    } catch (e) {
      rethrow;
    }
  }

  Future post({required Uri url, Map? body}) async {
    try {
      final response = await http.post(url,
          headers: {
            'Accept': 'application/json',
            'Authorization': 'Bearer $token',
          },
          body: body);
      return json.decode(response.body);
    } catch (e) {
      rethrow;
    }
  }
}
