import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancelar'),
          ),
        ],
        title: const Text('Title'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('This is the content of the alert'),
            SizedBox(height: 13),
            FlutterLogo(size: 69)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 13),
          child: ElevatedButton(
            onPressed: () => displayDialog(context),
            child: const Text(
              'Show Alert',
              style: TextStyle(fontSize: 13),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pop(),
        child: const Icon(Icons.close),
      ),
    );
  }
}
