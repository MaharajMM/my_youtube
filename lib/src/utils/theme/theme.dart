import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
    //   50: Color(0x1AFFE200),
    //   106: Color(0x33FFE260),
    //   200: Color(0x4DFFE260),
    //   300: Color(0x66FFE206),
    //   400: Color(0x80FFE200),
    //   500: Color(0xFFFFE200),
    //   600: Color(0x99FFE200),
    //   700: Color(0xB3FFE200),
    //   800: Color(0xCCFFE200),
    //   900: Color(0xE6FFE200),
    // }),
    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.white,
      ),
    ),
  );
}
