import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        // home: const Listview2Screen(),
        initialRoute: "home",
        routes: {
          // Para cambiar el nombre de los screens
          "listview1": (BuildContext context) => const Listview1Screen(),
          "listview2": (BuildContext context) => const Listview2Screen(),
          "alert": (BuildContext context) => const AlertScreen(),
          "card": (BuildContext context) => const CardScreen(),
          "home": (BuildContext context) => const HomeScreen(),
        });
  }
}
