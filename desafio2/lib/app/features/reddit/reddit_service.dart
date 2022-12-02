import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class RedditService {
  Future<Response?> getHTTP(String theme) async {
    try {
      var response = await Dio().get('https://www.reddit.com/r/$theme/top.json');
      return response;
    } on DioError catch (e) {
      return e.response;
    }
  }
}
