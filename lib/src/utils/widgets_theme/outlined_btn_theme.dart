import 'package:my_youtube/src/constants/imports.dart';

class KOutlinedBtnTheme {
  KOutlinedBtnTheme._();

  // Light Theme

  static final lightOutilnedBtnTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: kSecondaryColor,
      side: const BorderSide(
        color: kSecondaryColor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: kButtonHeight,
      ),
    ),
  );

  // Dark Theme
  static final darkoutlinedBtnTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(),
      foregroundColor: kWhiteColor,
      side: const BorderSide(
        color: kWhiteColor,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: kButtonHeight,
      ),
    ),
  );
}
