import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/features/main_layout/views/explore/bakery_screen.dart';
import 'package:green_mart/features/main_layout/views/explore/beverages_screen.dart';
import 'package:green_mart/features/main_layout/views/explore/dairy_screen.dart';
import 'package:green_mart/features/main_layout/views/explore/greenly_screen.dart';
import 'package:green_mart/features/main_layout/views/explore/meat_screen.dart';
import 'package:green_mart/features/main_layout/views/explore/oil_screen.dart';

class ProductModel {
  final String? id;
  final String? name;
  final String? price;
  final String? weight;
  final String? image;
  final Function(BuildContext context)? onTap;
  final Color? color;
  final Color? borderColor;

  ProductModel({
    this.id,
    this.name,
    this.price,
    this.weight,
    this.image,
    this.onTap,
    this.color,
    this.borderColor,
  });
}

List<ProductModel> findProducts = [
  ProductModel(
    id: "100",
    name: "Fresh Fruits\n& Vegetable",
    image: "assets/Images/FindProducts/FreshFruits&Vegetable.png",
    color: AppColors.greenLight,
    borderColor: AppColors.green,
    onTap: (context) {
      pushTo(context, GreenlyScreen());
    },
  ),
  ProductModel(
    id: "101",
    name: "Cooking Oil  \n& Ghee",
    image: "assets/Images/FindProducts/CookingOil&Ghee.png",
    color: AppColors.orangeLight,
    borderColor: AppColors.orange,

    onTap: (context) {
      pushTo(context, OilScreen());
    },
  ),
  ProductModel(
    id: "102",
    name: "Meat & Fish",
    image: "assets/Images/FindProducts/Meat&Fish.png",
    color: AppColors.orangeLight,
    borderColor: AppColors.orange,

    onTap: (context) {
      pushTo(context, MeatScreen());
    },
  ),
  ProductModel(
    id: "103",
    name: " Bakery\n& Snacks",
    image: "assets/Images/FindProducts/Bakery&Snacks.png",
    color: AppColors.greenLight,
    borderColor: AppColors.green,

    onTap: (context) {
      pushTo(context, BakeryScreen());
    },
  ),
  ProductModel(
    id: "104",
    name: "Dairy & Eggs",
    image: "assets/Images/FindProducts/Dairy&Eggs.png",
    color: AppColors.greenLight,
    borderColor: AppColors.green,

    onTap: (context) {
      pushTo(context, DairyScreen());
    },
  ),
  ProductModel(
    id: "105",
    name: "Beverages",
    image: "assets/Images/FindProducts/Beverages.png",
    color: AppColors.orangeLight,
    borderColor: AppColors.orange,

    onTap: (context) {
      pushTo(context, BeveragesScreen());
    },
  ),
];

List<ProductModel> allProducts = [
  ProductModel(
    id: "61",
    name: "Coca-Cola",
    price: "1.99",
    weight: "1kg",
    image: "assets/Images/beverages/Coca-Cola.png",
  ),
  ProductModel(
    id: "62",
    name: "Fanta",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/beverages/Fanta.png",
  ),
  ProductModel(
    id: "63",
    name: "Sprite",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/beverages/Sprite.png",
  ),
  ProductModel(
    id: "51",
    name: "cheese",
    price: "1.99",
    weight: "1kg",
    image: "assets/Images/dairy/cheese.png",
  ),
  ProductModel(
    id: "52",
    name: "egg",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/dairy/egg.png",
  ),
  ProductModel(
    id: "53",
    name: "milk",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/dairy/milk.png",
  ),
  ProductModel(
    id: "41",
    name: "bread",
    price: "1.99",
    weight: "1kg",
    image: "assets/Images/bread/bread.png",
  ),
  ProductModel(
    id: "42",
    name: "Bread1",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/bread/Bread1.png",
  ),
  ProductModel(
    id: "31",
    name: "Chicken",
    price: "8.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/Chicken.png",
  ),
  ProductModel(
    id: "32",
    name: "Chicken Breast",
    price: "2.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/ChickenBreast.png",
  ),
  ProductModel(
    id: "33",
    name: "Chicken Thighs",
    price: "4.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/ChickenThighs.png",
  ),
  ProductModel(
    id: "34",
    name: "fish",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/meat_fish/fish.png",
  ),
  ProductModel(
    id: "35",
    name: "Ground Meat",
    price: "5.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/GroundMeat.png",
  ),
  ProductModel(
    id: "36",
    name: "Meat",
    price: "9.59",
    weight: "1kg",
    image: "assets/Images/meat_fish/Meat.png",
  ),
  ProductModel(
    id: "22",
    name: "oil",
    price: "10.99",
    weight: "1pcs",
    image: "assets/Images/oil/oil.png",
  ),
  ProductModel(
    id: "23",
    name: "olive oil",
    price: "14.99",
    weight: "1pcs",
    image: "assets/Images/oil/OliveOil.png",
  ),
  ProductModel(
    id: "24",
    name: "coconut oil",
    price: "7.50",
    weight: "1pcs",
    image: "assets/Images/oil/CoconutOil.png",
  ),
  ProductModel(
    id: "1",
    name: "Banana",
    price: "4.99",
    weight: "7pcs",
    image: "assets/Images/Fruits/Banana.png",
  ),
  ProductModel(
    id: "2",
    name: "Apple",
    price: "5.99",
    weight: "5pcs",
    image: "assets/Images/Fruits/Apple.png",
  ),
  ProductModel(
    id: "3",
    name: "Kiwi",
    price: "7.50",
    weight: "1kg",
    image: "assets/Images/Fruits/Kiwi.png",
  ),
  ProductModel(
    id: "4",
    name: "Mango",
    price: "5",
    weight: "1kg",
    image: "assets/Images/Fruits/Mango.png",
  ),
  ProductModel(
    id: "5",
    name: "Strawberries",
    price: "3.50",
    weight: "1kg",
    image: "assets/Images/Fruits/Strawberries.png",
  ),
  ProductModel(
    id: "6",
    name: "Broccoli",
    price: "4.50",
    weight: "1pcs",
    image: "assets/Images/Vegetables/Broccoli.png",
  ),
  ProductModel(
    id: "7",
    name: "Carrots",
    price: "5.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Carrots.png",
  ),
  ProductModel(
    id: "8",
    name: "Cucumbers",
    price: "3.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Cucumbers.png",
  ),
  ProductModel(
    id: "9",
    name: "Potatoes",
    price: "2.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Potatoes.png",
  ),
  ProductModel(
    id: "10",
    name: "Tomatoes",
    price: "4.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Tomatoes.png",
  ),
];

List<ProductModel> offers = [
  ProductModel(
    id: "1",
    name: "Banana",
    price: "4.99",
    weight: "7pcs",
    image: "assets/Images/Fruits/Banana.png",
  ),
  ProductModel(
    id: "51",
    name: "cheese",
    price: "1.99",
    weight: "250g",
    image: "assets/Images/dairy/cheese.png",
  ),
  ProductModel(
    id: "21",
    name: "oil",
    price: "10.99",
    weight: "1pcs",
    image: "assets/Images/oil/oil.png",
  ),
  ProductModel(
    id: "61",
    name: "Coca-Cola",
    price: "1.99",
    weight: "1pcs",
    image: "assets/Images/beverages/Coca-Cola.png",
  ),
];
List<ProductModel> bestSelling = [
  ProductModel(
    id: "6",
    name: "Broccoli",
    price: "4.50",
    weight: "1pcs",
    image: "assets/Images/Vegetables/Broccoli.png",
  ),
  ProductModel(
    id: "7",
    name: "Carrots",
    price: "5.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Carrots.png",
  ),
  ProductModel(
    id: "8",
    name: "Cucumbers",
    price: "3.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Cucumbers.png",
  ),
  ProductModel(
    id: "9",
    name: "Potatoes",
    price: "2.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Potatoes.png",
  ),
  ProductModel(
    id: "10",
    name: "Tomatoes",
    price: "4.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Tomatoes.png",
  ),
];

List<ProductModel> greenlyProducts = [
  ProductModel(
    id: "1",
    name: "Banana",
    price: "4.99",
    weight: "7pcs",
    image: "assets/Images/Fruits/Banana.png",
  ),
  ProductModel(
    id: "2",
    name: "Apple",
    price: "5.99",
    weight: "5pcs",
    image: "assets/Images/Fruits/Apple.png",
  ),
  ProductModel(
    id: "3",
    name: "Kiwi",
    price: "7.50",
    weight: "1kg",
    image: "assets/Images/Fruits/Kiwi.png",
  ),
  ProductModel(
    id: "4",
    name: "Mango",
    price: "5",
    weight: "1kg",
    image: "assets/Images/Fruits/Mango.png",
  ),
  ProductModel(
    id: "5",
    name: "Strawberries",
    price: "3.50",
    weight: "1kg",
    image: "assets/Images/Fruits/Strawberries.png",
  ),
  ProductModel(
    id: "6",
    name: "Broccoli",
    price: "4.50",
    weight: "1pcs",
    image: "assets/Images/Vegetables/Broccoli.png",
  ),
  ProductModel(
    id: "7",
    name: "Carrots",
    price: "5.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Carrots.png",
  ),
  ProductModel(
    id: "8",
    name: "Cucumbers",
    price: "3.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Cucumbers.png",
  ),
  ProductModel(
    id: "9",
    name: "Potatoes",
    price: "2.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Potatoes.png",
  ),
  ProductModel(
    id: "10",
    name: "Tomatoes",
    price: "4.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Tomatoes.png",
  ),
];
List<ProductModel> oilProducts = [
  ProductModel(
    id: "22",
    name: "oil",
    price: "10.99",
    weight: "1pcs",
    image: "assets/Images/oil/oil.png",
  ),
  ProductModel(
    id: "23",
    name: "olive oil",
    price: "14.99",
    weight: "1pcs",
    image: "assets/Images/oil/OliveOil.png",
  ),
  ProductModel(
    id: "24",
    name: "coconut oil",
    price: "7.50",
    weight: "1pcs",
    image: "assets/Images/oil/CoconutOil.png",
  ),
];

List<ProductModel> meatProducts = [
  ProductModel(
    id: "31",
    name: "Chicken",
    price: "8.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/Chicken.png",
  ),
  ProductModel(
    id: "32",
    name: "Chicken Breast",
    price: "2.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/ChickenBreast.png",
  ),
  ProductModel(
    id: "33",
    name: "Chicken Thighs",
    price: "4.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/ChickenThighs.png",
  ),
  ProductModel(
    id: "34",
    name: "fish",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/meat_fish/fish.png",
  ),
  ProductModel(
    id: "35",
    name: "Ground Meat",
    price: "5.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/GroundMeat.png",
  ),
  ProductModel(
    id: "36",
    name: "Meat",
    price: "9.59",
    weight: "1kg",
    image: "assets/Images/meat_fish/Meat.png",
  ),
];
List<ProductModel> breadProducts = [
  ProductModel(
    id: "41",
    name: "bread",
    price: "1.99",
    weight: "1kg",
    image: "assets/Images/bread/bread.png",
  ),
  ProductModel(
    id: "42",
    name: "Bread1",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/bread/Bread1.png",
  ),
];
List<ProductModel> dairyProducts = [
  ProductModel(
    id: "51",
    name: "cheese",
    price: "1.99",
    weight: "250g",
    image: "assets/Images/dairy/cheese.png",
  ),
  ProductModel(
    id: "52",
    name: "egg",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/dairy/egg.png",
  ),
  ProductModel(
    id: "53",
    name: "milk",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/dairy/milk.png",
  ),
];
List<ProductModel> beveragesProducts = [
  ProductModel(
    id: "61",
    name: "Coca-Cola",
    price: "1.99",
    weight: "1pcs",
    image: "assets/Images/beverages/Coca-Cola.png",
  ),
  ProductModel(
    id: "62",
    name: "Fanta",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/beverages/Fanta.png",
  ),
  ProductModel(
    id: "63",
    name: "Sprite",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/beverages/Sprite.png",
  ),
];
