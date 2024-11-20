import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.pinkAccent;
  static const Color secondary = Colors.white;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      primaryColor: primary,
      //App Bar Theme
      appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(
              color: secondary, fontSize: 20), //fontWeight: FontWeight.bold
          iconTheme: IconThemeData(color: secondary)),
      //ListTile Theme
      listTileTheme: const ListTileThemeData(
        iconColor: primary,
      ),
      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5,
          shape: StadiumBorder(),
          foregroundColor: secondary));
}