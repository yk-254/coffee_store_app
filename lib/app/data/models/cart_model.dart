import 'package:get/get.dart';

import 'product_model.dart';

class CartModel {
  final ProductModel product;
  RxInt quantity;

  CartModel({required this.product, required int quantity})
      : quantity = quantity.obs;
}