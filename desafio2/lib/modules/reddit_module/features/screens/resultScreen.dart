import 'package:flutter/material.dart';

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
          backgroundColor: const Color.fromARGB(255, 111, 110, 110),
          title: const Text('API REST'),
          leading: GestureDetector(
              // onTap: () => Modular.to.navigate(LimitModule.route),
              ),
        ),
        body: listReddit()
        // Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       TextField(
        //         onChanged: (value) => theme = value,
        //         decoration: const InputDecoration(labelText: 'Insira o tema', border: OutlineInputBorder()),
        //       ),
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       ElevatedButton(
        //         onPressed: () {},
        //         child: const Text('Pesquisar'),
        //       ),
        //     ],
        //   ),
        // ),
        );
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
