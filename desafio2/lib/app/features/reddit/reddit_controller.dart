import 'package:flutter_trade2/app/features/reddit/reddit_model.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_service.dart';
import 'package:mobx/mobx.dart';

part 'reddit_controller.g.dart';

class RedditController = _RedditController with _$RedditController;

abstract class _RedditController with Store {
  final RedditService _redditService;

  _RedditController(this._redditService);

  @observable
  List<Response> list = [];

  @action
  void teste() {
    print(list);
  }

  // @action
  // List<Response> getResponse() {

  // }
}
