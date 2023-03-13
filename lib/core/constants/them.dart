import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';










class myTheme {
  // light text them
  static TextTheme lightTheme = TextTheme(
    bodyText1: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline1: GoogleFonts.roboto(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headline2: GoogleFonts.roboto(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline3: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline6: GoogleFonts.roboto(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  static TextTheme darkTheme = TextTheme(
    bodyText1: GoogleFonts.roboto(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline1: GoogleFonts.roboto(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: GoogleFonts.roboto(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline3: GoogleFonts.roboto(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline6: GoogleFonts.roboto(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );






  static ThemeData light = ThemeData( 
    colorScheme: ColorScheme.light(),
    scaffoldBackgroundColor: Color(0xFFF5F3F5),
    brightness: Brightness.light,
    // checkboxTheme: CheckboxThemeData(
    //   fillColor: MaterialStateProperty.resolveWith((states) => Colors.black),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
    // floatingActionButtonTheme: FloatingActionButtonThemeData(
    // backgroundColor: Colors.white, foregroundColor: Colors.redAccent),
    // bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
    textTheme: lightTheme,
    backgroundColor: Colors.white,
    cardColor: Color(0xFFFDFBFD),
  );

  static ThemeData dark = ThemeData( 
    colorScheme: ColorScheme.dark(),
    brightness: Brightness.dark,
    // checkboxTheme: CheckboxThemeData(
    //   fillColor: MaterialStateProperty.resolveWith((states) => Colors.white),
    // ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.grey[900],
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      foregroundColor: Colors.redAccent,
    ),
    // bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
    textTheme: darkTheme,
    scaffoldBackgroundColor: Color(0xFF111111), 
  );
}
