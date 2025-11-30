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
    List<String> categories = [
      'ریتا',
      'دمنوش',
      'نسکافه',
      'قهوه دمی',
      'قهوه سرد',
    ];
    int selectedCategory = 0;

    List<String> drinks = ['اسپرسو', 'لاته', 'موکا', 'آمریکانو', 'کاپوچینو'];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 22.w,
                right: 22.w,
                top: 34.h,
                bottom: 20.h,
              ),
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
                        hintText: 'جستجوی محصولات',
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
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SizedBox(
                height: 45.h,
                width: Get.width,
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 120.w,
                        height: 45.h,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(
                              Radius.circular(8.r),
                            ),
                          ),
                          color:
                              index == selectedCategory
                                  ? AppColors.secondary
                                  : AppColors.black.withAlpha(35),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                color:
                                    index == selectedCategory
                                        ? AppColors.background
                                        : AppColors.black,
                                fontSize: 17.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: SizedBox(
                height: 500.h,
                width: Get.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 330.h,
                            width: 230.w,
                            decoration: BoxDecoration(
                              color: AppColors.third,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(500),
                                topLeft: Radius.circular(500),
                                bottomRight: Radius.circular(150),
                                bottomLeft: Radius.circular(150),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 190.h,
                            child: Column(
                              children: [
                                Text(
                                  drinks[index],
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 36.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '330 ml',
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 270.h,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentGeometry.xy(0.1, -0.4),
                                  child: Opacity(
                                    opacity: 0.4,
                                    child: SizedBox(
                                      width: 150.w,
                                      child: ImageFiltered(
                                        imageFilter: ImageFilter.blur(
                                          sigmaX: 10,
                                          sigmaY: 10,
                                        ),
                                        child: Image.asset(
                                          'assets/images/products/espresso.png',
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentGeometry.xy(0, -0.4),
                                  child: SizedBox(
                                    width: 150.w,
                                    child: Image.asset(
                                      'assets/images/products/espresso.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 70.h,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 110.w,
                                  height: 50.h,
                                  child: Card(
                                    elevation: 0,
                                    color: AppColors.secondary,
                                    child: Center(
                                      child: Text(
                                        '25 تومان',
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          color: AppColors.background,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                SizedBox(
                                  width: 50.w,
                                  height: 50.h,
                                  child: Card(
                                    elevation: 0,
                                    color: AppColors.secondary,
                                    child: Center(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.add,
                                          color: AppColors.background,
                                          size: 27.sp,
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
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
