import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_controller.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';
import 'package:provider/provider.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends ModularState<searchScreen, RedditController> {
  @override
  Widget build(BuildContext context) {
    final response = Provider.of<RedditController>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 192, 221),
        title: const Text('Reddit API'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Observer(
          builder: ((_) => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextField(
                    onChanged: (value) => {response.theme = value},
                    onSubmitted: (_) => {
                      {Modular.to.popAndPushNamed(RedditModule.listCompleteRoute, arguments: response.theme)}
                    },
                    decoration: const InputDecoration(labelText: 'Insira o tema', border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: (() => Modular.to.popAndPushNamed(RedditModule.listCompleteRoute, arguments: response.theme)),
                    child: const Text('Pesquisar'),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
