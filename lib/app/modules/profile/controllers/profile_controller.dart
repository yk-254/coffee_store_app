import 'package:get/get.dart';

import '../../../data/models/user_model.dart';
import '../../../data/services/auth_service.dart';

class ProfileController extends GetxController {
  final AuthService authService = Get.find<AuthService>();

  // کاربر جاری
  Rx<UserModel?> currentUser = Rx<UserModel?>(null);

  @override
  void onInit() {
    super.onInit();
    // بارگذاری کاربر فعلی
    currentUser.value = authService.currentUser;
  }

  // Logout
  void logout() {
    authService.logout();
  }
}
