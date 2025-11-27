import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/models/user_model.dart';
import '../../../../data/services/auth_service.dart';
import '../../../../error_handler/error_widget.dart';
import '../../../../routes/app_pages.dart';

class RegisterController extends GetxController {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final isLoading = false.obs;
  final errorMessage = ''.obs;

  final AuthService authService = Get.find<AuthService>();

  @override
  void onInit() {
    super.onInit();
    usernameController.addListener(validateForm);
    passwordController.addListener(validateForm);
    emailController.addListener(validateForm);
  }

  Future<void> register() async {
    errorMessage.value = '';
    isLoading.value = true;

    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final username = usernameController.text.trim();
      final email = emailController.text.trim();
      final password = passwordController.text;

      // ولیدیشن اولیه ایمیل
      if (!GetUtils.isEmail(email)) {
        isLoading.value = false;
        errorMessage.value = "ایمیل معتبر نیست";
        showError(errorMessage.value);
        return;
      }

      final newUser = UserModel(username: username, email: email, password: password);

      final success = authService.register(newUser);
      isLoading.value = false;

      if (!success) {
        errorMessage.value = "نام کاربری یا ایمیل قبلاً ثبت شده است";
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

  RxBool isFormValid = false.obs;

  void validateForm() {
    isFormValid.value = usernameController.text.trim().isNotEmpty && emailController.text.trim().isNotEmpty && passwordController.text.isNotEmpty && GetUtils.isEmail(emailController.text.trim());
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
