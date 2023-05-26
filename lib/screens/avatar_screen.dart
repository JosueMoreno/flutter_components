import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar Screen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 7),
            child: CircleAvatar(
              backgroundColor: Colors.green.shade900,
              child: const Text('SL'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 111,
          backgroundColor: Colors.black12,
          backgroundImage: NetworkImage(
            'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Android_symbol_green_2.2e16d0ba.fill-1440x810.png',
          ),
        ),
      ),
    );
  }
}
