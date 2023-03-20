import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_youtube/src/utils/widgets_theme/elevated_btn_theme.dart';
import 'package:my_youtube/src/utils/widgets_theme/outlined_btn_theme.dart';
import 'package:my_youtube/src/utils/widgets_theme/text_field_theme.dart';

class MAppTheme {
  // Light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
    ),
    outlinedButtonTheme: KOutlinedBtnTheme.lightOutilnedBtnTheme,
    elevatedButtonTheme: KElevatedBtnTheme.lightElevatedBtnTheme,
    inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,
  );

  //Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
    ),
    outlinedButtonTheme: KOutlinedBtnTheme.darkoutlinedBtnTheme,
    elevatedButtonTheme: KElevatedBtnTheme.darkElevatedBtnTheme,
    inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,
  );
}
