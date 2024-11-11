import 'package:fl_componentes/routes/app_routes.dart';
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
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: ThemeData.light().copyWith(
          //Color primario
          primaryColor: Colors.blueGrey,
          //App Bar Theme
          appBarTheme: const AppBarTheme(
            color: Colors.redAccent,
          ),
        ));
  }
}
