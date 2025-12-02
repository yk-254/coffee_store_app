import 'package:get/get.dart';

import '../../cart/views/cart_view.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';

class BottomNavController extends GetxController {
  //TODO: Implement BottomNavController

  final currentIndex = 1.obs;

  final pages = [CartView(), HomeView(), ProfileView()];

  void changeTab(int index) {
    currentIndex.value = index;
  }
}
