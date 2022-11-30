import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_controller.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_model.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';
import 'package:provider/provider.dart';

class ListRedditView extends StatefulWidget {
  final String theme;
  ListRedditView(this.theme);

  @override
  _ListRedditViewState createState() => _ListRedditViewState();
}

class _ListRedditViewState extends ModularState<ListRedditView, RedditController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 192, 221),
        title: const Text('Reddit API'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Modular.to.navigate(RedditModule.route),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(widget.theme),
          );
        },
      ),
    );
  }
}
