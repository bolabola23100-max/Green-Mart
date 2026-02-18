import 'dart:io';

import 'package:flutter/material.dart';
import 'package:green_mart/app/ThemeData.dart';
import 'package:green_mart/features/main_layout/main_layout.dart';
// import 'package:green_mart/features/on_boarding_screens/screens/splash_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: themeData(),

      builder: (context, child) {
        return SafeArea(
          top: false,
          bottom: Platform.isAndroid,
          child: child ?? Scaffold(),
        );
      },
      home: MainLayout(),
      //   SplashScreen(),
    );
  }
}
