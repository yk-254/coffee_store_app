import 'package:coffee_store_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../widgets/form_tile.dart';
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
              Padding(padding: EdgeInsets.only(top: 40.h, bottom: 32.h), child: Image.asset('assets/icons/lock_icon.png', height: 100.h, width: 100.w)),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(width: Get.width, height: Get.height - 172.h, decoration: BoxDecoration(color: AppColors.third, borderRadius: BorderRadius.only(topLeft: Radius.circular(120.r)))),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 40.h, bottom: 50.h), child: Text('ثبت نام', style: Theme.of(context).textTheme.titleLarge)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                        child: TextFormField(
                          controller: controller.usernameController,
                          textDirection: TextDirection.rtl,
                          decoration: InputDecoration(labelText: 'نام کاربری', hintText: 'نام کاربری خود را وارد کنید', prefixIcon: Icon(Icons.person_2_outlined), border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                        child: TextFormField(
                          controller: controller.emailController,
                          textDirection: TextDirection.ltr,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(labelText: 'ایمیل', hintText: 'لطفا ایمیل خود را وارد کنید', prefixIcon: Icon(Icons.mail), border: OutlineInputBorder()),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                        child: TextFormField(
                          obscureText: true,
                          controller: controller.passwordController,
                          textDirection: TextDirection.ltr,
                          decoration: InputDecoration(labelText: 'رمز عبور', hintText: 'رمز عبور خود را وارد کنید', prefixIcon: Icon(Icons.person_2_outlined), border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 32.h,
                    left: 16.w,
                    right: 16.w,
                    child: Obx(
                      () => SizedBox(
                        width: Get.width,
                        child: ElevatedButton(
                          onPressed: controller.isFormValid.value ? controller.register : null,
                          child: controller.isLoading.value ? SizedBox(width: 24.w, height: 24.w, child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2)) : Text('ثبت نام'),
                        ),
                      ),
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
