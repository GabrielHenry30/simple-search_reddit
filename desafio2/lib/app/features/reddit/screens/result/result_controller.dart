import 'package:flutter/foundation.dart';
import 'package:flutter_trade2/app/features/reddit/screens/search/search_controller.dart';
import 'package:mobx/mobx.dart';

part 'result_controller.g.dart';

class ResultController = _ResultController with _$ResultController;

abstract class _ResultController with Store {
  final SearchController _searchController;

  _ResultController(this._searchController);

  @computed
  List<String> get titles => _searchController.titles;

  @computed
  int get error => _searchController.error;

  @computed
  bool get titlesIsNotEmpty => _searchController.titles.isNotEmpty;

  @action
  void setSearchEmpty() {
    _searchController.search = '';
  }
}
