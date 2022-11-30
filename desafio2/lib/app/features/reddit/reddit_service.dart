import 'package:http/http.dart' as http;

const baseUrl = 'https://www.reddit.com/r/climbing/top.json';

class RedditService {
  static Future getReddit() async {
    var url = Uri.parse(baseUrl);
    return await http.get(url);
  }
}
