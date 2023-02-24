import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myTheme {
  // light text them
  static TextTheme lightTheme = TextTheme( 

    headline1: GoogleFonts.roboto(
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: Colors.black,
    ),
    headline2: GoogleFonts.roboto(
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: Colors.black,
    ),
    headline3: GoogleFonts.roboto(
      fontSize: 48,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline4: GoogleFonts.roboto(
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.black,
    ),
    headline5: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline6: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.black,
    ),
    subtitle1: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.black,
    ),
    subtitle2: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.black,
    ),
    bodyText1: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.black,
    ),
    bodyText2: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.black,
    ),
    button: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.black,
    ),
    caption: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.black,
    ),
    overline: GoogleFonts.roboto(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: Colors.black,
    ),
  );
  static TextTheme darkTheme = TextTheme(
    headline1: GoogleFonts.roboto(
      fontSize: 96,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5,
      color: Colors.white,
    ),
    headline2: GoogleFonts.roboto(
      fontSize: 60,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: Colors.white,
    ),
    headline3: GoogleFonts.roboto(
      fontSize: 48,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline4: GoogleFonts.roboto(
      fontSize: 34,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    headline5: GoogleFonts.roboto(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline6: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    subtitle1: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15,
      color: Colors.white,
    ),
    subtitle2: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.roboto(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5,
      color: Colors.white,
    ),
    bodyText2: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25,
      color: Colors.white,
    ),
    button: GoogleFonts.roboto(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25,
      color: Colors.white,
    ),
    caption: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
      color: Colors.white,
    ),
    overline: GoogleFonts.roboto(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5,
      color: Colors.white,
    ),
  );
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) => Colors.black)),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white, foregroundColor: Colors.black),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.white, foregroundColor: Colors.redAccent),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
    textTheme: lightTheme,
    backgroundColor: Colors.white,
  );
  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith((states) => Colors.white)),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      foregroundColor: Colors.grey[900],
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white,
      foregroundColor: Colors.redAccent,
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
    textTheme: darkTheme,
    scaffoldBackgroundColor: Colors.grey[900],
  );
}
