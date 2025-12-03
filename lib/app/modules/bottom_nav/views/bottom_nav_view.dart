import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/bottom_nav_controller.dart';

class BottomNavView extends GetView<BottomNavController> {
  const BottomNavView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: controller.pages[controller.currentIndex.value],
        bottomNavigationBar: CircleNavBar(
          onTap: (index) {
            controller.changeTab(index);
          },
          activeIndex: controller.currentIndex.value,
          color: AppColors.third,
          padding: EdgeInsets.only(bottom: 24.h, right: 18.w, left: 18.w),
          circleWidth: 60.h,
          circleColor: AppColors.secondary,
          height: 75.h,
          cornerRadius: BorderRadius.only(
            topRight: Radius.circular(12.r),
            topLeft: Radius.circular(12.r),
            bottomLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r),
          ),
          activeIcons: [
            Icon(Icons.shopping_cart, color: AppColors.background, size: 32),
            Icon(Icons.home, color: AppColors.background, size: 32),
            Icon(Icons.person, color: AppColors.background, size: 32),
          ],
          inactiveIcons: [
            Icon(
              Icons.shopping_cart,
              color: AppColors.black.withAlpha(120),
              size: 30,
            ),
            Icon(Icons.home, color: AppColors.black.withAlpha(120), size: 30),
            Icon(Icons.person, color: AppColors.black.withAlpha(120), size: 30),
          ],
        ),
      );
    });
  }
}
