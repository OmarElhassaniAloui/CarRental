import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.light(),
    appBarTheme: AppBarTheme(
      color: Color.fromARGB(255, 243, 109, 0),
    ),
    // textButtonTheme:  , 

  );
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark(),
    brightness: Brightness.dark,
  );
}
