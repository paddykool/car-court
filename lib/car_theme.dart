import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// light text theme
var lightText = TextTheme(
  bodyText1: GoogleFonts.roboto(
      color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.normal),
  headline1: GoogleFonts.roboto(
      color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
  headline2: GoogleFonts.roboto(
      color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w700),
);

// dark text theme
var darkText = TextTheme(
  bodyText1: GoogleFonts.roboto(
      color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.normal),
  headline1: GoogleFonts.roboto(
      color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
  headline2: GoogleFonts.roboto(
      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w700),
);

// Static methods to return ThemeData object
light() {
  return ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: Colors.cyan,
        secondary: Colors.cyanAccent,
        brightness: Brightness.light),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.blue,
    ),
    textTheme: lightText,
  );
}

dark() {
  return ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue[300],
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.cyan,
      secondary: Colors.cyanAccent,
      brightness: Brightness.dark,
    ),
    textTheme: darkText,
  );
}
