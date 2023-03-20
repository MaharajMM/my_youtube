import 'package:my_youtube/src/constants/imports.dart';

class KOutlinedBtnTheme {
  KOutlinedBtnTheme._();

  // Light Theme

  static final lightOutilnedBtnTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
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
