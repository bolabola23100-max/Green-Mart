import 'package:flutter/material.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/widgets/custom__svg__picture.dart';
import 'package:green_mart/features/main_layout/views/account/account_screen.dart';
import 'package:green_mart/features/main_layout/views/cart/cart_screen.dart';
import 'package:green_mart/features/main_layout/views/explore/explore_screen.dart';
import 'package:green_mart/features/main_layout/views/favorites/favorites_screen.dart';
import 'package:green_mart/features/main_layout/views/shop/home_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoritesScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: _navBar(),
    );
  }

  Container _navBar() {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 27),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: AppColors.backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Color(0xff555E58).withValues(alpha: 0.1),
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.shop),
            activeIcon: CustomSvgPicture(
              path: AppImages.shop,
              color: AppColors.primaryColor,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.explore),
            activeIcon: CustomSvgPicture(
              path: AppImages.explore,
              color: AppColors.primaryColor,
            ),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.cart),
            activeIcon: CustomSvgPicture(
              path: AppImages.cart,
              color: AppColors.primaryColor,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.favorites),
            activeIcon: CustomSvgPicture(
              path: AppImages.favorites,
              color: AppColors.primaryColor,
            ),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: CustomSvgPicture(path: AppImages.profile),
            activeIcon: CustomSvgPicture(
              path: AppImages.profile,
              color: AppColors.primaryColor,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
