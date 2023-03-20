import '../../constants/imports.dart';

class KElevatedBtnTheme {
  KElevatedBtnTheme._();

  // Light Theme

  static final lightElevatedBtnTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
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
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
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
