import 'package:flutter/material.dart';

const primaryColor = Color.fromRGBO(255, 179, 0, 1);
const primaryColorDark = Color.fromRGBO(255, 179, 0, 1);
// const primaryColorDark = Color.fromRGBO(121, 85, 72, 1);

const secondaryColor = Color.fromRGBO(255, 111, 0, 1);
const secondaryColorDark = Color.fromRGBO(255, 111, 0, 1);

const primaryTextColor = Colors.black54;
const primaryTextColorDark = Color.fromARGB(136, 255, 255, 255);

const secondaryTextColor = Color.fromRGBO(97, 97, 97, 1);
const secondaryTextColorDark = Color.fromRGBO(97, 97, 97, 1);

const primaryBackgroundColor = Colors.white;
const primaryBackgroundColorDark = Color.fromRGBO(33, 33, 33, 1);

class AppTheme {
  // 亮色主题
  static ThemeData light = ThemeData(
    primaryColor: primaryColor,
    hintColor: secondaryColor,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
    ),
    scaffoldBackgroundColor: primaryBackgroundColor,
  );
  // 暗色主题
  static ThemeData dark = ThemeData(
    primaryColor: primaryColorDark,
    hintColor: secondaryColorDark,
    colorScheme: const ColorScheme.dark(
      primary: primaryColorDark,
      secondary: secondaryColorDark,
    ),
    scaffoldBackgroundColor: primaryBackgroundColorDark,
  );
}