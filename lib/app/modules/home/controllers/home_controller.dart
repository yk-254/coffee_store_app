import 'package:coffee_store_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/models/product_model.dart';
import '../../../data/static/product_data.dart';
import '../../../theme/app_theme.dart';
import '../../cart/controllers/cart_controller.dart';

class HomeController extends GetxController
    with StateMixin<List<ProductModel>> {
  /// دسته‌بندی‌های ثابت
  final categories = ['همه', 'دمنوش', 'نسکافه', 'قهوه دمی', 'قهوه سرد'];

  /// وضعیت انتخاب دسته
  RxInt selectedCategory = 0.obs;

  /// کنترل سرچ
  RxString searchQuery = ''.obs;

  /// لیست کامل محصولات
  List<ProductModel> allProducts = [];

  /// لیست فیلترشده
  RxList<ProductModel> filteredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  void loadProducts() {
    allProducts = ProductData.products;

    /// مقدار اولیه
    filteredProducts.assignAll(allProducts);
    change(filteredProducts, status: RxStatus.success());
  }

  /// تغییر دسته‌بندی
  void changeCategory(int index) {
    selectedCategory.value = index;
    applyFilters();
  }

  /// سرچ
  void onSearchChanged(String text) {
    searchQuery.value = text;
    applyFilters();
  }

  /// فیلتر کلی: دسته + سرچ
  void applyFilters() {
    final category = categories[selectedCategory.value];
    final query = searchQuery.value.trim();

    List<ProductModel> result =
        allProducts.where((item) {
          final matchesCategory = item.category == category;
          final matchesSearch = item.name.contains(query);

          if (query.isEmpty && selectedCategory.value == 0) {
            return true;
          } else if (query.isEmpty) {
            return matchesCategory;
          } else {
            return matchesSearch;
          }
        }).toList();

    filteredProducts.assignAll(result);
    change(result, status: RxStatus.success());
  }

  final CartController cartController = Get.find();

  void addToCart(ProductModel product) {
    cartController.addProduct(product, 1);

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
  }

  /// رفتن به صفحه جزئیات
  void openDetails(ProductModel product) {
    Get.toNamed(Routes.PRODUCT, arguments: product);
  }
}
