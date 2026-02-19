import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_Images.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/features/main_layout/main_layout.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppImages.orderAccepted),

              SizedBox(height: 20),
              Text(
                "Your order has been\n         accepted",
                style: TextStyles.title.copyWith(fontSize: 20),
              ),
              SizedBox(height: 20),
              Text(
                "Your items has been placed and is\n on it’s way to being processed",
                style: TextStyles.subtitle.copyWith(fontSize: 14),
              ),
              SizedBox(height: 60),

              MainButton(
                onPressed: () {
                  pushReplacement(context, MainLayout());
                },
                text: "Go To Home",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
