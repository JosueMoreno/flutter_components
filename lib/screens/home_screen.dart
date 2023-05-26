import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(
            AppRoutes.menuOptions[index].icon,
            color: Theme.of(context).primaryColor,
          ),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
