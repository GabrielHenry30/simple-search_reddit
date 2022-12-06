import 'package:flutter_trade2/app/features/reddit/screens/search/search_controller.dart';
import 'package:mobx/mobx.dart';

part 'result_controller.g.dart';

class ResultController = _ResultController with _$ResultController;

abstract class _ResultController with Store {
  final SearchController _searchController;
  List<dynamic> responseFilter = [];

  _ResultController(this._searchController);

  @observable
  // List<String> titles = _searchController.titles;

  @observable
  int error = 0;
}
