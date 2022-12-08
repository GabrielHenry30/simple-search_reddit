import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_trade2/app/features/reddit/screens/search/search_controller.dart';
import 'package:flutter_trade2/app/features/reddit/reddit_module.dart';
import 'package:flutter/services.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends ModularState<searchScreen, SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 192, 221),
        title: const Text('Reddit API'),
        elevation: 0,
      ),
      body: Observer(
        builder: (_) => controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                      inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[a-zA-Z0-9]"))],
                      onChanged: (value) {
                        controller.search = value;
                      },
                      onSubmitted: controller.search.isNotEmpty
                          ? (_) async {
                              controller.changeIsLoading(true);
                              await controller.setReddit(controller.search);
                              controller.changeIsLoading(false);
                              Modular.to.pushNamed(RedditModule.listCompleteRoute);
                            }
                          : null,
                      decoration: const InputDecoration(labelText: 'Insira o tema', border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: controller.search.isNotEmpty
                          ? (() => {
                                controller.setReddit(controller.search),
                                Modular.to.pushNamed(RedditModule.listCompleteRoute),
                              })
                          : null,
                      child: const Text('Pesquisar'),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
