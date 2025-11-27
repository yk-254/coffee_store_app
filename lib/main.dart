import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/data/services/auth_service.dart';
import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // مقداردهی AuthService
  await Get.putAsync<AuthService>(() => AuthService().init());
  runApp(
    ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(debugShowCheckedModeBanner: false, title: "Coffee Store :)", initialRoute: AppPages.INITIAL, theme: AppTheme.lightTheme, getPages: AppPages.routes);
      },
    ),
  );
}
