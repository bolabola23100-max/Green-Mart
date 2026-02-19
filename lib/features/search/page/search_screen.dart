import 'package:flutter/material.dart';
import 'package:green_mart/core/widgets/inputs/custom_text_form_field.dart';
import 'package:green_mart/features/main_layout/data/product_model.dart';
import 'package:green_mart/features/search/widgets/filtered_grid_view.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchKey = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Hero(
          tag: "searchTag",
          child: Material(
            color: Colors.transparent,
            child: CustomTextFormField(
              hintText: "Search Store",

              prefixIcon: Icon(Icons.search),
              onChanged: (value) {
                setState(() {
                  searchKey = value;
                });
              },
            ),
          ),
        ),
        actions: [SizedBox(width: 20)],
      ),
      body: FilteredGridView(products: getProductsByName(searchKey)),
    );
  }
}

List<ProductModel> getProductsByName(String searchKey) {
  return allProducts.where((product) {
    return product.name.toLowerCase().contains(searchKey.toLowerCase());
  }).toList();
}
