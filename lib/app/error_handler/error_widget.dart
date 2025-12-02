import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_theme.dart';

void showError(String message, {String title = 'خطا'}) {
  Get.snackbar(
    title,
    message,
    titleText: Text(
      title,
      textDirection: TextDirection.rtl,
      style: TextStyle(color: AppColors.background),
    ),
    messageText: Text(
      message,
      textDirection: TextDirection.rtl,
      style: TextStyle(color: AppColors.background),
    ),
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red.shade400,
    colorText: Colors.white,
    margin: const EdgeInsets.all(16),
    borderRadius: 8,
    duration: const Duration(seconds: 3),
  );
}
