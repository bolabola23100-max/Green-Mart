import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:green_mart/core/constants/app_images.dart';
import 'package:green_mart/core/styles/colors.dart';
import 'package:green_mart/core/styles/text_styles.dart';
import 'package:green_mart/features/main_layout/widgets/account_widgets/list_tile.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 50,
                    horizontal: 20,
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      "assets/Images/account/bola.jpeg",
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Bola Atef",
                          style: TextStyles.body1.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 50),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_outlined,
                            size: 20,
                            color: AppColors.green,
                          ),
                        ),
                      ],
                    ),
                    Text("bolaAtef@gmail.com", style: TextStyles.subtitle),
                  ],
                ),
              ],
            ),
            Divider(color: AppColors.greyColor),
            ListTileWidget(
              leading: SvgPicture.asset(AppImages.ordersIcon),
              title: 'Orders',
              onTap: () {},
            ),
            Divider(color: AppColors.greyColor),
            ListTileWidget(
              leading: SvgPicture.asset(AppImages.myDetailsIcon),
              title: 'My Details',
              onTap: () {},
            ),
            Divider(color: AppColors.greyColor),
            ListTileWidget(
              leading: SvgPicture.asset(AppImages.deliceryaddress),
              title: 'Delivery Address',
              onTap: () {},
            ),
            Divider(color: AppColors.greyColor),
            ListTileWidget(
              leading: SvgPicture.asset(AppImages.paymentIcon),
              title: 'Payment Methods',
              onTap: () {},
            ),
            Divider(color: AppColors.greyColor),
            ListTileWidget(
              leading: SvgPicture.asset(AppImages.promoCordIcon),
              title: 'Promo Cord',
              onTap: () {},
            ),
            Divider(color: AppColors.greyColor),
            ListTileWidget(
              leading: SvgPicture.asset(AppImages.bellIcon),
              title: 'Notifications ',
              onTap: () {},
            ),
            Divider(color: AppColors.greyColor),
            ListTileWidget(
              leading: SvgPicture.asset(AppImages.helpIcon),
              title: 'Help',
              onTap: () {},
            ),
            Divider(color: AppColors.greyColor),
            ListTileWidget(
              leading: SvgPicture.asset(AppImages.aboutIcon),
              title: 'About',
              onTap: () {},
            ),
            Divider(color: AppColors.greyColor),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accentColor,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, color: AppColors.primaryColor),
                    SizedBox(width: 10),
                    Text(
                      "Logout",
                      style: TextStyles.button.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
