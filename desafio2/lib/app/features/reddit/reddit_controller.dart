import 'dart:convert';

import 'package:dio/dio.dart';
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
  String theme = '';

  @action
  Future<Object> getReddit(String theme) async {
    var teste = await _redditService.getHTTP(theme);

    try {
      var resp = await Dio().get('https://www.reddit.com/r/$theme/top.json');

      // print(resp);

      responseFilter = await resp.data['data']['children'];
      for (int i = 0; i < responseFilter.length; i++) {
        titles.add(responseFilter[i]['data']['title']);
      }

      return titles;
    } catch (e) {
      return e;
    }
  }

  @action
  void cleannerTitles() {
    titles = [];
  }
}
