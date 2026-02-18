import 'package:flutter/material.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/main_layout/widgets/shop_widgets/item_cart.dart';

class FilteredGridView extends StatelessWidget {
  const FilteredGridView({super.key, required this.products});
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,

        crossAxisSpacing: 10,
        mainAxisExtent: 255,
      ),
      itemBuilder: (context, index) {
        return ItemCart(model: products[index]);
      },
      itemCount: products.length,
    );
  }
}
