import 'package:flutter/material.dart';
import 'colors.dart';

class AppThemes {
  static final ThemeData themeData = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Appcolors.primary2),
    scaffoldBackgroundColor: Appcolors.background,
    fontFamily: 'Outfit', // Apply globally
  );
}
