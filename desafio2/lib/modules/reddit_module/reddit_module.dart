import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/modules/reddit_module/features/screens/resultScreen.dart';
import 'package:flutter_trade2/modules/reddit_module/features/screens/searchScreen.dart';

class RedditModule extends Module {
  static const route = '/';
  static const listRoute = 'resultList';
  static const listCompleteRoute = '$route$listRoute';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      route,
      child: (_, args) => searchScreen(),
    ),
    ChildRoute(
      listCompleteRoute,
      child: (_, args) => ListRedditView(),
    ),
  ];
}
