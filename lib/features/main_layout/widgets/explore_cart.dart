import 'package:flutter/material.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';

class ExploreCart extends StatelessWidget {
  const ExploreCart({super.key, required this.model});
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        model.onTap?.call(context);
      },
      child: Container(
        width: 157,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: model.borderColor!),
          color: model.color,
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

              Center(
                child: Text(
                  model.name!,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
