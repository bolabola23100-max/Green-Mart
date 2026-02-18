import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_Images.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/features/auth/screens/login_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.backgroundImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 430,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppImages.carrot),
                  Text(
                    "Welcome ",
                    style: TextStyle(
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    "to our store",
                    style: TextStyle(
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    "Ger your groceries in as fast as one hour",
                    style: TextStyle(
                      color: AppColors.accentColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 35),
                  MainButton(
                    onPressed: () {
                      pushReplacement(context, Login());
                    },
                    text: "Get Started",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
