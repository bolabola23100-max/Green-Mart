import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/details/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Hero(
                  tag: model.tagKey,
                  child: Image.asset(model.image, height: 50),
                ),
                Text(
                  model.name,
                  style: TextStyles.subtitle.copyWith(fontSize: 12),
                ),
                Spacer(),
                Text(
                  "\$${model.price}",
                  style: TextStyles.subtitle.copyWith(fontSize: 12),
                ),

                Spacer(),
                IconButton(
                  onPressed: () {
                    pushTo(context, ProductDetailsScreen(model: model));
                  },
                  icon: SvgPicture.asset(AppImages.arrow),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                model.weight!,
                style: TextStyles.subtitle.copyWith(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
