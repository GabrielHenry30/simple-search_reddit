import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';

void main() => runApp(ModularApp(module: RedditModule(), child: AppWidget()));

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RedditModule.listCompleteRoute,
    ).modular();
  }
}
