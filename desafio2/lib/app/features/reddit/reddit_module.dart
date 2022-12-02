import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/screens/result_screen.dart';
import 'package:flutter_trade2/app/features/reddit/screens/search_screen.dart';

class RedditModule extends Module {
  static const route = '/';
  static const listRoute = 'resultList';
  static const listCompleteRoute = '$route$listRoute';

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(route, child: (_, args) => searchScreen()),
    ChildRoute(listCompleteRoute, child: (_, args) => ListRedditView(args.data)),
  ];
}
