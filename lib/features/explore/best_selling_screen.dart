import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/main_layout/presentation/widgets/shop_widgets/item_cart.dart';

class BestSellingScreen extends StatelessWidget {
  const BestSellingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Best Selling",
          style: TextStyles.body1.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,

                crossAxisSpacing: 10,
                mainAxisExtent: 255,
              ),
              itemCount: bestSelling.length,
              itemBuilder: (context, index) {
                var model = bestSelling[index];
                return ItemCart(model: model);
              },
            ),
          ],
        ),
      ),
    );
  }
}
