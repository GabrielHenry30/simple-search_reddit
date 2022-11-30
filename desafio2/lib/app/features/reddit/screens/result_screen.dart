import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';

class ListRedditView extends StatefulWidget {
  const ListRedditView({super.key});

  @override
  State<ListRedditView> createState() => _ListRedditViewState();
}

class _ListRedditViewState extends State<ListRedditView> {
  @override
  Widget build(BuildContext context) {
    String theme = '';
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 95, 192, 221),
          title: const Text('Reddit API'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
            onPressed: () => Modular.to.navigate(RedditModule.route),
          ),
          elevation: 0,
        ),
        body: listReddit());
  }

  listReddit() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Resultados:'),
        );
      },
    );
  }
}
