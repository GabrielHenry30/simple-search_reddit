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
                if (snapshot.data == 403) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      heightFactor: 1.5,
                      child: Text(
                        'Ops, você pesquisou uma comunidade privada.',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
                }
                if (snapshot.data == 404) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      heightFactor: 1.5,
                      child: Text(
                        'Desculpa, não há comunidades no Reddit com esse nome.',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
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
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      heightFactor: 1.5,
                      child: Text(
                        'Ops, não encontramos nada sobre esse tema.',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  );
                }
              },
            )),
      ),
    );
  }
}
