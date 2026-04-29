import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/main_layout/presentation/widgets/shop_widgets/item_cart.dart';

class DairyScreen extends StatelessWidget {
  const DairyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dairy & Eggs",
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
              itemCount: dairyProducts.length,
              itemBuilder: (context, index) {
                var model = dairyProducts[index];
                return ItemCart(model: model);
              },
            ),
          ],
        ),
      ),
    );
  }
}
