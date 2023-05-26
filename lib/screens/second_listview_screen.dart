import 'package:flutter/material.dart';

class SecondListViewScreen extends StatelessWidget {
  const SecondListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second List View Screen'),
      ),
      body: const Center(
        child: Text('Second List View Screen'),
      ),
    );
  }
}
