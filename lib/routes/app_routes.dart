import 'package:fl_componentes/models/models.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home',
      icon: Icons.home,
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      name: 'Listview1',
      icon: Icons.list_alt,
      screen: const Listview1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview2',
      icon: Icons.list_alt,
      screen: const Listview2Screen(),
    ),
    MenuOption(
      route: 'card',
      name: 'Card',
      icon: Icons.card_giftcard,
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert',
      icon: Icons.add_alarm,
      screen: const AlertScreen(),
    ),
    MenuOption(
        route: 'avatar',
        name: 'Avatar',
        icon: Icons.person,
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        name: 'Animated',
        icon: Icons.animation,
        screen: const AnimatedScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) =>
            const AlertScreen()); //En caso de error con el pushNamed nos redireccionará a AlertScreen
  }
}
