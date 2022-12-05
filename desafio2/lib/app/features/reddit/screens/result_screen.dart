import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_controller.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';
import 'package:flutter_trade2/app/features/reddit/screens/error_screen.dart';
import 'package:provider/provider.dart';

class ListRedditView extends StatefulWidget {
  String search = '';
  ListRedditView(this.search);

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
            onPressed: () => {
                  controller.listCleanner(),
                  Modular.to.pushNamed(RedditModule.route),
                }),
        elevation: 0,
      ),
      body: Observer(
        builder: (_) => controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.builder(
                  itemCount: controller.titles.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.titles[index]),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
