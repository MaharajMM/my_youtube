import 'package:my_youtube/src/constants/imports.dart';

class KTextFormFieldTheme {
  KTextFormFieldTheme._();

//light theme
  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: kSecondaryColor,
    floatingLabelStyle: TextStyle(
      color: kSecondaryColor,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: kSecondaryColor,
      ),
    ),
  );

// dark theme
  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: kPrimaryColor,
    floatingLabelStyle: TextStyle(
      color: kPrimaryColor,
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: kPrimaryColor,
      ),
    ),
  );
}
