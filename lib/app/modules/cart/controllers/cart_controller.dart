import 'package:coffee_store_app/app/data/models/cart_model.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/models/product_model.dart';

class CartController extends GetxController {
  RxList<CartModel> items = <CartModel>[].obs;

  /// مجموع قیمت
  RxInt totalPrice = 0.obs;

  /// افزودن محصول به سبد خرید
  void addProduct(ProductModel product, int quantity) {
    // اگر محصول موجود است، تعدادش را افزایش بده
    final existing = items.firstWhereOrNull(
      (element) => element.product.id == product.id,
    );

    if (existing != null) {
      existing.quantity.value += quantity;
    } else {
      items.add(CartModel(product: product, quantity: quantity));
    }
    calculateTotal();
  }

  /// حذف محصول از سبد خرید
  void removeProduct(CartModel item) {
    items.remove(item);
    calculateTotal();
  }

  /// تغییر تعداد یک محصول
  void changeQuantity(CartModel item, int quantity) {
    if (quantity <= 0) {
      removeProduct(item);
    } else {
      item.quantity.value = quantity;
    }
    calculateTotal();
  }

  /// افزایش تعداد
  void increment(CartModel item) {
    item.quantity.value++;
    calculateTotal();
  }

  /// کاهش تعداد
  void decrement(CartModel item) {
    if (item.quantity.value > 1) {
      item.quantity.value--;
    } else {
      removeProduct(item);
    }
    calculateTotal();
  }

  /// محاسبه مجموع قیمت با 10 درصد تخفیف
  int calculateTotalWithDiscount() {
    // 10 درصد تخفیف
    double discountRate = 0.10;
    int discountedPrice = (totalPrice.value * (1 - discountRate)).toInt();
    return discountedPrice;
  }

  /// محاسبه مجموع قیمت
  void calculateTotal() {
    int total = 0;
    for (var item in items) {
      total += item.product.price * item.quantity.value;
    }
    totalPrice.value = total;
  }

  /// پاک کردن کامل سبد خرید
  void clearCart() {
    items.clear();
    totalPrice.value = 0;
  }

  /// ذخیره در SharedPreferences (اختیاری)
  Future<void> saveCartToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final data =
        items.map((e) => "${e.product.id}:${e.quantity.value}").toList();
    await prefs.setStringList('cart_items', data);
  }

  @override
  void onInit() {
    super.onInit();

    loadCartFromPrefs([]);
  }

  /// بارگذاری از SharedPreferences (اختیاری)
  Future<void> loadCartFromPrefs(List<ProductModel> allProducts) async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getStringList('cart_items') ?? [];
    items.clear();

    for (var str in data) {
      final parts = str.split(':');
      final id = int.parse(parts[0]);
      final qty = int.parse(parts[1]);
      final product = allProducts.firstWhereOrNull((p) => p.id == id);
      if (product != null) {
        items.add(CartModel(product: product, quantity: qty));
      }
    }

    calculateTotal();
  }
}
