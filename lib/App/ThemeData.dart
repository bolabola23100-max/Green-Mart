import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_fonts.dart';
import 'package:green_mart/core/styles/colors.dart';

ThemeData themeData() {
  return ThemeData(
    fontFamily: AppFonts.poppins,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
    ),
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
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.greyColor,
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700, height: 2),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w700, height: 2),
    ),
  );
}
