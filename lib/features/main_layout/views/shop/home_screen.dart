import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/widgets/custom__svg__picture.dart';
import 'package:green_mart/core/widgets/inputs/custom_text_form_field.dart';
import 'package:green_mart/features/main_layout/widgets/shop_widgets/best_selling.dart';
import 'package:green_mart/features/main_layout/widgets/shop_widgets/offers__builder.dart';
import 'package:green_mart/features/search/page/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomSvgPicture(
          path: AppImages.logo,
          color: AppColors.primaryColor,
          width: 200,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
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
              OffersBuilder(),
              BestSelling(),
            ],
          ),
        ),
      ),
    );
  }
}
