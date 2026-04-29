import 'package:flutter/material.dart';
import 'package:green_mart/core/functions/Navigations.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/features/explore/bakery_screen.dart';
import 'package:green_mart/features/explore/beverages_screen.dart';
import 'package:green_mart/features/explore/dairy_screen.dart';
import 'package:green_mart/features/explore/greenly_screen.dart';
import 'package:green_mart/features/explore/meat_screen.dart';
import 'package:green_mart/features/explore/oil_screen.dart';

class ProductModel {
  final String id;
  final String name;
  final String? price;
  final String? weight;
  final String image;
  final Function(BuildContext context)? onTap;
  final Color? color;
  final Color? borderColor;
  final String tagKey;

  final String description;

  ProductModel({
    required this.id,
    required this.name,
    this.price,
    this.weight,
    required this.image,
    this.onTap,
    this.color,
    this.borderColor,
    required this.tagKey,
    required this.description,
  });
}

List<ProductModel> findProducts = [
  ProductModel(
    description: '',
    tagKey: UniqueKey().toString(),

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
    tagKey: UniqueKey().toString(),

    id: "101",
    name: "Cooking Oil  \n& Ghee",
    image: "assets/Images/FindProducts/CookingOil&Ghee.png",
    color: AppColors.orangeLight,
    borderColor: AppColors.orange,

    onTap: (context) {
      pushTo(context, OilScreen());
    },
    description: '',
  ),
  ProductModel(
    description: '',
    tagKey: UniqueKey().toString(),

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
    description: '',
    tagKey: UniqueKey().toString(),

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
    description: '',
    tagKey: UniqueKey().toString(),

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
    description: '',
    tagKey: UniqueKey().toString(),

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
  ...offers,
  ...bestSelling,
  ...greenlyProducts,
  ...oilProducts,
  ...meatProducts,
  ...breadProducts,
  ...dairyProducts,
  ...beveragesProducts,
];

List<ProductModel> offers = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "1",
    name: "Banana",
    price: "4.99",
    weight: "7pcs",
    image: "assets/Images/Fruits/Banana.png",
    description:
        'Bananas are a popular fruit that is known for its sweet taste and creamy texture. They are native to Southeast Asia but are now grown in many tropical regions around the world. Bananas are typically yellow when ripe, although there are also varieties that are red, green, or even purple. They are rich in essential nutrients such as potassium, vitamin C, vitamin B6, and dietary fiber. Bananas can be eaten on their own as a snack, added to smoothies, used in baking, or sliced over cereal or yogurt. They are a convenient and versatile fruit that is enjoyed by people of all ages.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "51",
    name: "cheese",
    price: "1.99",
    weight: "250g",
    image: "assets/Images/dairy/cheese.png",
    description:
        'Cheese is a dairy product that is made from milk. It is produced by coagulating the milk, which separates the curds (solid) from the whey (liquid). The curds are then processed and aged to create various types of cheese with different flavors, textures, and aromas. Cheese can be made from the milk of cows, goats, sheep, or other animals, and it comes in a wide variety of forms, including soft cheeses like Brie and Camembert, hard cheeses like Cheddar and Parmesan, and blue cheeses like Roquefort and Gorgonzola. Cheese is a versatile ingredient that can be used in cooking, baking, or enjoyed on its own as a snack or accompaniment to other foods.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "21",
    name: "oil",
    price: "10.99",
    weight: "1pcs",
    image: "assets/Images/oil/oil.png",
    description:
        'Cooking oil is a type of fat that is used in cooking and food preparation. It is typically derived from plants, such as seeds, nuts, or fruits, and can also be obtained from animal sources. Cooking oils are commonly used for frying, sautéing, baking, and as a base for salad dressings and marinades. They come in various types, including vegetable oil, olive oil, canola oil, sunflower oil, coconut oil, and more. Each type of cooking oil has its own unique flavor profile and nutritional properties, making them suitable for different culinary applications.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "61",
    name: "Coca-Cola",
    price: "1.99",
    weight: "1pcs",
    image: "assets/Images/beverages/Coca-Cola.png",
    description:
        'Coca-Cola is a carbonated soft drink that is one of the most popular beverages in the world. It was created in 1886 by Dr. John S. Pemberton, a pharmacist in Atlanta, Georgia. The original formula for Coca-Cola included coca leaf extract and kola nut extract, which gave the drink its name. However, the coca leaf extract was removed from the formula in the early 20th century. Coca-Cola is known for its sweet and refreshing taste, and it is often enjoyed as a standalone beverage or used as a mixer in cocktails. It is available in various sizes and packaging options, and it has become an iconic brand recognized globally.',
  ),
];
List<ProductModel> bestSelling = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "6",
    name: "Broccoli",
    price: "4.50",
    weight: "1pcs",
    image: "assets/Images/Vegetables/Broccoli.png",
    description:
        'Broccoli is a cruciferous vegetable that is known for its dense, green florets and thick stalks. It is native to the Mediterranean region but is now cultivated in many parts of the world. Broccoli is rich in vitamins C and K, dietary fiber, and various antioxidants. It can be eaten raw in salads, steamed, roasted, or stir-fried as a side dish. Broccoli is also commonly used in soups, casseroles, and pasta dishes. With its nutritional benefits and versatility in cooking, broccoli is a popular vegetable that is enjoyed by many people around the world.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "7",
    name: "Carrots",
    price: "5.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Carrots.png",
    description:
        'Carrots are root vegetables that are known for their vibrant orange color, although they can also come in other colors such as purple, red, yellow, and white. They are native to Central Asia but are now cultivated worldwide. Carrots are rich in beta-carotene, which is converted into vitamin A in the body, as well as dietary fiber, vitamin K, and antioxidants. They can be eaten raw as a snack, added to salads, or cooked in various dishes such as soups, stews, and stir-fries. Carrots are also commonly used in baking, such as in carrot cakes and muffins. With their sweet flavor and nutritional benefits, carrots are a popular vegetable enjoyed by many people.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "8",
    name: "Cucumbers",
    price: "3.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Cucumbers.png",
    description:
        'Cucumbers are a type of vegetable that is known for its crisp texture and refreshing taste. They are native to South Asia but are now grown in many parts of the world. Cucumbers are low in calories and high in water content, making them a hydrating and healthy addition to meals. They are also a good source of vitamins K and C, as well as dietary fiber. Cucumbers can be eaten raw in salads, sliced for sandwiches, or used as a garnish. They can also be pickled to make delicious pickles. With their cool and refreshing flavor, cucumbers are a popular vegetable that is enjoyed by many people around the world.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "9",
    name: "Potatoes",
    price: "2.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Potatoes.png",
    description:
        'Potatoes are a starchy root vegetable that is widely consumed around the world. They are native to the Andean region of South America but are now cultivated in many countries. Potatoes come in various varieties, each with its own unique flavor and texture. They are a good source of carbohydrates, dietary fiber, vitamin C, and potassium. Potatoes can be prepared in numerous ways, including boiling, baking, frying, and mashing. They are commonly used as a side dish or as an ingredient in soups, stews, casseroles, and salads. With their versatility and delicious taste, potatoes are a staple food that is enjoyed by many people globally.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "10",
    name: "Tomatoes",
    price: "4.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Tomatoes.png",
    description:
        'Tomatoes are a fruit that is commonly used as a vegetable in cooking. They are native to South America but are now grown worldwide. Tomatoes come in various colors, including red, yellow, orange, and green, and they have a sweet and tangy flavor. They are rich in vitamins C and K, as well as antioxidants such as lycopene. Tomatoes can be eaten raw in salads, sliced for sandwiches, or cooked in various dishes such as sauces, soups, stews, and casseroles. They are also commonly used as a base for pizza sauce and pasta sauce. With their delicious taste and nutritional benefits, tomatoes are a popular ingredient in many cuisines around the world.',
  ),
];

List<ProductModel> greenlyProducts = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "1",
    name: "Banana",
    price: "4.99",
    weight: "7pcs",
    image: "assets/Images/Fruits/Banana.png",
    description:
        'Bananas are a popular fruit that is known for its sweet taste and creamy texture. They are native to Southeast Asia but are now grown in many tropical regions around the world. Bananas are typically yellow when ripe, although there are also varieties that are red, green, or even purple. They are rich in essential nutrients such as potassium, vitamin C, vitamin B6, and dietary fiber. Bananas can be eaten on their own as a snack, added to smoothies, used in baking, or sliced over cereal or yogurt. They are a convenient and versatile fruit that is enjoyed by people of all ages.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "2",
    name: "Apple",
    price: "5.99",
    weight: "5pcs",
    image: "assets/Images/Fruits/Apple.png",
    description:
        'Apples are a widely cultivated fruit that is known for its crisp texture and sweet-tart flavor. They come in various colors, including red, green, and yellow, and are grown in temperate climates around the world. Apples are rich in dietary fiber, vitamin C, and various antioxidants. They can be eaten fresh as a snack, sliced over salads, used in baking, or made into sauces and juices. Apples are also commonly used in desserts such as pies and crisps. With their versatility and delicious taste, apples are a popular choice for both snacking and cooking.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "3",
    name: "Kiwi",
    price: "7.50",
    weight: "1kg",
    image: "assets/Images/Fruits/Kiwi.png",
    description:
        'Kiwis, also known as Chinese gooseberries, are small fruits that are known for their vibrant green flesh and unique sweet-tart flavor. They are native to China but are now grown in various parts of the world, including New Zealand, Italy, and the United States. Kiwis are rich in vitamin C, vitamin K, vitamin E, dietary fiber, and antioxidants. They can be eaten on their own by slicing them in half and scooping out the flesh with a spoon, or they can be added to fruit salads, smoothies, desserts, and even savory dishes. Kiwis are a delicious and nutritious fruit that is enjoyed by many people around the world.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "4",
    name: "Mango",
    price: "5",
    weight: "1kg",
    image: "assets/Images/Fruits/Mango.png",
    description:
        'Mangoes are tropical fruits that are known for their sweet and juicy flesh. They are native to South Asia but are now grown in many tropical and subtropical regions around the world. Mangoes come in various varieties, each with its own unique flavor and texture. They are rich in vitamins A and C, as well as dietary fiber and antioxidants. Mangoes can be eaten fresh by slicing them open and scooping out the flesh, or they can be used in smoothies, desserts, salads, and savory dishes. With their delicious taste and nutritional benefits, mangoes are a popular fruit enjoyed by people of all ages.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "5",
    name: "Strawberries",
    price: "3.50",
    weight: "1kg",
    image: "assets/Images/Fruits/Strawberries.png",
    description:
        'Strawberries are a popular fruit that is known for its bright red color, sweet flavor, and juicy texture. They are native to temperate regions of the Northern Hemisphere but are now cultivated in many parts of the world. Strawberries are rich in vitamin C, manganese, dietary fiber, and antioxidants. They can be eaten fresh on their own, added to fruit salads, used in smoothies, or incorporated into desserts such as cakes and pies. Strawberries are also commonly used as a topping for yogurt, cereal, and ice cream. With their delicious taste and vibrant appearance, strawberries are a favorite fruit for many people.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "6",
    name: "Broccoli",
    price: "4.50",
    weight: "1pcs",
    image: "assets/Images/Vegetables/Broccoli.png",
    description:
        'Broccoli is a cruciferous vegetable that is known for its dense, green florets and thick stalks. It is native to the Mediterranean region but is now cultivated in many parts of the world. Broccoli is rich in vitamins C and K, dietary fiber, and various antioxidants. It can be eaten raw in salads, steamed, roasted, or stir-fried as a side dish. Broccoli is also commonly used in soups, casseroles, and pasta dishes. With its nutritional benefits and versatility in cooking, broccoli is a popular vegetable that is enjoyed by many people around the world.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "7",
    name: "Carrots",
    price: "5.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Carrots.png",
    description:
        'Carrots are root vegetables that are known for their vibrant orange color, although they can also come in other colors such as purple, red, yellow, and white. They are native to Central Asia but are now cultivated worldwide. Carrots are rich in beta-carotene, which is converted into vitamin A in the body, as well as dietary fiber, vitamin K, and antioxidants. They can be eaten raw as a snack, added to salads, or cooked in various dishes such as soups, stews, and stir-fries. Carrots are also commonly used in baking, such as in carrot cakes and muffins. With their sweet flavor and nutritional benefits, carrots are a popular vegetable enjoyed by many people.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "8",
    name: "Cucumbers",
    price: "3.99",
    weight: "1kg",
    image: "assets/Images/Vegetables/Cucumbers.png",
    description:
        'Cucumbers are a type of vegetable that is known for its crisp texture and refreshing taste. They are native to South Asia but are now grown in many parts of the world. Cucumbers are low in calories and high in water content, making them a hydrating and healthy addition to meals. They are also a good source of vitamins K and C, as well as dietary fiber. Cucumbers can be eaten raw in salads, sliced for sandwiches, or used as a garnish. They can also be pickled to make delicious pickles. With their cool and refreshing flavor, cucumbers are a popular vegetable that is enjoyed by many people around the world.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "9",
    name: "Potatoes",
    price: "2.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Potatoes.png",
    description:
        'Potatoes are a starchy root vegetable that is widely consumed around the world. They are native to the Andean region of South America but are now cultivated in many countries. Potatoes come in various varieties, each with its own unique flavor and texture. They are a good source of carbohydrates, dietary fiber, vitamin C, and potassium. Potatoes can be prepared in numerous ways, including boiling, baking, frying, and mashing. They are commonly used as a side dish or as an ingredient in soups, stews, casseroles, and salads. With their versatility and delicious taste, potatoes are a staple food that is enjoyed by many people globally.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "10",
    name: "Tomatoes",
    price: "4.5",
    weight: "1kg",
    image: "assets/Images/Vegetables/Tomatoes.png",
    description:
        'Tomatoes are a fruit that is commonly used as a vegetable in cooking. They are native to South America but are now grown worldwide. Tomatoes come in various colors, including red, yellow, orange, and green, and they have a sweet and tangy flavor. They are rich in vitamins C and K, as well as antioxidants such as lycopene. Tomatoes can be eaten raw in salads, sliced for sandwiches, or cooked in various dishes such as sauces, soups, stews, and casseroles. They are also commonly used as a base for pizza sauce and pasta sauce. With their delicious taste and nutritional benefits, tomatoes are a popular ingredient in many cuisines around the world.',
  ),
];
List<ProductModel> oilProducts = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "22",
    name: "oil",
    price: "10.99",
    weight: "1pcs",
    image: "assets/Images/oil/oil.png",
    description:
        'Cooking oil is a type of fat that is used in cooking and food preparation. It is typically derived from plants, such as seeds, nuts, or fruits, and can also be obtained from animal sources. Cooking oils are commonly used for frying, sautéing, baking, and as a base for salad dressings and marinades. They come in various types, including vegetable oil, olive oil, canola oil, sunflower oil, coconut oil, and more. Each type of cooking oil has its own unique flavor profile and nutritional properties, making them suitable for different culinary applications.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "23",
    name: "olive oil",
    price: "14.99",
    weight: "1pcs",
    image: "assets/Images/oil/OliveOil.png",
    description:
        'Olive oil is a type of oil that is extracted from olives, the fruit of the olive tree. It is widely used in cooking, as well as in cosmetics and pharmaceuticals. Olive oil is known for its distinct flavor and aroma, which can range from mild and buttery to robust and peppery, depending on the variety of olives used and the production process. It is rich in monounsaturated fats, which are considered heart-healthy, and contains antioxidants and anti-inflammatory compounds. Olive oil is commonly used for sautéing, frying, drizzling over salads, and as a base for dressings and marinades. It is a staple ingredient in Mediterranean cuisine and is often associated with a healthy diet.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "24",
    name: "coconut oil",
    price: "7.50",
    weight: "1pcs",
    image: "assets/Images/oil/CoconutOil.png",
    description:
        'Coconut oil is a type of oil that is extracted from the meat of mature coconuts. It is widely used in cooking, as well as in cosmetics and skincare products. Coconut oil has a unique composition, consisting mainly of saturated fats, which gives it a solid consistency at room temperature. It has a distinct aroma and flavor that can add a tropical touch to dishes. Coconut oil is commonly used for frying, baking, and sautéing, as well as for making desserts and smoothies. In addition to its culinary uses, coconut oil is also known for its moisturizing properties and is often used in hair care and skin care routines.',
  ),
];

List<ProductModel> meatProducts = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "31",
    name: "Chicken",
    price: "8.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/Chicken.png",
    description:
        'Chicken is a type of poultry that is widely consumed around the world. It is a domesticated bird that belongs to the family Phasianidae. Chicken meat is known for its mild flavor and versatility in cooking, making it a popular choice for a wide range of dishes. It can be prepared in various ways, including grilling, roasting, frying, and boiling. Chicken is a good source of protein, vitamins, and minerals, and it can be used in soups, stews, salads, sandwiches, and many other recipes. With its delicious taste and nutritional benefits, chicken is a staple food in many cultures and cuisines globally.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "32",
    name: "Chicken Breast",
    price: "2.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/ChickenBreast.png",
    description:
        'Chicken breast is a lean cut of meat that comes from the chest area of the chicken. It is known for its mild flavor and tender texture, making it a popular choice for a variety of dishes. Chicken breast is low in fat and high in protein, making it a healthy option for those looking to maintain a balanced diet. It can be cooked in various ways, including grilling, baking, sautéing, and poaching. Chicken breast is commonly used in salads, sandwiches, stir-fries, and as a main course in many recipes. With its versatility and nutritional benefits, chicken breast is a staple ingredient in many kitchens around the world.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "33",
    name: "Chicken Thighs",
    price: "4.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/ChickenThighs.png",
    description:
        'Chicken thighs are a cut of meat that comes from the upper part of the chicken leg. They are known for their rich flavor and tender texture, making them a popular choice for a variety of dishes. Chicken thighs are slightly higher in fat compared to chicken breasts, which contributes to their juiciness and flavor. They can be cooked in various ways, including grilling, baking, frying, and braising. Chicken thighs are commonly used in stews, curries, casseroles, and as a main course in many recipes. With their delicious taste and versatility in cooking, chicken thighs are a favorite among many home cooks and chefs alike.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "34",
    name: "fish",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/meat_fish/fish.png",
    description:
        'Fish is a type of aquatic animal that is commonly consumed as food around the world. It is a rich source of high-quality protein, omega-3 fatty acids, vitamins, and minerals. Fish can be found in both freshwater and saltwater environments, and there are thousands of species of fish that are consumed by humans. Fish can be prepared in various ways, including grilling, baking, frying, steaming, and poaching. It is commonly used in dishes such as sushi, fish tacos, fish and chips, and seafood stews. With its delicious taste and nutritional benefits, fish is a popular choice for a healthy and flavorful meal.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "35",
    name: "Ground Meat",
    price: "5.99",
    weight: "1kg",
    image: "assets/Images/meat_fish/GroundMeat.png",
    description:
        'Ground meat, also known as minced meat, is a type of meat that has been finely chopped or ground. It can be made from various types of meat, including beef, pork, chicken, turkey, and lamb. Ground meat is commonly used in a wide range of dishes such as burgers, meatballs, tacos, pasta sauces, and casseroles. It is a versatile ingredient that can be seasoned and cooked in various ways to create delicious meals. Ground meat is often more affordable than whole cuts of meat and can be a convenient option for quick and easy meals.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "36",
    name: "Meat",
    price: "9.59",
    weight: "1kg",
    image: "assets/Images/meat_fish/Meat.png",
    description:
        'Meat is a type of food that is derived from animals, including mammals, birds, fish, and other aquatic creatures. It is a rich source of protein, vitamins, and minerals, making it an important part of many diets around the world. Meat can be prepared in various ways, including grilling, roasting, frying, and stewing. It is commonly used in dishes such as steaks, roasts, burgers, sausages, and stews. The type of meat consumed can vary based on cultural preferences and dietary restrictions, with options ranging from beef and pork to chicken, fish, and plant-based alternatives. With its delicious taste and nutritional benefits, meat is a staple food for many people globally.',
  ),
];
List<ProductModel> breadProducts = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "41",
    name: "bread",
    price: "1.99",
    weight: "1kg",
    image: "assets/Images/bread/bread.png",
    description:
        'Bread is a staple food that is made from flour, water, and yeast or other leavening agents. It is one of the oldest prepared foods and has been a dietary staple for thousands of years. Bread comes in various forms and flavors, including white bread, whole wheat bread, multigrain bread, sourdough bread, and more. It can be used for making sandwiches, toast, or served as a side with meals. Bread is a good source of carbohydrates and can also provide some protein and fiber, depending on the type of flour used. With its versatility and delicious taste, bread is enjoyed by people around the world in countless culinary creations.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "42",
    name: "Bread1",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/bread/Bread1.png",
    description:
        'Bread is a staple food that is made from flour, water, and yeast or other leavening agents. It is one of the oldest prepared foods and has been a dietary staple for thousands of years. Bread comes in various forms and flavors, including white bread, whole wheat bread, multigrain bread, sourdough bread, and more. It can be used for making sandwiches, toast, or served as a side with meals. Bread is a good source of carbohydrates and can also provide some protein and fiber, depending on the type of flour used. With its versatility and delicious taste, bread is enjoyed by people around the world in countless culinary creations.',
  ),
];
List<ProductModel> dairyProducts = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "51",
    name: "cheese",
    price: "1.99",
    weight: "250g",
    image: "assets/Images/dairy/cheese.png",
    description:
        "Cheese is a dairy product that is made from milk. It is produced by coagulating the milk, which separates the curds (solid) from the whey (liquid). The curds are then processed and aged to create various types of cheese with different flavors, textures, and aromas. Cheese can be made from the milk of cows, goats, sheep, or other animals, and it comes in a wide variety of forms, including soft cheeses like Brie and Camembert, hard cheeses like Cheddar and Parmesan, and blue cheeses like Roquefort and Gorgonzola. Cheese is a versatile ingredient that can be used in cooking, baking, or enjoyed on its own as a snack or accompaniment to other foods.",
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "52",
    name: "egg",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/dairy/egg.png",
    description:
        'Eggs are a common food item that is produced by female birds, most commonly chickens. They are a rich source of protein and contain essential nutrients such as vitamins, minerals, and healthy fats. Eggs are typically oval-shaped and consist of a hard outer shell that protects the inner contents, which include the egg white (albumen) and the yolk. The egg white is mostly water and protein, while the yolk contains fat, cholesterol, and various nutrients. Eggs can be cooked in various ways, including boiling, frying, scrambling, or baking, and they are used in a wide range of dishes and recipes around the world.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "53",
    name: "milk",
    price: "2.50",
    weight: "1kg",
    image: "assets/Images/dairy/milk.png",
    description:
        'Milk is a nutrient-rich liquid that is produced by the mammary glands of female mammals, including cows, goats, sheep, and humans. It is a primary source of nutrition for young mammals before they are able to digest solid food. Milk is composed of water, carbohydrates (mainly lactose), proteins (such as casein and whey), fats, vitamins, and minerals. It is commonly consumed as a beverage and is also used in cooking and baking. Milk can be processed into various dairy products such as cheese, yogurt, butter, and cream. It is an important part of many diets around the world and is often recommended for its calcium content, which is essential for bone health.',
  ),
];
List<ProductModel> beveragesProducts = [
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "61",
    name: "Coca-Cola",
    price: "1.99",
    weight: "1pcs",
    image: "assets/Images/beverages/Coca-Cola.png",
    description:
        'Coca-Cola is a carbonated soft drink that has been enjoyed by people around the world for over a century. It was created in 1886 by Dr. John S. Pemberton, a pharmacist in Atlanta, Georgia. The original formula contained coca leaf extract and kola nut extract, which gave the drink its name. Today, Coca-Cola is made with a blend of carbonated water, high fructose corn syrup, caramel color, phosphoric acid, natural flavors, and caffeine. It is known for its refreshing taste and is often consumed as a beverage to quench thirst or as a mixer in cocktails. Coca-Cola has become an iconic brand and is recognized globally for its distinctive red and white logo and its signature taste.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "62",
    name: "Fanta",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/beverages/Fanta.png",
    description:
        'Fanta is a popular carbonated soft drink that is known for its fruity flavors and vibrant colors. It was created in Germany during World War II when the Coca-Cola Company was unable to import its syrup due to trade restrictions. As a result, the company developed Fanta using available ingredients, which included whey and apple pomace. Fanta quickly gained popularity and became a beloved beverage worldwide. Today, Fanta is available in a wide range of flavors, including orange, grape, strawberry, pineapple, and more. It is often enjoyed as a refreshing drink on its own or used as a mixer in various cocktails. Fanta is recognized for its bright and playful branding, making it a favorite choice among consumers of all ages.',
  ),
  ProductModel(
    tagKey: UniqueKey().toString(),

    id: "63",
    name: "Sprite",
    price: "2.50",
    weight: "1pcs",
    image: "assets/Images/beverages/Sprite.png",
    description:
        "Sprite is a lemon-lime flavored carbonated soft drink that is produced by The Coca-Cola Company. It was first introduced in 1961 as a competitor to 7 Up and has since become one of the most popular soft drinks worldwide. Sprite is known for its crisp and refreshing taste, which is achieved through a combination of carbonated water, high fructose corn syrup, citric acid, natural flavors, and caffeine. It is often enjoyed on its own as a thirst-quencher or used as a mixer in various cocktails. Sprite has a distinctive green and yellow branding and is recognized for its clean and citrusy flavor profile.",
  ),
];
List<ProductModel> favorite = [];
List<ProductModel> cart = [];
