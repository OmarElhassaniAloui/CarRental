import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.light(), 
    // scaffoldBackgroundColor :Colors.grey.shade300 , 
  );
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark(),
    brightness: Brightness.dark,
    // scaffoldBackgroundColor: Color(0xFF0A0E21),
    // backgroundColor: Color(0xFF0A0E21), 
    // cardColor:  Color(0xFF0A0E21), 

  );
}
