import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_youtube/src/utils/widgets_theme/elevated_btn_theme.dart';
import 'package:my_youtube/src/utils/widgets_theme/outlined_btn_theme.dart';

class MAppTheme {
  // Light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
    ),
    outlinedButtonTheme: KOutlinedBtnTheme.lightOutilnedBtnTheme,
    elevatedButtonTheme: KElevatedBtnTheme.lightElevatedBtnTheme,
  );

  //Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.white,
      ),
    ),
    outlinedButtonTheme: KOutlinedBtnTheme.darkoutlinedBtnTheme,
    elevatedButtonTheme: KElevatedBtnTheme.darkElevatedBtnTheme,
  );
}
