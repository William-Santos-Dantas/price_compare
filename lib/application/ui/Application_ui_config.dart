// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ApplicationUiConfig {
  ApplicationUiConfig._();
  static String get title => 'Comparador de Preço';
  static ThemeData get theme => ThemeData(
        fontFamily: 'Metropolis',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Color(0xff222222),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}
