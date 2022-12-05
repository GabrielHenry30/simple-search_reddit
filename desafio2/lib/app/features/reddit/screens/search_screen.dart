import 'package:flutter/material.dart';
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
    String search = '';
    final response = Provider.of<RedditController>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 192, 221),
        title: const Text('Reddit API'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) => {search = value},
              onSubmitted: (_) async => {
                {
                  await response.getReddit(search),
                  Modular.to.popAndPushNamed(RedditModule.listCompleteRoute),
                }
              },
              decoration: const InputDecoration(labelText: 'Insira o tema', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: (() async => {
                    await response.getReddit(search),
                    Modular.to.popAndPushNamed(RedditModule.listCompleteRoute),
                  }),
              child: const Text('Pesquisar'),
            ),
          ],
        ),
      ),
    );
  }
}
