import 'package:coffee_store_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

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
                alignment: Alignment.center,
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
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 50.h),
                        child: Text(
                          'ثبت نام',
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
                          title: 'ایمیل',
                          hint: 'لطفا ایمیل خود را وارد کنید',
                          icon: Icons.mail,
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
                    bottom: 32.h,
                    left: 16.w,
                    right: 16.w,
                    child: SizedBox(
                      width: Get.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('ورود'),
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

class FormTile extends StatelessWidget {
  final String title;
  final String hint;
  final IconData icon;
  final bool obsecure;
  final TextDirection direction;

  const FormTile({
    super.key,
    required this.title,
    required this.hint,
    required this.icon,
    required this.direction,
    this.obsecure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 15.h),
        TextField(
          obscureText: obsecure,
          textDirection: direction,
          cursorColor: AppColors.text,
          style: Theme.of(context).textTheme.bodyMedium,
          decoration: InputDecoration(
            hint: Text(hint, textDirection: TextDirection.rtl),
            suffixIcon: Icon(icon, color: AppColors.text),
          ),
        ),
      ],
    );
  }
}
