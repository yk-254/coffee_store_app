import 'package:coffee_store_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';
import '../widgets/profile_tiles.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 35.h, bottom: 15.h),
              child: Align(alignment: Alignment.centerRight, child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, size: 30.sp, color: AppColors.primary))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.h, bottom: 25.h),
              child: SizedBox(height: 180.h, width: 180.w, child: CircleAvatar(backgroundColor: AppColors.third, child: Image.asset('assets/images/user/profile_male.png'))),
            ),
            Text(controller.currentUser.value?.username ?? 'نام کاربری', style: Theme.of(context).textTheme.titleMedium),
            SizedBox(height: 10.h),
            Text(controller.currentUser.value?.email ?? 'ایمیل کاربری', style: Theme.of(context).textTheme.bodyLarge),
            Padding(
              padding: EdgeInsets.only(top: 35.h),
              child: SizedBox(
                width: Get.width - 40.w,
                height: 370.h,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(16.r))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(onTap: () {}, child: ProfileTiles(icon: Icons.redeem, text: 'سفارش ها')),
                      InkWell(onTap: () {}, child: ProfileTiles(icon: Icons.location_on_outlined, text: 'آدرس')),
                      InkWell(onTap: () {}, child: ProfileTiles(icon: Icons.settings_outlined, text: 'تنظیمات')),
                      InkWell(onTap: () {}, child: ProfileTiles(icon: Icons.headset_mic_outlined, text: 'پشتیبانی')),
                      InkWell(
                        onTap: () {
                          controller.logout();
                        },
                        child: ProfileTiles(icon: Icons.logout, text: 'خروج'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
