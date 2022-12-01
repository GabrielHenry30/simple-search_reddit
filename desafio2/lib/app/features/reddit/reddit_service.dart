import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class RedditService {
  Future<Object> getHTTP(String theme) async {
    try {
      var response = await Dio().get('https://www.reddit.com/r/$theme/top.json');
      return response;
    } catch (e) {
      return e;
    }
  }
}
