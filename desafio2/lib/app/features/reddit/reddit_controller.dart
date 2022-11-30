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

  @action
  void getHTTPprint(String theme) async {
    try {
      var response = await Dio().get('https://www.reddit.com/r/$theme/top.json');
      responseFilter = response.data['data']['children'];

      for (int i = 0; i < responseFilter.length; i++) {
        // print(responseFilter[i]['data']['title']);
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  List<String?> listTitleResponse(String theme) {
    getHTTPprint(theme);

    for (int i = 0; i < responseFilter.length; i++) {
      titles.add(responseFilter[i]['data']['title']);
    }
    // titles = response;

    return titles;
  }
}
