import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Placeholder'),
            subtitle: const Text(
              'Nostrud ullamco magna excepteur minim ea eu laborum reprehenderit incididunt quis fugiat proident.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 7, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
