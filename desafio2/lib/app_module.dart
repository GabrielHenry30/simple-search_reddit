import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/modules/reddit_module/reddit_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(RedditModule.route, module: RedditModule()),
  ];
}
