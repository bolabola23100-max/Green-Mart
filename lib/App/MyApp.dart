import 'dart:io';

import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/colors.dart';
import 'package:green_mart/features/home/screens/splash_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backgroundColor,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primaryColor,

            minimumSize: Size(319, 58),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
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
      ),
      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Scaffold(),
        );
      },

      home: SplashScreen(),
    );
  }
}
