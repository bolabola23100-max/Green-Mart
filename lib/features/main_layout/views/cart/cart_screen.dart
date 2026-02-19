import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/core/widgets/show_bottom_sheet.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: MainButton(
          onPressed: () {
            ShowBottomSheet(context);
          },
          text: "Go to Checkout",
        ),
      ),
      appBar: AppBar(title: Text("Cart")),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 200,
        ),
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final product = cart[index];
          return Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(product.image, height: 60, width: 60),
                Text(product.name),
                Text(product.weight!),
                Text("\$${product.price}"),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      cart.removeWhere((item) => item.tagKey == product.tagKey);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
