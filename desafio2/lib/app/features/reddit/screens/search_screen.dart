import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_controller.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends ModularState<searchScreen, RedditController> {
  String theme = '';

  @override
  Widget build(BuildContext context) {
    print(theme);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 95, 192, 221),
        title: const Text('Reddit API'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) => theme = value,
              onSubmitted: (value) => Modular.to.navigate(RedditModule.listCompleteRoute, arguments: value),
              decoration: const InputDecoration(labelText: 'Insira o tema', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () => Modular.to.navigate(RedditModule.listCompleteRoute, arguments: theme),
              child: const Text('Pesquisar'),
            ),
          ],
        ),
      ),
    );
  }
}
