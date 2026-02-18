import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';

abstract class TextStyles {
  static const TextStyle title = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w900,
    color: AppColors.blackColor,
  );
  static const TextStyle subtitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.greyColor,
  );
  static const TextStyle body1 = TextStyle(
    fontSize: 16,
    color: AppColors.blackColor,
  );
  static const TextStyle button = TextStyle(
    fontSize: 14,
    color: AppColors.blackColor,
  );
  static const TextStyle caption = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.blackColor,
  );
}
