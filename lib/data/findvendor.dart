import 'dart:convert';
import 'package:http/http.dart' as http;

class Restapi { 

  Future<T> get<T>(Uri url, [String? t]) async {
    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiOGFiOTE0MWUyZmVlNjQ4OTRhMjhlZDczYWQ2N2NiZTZkMWQzNWNjNDQ0NzM1OWNhYzEyYmViZDNjNGJkNDg1NDAxY2EyNjk4YWFiYjJmZjgiLCJpYXQiOjE2Nzg4NTU3NzkuODczOTI3LCJuYmYiOjE2Nzg4NTU3NzkuODczOTI5LCJleHAiOjE3MTA0NzgxNzkuODcxMzY1LCJzdWIiOiI0OTQiLCJzY29wZXMiOltdfQ.x1hi12XDrHLNJTK7apXwOmxGfq7ZfhgMK4XOm3o-VVSvhGMP_rO7wRqpCfbkEqF4C9fJH-fvY5BIsZ5GL1XMyrphqpp9rgfal1dAqQRX0gymFM2GW9zuDPG3YBcLbb1_ZT1YMDwz9QzfCd3CSvw5tT-ZYDbDf0L9perr28TAn8Rtz4ABa5eQc8PRcDTDOUFiCuZxL0VX5Stz9gMxJnng9DL9mFFAYWI_mDReaLU-U_vFchBqec0yqoV3VjuWVkTY23zrki3JJIQKI9A8RS2fT4hS8E_oF-n3FRCusHSmWCLgn0MQYw0lseGv0hKErpDO1sLtDUMsOqVHsrpH2pdVfqT2bJ8I9byiQqYmFtWz70ZipTIfTbvO6j2L_K5uTRxkJ-Edagr5aamfrBtSKW01z5FNOBBJhWZRZ6lcRJohF79tqdpLp9jeKoyB83eGjnJ6_743bq33WWlgsHC_FwL-0IkMzBREQznbi8mX1jU5G1TSYDa59CrCL9UDqS5YKk8206ke9lj_UbanH-1uB5_jlz_DmiqmdJqLkhaK-6wsatauRiutEhbbz0eQGdhox4ycVb9Njs6kOy9kG-vtmOdsNNnAH17pqGnoTGZHeIf4xCVflIacr7dMPI5QDPDnSQN4R445xVUKh_T6iHO3p4GXcHXxnf9iqppV-7nD3pnwM3Q';

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
  }
}