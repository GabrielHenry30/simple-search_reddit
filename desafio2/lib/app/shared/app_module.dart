import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_controller.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_service.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => RedditService()),
    Bind.singleton((i) => RedditController(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(RedditModule.route, module: RedditModule()),
  ];
}
