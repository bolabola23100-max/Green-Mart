import 'package:flutter/material.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/explore/explore_cart.dart';

class FindProducts extends StatelessWidget {
  const FindProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisExtent: 171,
      ),
      itemCount: findProducts.length,
      itemBuilder: (context, index) {
        var model = findProducts[index];
        return ExploreCart(model: model);
      },
    );
  }
}
