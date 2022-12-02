import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_controller.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';
import 'package:provider/provider.dart';

class ListRedditView extends StatefulWidget {
  String theme;
  ListRedditView(this.theme);

  @override
  _ListRedditViewState createState() => _ListRedditViewState();
}

class _ListRedditViewState extends ModularState<ListRedditView, RedditController> {
  @override
  Widget build(BuildContext context) {
    final response = Provider.of<RedditController>(context);
    List<String> titles = [];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 95, 192, 221),
          title: const Text('Reddit API'),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
              onPressed: () => {
                    response.listCleanner(),
                    Modular.to.popAndPushNamed(RedditModule.route),
                  }),
          elevation: 0,
        ),
        body: Observer(
          builder: ((_) => FutureBuilder(
                future: response.getReddit(widget.theme),
                builder: (context, snapshot) {
                  if (snapshot.data == 'private') {
                    return Align(
                      alignment: Alignment.center,
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Ops, esse tema é privado.',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        itemCount: response.titles.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            // title: const Text('Título: '),
                            title: Text(response.titles[index]),
                          );
                        },
                      ),
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              )),
        ));
  }
}
