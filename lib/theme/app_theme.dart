import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pinkAccent;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,
      //App Bar Theme
      appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20), //fontWeight: FontWeight.bold
          iconTheme: IconThemeData(color: Colors.white)),
      //ListTile Theme
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),
      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor:
                  primary))); //Establecer color de los botones (primary está deprecado)
}
