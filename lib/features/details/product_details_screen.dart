import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_Images.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/inputs/main_button.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffF2F3F2)),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: MainButton(
          onPressed: () {
            setState(() {
              if (!cart.contains(widget.model)) {
                cart.add(widget.model);
              }
            });
          },
          text: "Add to Cart",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * .3,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
              child: Hero(
                tag: widget.model.tagKey,
                child: Center(child: Image.asset(widget.model.image)),
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        widget.model.name,
                        style: TextStyles.body1.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          final exists = favorite.any(
                            (item) => item.id == widget.model.id,
                          );

                          if (exists) {
                            favorite.removeWhere(
                              (item) => item.id == widget.model.id,
                            );
                          } else {
                            favorite.add(widget.model);
                          }
                        });
                      },
                      icon: Icon(
                        favorite.any((item) => item.id == widget.model.id)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color:
                            favorite.any((item) => item.id == widget.model.id)
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(widget.model.weight!),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (quantity > 1) {
                            quantity--;
                          }
                        });
                      },
                      icon: Icon(Icons.remove),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: AppColors.accentColor,
                        shape: BoxShape.rectangle,
                      ),
                      child: Center(
                        child: Text(
                          quantity.toString(),
                          style: TextStyles.body1.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          quantity++;
                        });
                      },
                      icon: Icon(Icons.add, color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Text(
                        "\$${widget.model.price!}",
                        style: TextStyles.body1.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Divider(),
                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    title: Text(" Product Detail"),
                    children: [
                      Text(
                        widget.model.description,
                        style: TextStyles.caption.copyWith(
                          color: AppColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Review",
                        style: TextStyles.subtitle.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Row(
                        children: [
                          star(),
                          star(),
                          star(),
                          star(),
                          star(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppImages.arrow),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Icon star() {
  return Icon(Icons.star, color: AppColors.tangoColor, size: 16);
}
