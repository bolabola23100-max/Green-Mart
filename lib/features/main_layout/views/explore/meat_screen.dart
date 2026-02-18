import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/main_layout/widgets/shop_widgets/item_cart.dart';

class MeatScreen extends StatelessWidget {
  const MeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meat & Fish",
          style: TextStyles.body1.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: Expanded(
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
              
                  crossAxisSpacing: 10,
                  mainAxisExtent: 255,
                ),
                itemCount: meatProducts.length,
                itemBuilder: (context, index) {
                  var model = meatProducts[index];
                  return ItemCart(model: model);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
