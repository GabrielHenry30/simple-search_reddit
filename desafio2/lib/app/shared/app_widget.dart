import 'package:flutter/material.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_controller.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => RedditController(RedditService()),
      child: const MaterialApp(
        initialRoute: RedditModule.route,
      ).modular(),
    );
  }
}
