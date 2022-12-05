import 'package:flutter_trade2/app/features/reddit/reddit_service.dart';
import 'package:mobx/mobx.dart';

part 'reddit_controller.g.dart';

class RedditController = _RedditController with _$RedditController;

abstract class _RedditController with Store {
  final RedditService _redditService;
  List<dynamic> responseFilter = [];

  _RedditController(this._redditService);

  @observable
  List<String> titles = [];

  @action
  getReddit(String theme) async {
    titles.clear();
    var resp = await _redditService.getHTTP(theme);

    if (resp?.data['error'] == 404) {
      return resp?.data['error'];
    }
    if (resp?.data['error'] == 403) {
      return resp?.data['error'];
    }

    try {
      responseFilter = await resp?.data['data']['children'];
      for (int i = 0; i < responseFilter.length; i++) {
        titles.add(responseFilter[i]['data']['title']);
      }

      return titles;
    } catch (e) {
      return e;
    }
  }

  @action
  getRedditVoid(String theme) async {
    titles.clear();
    var resp = await _redditService.getHTTP(theme);

    try {
      responseFilter = await resp?.data['data']['children'];
      for (int i = 0; i < responseFilter.length; i++) {
        titles.add(responseFilter[i]['data']['title']);
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  void listCleanner() {
    titles.clear();
  }
}
