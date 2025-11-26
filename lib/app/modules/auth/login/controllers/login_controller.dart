import 'package:coffee_store_app/app/error_handler/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/services/auth_service.dart';
import '../../../../routes/app_pages.dart';

class LoginController extends GetxController {
  // کنترلرهای TextField
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isFormValid = false.obs;

  // Rx برای وضعیت و خطا
  final isLoading = false.obs;
  final errorMessage = ''.obs;

  // سرویس Auth
  final AuthService authService = Get.find<AuthService>();

  @override
  void onInit() {
    super.onInit();
    usernameController.addListener(validateForm);
    passwordController.addListener(validateForm);
  }

  // لاجیک ورود
  Future<void> login() async {
    errorMessage.value = '';
    isLoading.value = true;

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final username = usernameController.text.trim();
      final password = passwordController.text;

      final success = authService.login(username, password);

      isLoading.value = false;

      if (!success) {
        errorMessage.value = "نام کاربری یا رمز عبور اشتباه است";
        showError(errorMessage.value);
        return;
      }

      Get.offAllNamed(Routes.BOTTOM_NAV);
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = "خطای نا مشخص رخ داد";
      showError(errorMessage.value);
    }
  }

  // helper برای فعال/غیرفعال کردن دکمه ورود
  void validateForm() {
    isFormValid.value = usernameController.text.trim().isNotEmpty && passwordController.text.isNotEmpty;
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
