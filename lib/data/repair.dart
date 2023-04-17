import 'dart:convert';
import 'package:http/http.dart' as http;

class Restapi {                //in usdata.dart file
  String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiYmI2NmFmNTFjM2QxZjk5MzhhMjdmNjE2YWE5OTg0NjMzYzYwMDI0OGYwYjcwMDQ0ZmNjZmVkNTg4NDg5MjNkMWM1OTk0ODgxMjZmMzlmNWEiLCJpYXQiOjE2NzkzODY0MDUuNDkzODA3LCJuYmYiOjE2NzkzODY0MDUuNDkzODA5LCJleHAiOjE3MTEwMDg4MDUuNDkxMTM3LCJzdWIiOiI0NzgiLCJzY29wZXMiOltdfQ.C9Xf59XcJkr_E-OuA_qCohITG0zxj4YEOW0HDGKd37AV3HYRHQygouVZqW6pzE-0QehmhtBuOKOGeW18RoRIL18usestHJ2Fc4WGVU2FuDqedbl6XIley1dXHoQbu40j8hsmwQXpmLA8OHh0fE9xC008raiURNYsX9VNuZvlPeEtvcR7siMM_99A4A4B4l0abKbYsvGsmZrKE2VHp38ltGVzDfdOss2owt3CJmDI2sj57L4uGnt-5PdtPBuIx6dvSxsc83-F9gWjadrQDe4fG20XyrC5a7d-SyZvG56rqizXgqRXL2_NUVbNTw69e9_OJZeK6kUW6n2YtWbYAlGqwPYHcZBhnGxg-MIGwMTN8Ogtby6VLxD3Lc1i4tOqRPGmB4Y5x57Q4hy1lryJ1onpIYf1jshbx2iUpKsOZZO6mbyFDF1PZFp6DerK6obtgo2EQvDKQpJ0Ac0du3c0U7Zl8sGCfqNXJBbx2pCoisV06X9-rvC5FwHuWSHY12PjaaXQjgvY7xG8iM_lDmHl_3XVGehjquGWZP1YSAJSfcpxVyEEFM2Bd5dmCBlg33FfoUSgDMU2yM4GGaDYZub__C_F38z33k1fPaMJBWj_qN2Qi-H-Ce92SciWGr6kLg3ZsyCL1puf-YuD7UcxKL8fluejDNYg2N21G4jSNEIfg8VM14U';
  Future get({
    required Uri url,
  }) async {
    try {
      final Response = await http.get(url, headers: {
        'Accept': 'application/json',
      });
      // ignore: avoid_print
      print(Response);
      return json.decode(Response.body);
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