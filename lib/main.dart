import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Coffee Store :)",
      initialRoute: AppPages.INITIAL,
      theme: AppTheme.lightTheme,
      getPages: AppPages.routes,
    ),
  );
}
