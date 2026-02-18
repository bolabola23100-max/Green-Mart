import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            Expanded(child: Center(child: Image.asset(model.image!))),
            SizedBox(height: 20),

            Text(
              model.name!,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SizedBox(height: 7),
            Text(model.weight!, style: TextStyle(color: AppColors.greyColor)),
            SizedBox(height: 17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${model.price}",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Container(
                  width: 38,
                  height: 38,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.primaryColor,
                  ),
                  child: Icon(Icons.add, color: AppColors.backgroundColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
