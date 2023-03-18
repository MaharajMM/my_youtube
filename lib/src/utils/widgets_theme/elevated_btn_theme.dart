import 'package:flutter/material.dart';

import '../../constants/imports.dart';

class KElevatedBtnTheme {
  KElevatedBtnTheme._();

  // Light Theme

  static final lightElevatedBtnTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: kWhiteColor,
      backgroundColor: kSecondaryColor,
      side: const BorderSide(
        color: kSecondaryColor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: kButtonHeight,
      ),
    ),
  );

  // Dark Theme
  static final darkElevatedBtnTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: kSecondaryColor,
      backgroundColor: kWhiteColor,
      side: const BorderSide(
        color: kSecondaryColor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: kButtonHeight,
      ),
    ),
  );
}
