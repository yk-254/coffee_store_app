import 'package:coffee_store_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
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
                padding: EdgeInsets.only(top: 40.h, bottom: 32.h),
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
                    height: Get.height - 172.h,
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
                          'ثبت نام',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Text(
                            'نام کاربری',
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 16.h,
                        ),
                        child: TextFormField(
                          controller: controller.usernameController,
                          cursorColor: AppColors.primary,

                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            suffixIcon: Icon(
                              Icons.person_2_outlined,
                              color: AppColors.primary,
                            ),
                            hintText: 'نام کاربری خود را وارد کنید',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            right: 16.w,
                            top: 16.h,
                          ),
                          child: Text(
                            'ایمیل',
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 16.h,
                        ),
                        child: TextFormField(
                          controller: controller.emailController,
                          textDirection: TextDirection.ltr,
                          cursorColor: AppColors.primary,

                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            suffixIcon: Icon(
                              Icons.mail_outline,
                              color: AppColors.primary,
                            ),
                            hintText: 'لطفا ایمیل خود را وارد کنید',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            right: 16.w,
                            top: 16.h,
                          ),
                          child: Text(
                            'رمزعبور',
                            textAlign: TextAlign.right,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 16.h,
                        ),
                        child: TextFormField(
                          cursorColor: AppColors.primary,
                          obscureText: true,
                          controller: controller.passwordController,
                          textDirection: TextDirection.ltr,
                          decoration: InputDecoration(
                            hintTextDirection: TextDirection.rtl,
                            suffixIcon: Icon(
                              Icons.lock_outline,
                              color: AppColors.primary,
                            ),
                            hintText: 'رمز عبور خود را وارد کنید',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 62.h,
                    left: 16.w,
                    right: 16.w,
                    child: Obx(
                      () => SizedBox(
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed:
                              controller.isFormValid.value
                                  ? controller.register
                                  : null,
                          child:
                              controller.isLoading.value
                                  ? SizedBox(
                                    width: 24.w,
                                    height: 24.w,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                  : Text('ثبت نام'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Positioned(
                    bottom: 10.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN);
                          },
                          child: Text('ورود', style: TextStyle(height: 1)),
                        ),
                        Text(
                          'حساب کاربری دارید؟',
                          style: Theme.of(context).textTheme.bodyLarge,
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
