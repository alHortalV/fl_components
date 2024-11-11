import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.blueGrey;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      // primaryColor: Colors.blueGrey,
      //App Bar Theme
      appBarTheme: const AppBarTheme(
        color: Colors.red,
      ),
      listTileTheme: const ListTileThemeData(
        iconColor: Colors.redAccent,
      ));
}
