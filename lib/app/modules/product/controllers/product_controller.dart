import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/models/product_model.dart';
import '../../../theme/app_theme.dart';
import '../../cart/controllers/cart_controller.dart';

class ProductController extends GetxController {
  /// محصول جاری
  late ProductModel product;

  /// تعداد محصول برای اضافه به سبد خرید
  RxInt quantity = 1.obs;

  /// کنترلر سبد خرید
  final CartController cartController = Get.find();

  @override
  void onInit() {
    super.onInit();
    // دریافت محصول از آرگومان‌ها
    product = Get.arguments as ProductModel;
  }

  /// افزایش تعداد
  void increment() {
    quantity.value++;
  }

  /// کاهش تعداد
  void decrement() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }

  /// افزودن به سبد خرید
  void addToCart() {
    cartController.addProduct(product, quantity.value);

    Get.snackbar(
      "سبد خرید",
      "${product.name} با تعداد 1 به سبد خرید اضافه شد",
      titleText: Text(
        "سبد خرید",
        textDirection: TextDirection.rtl,
        style: TextStyle(color: AppColors.black),
      ),
      messageText: Text(
        "${product.name} با تعداد 1 به سبد خرید اضافه شد",
        textDirection: TextDirection.rtl,
        style: TextStyle(color: AppColors.black),
      ),
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
      borderColor: AppColors.black.withAlpha(100),
      borderWidth: 1.2.w,
    );

    // ریست کردن تعداد
    quantity.value = 1;
  }
}
