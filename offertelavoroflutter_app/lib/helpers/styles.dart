import 'package:flutter/material.dart';

class Styles {
  // Colors
  static const Color primaryDark = Color(0xFF061D5C);
  static const Color accent = Color(0xFFFFDE59);
  static const Color lightText = Color(0xFFA0A7B1);
  static const Color lightBackground = Color(0xFFF9F9F9);

  // Other
  static const double screenHorizPadding = 20;

  // Button themes
  static ButtonStyle? getLightButtonTheme(BuildContext context) => Theme.of(context).elevatedButtonTheme.style?.copyWith(
    backgroundColor: const MaterialStatePropertyAll(Styles.lightBackground),
    foregroundColor: const MaterialStatePropertyAll(Styles.primaryDark)
  );
}