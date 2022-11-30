import 'package:flutter/material.dart';
import 'package:flutter_trade2/app_module.dart';
import 'package:flutter_trade2/modules/reddit_module/features/controller/reddit_controller.dart';
import 'package:flutter_trade2/modules/reddit_module/reddit_module.dart';
import 'package:provider/provider.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() => runApp(ModularApp(module: AppModule(), child: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<RedditController>(create: (_) => RedditController()),
      ],
      child: const MaterialApp(
        initialRoute: RedditModule.route,
      ).modular(),
    );
  }
}
