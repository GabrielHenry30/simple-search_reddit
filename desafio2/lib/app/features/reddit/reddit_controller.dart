import 'package:mobx/mobx.dart';

part 'reddit_controller.g.dart';

class RedditController = _RedditController with _$RedditController;

abstract class _RedditController with Store {
  @observable
  String i = 'teste';

  @action
  void teste() {
    print(i);
  }
}
