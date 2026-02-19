import 'package:flutter/material.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/main_layout/widgets/product_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Text(
                  "Favorites",
                  style: TextStyles.title.copyWith(fontSize: 24),
                ),

                Expanded(
                  child: SizedBox(
                    height: double.infinity,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,

                            crossAxisSpacing: 10,
                            mainAxisExtent: 111,
                          ),
                      itemCount: favorite.length,
                      itemBuilder: (context, index) {
                        var model = favorite[index];
                        return ProductItem(model: model);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
