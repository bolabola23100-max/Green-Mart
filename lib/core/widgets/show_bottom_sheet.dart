// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/features/cart/orderAccepted.dart';

ShowBottomSheet(BuildContext context) {
  return showBottomSheet(
    context: context,
    backgroundColor: AppColors.backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
    ),
    builder: (context) {
      return SizedBox(
        height: 400,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Checkout",
                    style: TextStyles.title.copyWith(fontSize: 20),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.close)),
                ],
              ),

              Divider(),
              SizedBox(height: 18),
              Row(
                children: [
                  Text(
                    "Delivery",
                    style: TextStyles.caption.copyWith(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Select Method",
                    style: TextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset(AppImages.arrow),
                ],
              ),
              Divider(),
              SizedBox(height: 18),
              Row(
                children: [
                  Text(
                    "Payment",
                    style: TextStyles.caption.copyWith(fontSize: 16),
                  ),
                  Spacer(),
                  SvgPicture.asset(AppImages.paymentIcon),
                  SizedBox(width: 5),
                  SvgPicture.asset(AppImages.arrow),
                ],
              ),
              Divider(),
              SizedBox(height: 18),

              Row(
                children: [
                  Text(
                    "Promo Code",
                    style: TextStyles.caption.copyWith(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "Pick discount",
                    style: TextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset(AppImages.arrow),
                ],
              ),
              Divider(),
              SizedBox(height: 18),

              Row(
                children: [
                  Text(
                    "Total Cost",
                    style: TextStyles.caption.copyWith(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "10.00\$",
                    style: TextStyles.caption.copyWith(
                      color: AppColors.greyColor,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5),
                  SvgPicture.asset(AppImages.arrow),
                ],
              ),
              Divider(),
              SizedBox(height: 18),
              MainButton(
                onPressed: () {
                  pushReplacement(context, OrderAccepted());
                },
                text: "Place Order",
              ),
            ],
          ),
        ),
      );
    },
  );
}
