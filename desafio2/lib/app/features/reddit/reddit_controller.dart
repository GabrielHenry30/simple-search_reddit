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

  @observable
  int error = 0;

  @action
  Future<void> setReddit(String theme) async {
    List<String> newTitles = [];
    setError(0);
    var resp = await _redditService.getHTTP(theme);

    if (resp?.data['error'] == 403) {
      setError(403);
      changeIsLoading(false);
      return;
    }
    if (resp?.data['error'] == 404) {
      setError(404);
      changeIsLoading(false);
      return;
    }
    if (resp?.statusCode == 200) {
      responseFilter = await resp?.data['data']['children'];
      for (int i = 0; i < responseFilter.length; i++) {
        newTitles.add(responseFilter[i]['data']['title']);
      }
      titles = newTitles;
      changeIsLoading(false);
      return;
    }
  }

  bool changeIsLoading(bool value) => isLoading = value;

  void setError(int erro) {
    error = erro;
  }

  @action
  void listCleanner() {
    titles.clear();
  }
}
