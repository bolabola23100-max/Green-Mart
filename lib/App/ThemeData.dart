import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/colors.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundColor,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,

        minimumSize: Size(319, 58),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        foregroundColor: AppColors.backgroundColor,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(22),
        borderSide: BorderSide.none,
      ),
      hintStyle: TextStyle(color: AppColors.greyColor),
      fillColor: AppColors.accentColor,
      filled: true,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),
  );
}
