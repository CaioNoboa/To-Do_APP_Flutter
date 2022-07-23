import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  canvasColor: const Color.fromRGBO(255, 254, 229, 1),
  fontFamily: 'IbarraRealNova',
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: Colors.pink,
    secondary: Colors.amber,
  ),
  textTheme: ThemeData.light().textTheme.copyWith(
        headline6: const TextStyle(
          fontSize: 20,
          fontFamily: 'IbarraRealNova',
        ),
        headline5: const TextStyle(
          fontFamily: 'IbarraRealNova',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
);
