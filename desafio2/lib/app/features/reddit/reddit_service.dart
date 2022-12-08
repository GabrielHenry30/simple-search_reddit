import 'package:dio/dio.dart';

class RedditService {
  Dio dio;
  RedditService(this.dio);

  Future<Response?> getHTTP(String theme) async {
    try {
      var response = await dio.get('https://www.reddit.com/r/$theme/top.json');
      return response;
    } on DioError catch (e) {
      return e.response;
    }
  }
}
