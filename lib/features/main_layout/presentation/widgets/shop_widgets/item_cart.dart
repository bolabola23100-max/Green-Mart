import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/details/product_details_screen.dart';

class ItemCart extends StatefulWidget {
  const ItemCart({super.key, required this.model});
  final ProductModel model;

  @override
  State<ItemCart> createState() => _ItemCartState();
}

class _ItemCartState extends State<ItemCart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, ProductDetailsScreen(model: widget.model));
      },
      child: Container(
        width: 157,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.accentColor),
          color: AppColors.backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Color(0xff555E58).withValues(alpha: 0.1),

              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag: widget.model.tagKey,
                    child: Image.asset(widget.model.image),
                  ),
                ),
              ),
              SizedBox(height: 20),

              Text(
                widget.model.name,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              SizedBox(height: 7),
              Text(
                widget.model.weight!,
                style: TextStyle(color: AppColors.greyColor),
              ),
              SizedBox(height: 17),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${widget.model.price}",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (!cart.contains(widget.model)) {
                          cart.add(widget.model);
                        }
                      });
                    },
                    child: Container(
                      width: 38,
                      height: 38,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.primaryColor,
                      ),
                      child: Icon(Icons.add, color: AppColors.backgroundColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
