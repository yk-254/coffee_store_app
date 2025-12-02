import 'package:get/get.dart';
import '../../../data/models/product_model.dart';
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
      "${product.name} با تعداد ${quantity.value} به سبد خرید اضافه شد",
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );

    // ریست کردن تعداد
    quantity.value = 1;
  }
}
