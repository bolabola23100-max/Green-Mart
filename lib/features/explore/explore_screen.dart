import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/core/widgets/inputs/custom_text_form_field.dart';
import 'package:green_mart/features/explore/find_products.dart';
import 'package:green_mart/features/search/presentation/screens/search_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
        child: SingleChildScrollView(
          child: Column(
            spacing: 15,
            children: [
              Text(
                "Find Products",
                style: TextStyles.subtitle.copyWith(
                  fontSize: 18,
                  color: AppColors.blackColor,
                ),
              ),
              Hero(
                tag: "searchTag",
                child: Material(
                  color: Colors.transparent,
                  child: CustomTextFormField(
                    hintText: "Search Store",
                    prefixIcon: Icon(Icons.search),
                    readOnly: true,
                    onTap: () {
                      pushTo(context, SearchScreen());
                    },
                  ),
                ),
              ),
              FindProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
