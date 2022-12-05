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

  @observable
  bool isLoading = false;

  @action
  Future<void> setReddit(String theme) async {
    changeIsLoading(true);
    titles.clear();

    var resp = await _redditService.getHTTP(theme);

    responseFilter = await resp?.data['data']['children'];
    for (int i = 0; i < responseFilter.length; i++) {
      titles.add(responseFilter[i]['data']['title']);
    }

    titles = titles;
    changeIsLoading(false);
  }

  bool changeIsLoading(bool value) => isLoading = value;

  @action
  void listCleanner() {
    titles.clear();
  }
}
