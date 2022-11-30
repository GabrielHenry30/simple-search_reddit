import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app_module.dart';
import 'package:flutter_trade2/modules/reddit_module/features/controller/reddit_controller.dart';
import 'package:flutter_trade2/modules/reddit_module/reddit_module.dart';
import 'package:provider/provider.dart';

void main() => runApp(ModularApp(module: RedditModule(), child: AppWidget()));

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // supportedLocales: [Locale('pt', 'BR')],
      initialRoute: RedditModule.listCompleteRoute,
    ).modular();
  }
}
