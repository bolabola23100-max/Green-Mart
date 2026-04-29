import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/explore/offer_screen.dart';
import 'package:green_mart/features/main_layout/presentation/widgets/shop_widgets/item_cart.dart';

class OffersBuilder extends StatelessWidget {
  const OffersBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Exclusive Offer",
                style: TextStyles.title.copyWith(fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {
                  pushTo(context, OfferScreen());
                },
                child: Text(
                  "See all",
                  style: TextStyles.subtitle.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 255,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var model = offers[index];
              return ItemCart(model: model);
            },
            separatorBuilder: (context, index) => SizedBox(),
            itemCount: offers.length,
          ),
        ),
      ],
    );
  }
}
