import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = "home";
  static Map<String, Widget Function(BuildContext)> routes = {
    // Para cambiar el nombre de los screens
    "listview1": (BuildContext context) => const Listview1Screen(),
    "listview2": (BuildContext context) => const Listview2Screen(),
    "alert": (BuildContext context) => const AlertScreen(),
    "card": (BuildContext context) => const CardScreen(),
    "home": (BuildContext context) => const HomeScreen(),
  };
}
