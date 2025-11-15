import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: "Coffee Store :)",
          initialRoute: AppPages.INITIAL,
          theme: AppTheme.lightTheme,
          getPages: AppPages.routes,
        );
      },
    ),
  );
}
