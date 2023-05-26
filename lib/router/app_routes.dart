import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  static final List<MenuOption> menuOptions = [
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
      route: 'firstlistview',
      name: 'First ListView Screen',
      screen: const FirstListViewScreen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'secondlistview',
      name: 'Second ListView Screen',
      screen: const SecondListViewScreen(),
      icon: Icons.list_alt_outlined,
    ),
    MenuOption(
      route: 'card',
      name: 'Card Screen',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert Screen',
      screen: const AlertScreen(),
      icon: Icons.add_alert,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Avatar Screen',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
      for (MenuOption menuOption in menuOptions)
        menuOption.route: (context) => menuOption.screen
    };
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
