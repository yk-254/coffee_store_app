import 'package:coffee_store_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../widgets/form_tile.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h, bottom: 92.h),
                child: Image.asset(
                  'assets/icons/lock_icon.png',
                  height: 100.h,
                  width: 100.w,
                ),
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height - 232.h,
                    decoration: BoxDecoration(
                      color: AppColors.third,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(120.r),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, bottom: 50.h),
                        child: Text(
                          'ورود',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 16.h,
                        ),
                        child: FormTile(
                          direction: TextDirection.rtl,
                          title: 'نام کاربری',
                          hint: 'نام کاربری خود را وارد کنید',
                          icon: Icons.person_2_outlined,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 16.h,
                        ),
                        child: FormTile(
                          direction: TextDirection.ltr,
                          obsecure: true,
                          title: 'رمز عبور',
                          hint: 'رمز عبور خود را وارد کنید',
                          icon: Icons.person_2_outlined,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 22.h,
                    left: 16.w,
                    right: 16.w,
                    child: Column(
                      children: [
                        SizedBox(
                          width: Get.width,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('ورود'),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text('ثبت نام'),
                            ),
                            Text(
                              'حساب کاربری ندارید؟',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
