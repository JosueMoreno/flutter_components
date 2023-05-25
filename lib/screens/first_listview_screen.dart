import 'package:flutter/material.dart';

class FirstListViewScreen extends StatelessWidget {
  const FirstListViewScreen({Key? key}) : super(key: key);

  static List<String> games = [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Type 1'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: games.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(games[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.indigo,
          ),
          onTap: () {},
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
