import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class RedditService {
  void getHTTP(String theme) async {
    try {
      var response = await Dio().get('https://www.reddit.com/r/$theme/top.json');
      print(response);
    } catch (e) {
      print(e);
    }
  }

  Future<Object> getHTTP2(String theme) async {
    try {
      var response = await Dio().get('https://www.reddit.com/r/$theme/top.json');
      return response;
    } catch (e) {
      return e;
    }
  }
}
