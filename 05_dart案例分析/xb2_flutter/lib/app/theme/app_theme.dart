import 'package:flutter/material.dart';

class AppTheme {
  // 亮色主题
  static ThemeData light = ThemeData(
    primaryColor: Colors.amber.shade600,
    hintColor: Colors.amber.shade900,
    colorScheme: ColorScheme.light(
      primary: Colors.orange,
      secondary: Colors.amber.shade900,
    )
  );
  // 暗色主题
  static ThemeData dark = ThemeData(
    primaryColor: Colors.brown.shade500,
    hintColor: Colors.amber.shade900,
    colorScheme: ColorScheme.dark(
      primary: Colors.white,
      secondary: Colors.brown.shade500,
    )
  );
}