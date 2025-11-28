import 'dart:ui';

import 'package:coffee_store_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 28.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.third,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: AppColors.primary,
                      size: 30.sp,
                    ),
                  ),
                ),
                InkResponse(
                  onTap: () {},
                  child: Image.asset('assets/icons/menu.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'قهوه خانه',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'بهترین قهوه برای شما',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    cursorColor: AppColors.secondary,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodyLarge,
                    decoration: InputDecoration(
                      hintTextDirection: TextDirection.rtl,
                      hintText: 'جستجوی محصول',
                      filled: true,
                      fillColor: AppColors.buttonText.withAlpha(160),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.black.withAlpha(60),
                          width: 1.8.w,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.black.withAlpha(60),
                          width: 1.8.w,
                        ),

                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.black.withAlpha(60),
                          width: 1.8.w,
                        ),

                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15.w),
                SizedBox(
                  height: 52.3.h,
                  width: 80.w,
                  child: InkResponse(
                    onTap: () {},
                    child: Card(
                      margin: EdgeInsets.zero,
                      elevation: 0,
                      color: AppColors.secondary,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.5.h,
                          color: AppColors.secondary,
                        ),
                        borderRadius: BorderRadiusGeometry.only(
                          topLeft: Radius.circular(10.r),
                          bottomLeft: Radius.circular(10.r),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Icon(
                            Icons.search,
                            color: AppColors.background,
                            size: 28.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
