import 'dart:ui';

import 'package:coffee_store_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.4,
                color: AppColors.third,
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.6,
                color: AppColors.background,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 30.h),
            child: InkResponse(
              onTap: () {
                Get.back();
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.background,
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.r),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.primary,
                    size: 30.sp,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.4 - 45.h,
            left: 5.w,
            child: SizedBox(
              width: 55.w,
              height: 90.h,
              child: Card(
                elevation: 2,
                color: AppColors.secondary.withAlpha(120),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.only(
                    topLeft: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                    topRight: Radius.circular(10.r),
                    bottomRight: Radius.circular(10.r),
                  ),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_left,
                    size: 49.sp,
                    color: AppColors.background,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: Get.height * 0.4 - 45.h,
            right: 5.w,
            child: SizedBox(
              width: 55.w,
              height: 90.h,
              child: Card(
                elevation: 2,
                color: AppColors.secondary.withAlpha(120),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.only(
                    topRight: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                    topLeft: Radius.circular(10.r),
                    bottomLeft: Radius.circular(10.r),
                  ),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_right,
                    size: 49.sp,
                    color: AppColors.background,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.xy(0, -0.4),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentGeometry.xy(0.1, -0.4),
                  child: Opacity(
                    opacity: 0.4,
                    child: SizedBox(
                      width: 240,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
                    width: 200,
                    child: Image.asset('assets/images/products/espresso.png'),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentGeometry.xy(0, 0.2),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('اسپرسو', style: Theme.of(context).textTheme.titleLarge),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.0.w),
                    child: Text(
                      'توضیحات',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(
                    horizontal: 20.h,
                    vertical: 10.w,
                  ),
                  child: Text(
                    'نوعی قهوه غلیظ و خوش طعم که قرار است به صورت <شات> سرو شود.',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 46.w,
                            height: 60.h,
                            child: Card(
                              elevation: 2,
                              color: AppColors.secondary.withAlpha(120),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.only(
                                  topRight: Radius.circular(10.r),
                                  bottomRight: Radius.circular(10.r),
                                  topLeft: Radius.circular(20.r),
                                  bottomLeft: Radius.circular(20.r),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.add,
                                  size: 26.sp,
                                  color: AppColors.background,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            child: Center(
                              child: Text(
                                '1',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 46.w,
                            height: 60.h,
                            child: Card(
                              elevation: 2,
                              color: AppColors.secondary.withAlpha(120),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.only(
                                  topRight: Radius.circular(20.r),
                                  bottomRight: Radius.circular(20.r),
                                  topLeft: Radius.circular(10.r),
                                  bottomLeft: Radius.circular(10.r),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 18.0.h),
                                  child: Icon(
                                    Icons.minimize_rounded,
                                    size: 30.sp,
                                    color: AppColors.background,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'تعداد',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
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
