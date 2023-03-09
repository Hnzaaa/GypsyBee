import 'dart:convert';
import 'package:http/http.dart' as http;

class Restapi {//in usdata.dart file
  String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiNTljZTYyMzMxOTBiYmQ2MTliMDk0OTEyOTA5MWFjNzhiYjg4MWFlNzJkOWQyZDBhYzM5ZjAxZWVkNzViZjZiYjNiNGFmNmRkOWYyYTI3MjEiLCJpYXQiOjE2NzgwODY3MzAuMzQxOTQ1LCJuYmYiOjE2NzgwODY3MzAuMzQxOTQ2LCJleHAiOjE3MDk3MDkxMzAuMzM3NjYyLCJzdWIiOiI0NzciLCJzY29wZXMiOltdfQ.pTqIXcUDVUcQaBlAodWWuIgs2iXiMQoXM-_hcE341-gCS55tpdp8HOwYqp5ucooxK8ap6nSslJN5OGqDMqrzGg1oAB_Yg9Jr8LUSkSwcoGS6tzlpmFsMcL_lkhBjVDN2NInzoqtHZelERMU6AOS_WrqMr99RWx1xjbyRKLn3RADOTLn7pk0iSosQYoLlkr0_mE1TFu6-67A1UIUc-XcP-9BTUOGbRZn5tDvcyxOsm-Bl2NDA9-g-QmughQMRK2yUynpzsJ_BD3GZw-PeNwqe8gbZx3P3ffYo0wWn7XvHKVa7CfVJVpXpSd0JIH61dKkjX4cJbIjcz324PFS-qYsMp3TORByFSnHWXCP6YHjoEsTw91pTsupCzl3Wq7BfIPty7abpXJUxPuNdO5oMfYGRFYxrCSdPnNIv_IaTC2gbqxrGiBYQKb47r_4GOdjhZFc2Nu2qz82UTepae0Mo5J1F8caBlkSXnxQggFaNFpq-MvtszPaqtn72gH3_ZVkPaG6v6iwpKsf1VWBrOcNutdmto84GmTKctYTgCLaP4aEYLEeDTJbhZiQ9XM7IiRVHWypiZjq13QSFU_SSquF9WA2nNrW28eb_celNwdCD5WmqeAtGJXXvnm4nmSCHOChbw_MYK4iZzqPq8BuqZxMe7ZOHI5H-0CPnKd7iez-N1-_NZuo';
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
